/* The License
 * 
 * Copyright (c) 2015 Universidade Federal de Santa Maria
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
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
#include "mcu_driver.h"


/*****************************************************************************
 * @name     MCU_Init
 *
 * @brief:   Initialization of the MCU.
 *
 * @param  : None
 *
 * @return : None
 *****************************************************************************
 * It will configure the MCU to disable STOP and COP Modules.
 * It also set the MCG configuration and bus clock frequency.
 ****************************************************************************/
#include "core_cfv1.h"
#include "BRTOSConfig.h"
#include "HAL.h"

#define SET_VBR(x) \
__asm__ __volatile__ (" movec %0,%/vbr" : : "r" (x));

#define GET_VBR(x) \
__asm__ __volatile__ (" movec %/vbr, %0" : "=g" (x) : );

#define SET_CPUCR(x) \
__asm__ __volatile__ (" movec %0,%/cpucr" : : "r" (x));

#define GET_CPUCR(x) \
__asm__ __volatile__ (" movec %/cpucr, %0" : "=g" (x) : );


static void Mcu_Init(void)
{

	DisableInterrupts;

#if ((defined _MCF51MM256_H) || (defined _MCF51JE256_H) || (defined _MCF51JE128_H))
    SOPT1 = 0x32; /* Enable COP; enable bkgd, stop and wait mode */
                /*
                 *  0b01110010
                 *    ||||||||__ bit0: RESET Pin Enable
                 *    |||||||___ bit1: Background Debug Mode Pin Enable
                 *    ||||||____ bit2: Mini-FlexBus Security Level
                 *    |||||_____ bit3: Boot Loader Mode Select Status, Read Only bit
                 *    ||||______ bit4: WAIT Mode Enable
                 *    |||_______ bit5: STOP Mode enable
                 *    ||________ bit6: COP Watchdog Timeout
                 *    |_________ bit7: COP Watchdog Timeout
                 */    
                 
    SOPT2 = 0x06; /* set right endianess for USB module */
    
    /* System Power Management Status and Control 1 Register */
    SPMSC1 = 0x1D;
                /*
                 *  0b01011101
                 *    ||||||||__ bit0: Bandgap buffer enabled
                 *    |||||||___ bit1: Reserved, Read Only bit
                 *    ||||||____ bit2: Low-Voltage Detect(LVD) logic disabled
                 *    |||||_____ bit3: LVD disabled during stop mode
                 *    ||||______ bit4: LVDF does not generate hardware resets
                 *    |||_______ bit5: Hardware interrupt disabled(use polling)
                 *    ||________ bit6: If LVWF = 1, a low-voltage
                 *    |                condition has occurred
                 *    |_________ bit7: Low-voltage warning is not present
                 */    
                 
    /* System Power Management Status and Control 2 Register */
    SPMSC2 = 0x00;
                        /*
                         *  0b00000000
                         *    ||||||||__ bit0:   PPDC       Partlal Power Down Control
                         *    |||||||___ bit1:   0
                         *    ||||||____ bit2:   PPDACK Partlal Power Down Acknowledge
                         *    |||||_____ bit3:   PPDF       partlal Power Down Flag
                         *    ||||______ bit4:   LVWV       Low-Voltage Warning Voltage Select
                         *    |||_______ bit5:   LVDV       Low_Voltage Detect Voltage select
                         *    ||________ bit6:   0
                         *    |_________ bit7:   0
                         */
#elif (defined _MCF51QE128_H) || (defined _MCF51QE64_H) || (defined _MCF51QE32_H)

    /* ### MCF51QE128_80 "Cpu" init code ... */
     /* Common initialization of the write once registers */
     /* SOPT1: COPE=0,COPT=1,STOPE=1,WAITE=1,RSTOPE=0,BKGDPE=1,RSTPE=0 */
     #if (WATCHDOG == 1)
       SOPT1 = 0xB2;
     #else
       SOPT1 = 0x72;
     #endif
     SOPT2 = 0x08;
     /* SPMSC1: LVDF=0,LVDACK=0,LVDIE=0,LVDRE=1,LVDSE=1,LVDE=1,BGBE=1 */
     SPMSC1 = 0x1D;
     /* SPMSC2: LPR=0,LPRS=0,LPWUI=0,PPDF=0,PPDACK=0,PPDE=1,PPDC=0 */
     SPMSC2 = 0x02;
     /* SPMSC3: LVDV=0,LVWV=0,LVWIE=0 */
     SPMSC3 &= (unsigned char)~0x38;


     /* Initialization of CPU registers */
     #if (NESTING_INT == 1)
		 SET_VBR(0);
		 SET_CPUCR(0);
     #else
		 SET_VBR(0);
		 SET_CPUCR(0x12000000);
     #endif




     // Configura Clock interno com fonte de relógio
     // Barramento de 25Mhz

     /*  System clock initialization */
     /* ICSC1: CLKS=0,RDIV=0,IREFS=1,IRCLKEN=0,IREFSTEN=0 */
     ICSC1 = 0x04;                        /* Initialization of the ICS control register 1 */
     /* ICSC2: BDIV=0,RANGE=0,HGO=0,LP=0,EREFS=0,ERCLKEN=0,EREFSTEN=0 */
     ICSC2 = 0x00;                        /* Initialization of the ICS control register 2 */
#if (__GNUC__)
     while(!(ICSSC & ICSSC_IREFST_MASK)){}
#else
     while(!ICSSC_IREFST) {               /* Wait until the source of reference clock is internal clock */
     }
#endif
     /* ICSSC: DRST_DRS=2,DMX32=0 */
     ICSSC = (ICSSC & (unsigned char)~0x60) | (unsigned char)0x80; /* Initialization of the ICS status and control */
     while((ICSSC & 0xC0) != 0x80) {      /* Wait until the FLL switches to High range DCO mode */
     }

     /* INTC_WCR: ENB=1,MASK=0 */
     // Quando ENB = 1, permite voltar de um wait State
     // Ainda, configura a mascara de interrupção p/ zero
     // ou seja, qq interrupção pode retirar o processador do modo Wait
     INTC_WCR = 0x80;
#endif

#if ((defined _MCF51MM256_H) || (defined _MCF51JE256_H) || (defined _MCF51JE128_H))
    /*IO configuration*/
    PTAD  = 0x00;       /*PTA0--PTA7 are all available for JE256*/
    PTADD = 0x00;       /*Set input direction*/
    PTAPE = 0x00;       /*Pull-up disable*/
    PTASE = 0x00;       /*slew rate control*/
    PTADS = 0x00;       /*drive strength*/

    PTBD  = 0x00;       /*PTB0--PTB7 are all available for JE256*/
    PTBDD = 0x00;       /*Set input direction*/
    PTBPE = 0x00;       /*Pull-up disable*/
    PTBSE = 0x00;       /*slew rate control*/
    PTBDS = 0x00;       /*drive strength*/

    PTCD  = 0x00;       /*PTC0--PTC7 are all available for JE256*/
    PTCDD = 0x00;       /*Set input direction*/
    PTCPE = 0x00;       /*Pull-up disable*/
    PTCSE = 0x00;       /*slew rate control*/
    PTCDS = 0x00;       /*drive strength*/

    PTDD  = 0x00;       /*PTD0--PTD7 are all available for JE256*/
    PTDDD = 0x00;       /*Set input direction*/
    PTDPE = 0x00;       /*Pull-up disable*/
    PTDSE = 0x00;       /*slew rate control*/
    PTDDS = 0x00;       /*drive strength*/

    PTED  = 0x00;       /*PTE0--PTE7 are all available for JE256*/
    PTEDD = 0x00;       /*Set input direction*/
    PTEPE = 0x00;       /*Pull-up disable*/
    PTESE = 0x00;       /*slew rate control*/
    PTEDS = 0x00;       /*drive strength*/

    PTFD  = 0x00;       /*PTF0--PTF7 are all available for JE256*/
    PTFDD = 0x00;       /*Set input direction*/
    PTFPE = 0x00;       /*Pull-up disable*/
    PTFSE = 0x00;       /*slew rate control*/
    PTFDS = 0x00;       /*drive strength*/

    PTGD  = 0x00;       /*PTG0 is available for JE256/80 pins*/
    PTGDD = 0x00;       /*Set input direction*/
    PTGPE = 0x00;       /*Pull-up disable    */
    PTGSE = 0x00;       /*slew rate control*/
    PTGDS = 0x00;       /*drive strength */
#elif (defined _MCF51QE128_H) || (defined _MCF51QE64_H) || (defined _MCF51QE32_H)
     /* Common initialization of the CPU registers */
     /* SCGC1: TPM3=1,TPM2=1,TPM1=1,ADC=1,IIC2=0,IIC1=0,SCI2=0,SCI1=0 */
     SCGC1 = 0xF0;
     /* SCGC2: FLS=1,IRQ=0,KBI=0,ACMP=0,RTC=0,SPI2=1,SPI1=0 */
     SCGC2 = 0xC2;

     /* PTASE: PTASE7=0,PTASE6=0,PTASE4=0,PTASE3=0,PTASE2=0,PTASE1=0,PTASE0=0 */
     PTASE &= (unsigned char)~0xDF;
     /* PTBSE: PTBSE7=0,PTBSE6=0,PTBSE5=0,PTBSE4=0,PTBSE3=0,PTBSE2=0,PTBSE1=0,PTBSE0=0 */
     PTBSE = 0x00;
     /* PTCSE: PTCSE7=0,PTCSE6=0,PTCSE5=0,PTCSE4=0,PTCSE3=0,PTCSE2=0,PTCSE1=0,PTCSE0=0 */
     PTCSE = 0x00;
     /* PTDSE: PTDSE7=0,PTDSE6=0,PTDSE5=0,PTDSE4=0,PTDSE3=0,PTDSE2=0,PTDSE1=0,PTDSE0=0 */
     PTDSE = 0x00;
     /* PTESE: PTESE7=0,PTESE6=0,PTESE5=0,PTESE4=0,PTESE3=0,PTESE2=0,PTESE1=0,PTESE0=0 */
     PTESE = 0x00;
     /* PTFSE: PTFSE7=0,PTFSE6=0,PTFSE5=0,PTFSE4=0,PTFSE3=0,PTFSE2=0,PTFSE1=0,PTFSE0=0 */
     PTFSE = 0x00;
     /* PTGSE: PTGSE7=0,PTGSE6=0,PTGSE5=0,PTGSE4=0,PTGSE3=0,PTGSE2=0,PTGSE1=0,PTGSE0=0 */
     PTGSE = 0x00;
     /* PTHSE: PTHSE7=0,PTHSE6=0,PTHSE5=0,PTHSE4=0,PTHSE3=0,PTHSE2=0,PTHSE1=0,PTHSE0=0 */
     PTHSE = 0x00;
     /* PTJSE: PTJSE7=0,PTJSE6=0,PTJSE5=0,PTJSE4=0,PTJSE3=0,PTJSE2=0,PTJSE1=0,PTJSE0=0 */
     PTJSE = 0x00;
     /* PTADS: PTADS7=0,PTADS6=0,PTADS5=0,PTADS4=0,PTADS3=0,PTADS2=0,PTADS1=0,PTADS0=0 */
     PTADS = 0x00;
     /* PTBDS: PTBDS7=0,PTBDS6=0,PTBDS5=0,PTBDS4=0,PTBDS3=0,PTBDS2=0,PTBDS1=0,PTBDS0=0 */
     PTBDS = 0x00;
     /* PTCDS: PTCDS7=0,PTCDS6=0,PTCDS5=0,PTCDS4=0,PTCDS3=0,PTCDS2=0,PTCDS1=0,PTCDS0=0 */
     PTCDS = 0x00;
     /* PTDDS: PTDDS7=0,PTDDS6=0,PTDDS5=0,PTDDS4=0,PTDDS3=0,PTDDS2=0,PTDDS1=0,PTDDS0=0 */
     PTDDS = 0x00;
     /* PTEDS: PTEDS7=0,PTEDS6=0,PTEDS5=0,PTEDS4=0,PTEDS3=0,PTEDS2=0,PTEDS1=0,PTEDS0=0 */
     PTEDS = 0x00;
     /* PTFDS: PTFDS7=0,PTFDS6=0,PTFDS5=0,PTFDS4=0,PTFDS3=0,PTFDS2=0,PTFDS1=0,PTFDS0=0 */
     PTFDS = 0x00;
     /* PTGDS: PTGDS7=0,PTGDS6=0,PTGDS5=0,PTGDS4=0,PTGDS3=0,PTGDS2=0,PTGDS1=0,PTGDS0=0 */
     PTGDS = 0x00;
     /* PTHDS: PTHDS7=0,PTHDS6=0,PTHDS5=0,PTHDS4=0,PTHDS3=0,PTHDS2=0,PTHDS1=0,PTHDS0=0 */
     PTHDS = 0x00;
     /* PTJDS: PTJDS7=0,PTJDS6=0,PTJDS5=0,PTJDS4=0,PTJDS3=0,PTJDS2=0,PTJDS1=0,PTJDS0=0 */
     PTJDS = 0x00;
#endif
}

