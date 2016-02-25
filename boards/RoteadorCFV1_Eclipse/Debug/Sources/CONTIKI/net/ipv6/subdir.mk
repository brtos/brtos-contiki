################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../../../contiki/core/net/ipv6/sicslowpan.c \
../../../contiki/core/net/ipv6/uip-ds6-nbr.c \
../../../contiki/core/net/ipv6/uip-ds6-route.c \
../../../contiki/core/net/ipv6/uip-ds6.c \
../../../contiki/core/net/ipv6/uip-icmp6.c \
../../../contiki/core/net/ipv6/uip-nd6.c \
../../../contiki/core/net/ipv6/uip6.c 

OBJS += \
./Sources/CONTIKI/net/ipv6/sicslowpan.o \
./Sources/CONTIKI/net/ipv6/uip-ds6-nbr.o \
./Sources/CONTIKI/net/ipv6/uip-ds6-route.o \
./Sources/CONTIKI/net/ipv6/uip-ds6.o \
./Sources/CONTIKI/net/ipv6/uip-icmp6.o \
./Sources/CONTIKI/net/ipv6/uip-nd6.o \
./Sources/CONTIKI/net/ipv6/uip6.o 

C_DEPS += \
./Sources/CONTIKI/net/ipv6/sicslowpan.d \
./Sources/CONTIKI/net/ipv6/uip-ds6-nbr.d \
./Sources/CONTIKI/net/ipv6/uip-ds6-route.d \
./Sources/CONTIKI/net/ipv6/uip-ds6.d \
./Sources/CONTIKI/net/ipv6/uip-icmp6.d \
./Sources/CONTIKI/net/ipv6/uip-nd6.d \
./Sources/CONTIKI/net/ipv6/uip6.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/CONTIKI/net/ipv6/sicslowpan.o: ../../../contiki/core/net/ipv6/sicslowpan.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -DDEBUG=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -Wa,-adhls="$@.lst" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ipv6/uip-ds6-nbr.o: ../../../contiki/core/net/ipv6/uip-ds6-nbr.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -DDEBUG=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -Wa,-adhls="$@.lst" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ipv6/uip-ds6-route.o: ../../../contiki/core/net/ipv6/uip-ds6-route.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -DDEBUG=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -Wa,-adhls="$@.lst" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ipv6/uip-ds6.o: ../../../contiki/core/net/ipv6/uip-ds6.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -DDEBUG=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -Wa,-adhls="$@.lst" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ipv6/uip-icmp6.o: ../../../contiki/core/net/ipv6/uip-icmp6.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -DDEBUG=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -Wa,-adhls="$@.lst" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ipv6/uip-nd6.o: ../../../contiki/core/net/ipv6/uip-nd6.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -DDEBUG=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -Wa,-adhls="$@.lst" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ipv6/uip6.o: ../../../contiki/core/net/ipv6/uip6.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -DDEBUG=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -Wa,-adhls="$@.lst" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '


