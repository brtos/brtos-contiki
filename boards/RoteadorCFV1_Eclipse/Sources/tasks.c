/*********************************************************************************************************
 *                                               BRTOS
 *                                Brazilian Real-Time Operating System
 *                            Acronymous of Basic Real-Time Operating System
 *
 *                              
 *                                  Open Source RTOS under MIT License
 *
 *
 *
 *                                              OS Tasks
 *
 *
 *   Author:   Gustavo Weber Denardin
 *   Revision: 1.0
 *   Date:     20/03/2009
 *
 *********************************************************************************************************/

#include "BRTOS.h"
#include "drivers.h"
#include "tasks.h"
#include "AppConfig.h"

#if TERMINAL_ENABLE
#include "terminal.h"
#include "terminal_commands.h"
#endif

void System_Time(void)
{
	// task setup
	INT16U milis = 0;
	INT16U segundos = 0;

	OSResetTime();

	led_onboard_init();
	
	led_onboard_on();
	
	#if RTC_PRESENTE
		while(Init_Calendar() == FALSE)
		{
			DelayTask(10);
			#if (WATCHDOG == 1)
				__RESET_WATCHDOG();
			#endif			
		}
	#endif	
	
	led_onboard_off();

	// task main loop
	for (;;)
	{
		#if (WATCHDOG == 1)
			__RESET_WATCHDOG();
		#endif     

		DelayTask(10);
		milis += 10;
		
		if (milis >= 1000)
		{
			milis = 0;
			
			OSUpdateUptime();
			OSUpdateCalendar();
			
			segundos++;
			if (segundos == 3600)
			{
				segundos = 0;
				
				#if RTC_PRESENTE				
					Resync_calendar();  // resync with RTC every 3600s = 60min = 1h
				#endif				
				
			}
		}

#if (defined FATFS_ENABLE && FATFS_ENABLE == 1)
		///////////////////////////////////////////////////
		///   FatFS Timer Handler                       ///
		///////////////////////////////////////////////////
		disk_timerproc();
		///////////////////////////////////////////////////   
#endif
	}

}

#define TERM_BUFSIZE		36
#define TERM_MUTEX			TRUE
#define TERM_BAUDRATE		19200

#ifdef TERM_UART
#if TERM_UART == 0
#define TERM_MUTEX_PRIO		UART0_MUTEX_PRIO
#define TERM_OUTPUT			putchar_uart
#elif  TERM_UART == 1
#define TERM_MUTEX_PRIO		UART1_MUTEX_PRIO
#define TERM_OUTPUT			putchar_uart1
#else
#define TERM_MUTEX_PRIO		UART2_MUTEX_PRIO
#define TERM_OUTPUT			putchar_uart2
#endif
#endif

#if 0
void Terminal_Task(void)
{
	/* task setup */
	
	/* Init the Term UART */
#ifdef TERM_UART
	uart_init(TERM_UART,TERM_BAUDRATE,TERM_BUFSIZE,TERM_MUTEX,TERM_MUTEX_PRIO);
	
#if !SIMULATION
	terminal_set_output(TERM_OUTPUT);
#endif

#endif	

	(void) terminal_add_cmd((command_t*) &ver_cmd);
	(void) terminal_add_cmd((command_t*) &top_cmd);
	(void) terminal_add_cmd((command_t*) &rst_cmd);
	(void) terminal_add_cmd((command_t*) &temp_cmd);
	(void) terminal_add_cmd((command_t*) &setget_time_cmd);
	(void) terminal_add_cmd((command_t*) &cat_cmd);
	(void) terminal_add_cmd((command_t*) &ls_cmd);
	(void) terminal_add_cmd((command_t*) &cd_cmd);
	(void) terminal_add_cmd((command_t*) &mount_cmd);
	(void) terminal_add_cmd((command_t*) &sr_cmd);
	(void) terminal_add_cmd((command_t*) &rm_cmd);
	(void) terminal_add_cmd((command_t*) &rn_cmd);
	(void) terminal_add_cmd((command_t*) &cr_cmd);
	(void) terminal_add_cmd((command_t*) &mkdir_cmd);
	(void) terminal_add_cmd((command_t*) &cp_cmd);
	(void) terminal_add_cmd((command_t*) &wt_cmd);
	(void) terminal_add_cmd((command_t*) &echo_cmd);
	(void) terminal_add_cmd((command_t*) &echo_stdout_cmd);

	while (1)
	{
		/* Call the application task */
		terminal_process();
	}
}


INT16S CoreTemp = 0;

void Tarefa_termometro(void)
{
	/* task setup */
	INT16U digital_temp = 0;
	INT16U bandgap = 0;
	INT16S temperature = 0;

	ADSetup(NormalPower, HighSpeed, ShortSampleTime, 20, 12);

	/* task main loop */
	for (;;)
	{
		(void) DelayTask(30000); /* 30s */

		//////////////////////////////////////////////////////////////
		// Adquire temperatura do core
		//////////////////////////////////////////////////////////////
		UserEnterCritical();
		digital_temp = ADConvert(TEMP_SENSOR_CH);
		UserExitCritical();

		UserEnterCritical();
		bandgap = ADConvert(BANDGAP_CH);
		UserExitCritical();

		digital_temp = (1170 * digital_temp) / bandgap;

		if (digital_temp > 701)
		{
			temperature = 25 - (((digital_temp - 701) * 1000) / 1646);
		}
		else
		{
			temperature = 25 - (((digital_temp - 701) * 1000) / 1769);
		}

		UserEnterCritical();
		CoreTemp = temperature;
		UserExitCritical();
		//////////////////////////////////////////////////////////////         
	}
}
#endif


#if 0
// Declares a queue structure for the keyboard
OS_QUEUE KeyboardBuffer;
BRTOS_Queue *qKeyboard;
// 
void HMI(void)
{
	/* task setup */
	INT8U key = 0;

	/* task main loop */
	for (;;)
	{

		if (!OSQueuePend(qKeyboard, &key, 500))
		{

			switch (key)
			{

			case UP_KEY :
				break;

			case DOWN_KEY :
				break;
			}
		}
	}
}

void Keyboard_Handler(void)
{
	// task setup
	INT16U ADSample = 0;
	INT8U Key = NO_KEY;

	// Initialize ACM keyboard for channel 1  
	ACM_Keyb_Setup(Enable, Enable, Rising, ACM_CHANNEL1);

	if (OSSemCreate(0, &sKeyboard) != ALLOC_EVENT_OK)
	{
		while (1){};
	};

	if (OSQueueCreate(&KeyboardBuffer, 64, &qKeyboard) != ALLOC_EVENT_OK)
	{
		while (1){};
	};

	// task main loop
	for (;;)
	{
		// Wait for a keyboard interrupt
		OSSemPend(sKeyboard, 0);
		DelayTask(50);

		// Converts the value of AD to discover the pressed key
		UserEnterCritical();
		ADSample = ADConvert(KEYB_CHANNEL);
		UserExitCritical();

		UserEnterCritical();
		ADSample += ADConvert(KEYB_CHANNEL);
		UserExitCritical();

		ADSample = ADSample >> 1;

		// Find out which key was pressed
		Key = FindKey(ADSample);

		// Copy the key to the keyboard buffer
		if (Key != NO_KEY)
		{
			if (OSQueuePost(qKeyboard, Key) == BUFFER_UNDERRUN)
			{
				// Buffer overflow
				OSCleanQueue(qKeyboard);
			}
		}

		// Enable interrupt to the next key detection
		DelayTask(200);
		ACMEnable();
	}
}
#endif

#if 0
void BRTOS_TimerHook(void)
{

}
#endif

