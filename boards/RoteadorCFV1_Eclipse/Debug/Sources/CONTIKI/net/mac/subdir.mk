################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/csma.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/frame802154.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/frame802154e-ie.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/framer-802154.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/framer-nullmac.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/mac-sequence.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/mac.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/nordc.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/nullmac.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/nullrdc-noframer.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/nullrdc.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/phase.c 

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
Sources/CONTIKI/net/mac/csma.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/csma.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/frame802154.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/frame802154.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/frame802154e-ie.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/frame802154e-ie.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/framer-802154.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/framer-802154.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/framer-nullmac.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/framer-nullmac.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/mac-sequence.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/mac-sequence.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/mac.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/mac.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/nordc.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/nordc.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/nullmac.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/nullmac.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/nullrdc-noframer.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/nullrdc-noframer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/nullrdc.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/nullrdc.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/mac/phase.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/net/mac/phase.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '


