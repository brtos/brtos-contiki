/*
 * Copyright (c) 2014, TU Braunschweig
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the Institute nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 */

#include "dev/slip.h"
#include "platform-conf.h"

#if (SLIP_COMM == SLIP_USB)
#include "virtual_com.h"
#elif (SLIP_COMM == SLIP_UART)
#include "drivers.h"
#else
#endif

#if BRTOS_CPU == COLDFIRE_V1
#define uart_putchar(UART_NUMBER, c)		CONCAT2_(putchar_uart,UART_NUMBER)((char)c)
#elif  BRTOS_CPU == ARM_Cortex_M0
#define UART_NUMBER		0
#define uart_putchar(UART_NUMBER, c)		(void)UARTPutChar(UART0_BASE, (char)c);
#else
#define uart_putchar(UART_NUMBER, c)
#endif

void
slip_arch_init(unsigned long ubr)
{	
   
	(void)ubr;

#if (SLIP_COMM == SLIP_USB)
#if BRTOS_CPU == COLDFIRE_V1	
    (void)CDC_Init(); /* Initialize the USB CDC Application */
#elif  BRTOS_CPU == ARM_Cortex_M0 
	USB_Init();	
	(void)cdc_Init(); /* Initialize the USB CDC Application */
#endif
#endif

#if (SLIP_COMM == SLIP_UART)
#if BRTOS_CPU == COLDFIRE_V1
	// Passado tamanho 0 de fila para n�o gerar fila do sistema
	// Passado prioridade 0 para n�o criar mutex
	uart_init(UART_NUMBER, 115200, 0, 0);
#elif  BRTOS_CPU == ARM_Cortex_M0
	// Passado tamanho 0 de fila para n�o gerar fila do sistema
	Init_UART0(115200, 0);
#endif
#endif
}

#define SLIP_END     0300

unsigned char buffer_send[256];
unsigned char buffer_send_i = 0;


/*-----------------------------------------------------------------------------------*/
void
slip_arch_writeb(unsigned char c)
{
#if (SLIP_COMM == SLIP_USB)
	while(GetStart_transactions() == FALSE)
	{
		DelayTask(10);
	}
	while(cdc_putch(c) != c)
	{
		//DelayTask(1);
	}
	if (c==SLIP_END)
	{
		cdc_process();
	}
#elif (SLIP_COMM == SLIP_UART)
	uart_putchar(UART_NUMBER, (char)c);
#endif

	buffer_send[buffer_send_i++]=c;
	
}

void slipdev_char_put(uint8_t c)
{
	(void)c;
}

uint8_t slipdev_char_poll(uint8_t *c)
{
	(void)c;
	return 0;
}
