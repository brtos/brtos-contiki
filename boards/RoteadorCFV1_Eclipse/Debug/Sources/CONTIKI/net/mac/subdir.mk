################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/csma.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/frame802154.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/frame802154e-ie.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/framer-802154.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/framer-nullmac.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/mac-sequence.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/mac.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/nordc.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/nullmac.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/nullrdc-noframer.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/nullrdc.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/phase.c 

OBJS += \
./Sources/CONTIKI/net/mac/csma.o \
./Sources/CONTIKI/net/mac/frame802154.o \
./Sources/CONTIKI/net/mac/frame802154e-ie.o \
./Sources/CONTIKI/net/mac/framer-802154.o \
./Sources/CONTIKI/net/mac/framer-nullmac.o \
./Sources/CONTIKI/net/mac/mac-sequence.o \
./Sources/CONTIKI/net/mac/mac.o \
./Sources/CONTIKI/net/mac/nordc.o \
./Sources/CONTIKI/net/mac/nullmac.o \
./Sources/CONTIKI/net/mac/nullrdc-noframer.o \
./Sources/CONTIKI/net/mac/nullrdc.o \
./Sources/CONTIKI/net/mac/phase.o 

C_DEPS += \
./Sources/CONTIKI/net/mac/csma.d \
./Sources/CONTIKI/net/mac/frame802154.d \
./Sources/CONTIKI/net/mac/frame802154e-ie.d \
./Sources/CONTIKI/net/mac/framer-802154.d \
./Sources/CONTIKI/net/mac/framer-nullmac.d \
./Sources/CONTIKI/net/mac/mac-sequence.d \
./Sources/CONTIKI/net/mac/mac.d \
./Sources/CONTIKI/net/mac/nordc.d \
./Sources/CONTIKI/net/mac/nullmac.d \
./Sources/CONTIKI/net/mac/nullrdc-noframer.d \
./Sources/CONTIKI/net/mac/nullrdc.d \
./Sources/CONTIKI/net/mac/phase.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/CONTIKI/net/mac/csma.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/csma.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/frame802154.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/frame802154.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/frame802154e-ie.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/frame802154e-ie.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/framer-802154.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/framer-802154.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/framer-nullmac.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/framer-nullmac.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/mac-sequence.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/mac-sequence.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/mac.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/mac.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/nordc.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/nordc.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/nullmac.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/nullmac.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/nullrdc-noframer.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/nullrdc-noframer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/nullrdc.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/nullrdc.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/phase.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/brtos-contiki/contiki/core/net/mac/phase.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../contiki/lib -I../../../brtos-contiki-platform/brtos -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '


