################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbedtls-development/programs/hash/generic_sum.c \
../mbedtls-development/programs/hash/hello.c \
../mbedtls-development/programs/hash/md_hmac_demo.c 

OBJS += \
./mbedtls-development/programs/hash/generic_sum.o \
./mbedtls-development/programs/hash/hello.o \
./mbedtls-development/programs/hash/md_hmac_demo.o 

C_DEPS += \
./mbedtls-development/programs/hash/generic_sum.d \
./mbedtls-development/programs/hash/hello.d \
./mbedtls-development/programs/hash/md_hmac_demo.d 


# Each subdirectory must supply rules for building sources it contributes
mbedtls-development/programs/hash/%.o mbedtls-development/programs/hash/%.su mbedtls-development/programs/hash/%.cyclo: ../mbedtls-development/programs/hash/%.c mbedtls-development/programs/hash/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/mbedtls-development" -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-mbedtls-2d-development-2f-programs-2f-hash

clean-mbedtls-2d-development-2f-programs-2f-hash:
	-$(RM) ./mbedtls-development/programs/hash/generic_sum.cyclo ./mbedtls-development/programs/hash/generic_sum.d ./mbedtls-development/programs/hash/generic_sum.o ./mbedtls-development/programs/hash/generic_sum.su ./mbedtls-development/programs/hash/hello.cyclo ./mbedtls-development/programs/hash/hello.d ./mbedtls-development/programs/hash/hello.o ./mbedtls-development/programs/hash/hello.su ./mbedtls-development/programs/hash/md_hmac_demo.cyclo ./mbedtls-development/programs/hash/md_hmac_demo.d ./mbedtls-development/programs/hash/md_hmac_demo.o ./mbedtls-development/programs/hash/md_hmac_demo.su

.PHONY: clean-mbedtls-2d-development-2f-programs-2f-hash