/*****************************************************************************
 * @name     MCG_Init
 *
 * @brief:   Initialization of the Multiple Clock Generator.
 *
 * @param  : None
 *
 * @return : None
 *****************************************************************************
 * Provides clocking options for the device, including a phase-locked
 * loop(PLL) and frequency-locked loop (FLL) for multiplying slower reference
 * clock sources
 ****************************************************************************/
static void MCG_Init(void)
{
#if ((defined _MCF51MM256_H) || (defined _MCF51JE256_H)|| (defined _MCF51JE128_H))
  /* Assume 12MHz external clock source connected. */
  
  /* In order to use the USB we need to enter PEE mode and MCGOUT set to 48 MHz. 
     Out of reset MCG is in FEI mode. */
  
  //------FBE MODE------  
  /* Assume 16MHz external clock source connected. */
  // RANGE = 1; HGO = 1; ERCLKEN=1; EREFS = 1; BDIV = 000
  MCGC2 = 0x36;
               /*
                *  0b00110110
                *    ||||||||__ bit0: External ref clock disabled in stop
                *    |||||||___ bit1: MCGERCLK active
                *    ||||||____ bit2: Oscillator requested
                *    |||||_____ bit3: FLL/PLL not disabled in bypass modes
                *    ||||______ bit4: Configure crystal oscillator for
                *    |||              high gain operation
                *    |||_______ bit5: High frequency range selected for
                *    ||               crystal oscillator of 1 MHz to 16 MHz
                *    ||________ bit6: Divides selected clock by 1
                *    |_________ bit7: Divides selected clock by 1
                */
  
  // DIV32 =1
  MCGC3 = 0x10;
               /*
                *  0b00010000
                *    ||||||||__ bit0: VCO Divider - Multiply by 32
                *    |||||||___ bit1: VCO Divider - Multiply by 32
                *    ||||||____ bit2: VCO Divider - Multiply by 32
                *    |||||_____ bit3: VCO Divider - Multiply by 32
                *    ||||______ bit4: Divide-by-32 is disabled
                *    |||_______ bit5: Clock monitor is disabled
                *    ||________ bit6: PLL is selected
                *    |_________ bit7: Generate an interrupt request on loss of lock
                */  
  
  // CLKS = 10; RDIV = 100; IREFS = 0;
  MCGC1 = 0xA0; 
               /*
                *  0b10100000
                *    ||||||||__ bit0: Internal ref clock stays enabled in stop
                *    |||||||          if IRCLKEN is set or if MCG is in FEI,
                *    |||||||          FBI or BLPI mode before entering stop.
                *    |||||||___ bit1: MCGIRCLK active
                *    ||||||____ bit2: External reference clock selected
                *    |||||_____ bit3: External Reference Divider
                *    ||||______ bit4: External Reference Divider
                *    |||_______ bit5: External Reference Divider
                *    ||________ bit6: External reference clock is selected
                *    |_________ bit7: External reference clock is selected
                */
#if (__GNUC__)

  // Wait for Reference Status bit to update
  while(MCGSC & MCGSC_IREFST_MASK){};

  // Wait for clock status bits to update
  while((MCGSC & MCGSC_CLKST_MASK) != (0b10 << MCGSC_CLKST_BITNUM)){};
#else
  // Wait for Reference Status bit to update
  while (MCGSC_IREFST){};
  
  // Wait for clock status bits to update 
  while (MCGSC_CLKST != 0b10){};
#endif




  //------PBE MODE------ 
  // PLLS =1; DIV32 = 1; VDIV = 1100 
  MCGC3 = 0x5C;
               /*
                *  0b01011100
                *    ||||||||__ bit0: VCO Divider - Multiply by 32
                *    |||||||___ bit1: VCO Divider - Multiply by 32
                *    ||||||____ bit2: VCO Divider - Multiply by 32
                *    |||||_____ bit3: VCO Divider - Multiply by 32
                *    ||||______ bit4: Divide-by-32 is disabled
                *    |||_______ bit5: Clock monitor is disabled
                *    ||________ bit6: PLL is selected
                *    |_________ bit7: Generate an interrupt request on loss of lock
                */    
#if (__GNUC__)
  // wait for PLL status bit to update
  while(!(MCGSC & MCGSC_PLLST_MASK)){};
  
  // Wait for LOCK bit to set
  while(!(MCGSC & MCGSC_LOCK_MASK)){};
#else
  // wait for PLL status bit to update
  while (!MCGSC_PLLST){};
  
  // Wait for LOCK bit to set 
  while (!MCGSC_LOCK){};
#endif


  
  //------PEE MODE------   
  // CLKS = 00; RDIV = 100; IREFS = 0
  MCGC1 = 0x20;
               /*
                *  0b00100000
                *    ||||||||__ bit0: Internal ref clock stays enabled in stop
                *    |||||||          if IRCLKEN is set or if MCG is in FEI,
                *    |||||||          FBI or BLPI mode before entering stop.
                *    |||||||___ bit1: MCGIRCLK active
                *    ||||||____ bit2: External reference clock selected
                *    |||||_____ bit3: External Reference Divider
                *    ||||______ bit4: External Reference Divider
                *    |||_______ bit5: External Reference Divider
                *    ||________ bit6: External reference clock is selected
                *    |_________ bit7: External reference clock is selected
                */  
#if (__GNUC__)
  while((MCGSC & MCGSC_CLKST_MASK) != (0b11 << MCGSC_CLKST_BITNUM)){};
#else
  // Wait for clock status bits to update 
  while (MCGSC_CLKST != 0b11){};
#endif

#endif
}


/*****************************************************************************
 *
 *    @name     System_Init
 *
 *    @brief    This function Initializes the system
 *
 *    @param    None
 *
 *    @return   None
 *
 ****************************************************************************
 * Intializes the MCU, MCG, KBI, RTC modules
 ***************************************************************************/
void System_Init(void)
{
    Mcu_Init(); /* initialize the MCU registers */
    MCG_Init(); /* initialize the MCG to generate 24MHz bus clock */
}
