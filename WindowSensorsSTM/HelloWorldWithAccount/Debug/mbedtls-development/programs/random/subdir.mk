################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbedtls-development/programs/random/gen_entropy.c \
../mbedtls-development/programs/random/gen_random_ctr_drbg.c 

OBJS += \
./mbedtls-development/programs/random/gen_entropy.o \
./mbedtls-development/programs/random/gen_random_ctr_drbg.o 

C_DEPS += \
./mbedtls-development/programs/random/gen_entropy.d \
./mbedtls-development/programs/random/gen_random_ctr_drbg.d 


# Each subdirectory must supply rules for building sources it contributes
mbedtls-development/programs/random/%.o mbedtls-development/programs/random/%.su mbedtls-development/programs/random/%.cyclo: ../mbedtls-development/programs/random/%.c mbedtls-development/programs/random/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/mbedtls-development" -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-mbedtls-2d-development-2f-programs-2f-random

clean-mbedtls-2d-development-2f-programs-2f-random:
	-$(RM) ./mbedtls-development/programs/random/gen_entropy.cyclo ./mbedtls-development/programs/random/gen_entropy.d ./mbedtls-development/programs/random/gen_entropy.o ./mbedtls-development/programs/random/gen_entropy.su ./mbedtls-development/programs/random/gen_random_ctr_drbg.cyclo ./mbedtls-development/programs/random/gen_random_ctr_drbg.d ./mbedtls-development/programs/random/gen_random_ctr_drbg.o ./mbedtls-development/programs/random/gen_random_ctr_drbg.su

.PHONY: clean-mbedtls-2d-development-2f-programs-2f-random
