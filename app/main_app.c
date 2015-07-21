#include "BRTOS.h"
#include "tasks.h"

#if PROCESSOR == COLDFIRE_V1
#include "drivers.h"
#endif

//#include "AppConfig.h"

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
void main_app(void);
void contiki_main(void);

void main_app(void)
{
	
#if 1

	/* init the MCU system */
#if PROCESSOR == COLDFIRE_V1	
	System_Init();
#endif

	// Initialize BRTOS
	BRTOS_Init();

	if (InstallTask(&System_Time, "System Time", 256, 31, NULL) != OK)
	{
		while (1){};
	};

	if (InstallTask(&contiki_main, "Contiki", 1024, 2, NULL) != OK)
	{
		while (1){};
	};

#if 0
	if (InstallTask(&Tarefa_termometro, "Tarefa de Termometro", 256, 19, NULL) != OK)
	{
		while (1){};
	};
#endif
	
#if USB_DEVICE_ENABLED
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

	// Start Task Scheduler
	if (BRTOSStart() != OK)
	{
		while (1){};
	};
#endif	
}

