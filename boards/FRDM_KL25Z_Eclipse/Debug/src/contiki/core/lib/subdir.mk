################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/contiki/core/lib/aes-128.c \
../src/contiki/core/lib/assert.c \
../src/contiki/core/lib/ccm-star.c \
../src/contiki/core/lib/crc16.c \
../src/contiki/core/lib/gcr.c \
../src/contiki/core/lib/ifft.c \
../src/contiki/core/lib/list.c \
../src/contiki/core/lib/me.c \
../src/contiki/core/lib/me_tabs.c \
../src/contiki/core/lib/memb.c \
../src/contiki/core/lib/mmem.c \
../src/contiki/core/lib/petsciiconv.c \
../src/contiki/core/lib/print-stats.c \
../src/contiki/core/lib/random.c \
../src/contiki/core/lib/ringbuf.c \
../src/contiki/core/lib/sensors.c \
../src/contiki/core/lib/settings.c \
../src/contiki/core/lib/trickle-timer.c 

OBJS += \
./src/contiki/core/lib/aes-128.o \
./src/contiki/core/lib/assert.o \
./src/contiki/core/lib/ccm-star.o \
./src/contiki/core/lib/crc16.o \
./src/contiki/core/lib/gcr.o \
./src/contiki/core/lib/ifft.o \
./src/contiki/core/lib/list.o \
./src/contiki/core/lib/me.o \
./src/contiki/core/lib/me_tabs.o \
./src/contiki/core/lib/memb.o \
./src/contiki/core/lib/mmem.o \
./src/contiki/core/lib/petsciiconv.o \
./src/contiki/core/lib/print-stats.o \
./src/contiki/core/lib/random.o \
./src/contiki/core/lib/ringbuf.o \
./src/contiki/core/lib/sensors.o \
./src/contiki/core/lib/settings.o \
./src/contiki/core/lib/trickle-timer.o 

C_DEPS += \
./src/contiki/core/lib/aes-128.d \
./src/contiki/core/lib/assert.d \
./src/contiki/core/lib/ccm-star.d \
./src/contiki/core/lib/crc16.d \
./src/contiki/core/lib/gcr.d \
./src/contiki/core/lib/ifft.d \
./src/contiki/core/lib/list.d \
./src/contiki/core/lib/me.d \
./src/contiki/core/lib/me_tabs.d \
./src/contiki/core/lib/memb.d \
./src/contiki/core/lib/mmem.d \
./src/contiki/core/lib/petsciiconv.d \
./src/contiki/core/lib/print-stats.d \
./src/contiki/core/lib/random.d \
./src/contiki/core/lib/ringbuf.d \
./src/contiki/core/lib/sensors.d \
./src/contiki/core/lib/settings.d \
./src/contiki/core/lib/trickle-timer.d 


# Each subdirectory must supply rules for building sources it contributes
src/contiki/core/lib/%.o: ../src/contiki/core/lib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src\Drivers" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src\Drivers\CPU" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src\Drivers\LPO" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src\Drivers\SPI" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src\Drivers\FLASH" -I"../../../boards/FRDM_KL25Z_Eclipse/../../brtos/includes" -I"../../../boards/FRDM_KL25Z_Eclipse/../../hal/GCC_CORTEX-M0" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core/net/rpl" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core/net/ip" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core/net/ipv6" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/platform/brtos" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/platform/brtos/cpu" -I"../../../boards/FRDM_KL25Z_Eclipse/../../libs" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/examples/rpl-border-router" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core/sys" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core/lib" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core/dev" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core/cfs" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src\CONFIG" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src\CoX\CoX_Peripheral\inc" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/platform/brtos/boards" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


