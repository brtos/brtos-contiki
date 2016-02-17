/**
@file   uart.h
@brief  Functions to handle MCU UART
@authors: Gustavo Weber Denardin
          Carlos Henrique Barriquello

Copyright (c) <2009-2013> <Universidade Federal de Santa Maria>

  * Software License Agreement
  *
  * The Software is owned by the authors, and is protected under 
  * applicable copyright laws. All rights are reserved.
  *
  * The above copyright notice shall be included in
  * all copies or substantial portions of the Software.
  *  
  * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
  * THE SOFTWARE. 
*/

#ifndef UART_H
#define UART_H

#include "BRTOS.h"

////////////////////////////////////////////////
///    UART module definitions               ///
////////////////////////////////////////////////

#define CR             13         //  ASCII code for carry return
#define LF             10         //  ASCII code for line feed 

// Public prototypes
void UART_init(INT8U priority);
void UART_acquire(void);
void UART_release(void);
void UART_putchar(char caracter);
void UART_print(char *string);


extern BRTOS_Queue *Serial;

#endif