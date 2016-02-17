
#include "pwm.h"

////////////////////////////////////////////////
////////////////////////////////////////////////
///    Rotinas do Módulo PWM TPM            ///
////////////////////////////////////////////////
////////////////////////////////////////////////
 
void PWMSetup(INT8U TPM_Number, INT16U Frequency, INT16U Align,
              INT8U ChannelZero, INT16U DutyZero,INT16U PolarityZero, 
              INT8U ChannelOne,   INT16U DutyOne,   INT16U PolarityOne,
              INT8U ChannelTwo,   INT16U DutyTwo,   INT16U PolarityTwo,
              INT8U ChannelThree, INT16U DutyThree, INT16U PolarityThree,
              INT8U ChannelFour,  INT16U DutyFour,  INT16U PolarityFour,
              INT8U ChannelFive,  INT16U DutyFive,  INT16U PolarityFive)
{
  INT16U module = 0;  
  INT8U prescale = 0;
  INT32U duty = 0;
  INT8U mode = 0;
/* ### Init_TPM init code */
  
  for (prescale = 0;prescale <=7;prescale++)
  {
    if (Align == LeftAlign)
      module = (configCPU_CLOCK_HZ / Frequency) >> prescale;
    
    if (Align == CenterAlign)
      module = (configCPU_CLOCK_HZ / Frequency) >> (prescale + 1);
  
    if (module < 0xFFFF)
       break;
  }
  
  
  /* TPM3SC: TOF=0,TOIE=0,CPWMS=0,CLKSB=0,CLKSA=0,PS2=0,PS1=0,PS0=0 */
  switch(TPM_Number)
  {
    case 1:
      TPM1SC = 0x00;                       /* Stop and reset counter */
      TPM1MOD = module;                    /* Period value setting */
      break;      
    case 2:
      TPM2SC = 0x00;                       /* Stop and reset counter */
      TPM2MOD = module;                    /* Period value setting */
      break;
    case 3:
      TPM3SC = 0x00;                       /* Stop and reset counter */
      TPM3MOD = module;                    /* Period value setting */
      break;
    default:
      TPM2SC = 0x00;                       /* Stop and reset counter */
      TPM2MOD = module;                    /* Period value setting */
      break;                  
  }
  
  if (ChannelZero == 1)
  {
    if (TPM_Number == 1) 
    {
      (void)(TPM1C0SC == 0);               /* Channel 0 int. flag clearing (first part) */  
    
      if(PolarityZero == PositiveDutyCyclePolarity)
        mode = 0x28;
      else
        mode = 0x24;
      
      /* TPM3C0SC: CH0F=0,CH0IE=0,MS0B=1,MS0A=0,ELS0B=0,ELS0A=1 */
      TPM1C0SC = mode;                     /* Int. flag clearing (2nd part) and channel 0 contr. register setting */
      TPM1C0V = (module * DutyZero) / 100; /* Compare 0 value setting */
    }
    
    if (TPM_Number == 2) 
    {
      (void)(TPM2C0SC == 0);               /* Channel 0 int. flag clearing (first part) */  
    
      if(PolarityZero == PositiveDutyCyclePolarity)
        mode = 0x28;
      else
        mode = 0x24;
      
      /* TPM3C0SC: CH0F=0,CH0IE=0,MS0B=1,MS0A=0,ELS0B=0,ELS0A=1 */
      TPM2C0SC = mode;                     /* Int. flag clearing (2nd part) and channel 0 contr. register setting */
      TPM2C0V = (module * DutyZero)/100;
    }
    
    if (TPM_Number == 3) 
    {
      (void)(TPM3C0SC == 0);               /* Channel 0 int. flag clearing (first part) */  
    
      if(PolarityZero == PositiveDutyCyclePolarity)
        mode = 0x28;
      else
        mode = 0x24;
      
      /* TPM3C0SC: CH0F=0,CH0IE=0,MS0B=1,MS0A=0,ELS0B=0,ELS0A=1 */
      TPM3C0SC = mode;                     /* Int. flag clearing (2nd part) and channel 0 contr. register setting */
      TPM3C0V = (module * DutyZero) / 100; /* Compare 0 value setting */
    }        
  }
  
  if (ChannelOne == 1)
  {
    if (TPM_Number == 1) 
    {  
      (void)(TPM1C1SC == 0);               /* Channel 0 int. flag clearing (first part) */  
    
      if(PolarityOne == PositiveDutyCyclePolarity)
        mode = 0x28;
      else
        mode = 0x24;    

      /* TPM3C0SC: CH0F=0,CH0IE=0,MS0B=1,MS0A=0,ELS0B=0,ELS0A=1 */
      TPM1C1SC = mode;                     /* Int. flag clearing (2nd part) and channel 0 contr. register setting */
      TPM1C1V = (module * DutyOne) / 100; /* Compare 0 value setting */
    }
    
    if (TPM_Number == 2) 
    {  
      (void)(TPM2C1SC == 0);               /* Channel 0 int. flag clearing (first part) */  
    
      if(PolarityOne == PositiveDutyCyclePolarity)
        mode = 0x28;
      else
        mode = 0x24;    

      /* TPM3C0SC: CH0F=0,CH0IE=0,MS0B=1,MS0A=0,ELS0B=0,ELS0A=1 */
      TPM2C1SC = mode;                     /* Int. flag clearing (2nd part) and channel 0 contr. register setting */
      TPM2C1V = (module * DutyOne) / 100; /* Compare 0 value setting */
    }
    
    if (TPM_Number == 3) 
    {  
      (void)(TPM3C1SC == 0);               /* Channel 0 int. flag clearing (first part) */  
    
      if(PolarityOne == PositiveDutyCyclePolarity)
        mode = 0x28;
      else
        mode = 0x24;    

      /* TPM3C0SC: CH0F=0,CH0IE=0,MS0B=1,MS0A=0,ELS0B=0,ELS0A=1 */
      TPM3C1SC = mode;                     /* Int. flag clearing (2nd part) and channel 0 contr. register setting */
      TPM3C1V = (module * DutyOne) / 100; /* Compare 0 value setting */
    }        
  }
  
  if (ChannelTwo == 1)
  {
    if (TPM_Number == 1) 
    {  
      (void)(TPM1C2SC == 0);               /* Channel 0 int. flag clearing (first part) */  
    
      if(PolarityTwo == PositiveDutyCyclePolarity)
        mode = 0x28;
      else
        mode = 0x24;
      
      /* TPM3C0SC: CH0F=0,CH0IE=0,MS0B=1,MS0A=0,ELS0B=0,ELS0A=1 */
      TPM1C2SC = mode;                     /* Int. flag clearing (2nd part) and channel 0 contr. register setting */
      TPM1C2V = (module * DutyTwo) / 100; /* Compare 0 value setting */
    }
    
    if (TPM_Number == 2) 
    {  
      (void)(TPM2C2SC == 0);               /* Channel 0 int. flag clearing (first part) */  
    
      if(PolarityTwo == PositiveDutyCyclePolarity)
        mode = 0x28;
      else
        mode = 0x24;
      
      /* TPM3C0SC: CH0F=0,CH0IE=0,MS0B=1,MS0A=0,ELS0B=0,ELS0A=1 */
      TPM2C2SC = mode;                     /* Int. flag clearing (2nd part) and channel 0 contr. register setting */
      TPM2C2V = (module * DutyTwo) / 100; /* Compare 0 value setting */
    }
          
    if (TPM_Number == 3) 
    {  
      (void)(TPM3C2SC == 0);               /* Channel 0 int. flag clearing (first part) */  
    
      if(PolarityTwo == PositiveDutyCyclePolarity)
        mode = 0x28;
      else
        mode = 0x24;
      
      /* TPM3C0SC: CH0F=0,CH0IE=0,MS0B=1,MS0A=0,ELS0B=0,ELS0A=1 */
      TPM3C2SC = mode;                     /* Int. flag clearing (2nd part) and channel 0 contr. register setting */
      TPM3C2V = (module * DutyTwo) / 100; /* Compare 0 value setting */
    }
  }
  
  if (ChannelThree == 1)
  {
    (void)(TPM3C3SC == 0);               /* Channel 0 int. flag clearing (first part) */  
    
    if(PolarityThree == PositiveDutyCyclePolarity)
      mode = 0x28;
    else
      mode = 0x24;
      
    /* TPM3C0SC: CH0F=0,CH0IE=0,MS0B=1,MS0A=0,ELS0B=0,ELS0A=1 */
    TPM3C3SC = mode;                     /* Int. flag clearing (2nd part) and channel 0 contr. register setting */
    TPM3C3V = (module * DutyThree) / 100; /* Compare 0 value setting */
  }
  
  if (ChannelFour == 1)
  {
    (void)(TPM3C4SC == 0);               /* Channel 0 int. flag clearing (first part) */  
    
    if(PolarityFour == PositiveDutyCyclePolarity)
      mode = 0x28;
    else
      mode = 0x24;
      
    /* TPM3C0SC: CH0F=0,CH0IE=0,MS0B=1,MS0A=0,ELS0B=0,ELS0A=1 */
    TPM3C4SC = mode;                     /* Int. flag clearing (2nd part) and channel 0 contr. register setting */
    TPM3C4V = (module * DutyFour) / 100; /* Compare 0 value setting */
  }
  
  if (ChannelFive == 1)
  {
    (void)(TPM3C5SC == 0);               /* Channel 0 int. flag clearing (first part) */  
    
    if(PolarityFive == PositiveDutyCyclePolarity)
      mode = 0x28;
    else
      mode = 0x24;
      
    /* TPM3C0SC: CH0F=0,CH0IE=0,MS0B=1,MS0A=0,ELS0B=0,ELS0A=1 */
    TPM3C5SC = mode;                     /* Int. flag clearing (2nd part) and channel 0 contr. register setting */
    TPM3C5V = (module * DutyFive) / 100; /* Compare 0 value setting */
  }          
     
  switch(TPM_Number)
  {
    case 1:
      (void)TPM1SC;                       /* Stop and reset counter */
      if (Align == LeftAlign) 
        TPM1SC = 0x08 + prescale;            /* Int. flag clearing (2nd part) and timer control register setting */
      if (Align == CenterAlign) 
        TPM1SC = 0x28 + prescale;            /* Int. flag clearing (2nd part) and timer control register setting */      
      break;
    case 2:
      (void)TPM2SC;                       /* Stop and reset counter */
      if (Align == LeftAlign) 
        TPM2SC = 0x08 + prescale;            /* Int. flag clearing (2nd part) and timer control register setting */
      if (Align == CenterAlign) 
        TPM2SC = 0x28 + prescale;            /* Int. flag clearing (2nd part) and timer control register setting */      
      break;
    case 3:
      (void)TPM3SC;                       /* Stop and reset counter */
      if (Align == LeftAlign) 
        TPM3SC = 0x08 + prescale;            /* Int. flag clearing (2nd part) and timer control register setting */
      if (Align == CenterAlign) 
        TPM3SC = 0x28 + prescale;            /* Int. flag clearing (2nd part) and timer control register setting */      
      break;
    default:
      (void)TPM2SC;                       /* Stop and reset counter */
      break;                  
  }
  /* TPM3SC: TOF=0,TOIE=0,CPWMS=0,CLKSB=0,CLKSA=1,PS2=0,PS1=0,PS0=0 */
 
    
}
