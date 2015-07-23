/**
* \file HAL.c
* \brief BRTOS Hardware Abstraction Layer Functions.
*
* This file contain the functions that are processor dependant.
*
*
**/

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
*                                   OS HAL Functions to Coldfire V1
*
*
*   Author:   Gustavo Weber Denardin
*   Revision: 1.0
*   Date:     20/03/2009
*
*********************************************************************************************************/

#include "BRTOS.h"
#include "LPO.h"
#include "xhw_types.h"
#include "xgpio.h"

#ifndef GPIOD_BASE
#define GPIOD_BASE              0x400FF0C0  // GPI0 D
#endif

#if (SP_SIZE == 32)
  INT32U SPvalue;                             ///< Used to save and restore a task stack pointer
#endif




////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
/////      OS Tick Timer Setup                         /////
/////                                                  /////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

void TickTimerSetup(void)
{
	#if (TICK_TIMER == TICK_TIMER_SYSTICK)
	INT32U 		module  = configCPU_CLOCK_HZ / (INT32U)configTICK_RATE_HZ;
	
	*(NVIC_SYSTICK_CTRL) = 0;			// Disable Sys Tick Timer
    *(NVIC_SYSTICK_LOAD) = module - 1u;	// Set tick timer module
    *(NVIC_SYSTICK_CTRL) = NVIC_SYSTICK_CLK | NVIC_SYSTICK_INT | NVIC_SYSTICK_ENABLE;
	#endif

	#if (TICK_TIMER == TICK_TIMER_LPO)
    INT32U 		module  = (INT32U)(((INT32U)1000 / (INT32U)configTICK_RATE_HZ) - 1);
    LPO_Init(module);
	#endif
}
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////




////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
/////      OS RTC Setup                                /////
/////                                                  /////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

void OSRTCSetup(void)
{  
 
}
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////





////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
void OSIncTickLess(void);


void TickTimer(void)
{
  // ************************
  // Entrada de interrupï¿½ï¿½o
  // ************************
  
  // Interrupt handling
  TICKTIMER_INT_HANDLER;

#if (TICKLESS_LPO == 1)
  OSIncTickLess();
#else
  OSIncCounter();
#endif
  
  // BRTOS TRACE SUPPORT
  #if (OSTRACE == 1) 
      #if(OS_TICK_SHOW == 1) 
          #if(OS_TRACE_BY_TASK == 1)
          Update_OSTrace(0, ISR_TICK);
          #else
          Update_OSTrace(configMAX_TASK_INSTALL - 1, ISR_TICK);
          #endif         
      #endif       
  #endif  

  #if (NESTING_INT == 1)
  OS_ENABLE_NESTING();
  #endif   
    
  // ************************
  // Handler code for the tick
  // ************************
  OS_TICK_HANDLER();
  
  // ************************
  // Interrupt Exit
  // ************************
  OS_INT_EXIT_EXT();
  // ************************
}
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////





////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
/////   Software Interrupt to provide Switch Context   /////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
 
/************************************************************//**
* \fn interrupt void SwitchContext(void)
* \brief Software interrupt handler routine (Internal kernel function).
*  Used to switch the tasks context.
****************************************************************/

__attribute__ ((naked)) void SwitchContext(void)
{
  // ************************
  // Entrada de interrupï¿½ï¿½o
  // ************************
  OS_SAVE_ISR();

  // Interrupt Handling
  Clear_PendSV();

  // ************************
  // Interrupt Exit
  // ************************
  OS_EXIT_INT();
  OS_RESTORE_ISR();
  // ************************
}
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

__attribute__ ((naked)) void SwitchContextToFirstTask(void)
{
	/* Make PendSV and SysTick the lowest priority interrupts. */
	*(NVIC_SYSPRI3) |= NVIC_PENDSV_PRI;
	#if (TICK_TIMER == TICK_TIMER_SYSTICK)
	*(NVIC_SYSPRI3) |= NVIC_SYSTICK_PRI;
	#endif
	OS_RESTORE_SP();
	OS_RESTORE_CONTEXT();
	OS_RESTORE_ISR();
}



////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
/////  Task Installation Function                      /////
/////                                                  /////
/////  Parameters:                                     /////
/////  Function pointer, task priority and task name   /////
/////                                                  /////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

void          OS_TaskReturn             (void);

#if (TASK_WITH_PARAMETERS == 1)
  void CreateVirtualStack(void(*FctPtr)(void*), INT16U NUMBER_OF_STACKED_BYTES, void *parameters)
#else
  void CreateVirtualStack(void(*FctPtr)(void), INT16U NUMBER_OF_STACKED_BYTES)
#endif
{  
	OS_CPU_TYPE *stk_pt = (OS_CPU_TYPE*)&STACK[iStackAddress + (NUMBER_OF_STACKED_BYTES / sizeof(OS_CPU_TYPE))];
	
	*--stk_pt = (INT32U)INITIAL_XPSR;                   	/* xPSR                                                   */

    *--stk_pt = (INT32U)FctPtr;                             /* Entry Point                                            */
    /// ??????????????????????
    *--stk_pt = 0;                      					/* R14 (LR)                                               */
    /// ??????????????????????
    *--stk_pt = (INT32U)0x12121212u;                        /* R12                                                    */
    *--stk_pt = (INT32U)0x03030303u;                        /* R3                                                     */
    *--stk_pt = (INT32U)0x02020202u;                        /* R2                                                     */
    //*--stk_pt = (INT32U)p_stk_limit;                        /* R1                                                     */
	*--stk_pt = (INT32U)(NUMBER_OF_STACKED_BYTES / 10);		/* R1                                                     */
   #if (TASK_WITH_PARAMETERS == 1)
	*--stk_pt = (INT32U)parameters;                         /* R0 : argument                                          */
   #else
	*--stk_pt = (INT32U)0;                              	/* R0 : argument                                          */
   #endif
#if (FPU_SUPPORT == 1)
    *--stk_pt = (INT32U)0xFFFFFFFDu;                        /* R14                                                    */
#endif
                                                            /* Remaining registers saved on process stack             */
    *--stk_pt = (INT32U)0x07070707u;                        /* R7                                                     */
    *--stk_pt = (INT32U)0x06060606u;                        /* R6                                                     */
    *--stk_pt = (INT32U)0x05050505u;                        /* R5                                                     */
    *--stk_pt = (INT32U)0x04040404u;                        /* R4                                                     */
    *--stk_pt = (INT32U)0x11111111u;                        /* R11                                                    */
    *--stk_pt = (INT32U)0x10101010u;                        /* R10                                                    */
    *--stk_pt = (INT32U)0x09090909u;                        /* R9                                                     */
    *--stk_pt = (INT32U)0x08080808u;                        /* R8                                                     */
}


inline void CriticalDecNesting(void)
{
	UserEnterCritical();
	iNesting--;
}




#if (NESTING_INT == 1)

INT32U OS_CPU_SR_Save(void)
{
	INT32U priority;
	__asm
	(
		    "MRS     %0, PRIMASK         \n"
		    "CPSID   I					 \n"
			: "=r"   (priority)
	);

	return priority;
}


void OS_CPU_SR_Restore(INT32U SR)
{
	__asm volatile ("MSR PRIMASK, %0\n\t" : : "r" (SR) );
}



#endif


#if TICKLESS == 1
extern volatile INT32U	time_next_task;
extern volatile char 	normal_run;
extern BRTOS_Sem   		*sem_pino;

volatile int foi_low_power = 0;


void BRTOS_WakeUP(void)
{
	OS_SR_SAVE_VAR;

	// Se foi timer
	if(LLWU_F3 & LLWU_F3_MWUF0_MASK)
	  {
		  LLWU_F3 |= LLWU_F3_MWUF0_MASK;
		  LPTMR0_CSR |= LPTMR_CSR_TCF_MASK;  //Clear LPT Compare flag
	  }

	  // Se foi pino
	  if (LLWU_F2 & LLWU_F2_WUF14_MASK)
	  {
		    OSEnterCritical();

		    // Calcula o tempo de correção
		    volatile INT16U time = time_next_task-GetTime_LPTM();

		    LLWU_F2 |= LLWU_F2_WUF14_MASK;

			// Desliga interrupção
			LLWU_PE4 =  0;

			// Desliga a interrupção do pino
			GPIOPinIntDisable(GPIOD_BASE, GPIO_PIN_4);

		    foi_low_power = 1;

			if (!normal_run)
			{
				// Corrige o tempo
				OSIncCounter(time);

				// Configura o timer para o modo normal, um incremento por tick
				normal_run=1;
				LPTMDisable();
				Reconfigure_LPTM(0);
				LPTMEnable();
			}

			OSExitCritical();

			// Acorda processo que gerencia a interrupção
			OSSemPost(sem_pino);
	  }

	  // ************************
	  // Interrupt Exit
	  // ************************
	  OS_INT_EXIT_EXT();
	  // ************************

}


unsigned long test_fnc(void *pvCBData, unsigned long ulEvent,unsigned long ulMsgParam,void *pvMsgData)
{
	// Desliga a interrupção do pino
	GPIOPinIntDisable(GPIOD_BASE, GPIO_PIN_4);

	if (LLWU_F2 & LLWU_F2_WUF14_MASK)
	{
		LLWU_F2 |= LLWU_F2_WUF14_MASK;
	}

	// Desliga interrupção de low power
	LLWU_PE4 =  0;

	// Se entrar na interrupção do pino após entrar na low power, só limpa flag
	// senão, somente posta semaforo, pq estava acordado
	if (!foi_low_power)
	{
		// Acorda processo que gerencia a interrupção
		foi_low_power = 0;
		OSSemPost(sem_pino);
	}else
	{
		foi_low_power = 0;
	}

	  // ************************
	  // Interrupt Exit
	  // ************************
	  OS_INT_EXIT_EXT();
	  // ************************

	  return 0;
}

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

#endif
