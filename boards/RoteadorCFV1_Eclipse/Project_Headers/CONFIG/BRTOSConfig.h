///////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////
/////                                                     /////
/////                   OS User Defines                   /////
/////                                                     /////
/////             !User configuration defines!            /////
/////                                                     /////
///////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////
#define BOARD_ROTEADORCFV1			3
#define BRTOS_PLATFORM 			BOARD_ROTEADORCFV1

/// Define MCU endianess
#define BRTOS_ENDIAN			BRTOS_BIG_ENDIAN

/// Define if verbose info is available
#define VERBOSE 				0

/// Define if error check is available
#define ERROR_CHECK 			1

/// Define if LOW_POWER_MODE is enabled
#define LOW_POWER_MODE  		0

/// Define if whatchdog is active
#define WATCHDOG 				0

/// Define if compute cpu load is active
#define COMPUTES_CPU_LOAD 		1

// The Nesting define must be set in the file HAL.h
// Example:
/// Define if nesting interrupt is active
//#define NESTING_INT 0

/// Define Number of Priorities
#define NUMBER_OF_PRIORITIES 	8

/// Define the maximum number of Tasks to be Installed
/// must always be equal or higher to NumberOfInstalledTasks
#define NUMBER_OF_TASKS 	(4)

/// Enable or disable the dynamic task install and uninstall
#define BRTOS_DYNAMIC_TASKS_ENABLED 0

/// Defines the memory allocation and deallocation function to the dynamic queues
#include "umm_malloc.h"
#define BRTOS_ALLOC   umm_malloc
#define BRTOS_DEALLOC umm_free

#define configMAX_TASK_NAME_LEN 32

/// Define if OS Trace is active
#define OSTRACE 				0

/// Define if TimerHook function is active
#define TIMER_HOOK_EN 			1

/// Define if IdleHook function is active
#define IDLE_HOOK_EN 			0

/// Enable or disable semaphore controls
#define BRTOS_SEM_EN           1

/// Enable or disable mutex controls
#define BRTOS_MUTEX_EN         1

/// Enable or disable mailbox controls
#define BRTOS_MBOX_EN          0

/// Enable or disable queue controls
#define BRTOS_QUEUE_EN         1

/// Enable or disable queue 16 bits controls
#define BRTOS_QUEUE_16_EN      0

/// Enable or disable queue 32 bits controls
#define BRTOS_QUEUE_32_EN      0

/// Enable or disable timers service
#define BRTOS_TMR_EN           0

/// Enable or disable binary semaphore controls
#define BRTOS_BINARY_SEM_EN	   1

/// Enable or disable dynamic queue controls
#define BRTOS_DYNAMIC_QUEUE_ENABLED	1

/// Defines the maximum number of semaphores\n
/// Limits the memory allocation for semaphores
#define BRTOS_MAX_SEM          2

/// Defines the maximum number of mutexes\n
/// Limits the memory allocation for mutex
#define BRTOS_MAX_MUTEX        2

/// Defines the maximum number of mailboxes\n
/// Limits the memory allocation mailboxes
#define BRTOS_MAX_MBOX         1

/// Defines the maximum number of queues\n
/// Limits the memory allocation for queues
#define BRTOS_MAX_QUEUE        1


/// TickTimer Defines
#define configCPU_CLOCK_HZ          	(INT32U)25165824   ///< CPU clock in Hertz
#define configTICK_RATE_HZ          (INT32U)1000        ///< Tick timer rate in Hertz
#define configTIMER_PRE_SCALER      0                   ///< Informs if there is a timer prescaler
#define configRTC_CRISTAL_HZ        (INT32U)1000
#define configRTC_PRE_SCALER        10
#define OSRTCEN                     0


// Stack Size of the Idle Task
#define IDLE_STACK_SIZE             (192)
#define SYSTEM_TIME_STACK_SIZE		(192)
#define CONTIKI_STACK_SIZE			(1024+256)


/// Stack Defines
#define HEAP_SIZE 				(IDLE_STACK_SIZE+SYSTEM_TIME_STACK_SIZE+CONTIKI_STACK_SIZE)

// Queue heap defines
#define QUEUE_HEAP_SIZE 		1

// Dynamic head define. To be used by DynamicInstallTask and Dynamic Queues
#define DYNAMIC_HEAP_SIZE		1

