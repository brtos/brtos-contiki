/**
@file   gpio.c
@brief  Functions to handle MCU GPIO
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

#include "gpio.h"

void GPIO_Setup(void)
{
  // Init ports
  PTAD = 0;
  PTBD = 0;
  PTCD = 0;
  PTDD = 0;
  PTED = 0;
  PTFD = 0;
  PTGD = 0;
  PTHD = 0;  
  
  /* I/O directions setup */
  PTADD = 0b11111100;
  PTBDD = 0b11011111;
  PTCDD = 0b11111111;
  PTDDD = 0b11110000;
  PTEDD = 0b11011111;
  PTFDD = 0b11111111;
  PTGDD = 0b11110011;
  PTHDD = 0b11111101;  
 
  PTEDS_PTEDS2 = 1;  
  //PTEDD_PTEDD2 = 1; 
  
#if (defined TEST_PIN && TEST_PIN == 1)   
  PIN_RELAY = 1; 
#endif
  
#if (BDM_ENABLE == 0)   
  BDM_DEBUG_OUT = 1;  /* turn off BDM_DEBUG_OUT */
#endif  
}
