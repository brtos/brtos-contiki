#include "BRTOS.h"
#include "tasks.h"
#include "platform-conf.h"

#if PROCESSOR == COLDFIRE_V1
#include "drivers.h"
#include "AppConfig.h"
#endif

#ifdef __cplusplus
extern "C"
#endif

/******************************************************************************
 * @file main.c
 * @author Carlos H. Barriquello
 * @version
 * @date
 * @brief   This software is the main entry of the project
 *****************************************************************************/


/******************************************************************************
 * @name        main_app
 * @brief       This function initializes the system, enables the interrupts and calls the application
 * @param       None
 * @return      None
 *****************************************************************************/
// Se estiver usando USB no SLIP, usa UART no debug e vice-versa
static void debug_putchar(char c)
{
	#if (SLIP_COMM == SLIP_USB)
		#include "uart.h"
		#if (BRTOS_PLATFORM == BOARD_FRDM_KL25Z)
			UARTPutChar(0x4006A000, c)
		#else
			(void)c;
		#endif
	#elif (SLIP_COMM == SLIP_UART)
		//#include "virtual_com.h"
		#if (BRTOS_PLATFORM == BOARD_FRDM_KL25Z)
		#include "diag/Trace.h"
		(void)trace_putchar(c);
		#endif
	#else
		(void)c;
	#endif
}

void main_app(void);
void contiki_main(void);

#ifndef SYSTEM_TIME_STACK_SIZE
#define SYSTEM_TIME_STACK_SIZE  192
#endif

#ifndef SYSTEM_TIME_PRIORITY
#define SYSTEM_TIME_PRIORITY	7
#endif

#ifndef CONTIKI_STACK_SIZE
#define CONTIKI_STACK_SIZE  	(1024+256)
#endif

#ifndef CONTIKI_PRIORITY
#define CONTIKI_PRIORITY		2
#endif

void main_app(void)
{

	/* init the MCU system */
#if PROCESSOR == COLDFIRE_V1	
	System_Init();
	/* mark isr stack start/end */
#if 0
	ISR_STACK[0]= 0x49535253;
	ISR_STACK[1]= 0x5441434B;
	ISR_STACK[ISR_STACK_SIZE-1]= 0x49535253;
	ISR_STACK[ISR_STACK_SIZE-2]= 0x5441434B;
#else
	#include "string.h"
	strcpy((char*)&ISR_STACK[0],"ISRSTACK");
	strcpy((char*)&ISR_STACK[ISR_STACK_SIZE-2],"ISRSTACK");
#endif
#endif

	// Initialize BRTOS
	BRTOS_Init();

	if (InstallTask(&System_Time, "System Time", SYSTEM_TIME_STACK_SIZE, SYSTEM_TIME_PRIORITY, NULL) != OK)
	{
		while (1){};
	};
#if 1
	if (InstallTask(&contiki_main, "Contiki", CONTIKI_STACK_SIZE, CONTIKI_PRIORITY, NULL) != OK)
	{
		while (1){};
	};
#endif

	// Se estiver usando USB no SLIP, usa UART no debug e vice-versa
	#if (SLIP_COMM == SLIP_USB)
		#if (BRTOS_PLATFORM == BOARD_FRDM_KL25Z)
			Init_UART0(115200, 0);
		#endif
		printf_install_putchar(debug_putchar);
	#elif(SLIP_COMM == SLIP_UART)
		// USB_Init();
		//(void)cdc_Init(); /* Initialize the USB CDC Application
		//printf_install_putchar(debug_putchar);
	#endif

#if 0
	if (InstallTask(&Tarefa_termometro, "Tarefa de Termometro", 256, 19, NULL) != OK)
	{
		while (1){};
	};
#endif
	
#if USB_TASK_ENABLED
#if (USB_CLASS_TYPE == BRTOS_USB_MSD)
	if(InstallTask(&Mass_Storage_Device_Task,"Mass Storage Device Task",512,15,NULL) != OK)
	{
		while(1)
		{};
	};
#endif


#if (USB_CLASS_TYPE == BRTOS_USB_CDC)
	if (InstallTask(&Terminal_Task, "USB Terminal Task", 672, 15, NULL) != OK)
	{
		while (1){};
	};
#endif
#endif


#if 0
	if(InstallTask(&HMI,"Human-Machine Interface task",416,10,NULL) != OK)
	{
		while(1)
		{};
	};

	if(InstallTask(&Keyboard_Handler,"Keyboard handler task",416,12,NULL) != OK)
	{
		while(1)
		{};
	};
#endif

	// Start BRTOS Scheduler
	if (BRTOSStart() != OK)
	{
		while (1){};
	};
}

