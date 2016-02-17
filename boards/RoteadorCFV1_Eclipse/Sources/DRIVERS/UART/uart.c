/**********************************************************************************
@file   uart.c
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
*********************************************************************************/

#include "hardware.h"
#include "uart.h" 
#include "BoardConfig.h"

 
#if (UART == 1)
  #define UART_CTRL1    SCI1C1
  #define UART_CTRL2    SCI1C2
  #define UART_CTRL3    SCI1C3
  #define UART_STAT1    SCI1S1
  #define UART_STAT2    SCI1S2
  #define UART_DATA     SCI1D
  #define UART_BDH      SCI1BDH
  #define UART_BDL      SCI1BDL
#elif (UART == 2)
  #define UART_CTRL1    SCI2C1
  #define UART_CTRL2    SCI2C2
  #define UART_CTRL3    SCI2C3
  #define UART_STAT1    SCI2S1
  #define UART_STAT2    SCI2S2
  #define UART_DATA     SCI2D
  #define UART_BDH      SCI2BDH
  #define UART_BDL      SCI2BDL
#endif

#if UART == 1 || UART == 2

// Events to handle UART Comm
BRTOS_Mutex *SerialResource;
BRTOS_Sem   *SerialTX;
BRTOS_Queue *Serial;
OS_QUEUE    SerialPortBuffer; 
static INT8U receive_byte = 0;

#define SERIALPORT_BUFFERSIZE  16

void serial_tx(void);

#if (NESTING_INT == 1)
#pragma TRAP_PROC
void serial_tx(void)
#else
interrupt void serial_tx(void)
#endif
{
  // ************************
  // Entrada de interrupção
  // ************************
  OS_INT_ENTER();

  // Tratamento da interrupção 
  UART_CTRL2 &= ~(1<<6);
  (void)UART_STAT1;   /* Leitura do registrador para analisar o estado da transmissão */
  (void)UART_CTRL3;   /* Leitura do registrador para limpar o bit de paridade */  
  
  #if (NESTING_INT == 1)
    OS_ENABLE_NESTING();
  #endif  
  
  (void)OSSemPost(SerialTX);
  
  // ************************
  // Interrupt Exit
  // ************************
  OS_INT_EXIT();  
  // ************************
}

// Função para adquirir direito exclusivo a porta serial
void UART_acquire(void)
{
  // Aloca o recurso da porta serial
  OSMutexAcquire(SerialResource,0);
}

//Função para liberar a porta serial
void UART_release(void)
{
  // Libera o recurso da porta serial
  OSMutexRelease(SerialResource);
}


void UART_putchar(char caracter)
{
  UART_DATA = caracter;     /* Armazena o caracter a ser transmitido no registrador de transmissão */
  UART_CTRL2 |= (1<<6);
  (void)OSSemPend(SerialTX,5);
  
}

void UART_print(CHAR8 *string)
{

  while(*string)
  { 
    UART_DATA = *string;     /* Armazena o caracter a ser transmitido no registrador de transmissão */
    UART_CTRL2 |= (1<<6);
    (void)OSSemPend(SerialTX,5);
    string++;
  }

}

void serial_rx(void);

#if (NESTING_INT == 1)
#pragma TRAP_PROC
void serial_rx(void)
#else
interrupt void serial_rx(void)
#endif
{
  // ************************
  // Entrada de interrupção
  // ************************
  OS_INT_ENTER();

  // Tratamento da interrupção
  (void)UART_STAT1;  /* Leitura do registrador SCI1S1 para analisar o estado da transmissão */
  (void)UART_CTRL3;  /* Leitura do registrador SCI1C3 para limpar o bit de paridade */    
  receive_byte = UART_DATA; /* Leitura dos dados recebidos */
  
  #if (NESTING_INT == 1)
  OS_ENABLE_NESTING();
  #endif  
  
  if (OSQueuePost(Serial, receive_byte) == BUFFER_UNDERRUN)
  {
    // Problema: Estouro de buffer
    OSCleanQueue(Serial);
  }
  
  // ************************
  // Interrupt Exit
  // ************************
  OS_INT_EXIT();  
  // ************************
}

void serial_erro(void);

#if (NESTING_INT == 1)
#pragma TRAP_PROC
void serial_erro(void)
#else
interrupt void serial_erro(void)
#endif
{
  // ************************
  // Entrada de interrupção
  // ************************
  OS_INT_ENTER();

  // Tratamento da interrupção
  (void)UART_STAT1;  /* Leitura do registrador SCI1S1 para analisar o estado da transmissão */
  (void)UART_CTRL3;  /* Leitura do registrador SCI1C3 para limpar o bit de paridade */
  
  // A próxima ação depende do tipo de erro
  // Devemos analisar o erro ocorrido e tomar uma das atitudes abaixo
  (void)UART_DATA;    // Leitura do registrador SCI1D para limpar os indicativos de erro.
  UART_DATA = 0;      // Escrita no registrador SCI1D para limpar os indicativos de erro. 
  
  #if (NESTING_INT == 1)
  OS_ENABLE_NESTING();
  #endif  
  
  // ************************
  // Interrupt Exit
  // ************************
  OS_INT_EXIT();  
  // ************************
}

void UART_init(INT8U priority)
{  
  UART_CTRL1 = 0x12;               /* Configure the SCI */ 
  /* SCI1C3: R8=0,T8=0,TXDIR=0,TXINV=0,ORIE=0,NEIE=0,FEIE=0,PEIE=0 */  
  UART_CTRL3 = 0x00;               /* Disable error interrupts */ 
  /* SCI1S2: ??=0,??=0,??=0,??=0,??=0,BRK13=0,??=0,RAF=0 */
  UART_STAT2 = 0x00;                
  /* SCI1C2: TIE=0,TCIE=0,RIE=0,ILIE=0,TE=0,RE=0,RWU=0,SBK=0 */
  UART_CTRL2 = 0x00;               /* Disable all interrupts */ 
  
  // 0x4E = 19200 bauds at 24Mhz /////  0x52 = 19200 bauds at 25.33Mhz
  // 0x20 = 38400 bauds at 24Mhz /////  0x29 = 38400 bauds at 25.33Mhz
  // 0x16 = 57600 bauds at 24Mhz /////  0x1B = 57600 bauds at 25.33Mhz
  UART_BDH = 0x00;   /* Set high divisor register (enable device) */
  UART_BDL = 0x1B;   /* Set low divisor register (enable device) */        /* Configure the SCI */ 
  
  /* SCI1C3: ORIE=1,NEIE=1,FEIE=1,PEIE=1 */
  UART_CTRL3 |= 0x0F;                      /* Enable error interrupts */
  //SCI1C2 |= ( SCI1C2_TE_MASK | SCI1C2_RE_MASK | SCI1C2_RIE_MASK); /*  Enable transmitter, Enable receiver, Enable receiver interrupt */
  UART_CTRL2 = 0x2C;
  
  (void)UART_STAT1;    /* Leitura do registrador SCI1S1 para analisar o estado da transmissão */
  (void)UART_STAT2;    /* Leitura do registrador SCI1S1 para analisar o estado da transmissão */
  (void)UART_CTRL3;    /* Leitura do registrador SCI1C3 para limpar o bit de paridade */  

  // Cria um mutex com contador = 1, informando que o recurso está disponível
  // após a inicialização
  // Prioridade máxima a acessar o recurso = priority
  if (OSMutexCreate(&SerialResource,priority) != ALLOC_EVENT_OK)
  {
    while(1){};
  }  
  
  if (OSSemCreate(0, &SerialTX) != ALLOC_EVENT_OK)
  {
    while(1){};
  }  
  
  if (OSQueueCreate(SERIALPORT_BUFFERSIZE, &Serial) != ALLOC_EVENT_OK)
  {
    while(1){};
  } 
  
}
#endif
