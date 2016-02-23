################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../../../contiki/core/net/rpl/rpl-dag-root.c \
../../../contiki/core/net/rpl/rpl-dag.c \
../../../contiki/core/net/rpl/rpl-ext-header.c \
../../../contiki/core/net/rpl/rpl-icmp6.c \
../../../contiki/core/net/rpl/rpl-mrhof.c \
../../../contiki/core/net/rpl/rpl-of0.c \
../../../contiki/core/net/rpl/rpl-timers.c \
../../../contiki/core/net/rpl/rpl.c 

OBJS += \
./Sources/CONTIKI/net/rpl/rpl-dag-root.o \
./Sources/CONTIKI/net/rpl/rpl-dag.o \
./Sources/CONTIKI/net/rpl/rpl-ext-header.o \
./Sources/CONTIKI/net/rpl/rpl-icmp6.o \
./Sources/CONTIKI/net/rpl/rpl-mrhof.o \
./Sources/CONTIKI/net/rpl/rpl-of0.o \
./Sources/CONTIKI/net/rpl/rpl-timers.o \
./Sources/CONTIKI/net/rpl/rpl.o 

C_DEPS += \
./Sources/CONTIKI/net/rpl/rpl-dag-root.d \
./Sources/CONTIKI/net/rpl/rpl-dag.d \
./Sources/CONTIKI/net/rpl/rpl-ext-header.d \
./Sources/CONTIKI/net/rpl/rpl-icmp6.d \
./Sources/CONTIKI/net/rpl/rpl-mrhof.d \
./Sources/CONTIKI/net/rpl/rpl-of0.d \
./Sources/CONTIKI/net/rpl/rpl-timers.d \
./Sources/CONTIKI/net/rpl/rpl.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/CONTIKI/net/rpl/rpl-dag-root.o: ../../../contiki/core/net/rpl/rpl-dag-root.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -Wa,-adhls="$@.lst" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/rpl/rpl-dag.o: ../../../contiki/core/net/rpl/rpl-dag.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -Wa,-adhls="$@.lst" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/rpl/rpl-ext-header.o: ../../../contiki/core/net/rpl/rpl-ext-header.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -Wa,-adhls="$@.lst" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/rpl/rpl-icmp6.o: ../../../contiki/core/net/rpl/rpl-icmp6.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -Wa,-adhls="$@.lst" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/rpl/rpl-mrhof.o: ../../../contiki/core/net/rpl/rpl-mrhof.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -Wa,-adhls="$@.lst" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/rpl/rpl-of0.o: ../../../contiki/core/net/rpl/rpl-of0.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -Wa,-adhls="$@.lst" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/rpl/rpl-timers.o: ../../../contiki/core/net/rpl/rpl-timers.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -Wa,-adhls="$@.lst" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/rpl/rpl.o: ../../../contiki/core/net/rpl/rpl.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -Wa,-adhls="$@.lst" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '


