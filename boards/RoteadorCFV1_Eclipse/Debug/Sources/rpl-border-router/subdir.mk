################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/carlos/GIT_BRTOS/brtos-contiki/brtos-contiki-examples/ipv6/rpl-border-router/border-router.c \
E:/carlos/GIT_BRTOS/brtos-contiki/brtos-contiki-examples/ipv6/rpl-border-router/httpd-simple.c \
E:/carlos/GIT_BRTOS/brtos-contiki/brtos-contiki-examples/ipv6/rpl-border-router/slip-bridge.c 

OBJS += \
./Sources/rpl-border-router/border-router.o \
./Sources/rpl-border-router/httpd-simple.o \
./Sources/rpl-border-router/slip-bridge.o 

C_DEPS += \
./Sources/rpl-border-router/border-router.d \
./Sources/rpl-border-router/httpd-simple.d \
./Sources/rpl-border-router/slip-bridge.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/rpl-border-router/border-router.o: E:/carlos/GIT_BRTOS/brtos-contiki/brtos-contiki-examples/ipv6/rpl-border-router/border-router.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/rpl-border-router/httpd-simple.o: E:/carlos/GIT_BRTOS/brtos-contiki/brtos-contiki-examples/ipv6/rpl-border-router/httpd-simple.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/rpl-border-router/slip-bridge.o: E:/carlos/GIT_BRTOS/brtos-contiki/brtos-contiki-examples/ipv6/rpl-border-router/slip-bridge.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../brtos-contiki-examples/ipv6/rpl-border-router -I../../../libs -I../../../contiki/core/sys -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '


