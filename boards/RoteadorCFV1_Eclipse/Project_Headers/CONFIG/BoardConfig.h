#ifndef BOARD_CONFIG_H
#define BOARD_CONFIG_H


/******************************************************************/
/* ADC channels for voltage, current, temperature, light          */
/* Relay output pin                                               */

#define   PIN_RELAY           PTED_PTED2
#define   CHAN_LIGHT          (INT8U)18
#define   CHAN_VIN            (INT8U)1
#define   CHAN_VLOAD          (INT8U)0
#define   CHAN_ILOAD          (INT8U)19
#define   CORE_TEMP           (INT8U)26
/*********************************************************/

/*********************************************************/
/* EEPROM Config */
#define FLASH_SUPPORTED       1
#define EEPROM_ADDRESS        0x0001FC00
/*********************************************************/

/*********************************************************/
/* DBG Config */
#define BDM_ENABLE            1
#define BDM_DEBUG_OUT         PTAD_PTAD4
#define TEST_PIN              0
/*********************************************************/

/*************************************************/
/** Radio configuration - used by radio driver   */ 
// #define MAC64_MEM_ADDRESS    0x00001FF0

// Power levels
#define RFTX_0dB    0x00
#define RFTX_m10dB  0x40
#define RFTX_m20dB  0x80
#define RFTX_m30dB  0xC0
#define RFTX_m36dB  0xF8


// Transceiver Configuration
#define RF_INT_TIMER     1
#define RF_INT_KEYB      0
#define RF_INT_TYPE      RF_INT_TIMER

#define RFIF             TPM1C1SC_CH1F = 0  // Flag da interrupção externa
#define RFIE             TPM1C1SC_CH1IE     // habilita / desabilita interrupção externa
#define RFFLAG           TPM1C1SC   
#define RFINT_ENABLE     TPM1C1SC_CH1IE = 1 
#define RFINT_DISABLE    TPM1C1SC_CH1IE = 0
    
#define NEEDS_INIT_TIMER 0
#define RF_TPMSC         TPM1SC
#define RF_MOD           TPM1MOD



//#define ANT_CHIP

#ifdef ANT_CHIP
#define TX_POWER_LEVEL   RFTX_0dB       //RFTX_m30dB   // 6 dB for antenna chip
#else
#define TX_POWER_LEVEL   RFTX_0dB        
#endif

// #define TX_POWER_LEVEL   RFTX_0dB

#define TX_TIMEOUT       50


// Defines the radio pins
#define PHY_CS           PTDD_PTDD3         ///< CS pin  
#define PHY_CS_TRIS      PTDDD_PTDDD3       ///< CS direction pin
#define PHY_RESETn       PTED_PTED6         ///< RESET pin
#define PHY_RESETn_TRIS  PTEDD_PTEDD6       ///< RESET direction pin
#define PHY_WAKE         PTHD_PTHD1         ///< WAKE pin
#define PHY_WAKE_TRIS    PTHDD_PTHDD1       ///< WAKE direction pin

// Defines activity LED pin
//#define ACTIVITY_LED     PTCD_PTCD0       ///< RF activity LED  
//#define ACTIVITY_LED_DD  PTCDD_PTCDD0     ///< activity LED direction
//#define ACTIVITY_LED_DS  PTCDS_PTCDS0     ///< low power activity LED

// Defines the tick timer used to compute stocastic address
#define TIMER_ADDR       TPM1CNT          ///< Tick Timer register used in stocastic address generation

// Defines SPI port number
#define SPINB            2

#if (SPINB == 1)
#define SPIS             SPI1S
#define SPID             SPI1D
#define SPIC1            SPI1C1
#define SPIC2            SPI1C2
#define SPIBR            SPI1BR
#define SPIC1_SPE        SPI1C1_SPE
#define SPIS_SPTEF       SPI1S_SPTEF
#define SPIS_SPRF        SPI1S_SPRF
#elif (SPINB == 2)
#define SPIS             SPI2S
#define SPID             SPI2D
#define SPIC1            SPI2C1
#define SPIC2            SPI2C2
#define SPIBR            SPI2BR
#define SPIC1_SPE        SPI2C1_SPE
#define SPIS_SPTEF       SPI2S_SPTEF
#define SPIS_SPRF        SPI2S_SPRF
#endif

#define RADIO_DRIVER_WATCHDOG 0
#define PA_LEVEL          0x00  // -0.00 dBm
#define FREQUENCY_BAND    2400   
#define CHANNEL_ERROR     (INT8U)255 
#define RSSI_BUFFER_SIZE  50   //1-100 only

/****************************************************/

#endif