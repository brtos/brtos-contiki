///////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////
/////                                                     /////
/////                   OS User Defines                   /////
/////                                                     /////
/////             !User configuration defines!            /////
/////                                                     /////
///////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////

#ifndef BRTOS_CONFIG_H
#define BRTOS_CONFIG_H


/// Define if DEBUG mode
#define DEBUG           1

/// Define if LOW_POWER_MODE is enabled
#define LOW_POWER_MODE  0

/// Define BUILD_VERSION by date and time
#include "dateasint.h"
#define BUILD_VERSION     (DATE_AS_INT)

/// Define if verbose info is available
#define VERBOSE 0

/// Define if error check is available
#define ERROR_CHECK 0

/// Define if stack check is enable
#define STACK_CHECK   1

/// Define if whatchdog is active
#define WATCHDOG 1

/// Define if compute cpu load is active
#define COMPUTES_CPU_LOAD 0

// The Nesting define must be set in the file HAL.h
// Example:
/// Define if nesting interrupt is active
//#define NESTING_INT 0

/// Define Number of Priorities
#define NUMBER_OF_PRIORITIES 32

/// Define the maximum number of Tasks to be Installed
/// must always be equal or higher to NumberOfInstalledTasks
#define NUMBER_OF_TASKS (INT8U)8

/// Define if OS Trace is active
#define OS_TRACE 0

#if (OS_TRACE == 1)  
  #include "debug_stack.h"
#endif

/// Define if TimerHook function is active
#define TIMER_HOOK_EN 1

/// Define if IdleHook function is active
#define IDLE_HOOK_EN 0

/// Enable or disable semaphore controls
#define BRTOS_SEM_EN           1

/// Enable or disable mutex controls
#define BRTOS_MUTEX_EN         1

/// Enable or disable mailbox controls
#define BRTOS_MBOX_EN          1

/// Enable or disable queue controls
#define BRTOS_QUEUE_EN         1

/// Enable or disable queue 16 bits controls
#define BRTOS_QUEUE_16_EN      0

/// Enable or disable queue 32 bits controls
#define BRTOS_QUEUE_32_EN      0

/// Defines the maximum number of semaphores\n
/// Limits the memory allocation for semaphores
#define BRTOS_MAX_SEM          10

/// Defines the maximum number of mutexes\n
/// Limits the memory allocation for mutex
#define BRTOS_MAX_MUTEX        4

/// Defines the maximum number of mailboxes\n
/// Limits the memory allocation mailboxes
#define BRTOS_MAX_MBOX         1

/// Defines the maximum number of queues\n
/// Limits the memory allocation for queues
#define BRTOS_MAX_QUEUE        3


/// TickTimer Defines
#define configCPU_CLOCK_HZ          (INT32U)25165824    ///< CPU clock in Hertz
#define configTICK_RATE_HZ          (INT32U)1000        ///< Tick timer rate in Hertz
#define configTIMER_PRE_SCALER      0                   ///< Informs if there is a timer prescaler
#define configRTC_CRISTAL_HZ        (INT32U)1000
#define configRTC_PRE_SCALER        10
#define OS_RTC_EN                   0

/// Defines the tick timer interrupt handler code (clear flag) of the choosen microcontroller
#define TIMER_CTRL              TPM1SC
#define TICKTIMER_INT_HANDLER   TPM1SC_TOF = 0
#define TIMER_MODULE            TPM1MOD
#define TIMER_COUNTER           TPM1CNT

// Stack Size of the Idle Task
#define IDLE_STACK_SIZE             (INT16U)188


/// Stack Defines
/// Coldfire with 8KB of RAM: 107 * 32 bytes = 3.4KB of Virtual Stack
#define HEAP_SIZE 111*32

// Queue heap defines
// Configurado com 1KB p/ filas
#define QUEUE_HEAP_SIZE 6*128


#endif