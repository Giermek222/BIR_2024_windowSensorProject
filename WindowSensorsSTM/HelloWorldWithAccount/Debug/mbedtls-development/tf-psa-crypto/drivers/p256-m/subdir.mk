################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbedtls-development/tf-psa-crypto/drivers/p256-m/p256-m_driver_entrypoints.c 

OBJS += \
./mbedtls-development/tf-psa-crypto/drivers/p256-m/p256-m_driver_entrypoints.o 

C_DEPS += \
./mbedtls-development/tf-psa-crypto/drivers/p256-m/p256-m_driver_entrypoints.d 


# Each subdirectory must supply rules for building sources it contributes
mbedtls-development/tf-psa-crypto/drivers/p256-m/%.o mbedtls-development/tf-psa-crypto/drivers/p256-m/%.su mbedtls-development/tf-psa-crypto/drivers/p256-m/%.cyclo: ../mbedtls-development/tf-psa-crypto/drivers/p256-m/%.c mbedtls-development/tf-psa-crypto/drivers/p256-m/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/mbedtls-development" -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-mbedtls-2d-development-2f-tf-2d-psa-2d-crypto-2f-drivers-2f-p256-2d-m

clean-mbedtls-2d-development-2f-tf-2d-psa-2d-crypto-2f-drivers-2f-p256-2d-m:
	-$(RM) ./mbedtls-development/tf-psa-crypto/drivers/p256-m/p256-m_driver_entrypoints.cyclo ./mbedtls-development/tf-psa-crypto/drivers/p256-m/p256-m_driver_entrypoints.d ./mbedtls-development/tf-psa-crypto/drivers/p256-m/p256-m_driver_entrypoints.o ./mbedtls-development/tf-psa-crypto/drivers/p256-m/p256-m_driver_entrypoints.su

.PHONY: clean-mbedtls-2d-development-2f-tf-2d-psa-2d-crypto-2f-drivers-2f-p256-2d-m

