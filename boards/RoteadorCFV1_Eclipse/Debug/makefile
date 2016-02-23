################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := usbdm-rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Startup_Code/subdir.mk
-include Sources/libs/subdir.mk
-include Sources/http-server/subdir.mk
-include Sources/drivers/uart/subdir.mk
-include Sources/drivers/spi/subdir.mk
-include Sources/drivers/pwm/subdir.mk
-include Sources/drivers/gpio/subdir.mk
-include Sources/drivers/flash_eeprom/subdir.mk
-include Sources/drivers/flash/subdir.mk
-include Sources/drivers/adc/subdir.mk
-include Sources/drivers/subdir.mk
-include Sources/brtos-contiki-platform/mrf24j40/subdir.mk
-include Sources/brtos-contiki-platform/brtos/cpu/subdir.mk
-include Sources/brtos-contiki-platform/brtos/subdir.mk
-include Sources/app/subdir.mk
-include Sources/CONTIKI/sys/subdir.mk
-include Sources/CONTIKI/net/rpl/subdir.mk
-include Sources/CONTIKI/net/mac/sicslowmac/subdir.mk
-include Sources/CONTIKI/net/mac/subdir.mk
-include Sources/CONTIKI/net/llsec/subdir.mk
-include Sources/CONTIKI/net/ipv6/multicast/subdir.mk
-include Sources/CONTIKI/net/ipv6/subdir.mk
-include Sources/CONTIKI/net/ip/subdir.mk
-include Sources/CONTIKI/net/subdir.mk
-include Sources/CONTIKI/lib/strncasecmp/subdir.mk
-include Sources/CONTIKI/lib/subdir.mk
-include Sources/CONTIKI/dev/subdir.mk
-include Sources/CONTIKI/cfs/subdir.mk
-include Sources/BRTOS/hal/subdir.mk
-include Sources/BRTOS/brtos/subdir.mk
-include Sources/BRTOS/MemoryAllocation/subdir.mk
-include Sources/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
MAP_FILE_OUTPUTS += \
RoteadorCFV1_Eclipse.map \

ARCHIVES += \
libUSER_OBJS.a \

SIZE_FILE_OUTPUTS += \
RoteadorCFV1_Eclipse.size \

SYMBOL_LIST_FILE_OUTPUTS += \
RoteadorCFV1_Eclipse.sym \


# All Target
all: RoteadorCFV1_Eclipse.elf secondary-outputs

# Tool invocations
RoteadorCFV1_Eclipse.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Coldfire C Linker'
	m68k-elf-gcc -mcpu=51 -g3 -Os -Wl,--gc-sections -L../Project_Settings/Linker_Files -T "Linker-rom.ld" -Xlinker -Map="RoteadorCFV1_Eclipse.map"  -o "RoteadorCFV1_Eclipse.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

RoteadorCFV1_Eclipse.map: RoteadorCFV1_Eclipse.elf $(OBJS) $(USER_OBJS)

libUSER_OBJS.a: $(OBJS) $(USER_OBJS)
	@echo 'Invoking: Coldfire Archiver'
	m68k-elf-ar -r   "libUSER_OBJS.a" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building: $@'
	@echo ' '

RoteadorCFV1_Eclipse.size: RoteadorCFV1_Eclipse.elf
	@echo 'Invoking: Coldfire Sizer'
	m68k-elf-size "RoteadorCFV1_Eclipse.elf" --format=sysv --radix=10   >"RoteadorCFV1_Eclipse.size"
	@echo 'Finished building: $@'
	@echo ' '

RoteadorCFV1_Eclipse.sym: RoteadorCFV1_Eclipse.elf
	@echo 'Invoking: Coldfire Symbol Table'
	m68k-elf-nm "RoteadorCFV1_Eclipse.elf" --demangle --defined-only --extern-only --numeric-sort   >"RoteadorCFV1_Eclipse.sym"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(MAP_FILE_OUTPUTS)$(ARCHIVES)$(SYMBOL_LIST_FILE_OUTPUTS)$(SIZE_FILE_OUTPUTS)$(EXECUTABLES)$(LIST_FILE_OUTPUTS) RoteadorCFV1_Eclipse.elf
	-@echo ' '

secondary-outputs: $(LIST_FILE_OUTPUTS) $(SIZE_FILE_OUTPUTS) $(SYMBOL_LIST_FILE_OUTPUTS)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
