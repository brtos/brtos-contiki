################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Sources/DRIVERS/FLASH/flash.c 

OBJS += \
./Sources/DRIVERS/FLASH/flash.o 

C_DEPS += \
./Sources/DRIVERS/FLASH/flash.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/DRIVERS/FLASH/%.o: ../Sources/DRIVERS/FLASH/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -O1 -ffunction-sections -fdata-sections -DDEBUG_BUILD -DNETSTACK_CONF_WITH_IPV6=1 -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -Wa,-adhls="$@.lst" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '


