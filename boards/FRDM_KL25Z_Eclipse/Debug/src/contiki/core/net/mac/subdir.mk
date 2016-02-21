################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/contiki/core/net/mac/csma.c \
../src/contiki/core/net/mac/frame802154.c \
../src/contiki/core/net/mac/framer-802154.c \
../src/contiki/core/net/mac/framer-nullmac.c \
../src/contiki/core/net/mac/framer.c \
../src/contiki/core/net/mac/mac-sequence.c \
../src/contiki/core/net/mac/mac.c \
../src/contiki/core/net/mac/nullmac.c \
../src/contiki/core/net/mac/nullrdc-noframer.c \
../src/contiki/core/net/mac/nullrdc.c \
../src/contiki/core/net/mac/phase.c 

OBJS += \
./src/contiki/core/net/mac/csma.o \
./src/contiki/core/net/mac/frame802154.o \
./src/contiki/core/net/mac/framer-802154.o \
./src/contiki/core/net/mac/framer-nullmac.o \
./src/contiki/core/net/mac/framer.o \
./src/contiki/core/net/mac/mac-sequence.o \
./src/contiki/core/net/mac/mac.o \
./src/contiki/core/net/mac/nullmac.o \
./src/contiki/core/net/mac/nullrdc-noframer.o \
./src/contiki/core/net/mac/nullrdc.o \
./src/contiki/core/net/mac/phase.o 

C_DEPS += \
./src/contiki/core/net/mac/csma.d \
./src/contiki/core/net/mac/frame802154.d \
./src/contiki/core/net/mac/framer-802154.d \
./src/contiki/core/net/mac/framer-nullmac.d \
./src/contiki/core/net/mac/framer.d \
./src/contiki/core/net/mac/mac-sequence.d \
./src/contiki/core/net/mac/mac.d \
./src/contiki/core/net/mac/nullmac.d \
./src/contiki/core/net/mac/nullrdc-noframer.d \
./src/contiki/core/net/mac/nullrdc.d \
./src/contiki/core/net/mac/phase.d 


# Each subdirectory must supply rules for building sources it contributes
src/contiki/core/net/mac/%.o: ../src/contiki/core/net/mac/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src\Drivers" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src\Drivers\CPU" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src\Drivers\LPO" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src\Drivers\SPI" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src\Drivers\FLASH" -I"../../../boards/FRDM_KL25Z_Eclipse/../../brtos/includes" -I"../../../boards/FRDM_KL25Z_Eclipse/../../hal/GCC_CORTEX-M0" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core/net/rpl" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core/net/ip" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core/net/ipv6" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/platform/brtos" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/platform/brtos/cpu" -I"../../../boards/FRDM_KL25Z_Eclipse/../../libs" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/examples/rpl-border-router" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core/sys" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core/lib" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core/dev" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core/cfs" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src\CONFIG" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src\CoX\CoX_Peripheral\inc" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/platform/brtos/boards" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


