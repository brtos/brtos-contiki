################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../system/src/newlib/_cxx.cpp 

C_SRCS += \
../system/src/newlib/_exit.c \
../system/src/newlib/_sbrk.c \
../system/src/newlib/_startup.c \
../system/src/newlib/_syscalls.c \
../system/src/newlib/assert.c 

OBJS += \
./system/src/newlib/_cxx.o \
./system/src/newlib/_exit.o \
./system/src/newlib/_sbrk.o \
./system/src/newlib/_startup.o \
./system/src/newlib/_syscalls.o \
./system/src/newlib/assert.o 

C_DEPS += \
./system/src/newlib/_exit.d \
./system/src/newlib/_sbrk.d \
./system/src/newlib/_startup.d \
./system/src/newlib/_syscalls.d \
./system/src/newlib/assert.d 

CPP_DEPS += \
./system/src/newlib/_cxx.d 


# Each subdirectory must supply rules for building sources it contributes
system/src/newlib/%.o: ../system/src/newlib/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -std=gnu++11 -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fno-threadsafe-statics -Wabi -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

system/src/newlib/%.o: ../system/src/newlib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


