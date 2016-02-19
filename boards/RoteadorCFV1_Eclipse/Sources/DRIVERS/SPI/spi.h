/**********************************************************************************
@file   spi.h
@brief  Functions to handle MCU SPI
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
*********************************************************************************/

#ifndef _SPI_H
#define _SPI_H

#include "hardware.h"
#include "BRTOS.h"

#define ENABLE_SPI1   TRUE
#define ENABLE_SPI2   FALSE

void SPI_Init(unsigned char spi);


#if (ENABLE_SPI1 == TRUE)
extern void SPI1_SendChar(unsigned char data);
extern unsigned char SPI1_GetChar(void);
void SPI1_Write(unsigned char *data, int size);
void SPI1_Read(unsigned char *data, int size);
#endif


#if (ENABLE_SPI2 == TRUE)
extern void SPI2_SendChar(unsigned char data);
extern unsigned char SPI2_GetChar(void);
void SPI2_Write(unsigned char *data, int size);
void SPI2_Read(unsigned char *data, int size);
#endif


#endif
