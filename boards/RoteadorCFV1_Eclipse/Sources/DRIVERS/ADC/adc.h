/**
@file   adc.h
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

#include "hardware.h"
#include "BRTOS.h"

#ifndef _ADC_H
#define _ADC_H

////////////////////////////////////////////////
///    Functions for A/D converter           ///
////////////////////////////////////////////////

#define HighSpeed 0
#define LowPower  1

#define ShortSampleTime 0
#define LongSampleTime  1 

#define BANDGAP_OK      0
#define BANDGAP_ERROR   1 

#if (defined _MCF51JM128_H)
#define BANDGAP_MV      (1200)
#elif (defined _MCF51QE128_H)
#define BANDGAP_MV      (1170)
#else
#error "MCU not supported"
#endif

void ADC_Setup(INT8U SpeedConverter, INT8U SampleTime, INT8U NumBits);
INT16U ADC_Conversion(INT8U channel);

INT16U ADC_Bandgap_Get(void);
INT8U ADC_Bandgap_Set(void);

#endif
