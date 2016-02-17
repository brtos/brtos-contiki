################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Sources/DRIVERS/UART/uart.c 

OBJS += \
./Sources/DRIVERS/UART/uart.o 

C_DEPS += \
./Sources/DRIVERS/UART/uart.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/DRIVERS/UART/%.o: ../Sources/DRIVERS/UART/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"../../../boards/RoteadorCFV1_Eclipse/Project_Headers" -I"../../../boards/RoteadorCFV1_Eclipse/Sources/CONFIG" -I"../../../../boards/RoteadorCFV1_Eclipse/../../brtos/hal/GCC_CFV1" -I"../../../../boards/RoteadorCFV1_Eclipse/../../brtos/brtos/includes" -I"../../../../boards/RoteadorCFV1_Eclipse/../../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '


