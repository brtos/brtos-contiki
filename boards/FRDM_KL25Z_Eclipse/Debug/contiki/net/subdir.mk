################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../../../contiki/core/net/linkaddr.c \
../../../contiki/core/net/nbr-table.c \
../../../contiki/core/net/netstack.c \
../../../contiki/core/net/packetbuf.c \
../../../contiki/core/net/queuebuf.c 

OBJS += \
./contiki/net/linkaddr.o \
./contiki/net/nbr-table.o \
./contiki/net/netstack.o \
./contiki/net/packetbuf.o \
./contiki/net/queuebuf.o 

C_DEPS += \
./contiki/net/linkaddr.d \
./contiki/net/nbr-table.d \
./contiki/net/netstack.d \
./contiki/net/packetbuf.d \
./contiki/net/queuebuf.d 


# Each subdirectory must supply rules for building sources it contributes
contiki/net/linkaddr.o: ../../../contiki/core/net/linkaddr.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

contiki/net/nbr-table.o: ../../../contiki/core/net/nbr-table.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

contiki/net/netstack.o: ../../../contiki/core/net/netstack.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

contiki/net/packetbuf.o: ../../../contiki/core/net/packetbuf.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

contiki/net/queuebuf.o: ../../../contiki/core/net/queuebuf.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


