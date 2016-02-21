################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../../../brtos-contiki-platform/brtos/cpu/clock.c \
../../../brtos-contiki-platform/brtos/cpu/leds-arch.c \
../../../brtos-contiki-platform/brtos/cpu/mtarch.c \
../../../brtos-contiki-platform/brtos/cpu/rtimer-arch.c \
../../../brtos-contiki-platform/brtos/cpu/slip-arch.c \
../../../brtos-contiki-platform/brtos/cpu/watchdog.c \
../../../brtos-contiki-platform/brtos/cpu/xmem.c 

OBJS += \
./brtos-contiki-platform/brtos/cpu/clock.o \
./brtos-contiki-platform/brtos/cpu/leds-arch.o \
./brtos-contiki-platform/brtos/cpu/mtarch.o \
./brtos-contiki-platform/brtos/cpu/rtimer-arch.o \
./brtos-contiki-platform/brtos/cpu/slip-arch.o \
./brtos-contiki-platform/brtos/cpu/watchdog.o \
./brtos-contiki-platform/brtos/cpu/xmem.o 

C_DEPS += \
./brtos-contiki-platform/brtos/cpu/clock.d \
./brtos-contiki-platform/brtos/cpu/leds-arch.d \
./brtos-contiki-platform/brtos/cpu/mtarch.d \
./brtos-contiki-platform/brtos/cpu/rtimer-arch.d \
./brtos-contiki-platform/brtos/cpu/slip-arch.d \
./brtos-contiki-platform/brtos/cpu/watchdog.d \
./brtos-contiki-platform/brtos/cpu/xmem.d 


# Each subdirectory must supply rules for building sources it contributes
brtos-contiki-platform/brtos/cpu/clock.o: ../../../brtos-contiki-platform/brtos/cpu/clock.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

brtos-contiki-platform/brtos/cpu/leds-arch.o: ../../../brtos-contiki-platform/brtos/cpu/leds-arch.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

brtos-contiki-platform/brtos/cpu/mtarch.o: ../../../brtos-contiki-platform/brtos/cpu/mtarch.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

brtos-contiki-platform/brtos/cpu/rtimer-arch.o: ../../../brtos-contiki-platform/brtos/cpu/rtimer-arch.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

brtos-contiki-platform/brtos/cpu/slip-arch.o: ../../../brtos-contiki-platform/brtos/cpu/slip-arch.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

brtos-contiki-platform/brtos/cpu/watchdog.o: ../../../brtos-contiki-platform/brtos/cpu/watchdog.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

brtos-contiki-platform/brtos/cpu/xmem.o: ../../../brtos-contiki-platform/brtos/cpu/xmem.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


