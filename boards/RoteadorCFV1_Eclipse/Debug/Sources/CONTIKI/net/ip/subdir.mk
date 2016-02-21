################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
$(PROJECT_BASE)/contiki/core/net/ip/dhcpc.c \
$(PROJECT_BASE)/contiki/core/net/ip/ip64-addr.c \
$(PROJECT_BASE)/contiki/core/net/ip/psock.c \
$(PROJECT_BASE)/contiki/core/net/ip/resolv.c \
$(PROJECT_BASE)/contiki/core/net/ip/simple-udp.c \
$(PROJECT_BASE)/contiki/core/net/ip/slipdev.c \
$(PROJECT_BASE)/contiki/core/net/ip/tcp-socket.c \
$(PROJECT_BASE)/contiki/core/net/ip/tcpip.c \
$(PROJECT_BASE)/contiki/core/net/ip/udp-socket.c \
$(PROJECT_BASE)/contiki/core/net/ip/uip-debug.c \
$(PROJECT_BASE)/contiki/core/net/ip/uip-nameserver.c \
$(PROJECT_BASE)/contiki/core/net/ip/uip-packetqueue.c \
$(PROJECT_BASE)/contiki/core/net/ip/uip-split.c \
$(PROJECT_BASE)/contiki/core/net/ip/uip-udp-packet.c \
$(PROJECT_BASE)/contiki/core/net/ip/uiplib.c 

OBJS += \
./Sources/CONTIKI/net/ip/dhcpc.o \
./Sources/CONTIKI/net/ip/ip64-addr.o \
./Sources/CONTIKI/net/ip/psock.o \
./Sources/CONTIKI/net/ip/resolv.o \
./Sources/CONTIKI/net/ip/simple-udp.o \
./Sources/CONTIKI/net/ip/slipdev.o \
./Sources/CONTIKI/net/ip/tcp-socket.o \
./Sources/CONTIKI/net/ip/tcpip.o \
./Sources/CONTIKI/net/ip/udp-socket.o \
./Sources/CONTIKI/net/ip/uip-debug.o \
./Sources/CONTIKI/net/ip/uip-nameserver.o \
./Sources/CONTIKI/net/ip/uip-packetqueue.o \
./Sources/CONTIKI/net/ip/uip-split.o \
./Sources/CONTIKI/net/ip/uip-udp-packet.o \
./Sources/CONTIKI/net/ip/uiplib.o 

C_DEPS += \
./Sources/CONTIKI/net/ip/dhcpc.d \
./Sources/CONTIKI/net/ip/ip64-addr.d \
./Sources/CONTIKI/net/ip/psock.d \
./Sources/CONTIKI/net/ip/resolv.d \
./Sources/CONTIKI/net/ip/simple-udp.d \
./Sources/CONTIKI/net/ip/slipdev.d \
./Sources/CONTIKI/net/ip/tcp-socket.d \
./Sources/CONTIKI/net/ip/tcpip.d \
./Sources/CONTIKI/net/ip/udp-socket.d \
./Sources/CONTIKI/net/ip/uip-debug.d \
./Sources/CONTIKI/net/ip/uip-nameserver.d \
./Sources/CONTIKI/net/ip/uip-packetqueue.d \
./Sources/CONTIKI/net/ip/uip-split.d \
./Sources/CONTIKI/net/ip/uip-udp-packet.d \
./Sources/CONTIKI/net/ip/uiplib.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/CONTIKI/net/ip/dhcpc.o: $(PROJECT_BASE)/contiki/core/net/ip/dhcpc.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ip/ip64-addr.o: $(PROJECT_BASE)/contiki/core/net/ip/ip64-addr.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ip/psock.o: $(PROJECT_BASE)/contiki/core/net/ip/psock.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ip/resolv.o: $(PROJECT_BASE)/contiki/core/net/ip/resolv.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ip/simple-udp.o: $(PROJECT_BASE)/contiki/core/net/ip/simple-udp.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ip/slipdev.o: $(PROJECT_BASE)/contiki/core/net/ip/slipdev.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ip/tcp-socket.o: $(PROJECT_BASE)/contiki/core/net/ip/tcp-socket.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ip/tcpip.o: $(PROJECT_BASE)/contiki/core/net/ip/tcpip.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ip/udp-socket.o: $(PROJECT_BASE)/contiki/core/net/ip/udp-socket.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ip/uip-debug.o: $(PROJECT_BASE)/contiki/core/net/ip/uip-debug.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ip/uip-nameserver.o: $(PROJECT_BASE)/contiki/core/net/ip/uip-nameserver.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ip/uip-packetqueue.o: $(PROJECT_BASE)/contiki/core/net/ip/uip-packetqueue.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ip/uip-split.o: $(PROJECT_BASE)/contiki/core/net/ip/uip-split.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ip/uip-udp-packet.o: $(PROJECT_BASE)/contiki/core/net/ip/uip-udp-packet.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources/CONTIKI/net/ip/uiplib.o: $(PROJECT_BASE)/contiki/core/net/ip/uiplib.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -DUIP_CONF_IPV6_RPL=1 -I../Startup_Code -I../Project_Headers -I../Project_Headers/CONFIG -I../Sources -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -I../../../brtos/hal/GCC_CFV1 -I../../../contiki/core -I../../../brtos-contiki-platform/brtos -I../../../brtos-contiki-platform/brtos/cpu -I../../../libs -I../../../contiki/core/sys -I../../../contiki/core/net -I../../../brtos-contiki-examples/ipv6/http-server -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '


