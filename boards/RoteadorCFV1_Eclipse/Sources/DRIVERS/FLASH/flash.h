/**********************************************************************************
@file   flash.h
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
#ifndef _FLASH_H
#define _FLASH_H

#include "BRTOS.h"

#define   SIMU      0

typedef INT8U (*pCmdInRam)(INT8U cmd);

typedef struct {
  unsigned char code[48];              
} CmdInRam_t;  

extern CmdInRam_t CmdInRam;
extern pCmdInRam FnCmdInRam;

void Flash_Clock_Init(void);
INT32U Flash_Read(INT32U data_addr);
INT8U Flash_Cmd(INT8U Cmd);
INT8U Flash_Erase(INT32U addr);
INT8U Flash_Prog(INT32U flash_addr, INT32U data_addr, INT8U number);    
INT8U Flash_Verify(INT32U dst_addr, INT32U data_addr, INT8U length);


#endif



