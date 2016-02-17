#include "hardware.h"
#include "BRTOS.h"


#define LeftAlign   0
#define CenterAlign 1

#define PositiveDutyCyclePolarity 1
#define NegativeDutyCyclePolarity 0

////////////////////////////////////////////////
////////////////////////////////////////////////
///    Definições dos Módulos PWM            ///
////////////////////////////////////////////////
////////////////////////////////////////////////

void PWMSetup(INT8U TPM_Number, INT16U Frequency, INT16U Align,
              INT8U ChannelZero, INT16U DutyZero,INT16U PolarityZero, 
              INT8U ChannelOne,   INT16U DutyOne,   INT16U PolarityOne,
              INT8U ChannelTwo,   INT16U DutyTwo,   INT16U PolarityTwo,
              INT8U ChannelThree, INT16U DutyThree, INT16U PolarityThree,
              INT8U ChannelFour,  INT16U DutyFour,  INT16U PolarityFour,
              INT8U ChannelFive,  INT16U DutyFive,  INT16U PolarityFive);