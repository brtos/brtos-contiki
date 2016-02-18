################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/ipv6/multicast/roll-tm.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/ipv6/multicast/smrf.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/ipv6/multicast/uip-mcast6-route.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/ipv6/multicast/uip-mcast6-stats.c 

OBJS += \
./Sources/CONTIKI/net/ipv6/multicast/roll-tm.o \
./Sources/CONTIKI/net/ipv6/multicast/smrf.o \
./Sources/CONTIKI/net/ipv6/multicast/uip-mcast6-route.o \
./Sources/CONTIKI/net/ipv6/multicast/uip-mcast6-stats.o 

C_DEPS += \
./Sources/CONTIKI/net/ipv6/multicast/roll-tm.d \
./Sources/CONTIKI/net/ipv6/multicast/smrf.d \
./Sources/CONTIKI/net/ipv6/multicast/uip-mcast6-route.d \
./Sources/CONTIKI/net/ipv6/multicast/uip-mcast6-stats.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/CONTIKI/net/ipv6/multicast/roll-tm.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/ipv6/multicast/roll-tm.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ipv6/multicast/smrf.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/ipv6/multicast/smrf.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ipv6/multicast/uip-mcast6-route.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/ipv6/multicast/uip-mcast6-route.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ipv6/multicast/uip-mcast6-stats.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/ipv6/multicast/uip-mcast6-stats.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '


