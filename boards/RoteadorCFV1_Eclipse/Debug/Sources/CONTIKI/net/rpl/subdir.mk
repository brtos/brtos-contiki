################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/rpl/rpl-dag-root.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/rpl/rpl-dag.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/rpl/rpl-ext-header.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/rpl/rpl-icmp6.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/rpl/rpl-mrhof.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/rpl/rpl-of0.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/rpl/rpl-timers.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/rpl/rpl.c 

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
Sources/CONTIKI/net/rpl/rpl-dag-root.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/rpl/rpl-dag-root.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/rpl/rpl-dag.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/rpl/rpl-dag.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/rpl/rpl-ext-header.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/rpl/rpl-ext-header.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/rpl/rpl-icmp6.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/rpl/rpl-icmp6.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/rpl/rpl-mrhof.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/rpl/rpl-mrhof.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/rpl/rpl-of0.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/rpl/rpl-of0.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/rpl/rpl-timers.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/rpl/rpl-timers.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/rpl/rpl.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/rpl/rpl.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '


