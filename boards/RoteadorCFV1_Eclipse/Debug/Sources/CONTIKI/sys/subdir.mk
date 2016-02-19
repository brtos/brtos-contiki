################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/arg.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/autostart.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/compower.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/ctimer.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/energest.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/etimer.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/mt.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/process.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/procinit.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/rtimer.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/stimer.c \
E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/timer.c 

OBJS += \
./Sources/CONTIKI/sys/arg.o \
./Sources/CONTIKI/sys/autostart.o \
./Sources/CONTIKI/sys/compower.o \
./Sources/CONTIKI/sys/ctimer.o \
./Sources/CONTIKI/sys/energest.o \
./Sources/CONTIKI/sys/etimer.o \
./Sources/CONTIKI/sys/mt.o \
./Sources/CONTIKI/sys/process.o \
./Sources/CONTIKI/sys/procinit.o \
./Sources/CONTIKI/sys/rtimer.o \
./Sources/CONTIKI/sys/stimer.o \
./Sources/CONTIKI/sys/timer.o 

C_DEPS += \
./Sources/CONTIKI/sys/arg.d \
./Sources/CONTIKI/sys/autostart.d \
./Sources/CONTIKI/sys/compower.d \
./Sources/CONTIKI/sys/ctimer.d \
./Sources/CONTIKI/sys/energest.d \
./Sources/CONTIKI/sys/etimer.d \
./Sources/CONTIKI/sys/mt.d \
./Sources/CONTIKI/sys/process.d \
./Sources/CONTIKI/sys/procinit.d \
./Sources/CONTIKI/sys/rtimer.d \
./Sources/CONTIKI/sys/stimer.d \
./Sources/CONTIKI/sys/timer.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/CONTIKI/sys/arg.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/arg.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/sys/autostart.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/autostart.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/sys/compower.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/compower.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/sys/ctimer.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/ctimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/sys/energest.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/energest.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/sys/etimer.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/etimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/sys/mt.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/mt.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/sys/process.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/process.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/sys/procinit.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/procinit.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/sys/rtimer.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/rtimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/sys/stimer.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/stimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/sys/timer.o: E:/carlos/GIT_BRTOS/brtos-contiki/contiki/core/sys/timer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '


