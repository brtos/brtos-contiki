/**
@file   adc.c
@brief  Functions to handle MCU ADC
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

#include "adc.h"


/* for bandgap reference */
#define BANDGAP_ITERATIONS       10
#define BANDGAP_CHAN             (INT8U)27
static INT16U                    BandGap = 0; 

/* Config A/D converter */ 
void ADC_Setup(INT8U SpeedConverter, INT8U SampleTime, INT8U NumBits)
{
  INT8U ADconfig = 0;
  
  // Configuração do A/D
  /* ADC1SC2: ADACT=0,ADTRG=0,ACFE=0,ACFGT=0,??=0,??=0,??=0,??=0 */
  ADCSC2 = 0x00;              /* Disable HW trigger and autocompare */
  
  if(SpeedConverter == HighSpeed)
    ADconfig = (INT8U) (ADconfig & 0x7F);
  
  if(SpeedConverter == LowPower)
    ADconfig = (INT8U) (ADconfig | 0x80);
  
  
  if ((configCPU_CLOCK_HZ) < 8000000)
  {  
    ADconfig = (INT8U) (ADconfig & 0x9F);
  }
  else
  {
    if ((configCPU_CLOCK_HZ >> 1) < 8000000)
    {  
      ADconfig = (INT8U) (ADconfig | 0x20);
    } else
    {
      if ((configCPU_CLOCK_HZ >> 2) < 8000000)
      {
        ADconfig = (INT8U) (ADconfig | 0x40);
      }else
      {
        if ((configCPU_CLOCK_HZ >> 3) < 8000000)
          ADconfig = (INT8U) (ADconfig | 0x60);
      }
    }
  }
    
  
  if(SampleTime == ShortSampleTime)
    ADconfig = (INT8U) (ADconfig & 0xEF);
  
  if(SampleTime == LowPower)
    ADconfig = (INT8U) (LongSampleTime | 0x10);
  
  switch(NumBits)
  {
    case 8:
      ADconfig = (INT8U) (ADconfig & 0xF3);
      break;
    case 10:
      ADconfig = (INT8U) (ADconfig | 0x08);
      break;
    case 12:
      ADconfig = (INT8U) (ADconfig | 0x04);
      break;
    default:
      break;    
  }

  /* ADC1CFG: ADLPC=0,ADIV1=1,ADIV0=0,ADLSMP=0,MODE1=1,MODE0=0,ADICLK1=0,ADICLK0=0 */
  ADCCFG = ADconfig;              /* Set prescaler bits */ 
  /* ADC1SC1: COCO=0,AIEN=0,ADCO=0,ADCH4=1,ADCH3=1,ADCH2=1,ADCH1=1,ADCH0=1 */
  ADCSC1 = 0x1F;              /* Disable the module */
}

/* Return an A/D sample */
INT16U ADC_Conversion(INT8U chan)
{
  word return_ad = 0;
  ADCSC1 = (INT8U)(chan);    /* Inicia a medida de um canal */
  while(!ADCSC1_COCO){};  
  return_ad = ADCR;
  ADCSC1 = 0x1F;
  return return_ad;
}

/* Set bandgap reference */
INT8U ADC_Bandgap_Set(void){
  
  INT32U bandgap = 0;
  INT32U j=0;
  OS_SR_SAVE_VAR;
  
  /* Take average of bandgap channel */
  for(j=0;j<(1<<BANDGAP_ITERATIONS);j++)
  {
    OSEnterCritical();
      bandgap += (INT16U)ADC_Conversion(BANDGAP_CHAN);
    OSExitCritical();    
  }
  bandgap = (bandgap >> BANDGAP_ITERATIONS);
  
  if(bandgap != 0){
     OSEnterCritical();
        BandGap = (INT16U)bandgap;
     OSExitCritical();
     return BANDGAP_OK;
  } else{
     OSEnterCritical();
        BandGap = (INT16U)0;
     OSExitCritical();
     return BANDGAP_ERROR;
  }
  
}

/* Return bandgap reference */
INT16U ADC_Bandgap_Get(void){

  INT16U bandgap = 0;
  OS_SR_SAVE_VAR;
  OSEnterCritical();
    bandgap = BandGap;
  OSExitCritical();
  return bandgap;
}

