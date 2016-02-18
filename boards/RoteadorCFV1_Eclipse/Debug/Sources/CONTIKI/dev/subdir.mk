################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/dev/leds.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/dev/nullradio.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/dev/serial-line.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/dev/slip.c 

OBJS += \
./Sources/CONTIKI/dev/leds.o \
./Sources/CONTIKI/dev/nullradio.o \
./Sources/CONTIKI/dev/serial-line.o \
./Sources/CONTIKI/dev/slip.o 

C_DEPS += \
./Sources/CONTIKI/dev/leds.d \
./Sources/CONTIKI/dev/nullradio.d \
./Sources/CONTIKI/dev/serial-line.d \
./Sources/CONTIKI/dev/slip.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/CONTIKI/dev/leds.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/dev/leds.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/dev/nullradio.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/dev/nullradio.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/dev/serial-line.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/dev/serial-line.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/dev/slip.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/dev/slip.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '


