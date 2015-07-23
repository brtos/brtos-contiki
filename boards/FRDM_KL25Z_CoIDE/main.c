#include <stdint.h>

/* MCU and OS includes */
#include "BRTOS.h"
#include "MKL25Z4.h"
#include "system.h"
#include "xwdt.h"

/* Config. files */
#include "BoardConfig.h"
#include "tasks.h"        /* for tasks prototypes */

void main_app(void);

int main(void)
{
	// Init system clock
	xSysCtlClockSet(48000000, xSYSCTL_XTAL_8MHZ | xSYSCTL_OSC_MAIN);

	// Initialize system and tasks
	main_app();

	return 0;
}
