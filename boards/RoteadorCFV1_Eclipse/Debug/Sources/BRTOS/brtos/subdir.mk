################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos/brtos/BRTOS.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos/brtos/OSInfo.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos/brtos/OSTime.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos/brtos/mbox.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos/brtos/mutex.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos/brtos/queue.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos/brtos/semaphore.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos/brtos/stimer.c 

OBJS += \
./Sources/BRTOS/brtos/BRTOS.o \
./Sources/BRTOS/brtos/OSInfo.o \
./Sources/BRTOS/brtos/OSTime.o \
./Sources/BRTOS/brtos/mbox.o \
./Sources/BRTOS/brtos/mutex.o \
./Sources/BRTOS/brtos/queue.o \
./Sources/BRTOS/brtos/semaphore.o \
./Sources/BRTOS/brtos/stimer.o 

C_DEPS += \
./Sources/BRTOS/brtos/BRTOS.d \
./Sources/BRTOS/brtos/OSInfo.d \
./Sources/BRTOS/brtos/OSTime.d \
./Sources/BRTOS/brtos/mbox.d \
./Sources/BRTOS/brtos/mutex.d \
./Sources/BRTOS/brtos/queue.d \
./Sources/BRTOS/brtos/semaphore.d \
./Sources/BRTOS/brtos/stimer.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/BRTOS/brtos/BRTOS.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos/brtos/BRTOS.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/BRTOS/brtos/OSInfo.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos/brtos/OSInfo.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/BRTOS/brtos/OSTime.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos/brtos/OSTime.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/BRTOS/brtos/mbox.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos/brtos/mbox.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/BRTOS/brtos/mutex.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos/brtos/mutex.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/BRTOS/brtos/queue.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos/brtos/queue.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/BRTOS/brtos/semaphore.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos/brtos/semaphore.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/BRTOS/brtos/stimer.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/brtos/brtos/stimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '


