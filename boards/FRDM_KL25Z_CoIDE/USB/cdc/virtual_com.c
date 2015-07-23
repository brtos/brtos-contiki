/******************************************************************************
 *
 * Freescale Semiconductor Inc.
 * (c) Copyright 2004-2010 Freescale Semiconductor, Inc.
 * ALL RIGHTS RESERVED.
 *
 **************************************************************************//*!
 *
 * @file virtual_com.c
 *
 * @author
 *
 * @version
 *
 * @date May-28-2009
 *
 * @brief  The file emulates a USB PORT as Loopback Serial Port.
 *****************************************************************************/

/******************************************************************************
 * Includes
 *****************************************************************************/
#include "hidef.h"          /* for EnableInterrupts macro */
#include "derivative.h"     /* include peripheral declarations */
#include "types.h"          /* Contains User Defined Data Types */
#include "usb_cdc.h"        /* USB CDC Class Header File */
#include "virtual_com.h"    /* Virtual COM Application Header File */
#include <stdio.h>
#include "BRTOS.h"

#if (defined _MCF51MM256_H) || (defined _MCF51JE256_H)
#include "exceptions.h"
#endif

/* skip the inclusion in dependency state */
#ifndef __NO_SETJMP
	#include <stdio.h>
#endif
#include <stdlib.h>
#include <string.h>

static INT8U 	is_message_sent = 0;

BRTOS_Sem   	*USB_Sem;

// Declara uma estrutura de fila
OS_QUEUE 		USBRXBuffer;
// Declara um ponteiro para o bloco de controle da Porta Serial
BRTOS_Queue 	*USB;

/*****************************************************************************
 * Constant and Macro's - None
 *****************************************************************************/

/*****************************************************************************
 * Global Functions Prototypes
 *****************************************************************************/
void usb_init(void);

/****************************************************************************
 * Global Variables
 ****************************************************************************/
#if HIGH_SPEED_DEVICE
uint_32 g_cdcBuffer[DIC_BULK_OUT_ENDP_PACKET_SIZE>>1];
#endif

/*****************************************************************************
 * Local Types - None
 *****************************************************************************/

/*****************************************************************************
 * Local Functions Prototypes
 *****************************************************************************/
static void USB_App_Callback(uint_8 controller_ID,
                        uint_8 event_type, void* val);
static void USB_Notify_Callback(uint_8 controller_ID,
                        uint_8 event_type, void* val);
/*****************************************************************************
 * Local Variables
 *****************************************************************************/
#ifdef _MC9S08JS16_H
#pragma DATA_SEG APP_DATA
#endif
/* Virtual COM Application start Init Flag */
static volatile boolean start_app = FALSE;
/* Virtual COM Application Carrier Activate Flag */
//static volatile boolean start_transactions = FALSE;
static volatile boolean start_transactions = TRUE;
/* Send Buffer */
static uint_8 g_curr_send_buf[DATA_BUFF_SIZE];
/* Receive Data Size */
static uint_8 g_recv_size;
/* Send Data Size */
static uint_8 g_send_size;
/*****************************************************************************
 * Local Functions
 *****************************************************************************/
 /******************************************************************************
 *
 *   @name        TestApp_Init
 *
 *   @brief       This function is the entry for the Virtual COM Loopback app
 *
 *   @param       None
 *
 *   @return      None
 *****************************************************************************
 * This function starts the Virtual COM Loopback application
 *****************************************************************************/

void cdc_Init(void)
{
    uint_8   error;

    g_recv_size = 0;

	// Create USB semaphore
	if (OSSemCreate(0,&USB_Sem) != ALLOC_EVENT_OK)
    {
      // Oh Oh
      // N�o deveria entrar aqui !!!
      while(1){};
    };

	// Cria uma fila de recepcao para a porta serial
	if (OSQueueCreate(&USBRXBuffer,DATA_BUFF_SIZE, &USB) != ALLOC_EVENT_OK)
	{
		// Oh Oh
		// N�o deveria entrar aqui !!!
		while(1){};
	};

    DisableInterrupts;
    #if (defined _MCF51MM256_H) || (defined _MCF51JE256_H)
     usb_int_dis();
    #endif
    /* Initialize the USB interface */
    error = USB_Class_CDC_Init(CONTROLLER_ID,USB_App_Callback,
                                NULL,USB_Notify_Callback, TRUE);
    if(error != USB_OK)
    {
        /* Error initializing USB-CDC Class */
        return;
    }
    EnableInterrupts;
	#if (defined _MCF51MM256_H) || (defined _MCF51JE256_H)
     usb_int_en();
    #endif
}

uint_8 GetStart_transactions(void)
{
	return (start_transactions);
}


void cdc_process(void)
{
    static uint_8 status 	 = 0;
    uint_8 		  sem_status = 0;
	uint_8 size = g_send_size;

    /*check whether enumeration is complete or not */
     if((start_app==TRUE) && (start_transactions==TRUE))
     {
 		g_send_size = 0;

 		UserEnterCritical();
 		is_message_sent = 1;
 		UserExitCritical();

 		status = USB_Class_CDC_Interface_DIC_Send_Data(CONTROLLER_ID, g_curr_send_buf,size);
 		sem_status = OSSemPend(USB_Sem,500);

 		if (sem_status != OK)
 		{
 			UserEnterCritical();
 			is_message_sent = 0;
 			UserExitCritical();
 		}

         if(status != USB_OK)
         {
             /* Send Data Error Handling Code goes here */
         	status = 0;
         }
     }else
     {
    	  while(GetStart_transactions() == FALSE)
    	  {
    		  DelayTask(100);
    	  }
     }
}

unsigned char cdc_putch(char c)
{
  uint_8 r=(unsigned char)c;
  /* Store character into current buffer. */
  if (g_send_size < sizeof(g_curr_send_buf))
  {
	g_curr_send_buf[g_send_size++]=(unsigned char)c;
    if ((c == '\r') || (c == '>'))
    {
      cdc_process();
    }
  }
  else
  {
    cdc_process();
    r++;
  }
  return((uint_8)r);
}

/******************************************************************************
 *
 *    @name        USB_App_Callback
 *
 *    @brief       This function handles Class callback
 *
 *    @param       controller_ID    : Controller ID
 *    @param       event_type       : Value of the event
 *    @param       val              : gives the configuration value
 *
 *    @return      None
 *
 *****************************************************************************
 * This function is called from the class layer whenever reset occurs or enum
 * is complete. After the enum is complete this function sets a variable so
 * that the application can start.
 * This function also receives DATA Send and RECEIVED Events
 *****************************************************************************/

static void USB_App_Callback (
    uint_8 controller_ID,   /* [IN] Controller ID */
    uint_8 event_type,      /* [IN] value of the event */
    void* val               /* [IN] gives the configuration value */
)
{
    UNUSED (controller_ID)
    UNUSED (val)
    if(event_type == USB_APP_BUS_RESET)
    {
        start_app=FALSE;
    }
    else if(event_type == USB_APP_ENUM_COMPLETE)
    {
#if HIGH_SPEED_DEVICE
    	// prepare for the next receive event
    	USB_Class_CDC_Interface_DIC_Recv_Data(&controller_ID,
    	                                      (uint_8_ptr)g_cdcBuffer,
    	                                      DIC_BULK_OUT_ENDP_PACKET_SIZE);
#endif
        start_app=TRUE;
    }
    else if((event_type == USB_APP_DATA_RECEIVED)&&
            (start_transactions == TRUE))
    {
        /* Copy Received Data buffer to Application Buffer */
        USB_PACKET_SIZE BytesToBeCopied;
        APP_DATA_STRUCT* dp_rcv = (APP_DATA_STRUCT*)val;
        uint_8 index;
        BytesToBeCopied = (USB_PACKET_SIZE)((dp_rcv->data_size > DATA_BUFF_SIZE) ?
                                      DATA_BUFF_SIZE:dp_rcv->data_size);
        for(index = 0; index<BytesToBeCopied ; index++)
        {
			if (OSQueuePost(USB, dp_rcv->data_ptr[index]) == BUFFER_UNDERRUN)
			{
			  // Problema: Estouro de buffer
			  // Novas teclas n�o ser�o armazenadas at� que o buffer tenha espa�o dispon�vel novamente
			  //OSCleanQueue(USB);
			}
        }
    }
    else if((event_type == USB_APP_SEND_COMPLETE) && (start_transactions == TRUE))
    {
		if (is_message_sent)
		{
			is_message_sent = 0;
			OSSemPost(USB_Sem);
        }
        /* Previous Send is complete. Queue next receive */
#if HIGH_SPEED_DEVICE
    	(void)USB_Class_CDC_Interface_DIC_Recv_Data(CONTROLLER_ID, g_cdcBuffer, DIC_BULK_OUT_ENDP_PACKET_SIZE);
#else
        (void)USB_Class_CDC_Interface_DIC_Recv_Data(CONTROLLER_ID, NULL, 0);
#endif
    }

    return;
}

/******************************************************************************
 *
 *    @name        USB_Notify_Callback
 *
 *    @brief       This function handles PSTN Sub Class callbacks
 *
 *    @param       controller_ID    : Controller ID
 *    @param       event_type       : PSTN Event Type
 *    @param       val              : gives the configuration value
 *
 *    @return      None
 *
 *****************************************************************************
 * This function handles USB_APP_CDC_CARRIER_ACTIVATED and
 * USB_APP_CDC_CARRIER_DEACTIVATED PSTN Events
 *****************************************************************************/

static void USB_Notify_Callback (
    uint_8 controller_ID,   /* [IN] Controller ID */
    uint_8 event_type,      /* [IN] PSTN Event Type */
    void* val               /* [IN] gives the configuration value */
)
{
    UNUSED (controller_ID)
    UNUSED (val)
    if(start_app == TRUE)
    {
        if(event_type == USB_APP_CDC_CARRIER_ACTIVATED)
        {
            start_transactions = TRUE;
        }
        else if(event_type == USB_APP_CDC_CARRIER_DEACTIVATED)
        {
            //start_transactions = FALSE;
        }
    }
    return;
}


/****************************************************************************
 * Global Variables
 ****************************************************************************/
#if ((defined __CWCC__) || (defined __IAR_SYSTEMS_ICC__) || (defined __CC_ARM)|| (defined __arm__))
	extern uint_32 ___VECTOR_RAM[];            // Get vector table that was copied to RAM
#elif defined(__GNUC__)
	extern uint_32 __cs3_interrupt_vector[];
#endif

	/*****************************************************************************
	 * @name     pll_init
	 *
	 * @brief:   Initialization of the MCU.
	 *
	 * @param  : None
	 *
	 * @return : None
	 *****************************************************************************
	 * It will configure the MCU to disable STOP and COP Modules.
	 * It also set the MCG configuration and bus clock frequency.
	 ****************************************************************************/
	int pll_init()
	{
	    /* Update system prescalers */
	    SIM_CLKDIV1  = SIM_CLKDIV1_OUTDIV4(1);
	    SIM_CLKDIV1 |= SIM_CLKDIV1_OUTDIV1(1);
	    /* First FEI must transition to FBE mode
	    Enable external oscillator, RANGE=02, HGO=, EREFS=, LP=, IRCS= */
	    MCG_C2 = MCG_C2_RANGE0(2) | MCG_C2_HGO0_MASK | MCG_C2_EREFS0_MASK | MCG_C2_IRCS_MASK;

	    /* Select external oscillator and Reference Divider and clear IREFS
	     * to start external oscillator
	     * CLKS = 2, FRDIV = 3, IREFS = 0, IRCLKEN = 0, IREFSTEN = 0
	     */
	    MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);

	    /* MCG_C4: DMX32=0,DRST_DRS=0 */
	    MCG_C4 &= (uint8_t)~(uint8_t)0xE0U;

	    /* MCG_C5: ??=0,PLLCLKEN=0,PLLSTEN=1,PRDIV=0x3, external clock reference = 8/4 = 2MHz */
	    MCG_C5 = (uint8_t)0x23U;

	    /* MCG_C6: LOLIE=0,PLLS=0,CME=0,VDIV=0x18 */
	    MCG_C6 = (uint8_t)0x18U;

	    while((MCG_S & MCG_S_IREFST_MASK) != 0x00U) { /* Check that the source of the FLL reference clock is the external reference clock. */
	    }

	    while((MCG_S & 0x0CU) != 0x08U) {    /* Wait until external reference clock is selected as MCG output */
	    }

	    /* Switch to PBE Mode */
	    /* MCG_C1: CLKS=2,FRDIV=3,IREFS=0,IRCLKEN=0,IREFSTEN=0 */
	    MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);

	    /* MCG_C2: ??=0,??=0,RANGE=2,HGO=0,EREFS=0,LP=0,IRCS=1 */
	    MCG_C2 = MCG_C2_RANGE0(2) | MCG_C2_HGO0_MASK | MCG_C2_EREFS0_MASK | MCG_C2_IRCS_MASK;

	    /* MCG_C5: ??=0,PLLCLKEN=0,PLLSTEN=1,PRDIV=0x03 */
	    MCG_C5 = (uint8_t)0x23U;

	    /* MCG_C6: LOLIE=0,PLLS=1,CME=0,VDIV=0x18 */
	    MCG_C6 = (uint8_t)0x58U;
	    while((MCG_S & 0x0CU) != 0x08U) {    /* Wait until external reference clock is selected as MCG output */
	    }
	    while((MCG_S & MCG_S_LOCK0_MASK) == 0x00U) { /* Wait until locked */
	    }
	    /* Switch to PEE Mode */
	    /* MCG_C1: CLKS=0,FRDIV=3,IREFS=0,IRCLKEN=0,IREFSTEN=0 */
	    MCG_C1 = (uint8_t)0x18U;

	    /* MCG_C2: ??=0,??=0,RANGE=2,HGO=0,EREFS=0,LP=0,IRCS=1 */
	    MCG_C2 = MCG_C2_RANGE0(2) | MCG_C2_HGO0_MASK | MCG_C2_EREFS0_MASK | MCG_C2_IRCS_MASK;

	    /* MCG_C5: ??=0,PLLCLKEN=0,PLLSTEN=1,PRDIV=0x03 */
	    MCG_C5 = (uint8_t)0x23U;

	    /* MCG_C6: LOLIE=0,PLLS=1,CME=0,VDIV=0x18 */
	    MCG_C6 = (uint8_t)0x58U;
	    while((MCG_S & 0x0CU) != 0x0CU) {    /* Wait until output of the PLL is selected */
	    }
	    /* MCG_C6: CME=1 */
	    MCG_C6 |= (uint8_t)0x20U;            /* Enable the clock monitor */
	    /*** End of PE initialization code after reset ***/

	    return 0;
	    /* end MCU_MKL25Z4 */
	}

void SYS_Init(void)
{
	/* Point the VTOR to the new copy of the vector table */
#if (defined(__CWCC__) || defined(__IAR_SYSTEMS_ICC__) || defined(__CC_ARM)|| (defined __arm__))
	SCB_VTOR = (uint_32)___VECTOR_RAM;
#elif defined(__GNUC__)
	SCB_VTOR = (uint_32)__cs3_interrupt_vector;
#endif
    /* SIM Configuration */
	pll_init();
}

#if(!(defined MCU_MK21D5))
/******************************************************************************
*   @name        IRQ_ISR_PORTA
*
*   @brief       Service interrupt routine of IRQ
*
*   @return      None
*
*   @comment
*
*******************************************************************************/
void IRQ_ISR_PORTA(void)
{
#if defined(MCU_MK20D5)
    NVICICPR1 |= 1 << ((40)%32);
    NVICISER1 |= 1 << ((40)%32);
#elif defined (MCU_MKL25Z4)
    NVIC_ICPR |= 1 << 30;
    NVIC_ISER |= 1 << 30;
#else
    NVICICPR2 |= 1 << ((87)%32);
    NVICISER2 |= 1 << ((87)%32);
#endif
	DisableInterrupts;
#if defined MCU_MKL25Z4
    if(PORTA_ISFR & (1<<4))
    {
        //kbi_stat |= 0x02;                 /* Update the kbi state */
        PORTA_ISFR |=(1<<4);            /* Clear the bit by writing a 1 to it */
    }
#else
	if(PORTA_ISFR & (1<<19))
	{
		kbi_stat |= 0x02; 				/* Update the kbi state */
		PORTA_ISFR |=(1<<19);			/* Clear the bit by writing a 1 to it */
	}
#endif
	EnableInterrupts;
}
#endif



#ifndef _SERIAL_AGENT_
/*****************************************************************************
 *
 *    @name     USB_Init
 *
 *    @brief    This function Initializes USB module
 *
 *    @param    None
 *
 *    @return   None
 *
 ***************************************************************************/
static void USB_Init(void)
{
		/* 1. Configure USB to be clocked from PLL */
		SIM_SOPT2 |= SIM_SOPT2_USBSRC_MASK | SIM_SOPT2_PLLFLLSEL_MASK;

#if PLL_96
		/* 2. USB freq divider */
		SIM_CLKDIV2 = 0x02;
#endif /* PLL_96 */

		/* 3. Enable USB-OTG IP clocking */
		SIM_SCGC4 |= (SIM_SCGC4_USBOTG_MASK);

		/* old documentation writes setting this bit is mandatory */
		USB0_USBTRC0 = 0x40;

		/* Configure enable USB regulator for device */
		SIM_SOPT1 |= SIM_SOPT1_USBREGEN_MASK;

#endif /* MCU_MK70F12 */

        NVIC_ICER |= (1<<24);	 /* Clear any pending interrupts on USB */
        NVIC_ISER |= (1<<24);	 /* Enable interrupts from USB module */
}




void usb_init(void)
{
	/* Initialize the system */
	SYS_Init();

	#ifndef _SERIAL_AGENT_
	    /* Initialize USB module */
	    USB_Init();
	#else
	    SIM_SOPT2  |= (SIM_SOPT2_USBSRC_MASK | SIM_SOPT2_PLLFLLSEL_MASK);
	#endif
	/* Initialize GPIO pins */
	//GPIO_Init();
}



/* EOF */
#if 0
/******************************************************************************
 *
 * Freescale Semiconductor Inc.
 * (c) Copyright 2004-2010 Freescale Semiconductor, Inc.
 * ALL RIGHTS RESERVED.
 *
 **************************************************************************//*!
 *
 * @file virtual_com.c
 *
 * @author
 *
 * @version
 *
 * @date May-28-2009
 *
 * @brief  The file emulates a USB PORT as Loopback Serial Port.
 *****************************************************************************/

/******************************************************************************
 * Includes
 *****************************************************************************/
#include "derivative.h"     /* include peripheral declarations */
#include "types.h"          /* Contains User Defined Data Types */
#include "BRTOS.h"
#include "usb_cdc.h"        /* USB CDC Class Header File */
#include "virtual_com.h"    /* Virtual COM Application Header File */
#include <stdio.h>

#if (defined _MCF51MM256_H) || (defined _MCF51JE256_H)
#include "exceptions.h"
#endif

/* skip the inclusion in dependency state */
#ifndef __NO_SETJMP
	#include <stdio.h>
#endif
#include <stdlib.h>
#include <string.h>

static INT8U 	is_message_sent = 0;

BRTOS_Sem   	*USB_Sem;

// Declara uma estrutura de fila
OS_QUEUE 		USBRXBuffer;
// Declara um ponteiro para o bloco de controle da Porta Serial
BRTOS_Queue 	*USB;

/*****************************************************************************
 * Constant and Macro's - None
 *****************************************************************************/

/*****************************************************************************
 * Global Functions Prototypes
 *****************************************************************************/
void TestApp_Init(void);

/****************************************************************************
 * Global Variables
 ****************************************************************************/
/*****************************************************************************
 * Local Types - None
 *****************************************************************************/

/*****************************************************************************
 * Local Functions Prototypes
 *****************************************************************************/
static void USB_App_Callback(uint_8 controller_ID,
                        uint_8 event_type, void* val);
static void USB_Notify_Callback(uint_8 controller_ID,
                        uint_8 event_type, void* val);
/*****************************************************************************
 * Local Variables
 *****************************************************************************/
#ifdef _MC9S08JS16_H
#pragma DATA_SEG APP_DATA
#endif
/* Virtual COM Application start Init Flag */
static volatile boolean start_app = FALSE;
/* Virtual COM Application Carrier Activate Flag */
static volatile boolean start_transactions = FALSE;
/* Send Buffer */
static uint_8 g_curr_send_buf[DATA_BUFF_SIZE];
/* Send Data Size */
static uint_8 g_send_size;
/*****************************************************************************
 * Local Functions
 *****************************************************************************/
 /******************************************************************************
 *
 *   @name        TestApp_Init
 *
 *   @brief       This function is the entry for the Virtual COM Loopback app
 *
 *   @param       None
 *
 *   @return      None
 *****************************************************************************
 * This function starts the Virtual COM Loopback application
 *****************************************************************************/

void cdc_Init(void)
{
    uint_8   error;

    g_send_size= 0;
    
	// Create USB semaphore
	if (OSSemCreate(0,&USB_Sem) != ALLOC_EVENT_OK)
    {
      // Oh Oh
      // N�o deveria entrar aqui !!!
      while(1){};
    };
	
	// Cria uma fila de recepcao para a porta serial
	if (OSQueueCreate(&USBRXBuffer,DATA_BUFF_SIZE, &USB) != ALLOC_EVENT_OK)
	{
		// Oh Oh
		// N�o deveria entrar aqui !!!
		while(1){};
	};		
    
    DisableInterrupts;		
    #if (defined _MCF51MM256_H) || (defined _MCF51JE256_H)
     usb_int_dis();
    #endif
    /* Initialize the USB interface */
    error = USB_Class_CDC_Init(CONTROLLER_ID,USB_App_Callback,
                                NULL,USB_Notify_Callback);
    if(error != USB_OK)
    {
        /* Error initializing USB-CDC Class */
    	EnableInterrupts;
        return;
    }
    EnableInterrupts;
	#if (defined _MCF51MM256_H) || (defined _MCF51JE256_H)
     usb_int_en();
    #endif
}

/******************************************************************************
 *
 *   @name        TestApp_Task
 *
 *   @brief       Application task function. It is called from the main loop
 *
 *   @param       None
 *
 *   @return      None
 *
 *****************************************************************************
 * Application task function. It is called from the main loop
 *****************************************************************************/
void cdc_process(void)
{
    static uint_8 status 	 = 0;
    uint_8 		  sem_status = 0;
	uint_8 size = g_send_size;
	
    /*check whether enumeration is complete or not */
     if((start_app==TRUE) && (start_transactions==TRUE))
     {	
 		g_send_size = 0;
 		
 		UserEnterCritical();
 		is_message_sent = 1;
 		UserExitCritical();
 		
 		status = USB_Class_CDC_Interface_DIC_Send_Data(CONTROLLER_ID, g_curr_send_buf,size);
 		sem_status = OSSemPend(USB_Sem,500);	   
 		
 		if (sem_status != OK)
 		{
 			UserEnterCritical();
 			is_message_sent = 0;
 			UserExitCritical();
 		}
 		
         if(status != USB_OK)
         {
             /* Send Data Error Handling Code goes here */
         	status = 0;
         }		
     }else
     {
    	  while(GetStart_transactions() == FALSE)
    	  {
    		  DelayTask(100);
    	  }
     }
}
	

uint_8 GetStart_transactions(void)
{
	return (start_transactions);
}




/*****************************************************************************
* Name:
*    cdc_putch
* In:
*    c: character to be sent
* Out:
*    0: output is busy, character dropped
*    1: character buffered and will be sent later.
*
* Description:
*    Put one character into tx_buffer.
*
* Assumptions:
*    --
*****************************************************************************/
unsigned char cdc_putch(char c)
{
  uint_8 r=(unsigned char)c;
  /* Store character into current buffer. */
  if (g_send_size < sizeof(g_curr_send_buf))
  {
	g_curr_send_buf[g_send_size++]=(unsigned char)c;
    if ((c == '\r') || (c == '>'))
    {
      cdc_process();
    }	
  }
  else
  {
    cdc_process();
    r++;
  }
  return((uint_8)r);
}



/******************************************************************************
 *
 *    @name        USB_App_Callback
 *
 *    @brief       This function handles Class callback
 *
 *    @param       controller_ID    : Controller ID
 *    @param       event_type       : Value of the event
 *    @param       val              : gives the configuration value
 *
 *    @return      None
 *
 *****************************************************************************
 * This function is called from the class layer whenever reset occurs or enum
 * is complete. After the enum is complete this function sets a variable so
 * that the application can start.
 * This function also receives DATA Send and RECEIVED Events
 *****************************************************************************/

