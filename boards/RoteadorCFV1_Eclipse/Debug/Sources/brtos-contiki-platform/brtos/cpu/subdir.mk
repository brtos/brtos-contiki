################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos-contiki-platform/brtos/cpu/clock.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos-contiki-platform/brtos/cpu/leds-arch.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos-contiki-platform/brtos/cpu/mtarch.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos-contiki-platform/brtos/cpu/rtimer-arch.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos-contiki-platform/brtos/cpu/slip-arch.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos-contiki-platform/brtos/cpu/watchdog.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos-contiki-platform/brtos/cpu/xmem.c 

OBJS += \
./Sources/brtos-contiki-platform/brtos/cpu/clock.o \
./Sources/brtos-contiki-platform/brtos/cpu/leds-arch.o \
./Sources/brtos-contiki-platform/brtos/cpu/mtarch.o \
./Sources/brtos-contiki-platform/brtos/cpu/rtimer-arch.o \
./Sources/brtos-contiki-platform/brtos/cpu/slip-arch.o \
./Sources/brtos-contiki-platform/brtos/cpu/watchdog.o \
./Sources/brtos-contiki-platform/brtos/cpu/xmem.o 

C_DEPS += \
./Sources/brtos-contiki-platform/brtos/cpu/clock.d \
./Sources/brtos-contiki-platform/brtos/cpu/leds-arch.d \
./Sources/brtos-contiki-platform/brtos/cpu/mtarch.d \
./Sources/brtos-contiki-platform/brtos/cpu/rtimer-arch.d \
./Sources/brtos-contiki-platform/brtos/cpu/slip-arch.d \
./Sources/brtos-contiki-platform/brtos/cpu/watchdog.d \
./Sources/brtos-contiki-platform/brtos/cpu/xmem.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/brtos-contiki-platform/brtos/cpu/clock.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos-contiki-platform/brtos/cpu/clock.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/brtos-contiki-platform/brtos/cpu/leds-arch.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos-contiki-platform/brtos/cpu/leds-arch.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/brtos-contiki-platform/brtos/cpu/mtarch.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos-contiki-platform/brtos/cpu/mtarch.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/brtos-contiki-platform/brtos/cpu/rtimer-arch.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos-contiki-platform/brtos/cpu/rtimer-arch.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/brtos-contiki-platform/brtos/cpu/slip-arch.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos-contiki-platform/brtos/cpu/slip-arch.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/brtos-contiki-platform/brtos/cpu/watchdog.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos-contiki-platform/brtos/cpu/watchdog.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/brtos-contiki-platform/brtos/cpu/xmem.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos-contiki-platform/brtos/cpu/xmem.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '


