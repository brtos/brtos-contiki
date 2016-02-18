#ifndef APP_CONFIG_H
#define APP_CONFIG_H


/****************************************************************/
/* TASKS PRIORITY ASSIGNMENT                                    */
#define System_Time_Priority          (INT8U)30
#define RelayControl_Task_Priority    (INT8U)28
#define EnergyMetering_Task_Priority  (INT8U)2

/****************************************************************/
/* TASKS STACK SIZE ASSIGNMENT                                  */
#define System_Time_StackSize         (128 + 64)
#define RelayControl_StackSize        (352)
#define EnergyMetering_StackSize      (288)
#define GPSNET_App_StackSize          (352 + 384)
#define GPSNET_SensorsApp_StackSize   (288)
// #define Bootloader_Task_StackSize - see define below

/****************************************************************/
/** SMART METER APP CONFIG                                      */
#define   FATOR_TENSAO   (INT32S) 368 //365
#define   FATOR_CORRENTE (INT32S) 676 //564 // Multiplied by 100

#define   ENERGY_REGISTER_ADDR              0x0001FC00
#define   CURRENT_CALIB_REGISTER_ADDR       0x000021D8


#define   CALIB_CURRENT          0
#define   CALIB_VALUE            945

/* Sofware/app testing */
#define   SMARTMETER_TEST_CALCULATIONS      0

/*****************************************************************/
/** RELAY CONTROL APP CONFIG                                    */

#define RELAY_TURN_ON_TIME         1075
#define RELAY_CONTROL_PERIOD_MS    500
#define NIVEL_CC_SENSOR_TENSAO     2482

/* sensor EXATRON: 
V(x) = 0,05028x + 0,2425
Onde, V(x) é a tensão do fototransistor em Volts, e x é a luminosidade em LUX.

V(x) = 50.28x + 242.5 mV

LUX_MIN = 5 LUX  => V(5) = 493,9 mV  = 494
LUX_MAX = 15 LUX => V(15) = 996,7 mV  = 997

*/

#define LUX_MIN                    494 // 35
#define LUX_MAX                    997 // 3*LUX_MIN

#define RELAY_CHECK_CC             0
#define RELAY_TURNON_VOLTAGE       1

/*****************************************************************/
/** GPSNET SENSORS APP CONFIG                                    */
#define   REPORTING_PERIOD_MS       1000
#define   MAX_REPORTING_PERIOD_MS   10000
#define   REPORTING_JITTER_MS       100

/****************************************************************/
/** BOOTLOADER APP CONFIG                                       */  
// define if bootloader is enable (1) or not (0)
#define BOOTLOADER_ENABLE   1 

/* 
define the length of the data vector 
(if S19 file length is 64 bytes then the line will have 70 bytes) 
*/
#define VECTOR8_SIZE        70 
#define VECTOR32_SIZE       18 
#define FLASH_BLOCKS_1k     58
#define CODE_START          (INT32U)0x11010                                                                      
#define STATUS_ADDR         (INT32U)0x11000 
#define CRC_ADDR            (INT32U)0x11004
#define CODE_START_ADDRESS  (INT32U)0x02000

/*****************************************************************/
/*****************************************************************/
#define DEBUG_EXATRON  0

#endif

