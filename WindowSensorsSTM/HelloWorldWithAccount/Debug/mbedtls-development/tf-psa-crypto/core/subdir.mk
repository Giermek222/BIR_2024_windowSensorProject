################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbedtls-development/tf-psa-crypto/core/psa_crypto.c \
../mbedtls-development/tf-psa-crypto/core/psa_crypto_client.c \
../mbedtls-development/tf-psa-crypto/core/psa_crypto_se.c \
../mbedtls-development/tf-psa-crypto/core/psa_crypto_slot_management.c \
../mbedtls-development/tf-psa-crypto/core/psa_crypto_storage.c \
../mbedtls-development/tf-psa-crypto/core/psa_its_file.c 

OBJS += \
./mbedtls-development/tf-psa-crypto/core/psa_crypto.o \
./mbedtls-development/tf-psa-crypto/core/psa_crypto_client.o \
./mbedtls-development/tf-psa-crypto/core/psa_crypto_se.o \
./mbedtls-development/tf-psa-crypto/core/psa_crypto_slot_management.o \
./mbedtls-development/tf-psa-crypto/core/psa_crypto_storage.o \
./mbedtls-development/tf-psa-crypto/core/psa_its_file.o 

C_DEPS += \
./mbedtls-development/tf-psa-crypto/core/psa_crypto.d \
./mbedtls-development/tf-psa-crypto/core/psa_crypto_client.d \
./mbedtls-development/tf-psa-crypto/core/psa_crypto_se.d \
./mbedtls-development/tf-psa-crypto/core/psa_crypto_slot_management.d \
./mbedtls-development/tf-psa-crypto/core/psa_crypto_storage.d \
./mbedtls-development/tf-psa-crypto/core/psa_its_file.d 


# Each subdirectory must supply rules for building sources it contributes
mbedtls-development/tf-psa-crypto/core/%.o mbedtls-development/tf-psa-crypto/core/%.su mbedtls-development/tf-psa-crypto/core/%.cyclo: ../mbedtls-development/tf-psa-crypto/core/%.c mbedtls-development/tf-psa-crypto/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/mbedtls-development" -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-mbedtls-2d-development-2f-tf-2d-psa-2d-crypto-2f-core

clean-mbedtls-2d-development-2f-tf-2d-psa-2d-crypto-2f-core:
	-$(RM) ./mbedtls-development/tf-psa-crypto/core/psa_crypto.cyclo ./mbedtls-development/tf-psa-crypto/core/psa_crypto.d ./mbedtls-development/tf-psa-crypto/core/psa_crypto.o ./mbedtls-development/tf-psa-crypto/core/psa_crypto.su ./mbedtls-development/tf-psa-crypto/core/psa_crypto_client.cyclo ./mbedtls-development/tf-psa-crypto/core/psa_crypto_client.d ./mbedtls-development/tf-psa-crypto/core/psa_crypto_client.o ./mbedtls-development/tf-psa-crypto/core/psa_crypto_client.su ./mbedtls-development/tf-psa-crypto/core/psa_crypto_se.cyclo ./mbedtls-development/tf-psa-crypto/core/psa_crypto_se.d ./mbedtls-development/tf-psa-crypto/core/psa_crypto_se.o ./mbedtls-development/tf-psa-crypto/core/psa_crypto_se.su ./mbedtls-development/tf-psa-crypto/core/psa_crypto_slot_management.cyclo ./mbedtls-development/tf-psa-crypto/core/psa_crypto_slot_management.d ./mbedtls-development/tf-psa-crypto/core/psa_crypto_slot_management.o ./mbedtls-development/tf-psa-crypto/core/psa_crypto_slot_management.su ./mbedtls-development/tf-psa-crypto/core/psa_crypto_storage.cyclo ./mbedtls-development/tf-psa-crypto/core/psa_crypto_storage.d ./mbedtls-development/tf-psa-crypto/core/psa_crypto_storage.o ./mbedtls-development/tf-psa-crypto/core/psa_crypto_storage.su ./mbedtls-development/tf-psa-crypto/core/psa_its_file.cyclo ./mbedtls-development/tf-psa-crypto/core/psa_its_file.d ./mbedtls-development/tf-psa-crypto/core/psa_its_file.o ./mbedtls-development/tf-psa-crypto/core/psa_its_file.su

.PHONY: clean-mbedtls-2d-development-2f-tf-2d-psa-2d-crypto-2f-core