static void USB_App_Callback (
    uint_8 controller_ID,   /* [IN] Controller ID */
    uint_8 event_type,      /* [IN] value of the event */
    void* val               /* [IN] gives the configuration value */
)
{
    UNUSED (controller_ID)
    UNUSED (val)
    if(event_type == USB_APP_BUS_RESET)
    {
        start_app=FALSE;
    }
    else if(event_type == USB_APP_ENUM_COMPLETE)
    {
        start_app=TRUE;
    }
    else if((event_type == USB_APP_DATA_RECEIVED)&&
            (start_transactions == TRUE))
    {
        /* Copy Received Data buffer to Application Buffer */
        USB_PACKET_SIZE BytesToBeCopied;
        APP_DATA_STRUCT* dp_rcv = (APP_DATA_STRUCT*)val;
        uint_8 index;
        BytesToBeCopied = (USB_PACKET_SIZE)((dp_rcv->data_size > DATA_BUFF_SIZE) ?
                                      DATA_BUFF_SIZE:dp_rcv->data_size);
       
        if (BytesToBeCopied != DATA_BUFF_SIZE)
        {
			for(index = 0; index<BytesToBeCopied ; index++)
			{            
				if (OSQueuePost(USB, dp_rcv->data_ptr[index]) == BUFFER_UNDERRUN)
				{
				  // Problema: Estouro de buffer
				  // Novas teclas n�o ser�o armazenadas at� que o buffer tenha espa�o dispon�vel novamente
				  //OSCleanQueue(USB);
				}        	
			}
			/* Previous Send is complete. Queue next receive */
			(void)USB_Class_CDC_Interface_DIC_Recv_Data(CONTROLLER_ID, NULL, 0);
        }
    }
    else if((event_type == USB_APP_SEND_COMPLETE) && (start_transactions == TRUE))
    {
		if (is_message_sent)
		{
			is_message_sent = 0;
			OSSemPost(USB_Sem);
        }        
    }

    return;
}

/******************************************************************************
 *
 *    @name        USB_Notify_Callback
 *
 *    @brief       This function handles PSTN Sub Class callbacks
 *
 *    @param       controller_ID    : Controller ID
 *    @param       event_type       : PSTN Event Type
 *    @param       val              : gives the configuration value
 *
 *    @return      None
 *
 *****************************************************************************
 * This function handles USB_APP_CDC_CARRIER_ACTIVATED and
 * USB_APP_CDC_CARRIER_DEACTIVATED PSTN Events
 *****************************************************************************/

static void USB_Notify_Callback (
    uint_8 controller_ID,   /* [IN] Controller ID */
    uint_8 event_type,      /* [IN] PSTN Event Type */
    void* val               /* [IN] gives the configuration value */
)
{
    CHAR8 *string;
	UNUSED (controller_ID)
    UNUSED (val)
    if(start_app == TRUE)
    {
        if(event_type == USB_APP_CDC_CARRIER_ACTIVATED)
        {
            start_transactions = TRUE;
            echo ("BRTOS Started!", FALSE);
        }
        else if(event_type == USB_APP_CDC_CARRIER_DEACTIVATED)
        {
            start_transactions = FALSE;
        }
    }
    return;
}

void usb_init(void)
{
	/* MPU Configuration */
	MPU_CESR=0;                            // MPU is disable. All accesses from all bus masters are allowed
	
	/* NVIC Configuration */
	//NVICICER2 | =(1<<9);                     //Clear any pending interrupts on USB
	NVICISER2 |= (1<<9);                     //Enable interrupts from USB module  
	
	// PLL/FLL selected as CLK source
	SIM_CLKDIV2|=0x02;              	   // USB Freq Divider
	
	SIM_SCGC4|=(SIM_SCGC4_USBOTG_MASK);             // USB Clock Gating
	SIM_SOPT2  |= SIM_SOPT2_USBSRC_MASK | SIM_SOPT2_PLLFLLSEL_MASK;
	SIM_SOPT1 |= SIM_SOPT1_USBREGEN_MASK;
}

/* EOF */
#endif
