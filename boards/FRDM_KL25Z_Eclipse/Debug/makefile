################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include system/src/newlib/subdir.mk
-include system/src/kl25-sc/subdir.mk
-include system/src/diag/subdir.mk
-include system/src/cortexm/subdir.mk
-include system/src/cmsis/subdir.mk
-include src/Drivers/SPI/subdir.mk
-include src/Drivers/LPO/subdir.mk
-include src/Drivers/FLASH/subdir.mk
-include src/Drivers/CPU/subdir.mk
-include src/Drivers/subdir.mk
-include src/CoX/CoX_Peripheral/src/subdir.mk
-include src/subdir.mk
-include rpl-border-router/subdir.mk
-include libs/subdir.mk
-include hal/subdir.mk
-include contiki/sys/subdir.mk
-include contiki/net/rpl/subdir.mk
-include contiki/net/mac/sicslowmac/subdir.mk
-include contiki/net/mac/contikimac/subdir.mk
-include contiki/net/mac/subdir.mk
-include contiki/net/llsec/subdir.mk
-include contiki/net/ipv6/multicast/subdir.mk
-include contiki/net/ipv6/subdir.mk
-include contiki/net/ip/subdir.mk
-include contiki/net/subdir.mk
-include contiki/lib/strncasecmp/subdir.mk
-include contiki/lib/subdir.mk
-include contiki/dev/subdir.mk
-include contiki/cfs/subdir.mk
-include brtos-contiki-platform/mrf24j40/subdir.mk
-include brtos-contiki-platform/brtos/cpu/subdir.mk
-include brtos-contiki-platform/brtos/subdir.mk
-include brtos/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
FRDM_KL25Z_Eclipse.hex \

SECONDARY_SIZE += \
FRDM_KL25Z_Eclipse.siz \


# All Target
all: FRDM_KL25Z_Eclipse.elf secondary-outputs

# Tool invocations
FRDM_KL25Z_Eclipse.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross ARM C++ Linker'
	arm-none-eabi-g++ -mcpu=cortex-m0plus -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -T mem.ld -T libs.ld -T sections.ld -nostartfiles -Xlinker --gc-sections -L"../ldscripts" -Wl,-Map,"FRDM_KL25Z_Eclipse.map" --specs=nano.specs -o "FRDM_KL25Z_Eclipse.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

FRDM_KL25Z_Eclipse.hex: FRDM_KL25Z_Eclipse.elf
	@echo 'Invoking: Cross ARM GNU Create Flash Image'
	arm-none-eabi-objcopy -O ihex "FRDM_KL25Z_Eclipse.elf"  "FRDM_KL25Z_Eclipse.hex"
	@echo 'Finished building: $@'
	@echo ' '

FRDM_KL25Z_Eclipse.siz: FRDM_KL25Z_Eclipse.elf
	@echo 'Invoking: Cross ARM GNU Print Size'
	arm-none-eabi-size --format=berkeley "FRDM_KL25Z_Eclipse.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(SECONDARY_SIZE)$(C++_DEPS)$(OBJS)$(C_DEPS)$(ASM_DEPS)$(CC_DEPS)$(SECONDARY_FLASH)$(CPP_DEPS)$(CXX_DEPS)$(C_UPPER_DEPS)$(S_UPPER_DEPS) FRDM_KL25Z_Eclipse.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
