################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/contiki/core/net/rime/abc.c \
../src/contiki/core/net/rime/announcement.c \
../src/contiki/core/net/rime/broadcast-announcement.c \
../src/contiki/core/net/rime/broadcast.c \
../src/contiki/core/net/rime/chameleon-bitopt.c \
../src/contiki/core/net/rime/chameleon-raw.c \
../src/contiki/core/net/rime/chameleon.c \
../src/contiki/core/net/rime/channel.c \
../src/contiki/core/net/rime/collect-link-estimate.c \
../src/contiki/core/net/rime/collect-neighbor.c \
../src/contiki/core/net/rime/collect.c \
../src/contiki/core/net/rime/ipolite.c \
../src/contiki/core/net/rime/mesh.c \
../src/contiki/core/net/rime/multihop.c \
../src/contiki/core/net/rime/neighbor-discovery.c \
../src/contiki/core/net/rime/netflood.c \
../src/contiki/core/net/rime/packetqueue.c \
../src/contiki/core/net/rime/polite-announcement.c \
../src/contiki/core/net/rime/polite.c \
../src/contiki/core/net/rime/rimestats.c \
../src/contiki/core/net/rime/rmh.c \
../src/contiki/core/net/rime/route-discovery.c \
../src/contiki/core/net/rime/route.c \
../src/contiki/core/net/rime/rucb.c \
../src/contiki/core/net/rime/rudolph1.c \
../src/contiki/core/net/rime/rudolph2.c \
../src/contiki/core/net/rime/runicast.c \
../src/contiki/core/net/rime/stbroadcast.c \
../src/contiki/core/net/rime/stunicast.c \
../src/contiki/core/net/rime/timesynch.c \
../src/contiki/core/net/rime/trickle.c \
../src/contiki/core/net/rime/unicast.c 

OBJS += \
./src/contiki/core/net/rime/abc.o \
./src/contiki/core/net/rime/announcement.o \
./src/contiki/core/net/rime/broadcast-announcement.o \
./src/contiki/core/net/rime/broadcast.o \
./src/contiki/core/net/rime/chameleon-bitopt.o \
./src/contiki/core/net/rime/chameleon-raw.o \
./src/contiki/core/net/rime/chameleon.o \
./src/contiki/core/net/rime/channel.o \
./src/contiki/core/net/rime/collect-link-estimate.o \
./src/contiki/core/net/rime/collect-neighbor.o \
./src/contiki/core/net/rime/collect.o \
./src/contiki/core/net/rime/ipolite.o \
./src/contiki/core/net/rime/mesh.o \
./src/contiki/core/net/rime/multihop.o \
./src/contiki/core/net/rime/neighbor-discovery.o \
./src/contiki/core/net/rime/netflood.o \
./src/contiki/core/net/rime/packetqueue.o \
./src/contiki/core/net/rime/polite-announcement.o \
./src/contiki/core/net/rime/polite.o \
./src/contiki/core/net/rime/rimestats.o \
./src/contiki/core/net/rime/rmh.o \
./src/contiki/core/net/rime/route-discovery.o \
./src/contiki/core/net/rime/route.o \
./src/contiki/core/net/rime/rucb.o \
./src/contiki/core/net/rime/rudolph1.o \
./src/contiki/core/net/rime/rudolph2.o \
./src/contiki/core/net/rime/runicast.o \
./src/contiki/core/net/rime/stbroadcast.o \
./src/contiki/core/net/rime/stunicast.o \
./src/contiki/core/net/rime/timesynch.o \
./src/contiki/core/net/rime/trickle.o \
./src/contiki/core/net/rime/unicast.o 

C_DEPS += \
./src/contiki/core/net/rime/abc.d \
./src/contiki/core/net/rime/announcement.d \
./src/contiki/core/net/rime/broadcast-announcement.d \
./src/contiki/core/net/rime/broadcast.d \
./src/contiki/core/net/rime/chameleon-bitopt.d \
./src/contiki/core/net/rime/chameleon-raw.d \
./src/contiki/core/net/rime/chameleon.d \
./src/contiki/core/net/rime/channel.d \
./src/contiki/core/net/rime/collect-link-estimate.d \
./src/contiki/core/net/rime/collect-neighbor.d \
./src/contiki/core/net/rime/collect.d \
./src/contiki/core/net/rime/ipolite.d \
./src/contiki/core/net/rime/mesh.d \
./src/contiki/core/net/rime/multihop.d \
./src/contiki/core/net/rime/neighbor-discovery.d \
./src/contiki/core/net/rime/netflood.d \
./src/contiki/core/net/rime/packetqueue.d \
./src/contiki/core/net/rime/polite-announcement.d \
./src/contiki/core/net/rime/polite.d \
./src/contiki/core/net/rime/rimestats.d \
./src/contiki/core/net/rime/rmh.d \
./src/contiki/core/net/rime/route-discovery.d \
./src/contiki/core/net/rime/route.d \
./src/contiki/core/net/rime/rucb.d \
./src/contiki/core/net/rime/rudolph1.d \
./src/contiki/core/net/rime/rudolph2.d \
./src/contiki/core/net/rime/runicast.d \
./src/contiki/core/net/rime/stbroadcast.d \
./src/contiki/core/net/rime/stunicast.d \
./src/contiki/core/net/rime/timesynch.d \
./src/contiki/core/net/rime/trickle.d \
./src/contiki/core/net/rime/unicast.d 


# Each subdirectory must supply rules for building sources it contributes
src/contiki/core/net/rime/%.o: ../src/contiki/core/net/rime/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DMKL25Z4 -DHSE_VALUE=8000000 -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_IPH_LEN=40 -DUIP_FRAGH_LEN=8 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/kl25-sc" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src\Drivers" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src\Drivers\CPU" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src\Drivers\LPO" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src\Drivers\SPI" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src\Drivers\FLASH" -I"../../../boards/FRDM_KL25Z_Eclipse/../../brtos/includes" -I"../../../boards/FRDM_KL25Z_Eclipse/../../hal/GCC_CORTEX-M0" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core/net/rpl" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core/net/ip" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core/net/ipv6" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/platform/brtos" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/platform/brtos/cpu" -I"../../../boards/FRDM_KL25Z_Eclipse/../../libs" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/examples/rpl-border-router" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core/sys" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core/lib" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core/dev" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/core/cfs" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src\CONFIG" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src\CoX\CoX_Peripheral\inc" -I"E:\carlos\GIT_BRTOS\brtos-contiki\boards\FRDM_KL25Z_Eclipse\src" -I"../../../boards/FRDM_KL25Z_Eclipse/../../contiki/platform/brtos/boards" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


