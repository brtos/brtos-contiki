################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../../../contiki/core/net/mac/csma.c \
../../../contiki/core/net/mac/frame802154.c \
../../../contiki/core/net/mac/frame802154e-ie.c \
../../../contiki/core/net/mac/framer-802154.c \
../../../contiki/core/net/mac/framer-nullmac.c \
../../../contiki/core/net/mac/mac-sequence.c \
../../../contiki/core/net/mac/mac.c \
../../../contiki/core/net/mac/nordc.c \
../../../contiki/core/net/mac/nullmac.c \
../../../contiki/core/net/mac/nullrdc-noframer.c \
../../../contiki/core/net/mac/nullrdc.c \
../../../contiki/core/net/mac/phase.c 

OBJS += \
./contiki/net/mac/csma.o \
./contiki/net/mac/frame802154.o \
./contiki/net/mac/frame802154e-ie.o \
./contiki/net/mac/framer-802154.o \
./contiki/net/mac/framer-nullmac.o \
./contiki/net/mac/mac-sequence.o \
./contiki/net/mac/mac.o \
./contiki/net/mac/nordc.o \
./contiki/net/mac/nullmac.o \
./contiki/net/mac/nullrdc-noframer.o \
./contiki/net/mac/nullrdc.o \
./contiki/net/mac/phase.o 

C_DEPS += \
./contiki/net/mac/csma.d \
./contiki/net/mac/frame802154.d \
./contiki/net/mac/frame802154e-ie.d \
./contiki/net/mac/framer-802154.d \
./contiki/net/mac/framer-nullmac.d \
./contiki/net/mac/mac-sequence.d \
./contiki/net/mac/mac.d \
./contiki/net/mac/nordc.d \
./contiki/net/mac/nullmac.d \
./contiki/net/mac/nullrdc-noframer.d \
./contiki/net/mac/nullrdc.d \
./contiki/net/mac/phase.d 


# Each subdirectory must supply rules for building sources it contributes
contiki/net/mac/csma.o: ../../../contiki/core/net/mac/csma.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

contiki/net/mac/frame802154.o: ../../../contiki/core/net/mac/frame802154.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

contiki/net/mac/frame802154e-ie.o: ../../../contiki/core/net/mac/frame802154e-ie.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

contiki/net/mac/framer-802154.o: ../../../contiki/core/net/mac/framer-802154.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

contiki/net/mac/framer-nullmac.o: ../../../contiki/core/net/mac/framer-nullmac.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

contiki/net/mac/mac-sequence.o: ../../../contiki/core/net/mac/mac-sequence.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

contiki/net/mac/mac.o: ../../../contiki/core/net/mac/mac.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

contiki/net/mac/nordc.o: ../../../contiki/core/net/mac/nordc.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

contiki/net/mac/nullmac.o: ../../../contiki/core/net/mac/nullmac.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

contiki/net/mac/nullrdc-noframer.o: ../../../contiki/core/net/mac/nullrdc-noframer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

contiki/net/mac/nullrdc.o: ../../../contiki/core/net/mac/nullrdc.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

contiki/net/mac/phase.o: ../../../contiki/core/net/mac/phase.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I../../../contiki/core -I../../../contiki/core/net/ -I../../../contiki/core/sys -I../../../contiki/core/dev/ -I../../../contiki/core/lib/ -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../brtos-contiki-platform/mrf24j40 -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CORTEX-M0 -I../../../brtos-contiki-platform/brtos/boards -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-platform/brtos -I../../../libs -I../src/CoX/CoX_Peripheral/inc -I../src/CONFIG -I../src/Drivers -I../src/Drivers/CPU -I../src/Drivers/LPO -I../src/Drivers/SPI -I../src/Drivers/FLASH -I../src -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


