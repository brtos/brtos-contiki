################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/CoX/CoX_Peripheral/src/xcore.c \
../src/CoX/CoX_Peripheral/src/xdebug.c \
../src/CoX/CoX_Peripheral/src/xgpio.c \
../src/CoX/CoX_Peripheral/src/xsysctl.c \
../src/CoX/CoX_Peripheral/src/xuart.c \
../src/CoX/CoX_Peripheral/src/xwdt.c 

OBJS += \
./src/CoX/CoX_Peripheral/src/xcore.o \
./src/CoX/CoX_Peripheral/src/xdebug.o \
./src/CoX/CoX_Peripheral/src/xgpio.o \
./src/CoX/CoX_Peripheral/src/xsysctl.o \
./src/CoX/CoX_Peripheral/src/xuart.o \
./src/CoX/CoX_Peripheral/src/xwdt.o 

C_DEPS += \
./src/CoX/CoX_Peripheral/src/xcore.d \
./src/CoX/CoX_Peripheral/src/xdebug.d \
./src/CoX/CoX_Peripheral/src/xgpio.d \
./src/CoX/CoX_Peripheral/src/xsysctl.d \
./src/CoX/CoX_Peripheral/src/xuart.d \
./src/CoX/CoX_Peripheral/src/xwdt.d 


# Each subdirectory must supply rules for building sources it contributes
src/CoX/CoX_Peripheral/src/%.o: ../src/CoX/CoX_Peripheral/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


