#ifndef NET_CONFIG_H
#define NET_CONFIG_H

#include "BRTOS.h"

/// Define network support           
#define NETWORK_ENABLE                      1

// Network device types
#define   PAN_COORDINATOR                   0
#define   ROUTER                            1
#define   INSTALLER                         2

// Network device type: see options above
#define   DEVICE_TYPE                       ROUTER

// CPU memory alignment
#define CPU_32_BITS                         1
#define CPU_16_BITS                         0
#define CPU_8_BITS                          0

// Reactive up route - 1 = on, 0 = off
#define USE_REACTIVE_UP_ROUTE               0

// GPSNET Tasks Priorities
#define RF_EventHandlerPriority     (INT8U)31
#define GPSNET_Mutex_Priority       (INT8U)27 
#define MAC_HandlerPriority         (INT8U)22
#define NWK_HandlerPriority         (INT8U)23
#define APP0_Priority               (INT8U)24
#define APP1_Priority               (INT8U)25
#define APP2_Priority               (INT8U)26


// APPs signals 
#define SIGNAL_APP1       App1_event
//#define SIGNAL_APP2       App1_event

// GPSNET Tasks Stacks
#if ((DEVICE_TYPE == PAN_COORDINATOR) || (DEVICE_TYPE == INSTALLER))
#define GPSNET_RF_Event_StackSize    (384)
#define GPSNET_MAC_StackSize         (384)
#define GPSNET_NWK_StackSize         (1280)
#else
#define GPSNET_RF_Event_StackSize    (160)
#define GPSNET_MAC_StackSize         (288)
#define GPSNET_NWK_StackSize         (1024) // 1088
#endif


// First task number of the GPSNetwork tasks (used in the mutex only)
#define GPSNET_TASKS_INIT 2

/// Number of GPSNetwork tasks (used in the mutex only)
#define GPSNET_TASKS      4

#define BRTOS_MUTEX       0
#define EMULATED_MUTEX    1
#define NWK_MUTEX_TYPE    EMULATED_MUTEX

/// RF Buffer Size
#define RFBufferSize      (INT16U)768      // max. 6 packets (128B)

/// Memory locations for network address and configurations
#if (DEVICE_TYPE == PAN_COORDINATOR)
  #define LAT_MEM_ADDRESS    0x0001FC00
  #define LON_MEM_ADDRESS    0x0001FC04
  #define MAC16_MEM_ADDRESS
  #define MAC64_MEM_ADDRESS  0x00001FF0
  #define PANID_MEM_ADDRESS
  #define PANID_INIT_VALUE   0x4742
  #define MAC16_INIT_VALUE   0x0000
  #define ROUTC_INIT_VALUE   0x01  
#else 
  //#define LAT_MEM_ADDRESS    0x000021C0
  //#define LON_MEM_ADDRESS    0x000021C4
  //#define MAC16_MEM_ADDRESS  0x000021C8
  #define LAT_MEM_ADDRESS    0x00001000
  #define LON_MEM_ADDRESS    0x00001004
  #define MAC16_MEM_ADDRESS  0x00001008
  #define PANID_MEM_ADDRESS  0x0000100C
  #define MAC64_MEM_ADDRESS  0x00000FF0
  //#define MAC64_MEM_ADDRESS  0x00001FF0
  //#define PANID_MEM_ADDRESS  0x000021CC
  #define PANID_INIT_VALUE   0xFFFF
  #define MAC16_INIT_VALUE   0xFFFF
  #define ROUTC_INIT_VALUE   0x00  
#endif

// IEEE EUI - globally unique number
#define EUI_7 0xCA
#define EUI_6 0xBA
#define EUI_5 0x60                       
#define EUI_4 0x89
#define EUI_3 0x50
#define EUI_2 0x16
#define EUI_1 0x77
#define EUI_0 0x84


/// Configuration for tests only
//#define GPSNET_TEST_POSITION

#ifdef GPSNET_TEST_POSITION
  #define TEST_POSITION_X       (20600)
  #define TEST_POSITION_Y       (5700)
 
  #define TEST_LAT_GPS_DEG      0x00
  #define TEST_LAT_GPS_MIN      0x00
  #define TEST_LAT_GPS_SEC      0x50
  #define TEST_LAT_GPS_DECSEC   0x78               

  #define TEST_LONG_GPS_DEG     0x00            
  #define TEST_LONG_GPS_MIN     0x00
  #define TEST_LONG_GPS_SEC     0x16
  #define TEST_LONG_GPS_DECSEC  0x44
#endif


#define MULTICHANNEL_SUPPORT 1
#define NUM_ALLOWED_CHANNELS 1

#define FORCE_NO_MULTICHANNEL_SUPPORT 0


#endif









