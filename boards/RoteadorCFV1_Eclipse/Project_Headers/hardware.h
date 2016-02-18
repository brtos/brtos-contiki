/**
* \file hardware.h
* \brief Processor macros, defines and registers declaration.
*
*
**/


#ifndef HARDWARE_H
#define HARDWARE_H

#include "derivative.h"          /* include peripheral declarations */

#if (defined __CWCC__)
#include <hidef.h>               /* for EnableInterrupts macro */
#elif (defined __GNUC__)
#include "core_cfv1.h"
#include "system.h"
#include "utilities.h"            
#endif

void _Entry(void);               /* Code entry point */

#endif
