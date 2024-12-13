################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbedtls-development/programs/test/benchmark.c \
../mbedtls-development/programs/test/dlopen.c \
../mbedtls-development/programs/test/metatest.c \
../mbedtls-development/programs/test/query_compile_time_config.c \
../mbedtls-development/programs/test/query_included_headers.c \
../mbedtls-development/programs/test/selftest.c \
../mbedtls-development/programs/test/udp_proxy.c \
../mbedtls-development/programs/test/zeroize.c 

OBJS += \
./mbedtls-development/programs/test/benchmark.o \
./mbedtls-development/programs/test/dlopen.o \
./mbedtls-development/programs/test/metatest.o \
./mbedtls-development/programs/test/query_compile_time_config.o \
./mbedtls-development/programs/test/query_included_headers.o \
./mbedtls-development/programs/test/selftest.o \
./mbedtls-development/programs/test/udp_proxy.o \
./mbedtls-development/programs/test/zeroize.o 

C_DEPS += \
./mbedtls-development/programs/test/benchmark.d \
./mbedtls-development/programs/test/dlopen.d \
./mbedtls-development/programs/test/metatest.d \
./mbedtls-development/programs/test/query_compile_time_config.d \
./mbedtls-development/programs/test/query_included_headers.d \
./mbedtls-development/programs/test/selftest.d \
./mbedtls-development/programs/test/udp_proxy.d \
./mbedtls-development/programs/test/zeroize.d 


# Each subdirectory must supply rules for building sources it contributes
mbedtls-development/programs/test/%.o mbedtls-development/programs/test/%.su mbedtls-development/programs/test/%.cyclo: ../mbedtls-development/programs/test/%.c mbedtls-development/programs/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/mbedtls-development" -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-mbedtls-2d-development-2f-programs-2f-test

clean-mbedtls-2d-development-2f-programs-2f-test:
	-$(RM) ./mbedtls-development/programs/test/benchmark.cyclo ./mbedtls-development/programs/test/benchmark.d ./mbedtls-development/programs/test/benchmark.o ./mbedtls-development/programs/test/benchmark.su ./mbedtls-development/programs/test/dlopen.cyclo ./mbedtls-development/programs/test/dlopen.d ./mbedtls-development/programs/test/dlopen.o ./mbedtls-development/programs/test/dlopen.su ./mbedtls-development/programs/test/metatest.cyclo ./mbedtls-development/programs/test/metatest.d ./mbedtls-development/programs/test/metatest.o ./mbedtls-development/programs/test/metatest.su ./mbedtls-development/programs/test/query_compile_time_config.cyclo ./mbedtls-development/programs/test/query_compile_time_config.d ./mbedtls-development/programs/test/query_compile_time_config.o ./mbedtls-development/programs/test/query_compile_time_config.su ./mbedtls-development/programs/test/query_included_headers.cyclo ./mbedtls-development/programs/test/query_included_headers.d ./mbedtls-development/programs/test/query_included_headers.o ./mbedtls-development/programs/test/query_included_headers.su ./mbedtls-development/programs/test/selftest.cyclo ./mbedtls-development/programs/test/selftest.d ./mbedtls-development/programs/test/selftest.o ./mbedtls-development/programs/test/selftest.su ./mbedtls-development/programs/test/udp_proxy.cyclo ./mbedtls-development/programs/test/udp_proxy.d ./mbedtls-development/programs/test/udp_proxy.o ./mbedtls-development/programs/test/udp_proxy.su ./mbedtls-development/programs/test/zeroize.cyclo ./mbedtls-development/programs/test/zeroize.d ./mbedtls-development/programs/test/zeroize.o ./mbedtls-development/programs/test/zeroize.su

.PHONY: clean-mbedtls-2d-development-2f-programs-2f-test

