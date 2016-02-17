/**********************************************************************************
@file   spi.c
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

#include "BoardConfig.h"
#include "spi.h"


static INT8U SPIData = 0;

void SPI_Init(void)
{
  
  /* ### Init_SPI init code */
  (void)SPIS;                      /* Read the status register */
  (void)SPID;                         /* Read the device register */
  /* SPIC1: SPIE=0,SPE=0,SPTIE=0,MSTR=0,CPOL=0,CPHA=1,SSOE=0,LSBFE=0 */
  SPIC1 = 0x00;                       /* The SPRF interrupt flag is cleared when the SPI module is disabled. */
  
  /* SPIC2: MODFEN=0,BIDIROE=0,SPISWAI=0,SPC0=0 */
  // Modo bidirecional single-wire desativado
  SPIC2 = 0x00;                                      
  
  /* SPIBR: SPPR2=0,SPPR1=0,SPPR0=1,SPR2=0,SPR1=0,SPR0=0 */
  // Configura o clock da porta SPI p/ 6 Mhz --> 24Mhz / 2*2
  SPIBR = 0x10;
                                        
  (void)(SPIS == 0);                  /* Dummy read of the SPIS registr to clear the MODF flag */
  
  /* SPIC1: SPIE=0,SPE=0,SPTIE=0,MSTR=1,CPOL=0,CPHA=0,SSOE=0,LSBFE=0 */
  SPIC1 = 0x10;
  SPIC1_SPE = 1;
  
  (void)SPIS;  
  /* ### */
}




// Função para enviar dados pela porta SPI
void SPI_SendChar (INT8U data){
  while (!SPIS_SPTEF){};               /* wait until transmit buffer is empty*/
  
  (void)SPIS;
  SPID = data;                         /* Transmit counter */ 
  
  while (!SPIS_SPRF){};                  /* wait until receive buffer is full*/
    
  (void)SPIS;                            // Acknowledge flag
  SPIData = SPID;                        // Received data  
}


INT8U SPI_Get(void)
{
    SPI_SendChar(0x00);
          
    return SPIData;
}
