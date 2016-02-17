/**********************************************************************************
@file   flash.c
@brief  Functions to handle MCU FLASH
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

#include "flash.h"

#if (defined __CWCC__)
#define NOP_DELAY()		      asm
      {
        NOP
        NOP
        NOP
        NOP
      }
#else
#define NOP_DELAY()	__asm__ volatile (	"nop \n\t" \
										"nop \n\t" \
										"nop \n\t" \
										"nop \n\t" );
#endif
/********************************************************************
*     Variables for flash code in RAM
********************************************************************/
CmdInRam_t CmdInRam;
pCmdInRam FnCmdInRam;


/********************************************************************
*     Flash subroutines
********************************************************************/
INT32U Flash_Read(INT32U data_addr) 
{
    return *(INT32U *)data_addr;
}

INT8U Flash_Cmd(INT8U Cmd)
{  
    
    FCMD = Cmd;
  
    FSTAT = 0x80;     // launch command
    
    if(FSTAT&0x30)
    {
      return 0xFF;
    }
    
    while(!FSTAT_FCCF)
    {
    }
     
  return 0x00;
  
}

//sector erase(1k bytes)
INT8U Flash_Erase(INT32U addr)
{
     INT8U i;
 #if (SIMU == 0)
    
    FnCmdInRam = (void*)((INT32U)&CmdInRam); 
    CmdInRam = *(CmdInRam_t *)(Flash_Cmd);
    FSTAT = 0x30;  
    
    *(INT32U *)addr = 0x55; 
    i = FnCmdInRam(0x40);
    __RESET_WATCHDOG();   
    return(i);    
    
#else

    
    for(i=0;i<255;i++)
    {
      *(INT32U *)addr = 0xFFFFFFFF;
      addr +=4;
    }
    
    *(INT32U *)addr = 0xFFFFFFFF;
    addr +=4;

    return 0x00;    

#endif       

}


// INT32U(32bit) programming
INT8U Flash_Prog(INT32U flash_addr, INT32U data_addr, INT8U number)
{
   
   INT32U i;
   INT8U result = 0;
   
#if (SIMU == 0)   
   
   FnCmdInRam = (void*)((INT32U)&CmdInRam); 
   CmdInRam = *(CmdInRam_t *)(Flash_Cmd);
   FSTAT = 0x30;
#endif 
    
   for(i=0;i<number;i++)
   {
      *(INT32U *)flash_addr = *(INT32U *)data_addr;
      
#if (SIMU == 0)     
      result= FnCmdInRam(0x20);

      NOP_DELAY();

      if(result == 0xFF)
      {
        __RESET_WATCHDOG(); 
        return 0xFF;
      }
#endif      
      flash_addr +=4;
      data_addr +=4;
   }
#if (SIMU == 0)
   __RESET_WATCHDOG();  
   return result;
#else
   return 0x00;
#endif
   
}
    

INT8U Flash_Verify(INT32U dst_addr, INT32U data_addr, INT8U length) 
{
  do
	 {
		if(*(INT32U *)dst_addr != *(INT32U *)data_addr) // compare two values
		{
		   return 0xFF;
		}	
		
		dst_addr +=4;
		data_addr +=4; 
	}	 
	while(--length);		
    
  return 0x00;
}


void Flash_Clock_Init(void)
{
  
  FSTAT = 0x30;
  FCDIV = 0x50; // flash clock must be set up in the range (150-200 kHz)
}

