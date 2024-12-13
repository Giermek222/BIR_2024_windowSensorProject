################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbedtls-development/tf-psa-crypto/programs/psa/aead_demo.c \
../mbedtls-development/tf-psa-crypto/programs/psa/crypto_examples.c \
../mbedtls-development/tf-psa-crypto/programs/psa/hmac_demo.c \
../mbedtls-development/tf-psa-crypto/programs/psa/key_ladder_demo.c \
../mbedtls-development/tf-psa-crypto/programs/psa/psa_constant_names.c \
../mbedtls-development/tf-psa-crypto/programs/psa/psa_hash.c 

OBJS += \
./mbedtls-development/tf-psa-crypto/programs/psa/aead_demo.o \
./mbedtls-development/tf-psa-crypto/programs/psa/crypto_examples.o \
./mbedtls-development/tf-psa-crypto/programs/psa/hmac_demo.o \
./mbedtls-development/tf-psa-crypto/programs/psa/key_ladder_demo.o \
./mbedtls-development/tf-psa-crypto/programs/psa/psa_constant_names.o \
./mbedtls-development/tf-psa-crypto/programs/psa/psa_hash.o 

C_DEPS += \
./mbedtls-development/tf-psa-crypto/programs/psa/aead_demo.d \
./mbedtls-development/tf-psa-crypto/programs/psa/crypto_examples.d \
./mbedtls-development/tf-psa-crypto/programs/psa/hmac_demo.d \
./mbedtls-development/tf-psa-crypto/programs/psa/key_ladder_demo.d \
./mbedtls-development/tf-psa-crypto/programs/psa/psa_constant_names.d \
./mbedtls-development/tf-psa-crypto/programs/psa/psa_hash.d 


# Each subdirectory must supply rules for building sources it contributes
mbedtls-development/tf-psa-crypto/programs/psa/%.o mbedtls-development/tf-psa-crypto/programs/psa/%.su mbedtls-development/tf-psa-crypto/programs/psa/%.cyclo: ../mbedtls-development/tf-psa-crypto/programs/psa/%.c mbedtls-development/tf-psa-crypto/programs/psa/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/mbedtls-development" -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-mbedtls-2d-development-2f-tf-2d-psa-2d-crypto-2f-programs-2f-psa

clean-mbedtls-2d-development-2f-tf-2d-psa-2d-crypto-2f-programs-2f-psa:
	-$(RM) ./mbedtls-development/tf-psa-crypto/programs/psa/aead_demo.cyclo ./mbedtls-development/tf-psa-crypto/programs/psa/aead_demo.d ./mbedtls-development/tf-psa-crypto/programs/psa/aead_demo.o ./mbedtls-development/tf-psa-crypto/programs/psa/aead_demo.su ./mbedtls-development/tf-psa-crypto/programs/psa/crypto_examples.cyclo ./mbedtls-development/tf-psa-crypto/programs/psa/crypto_examples.d ./mbedtls-development/tf-psa-crypto/programs/psa/crypto_examples.o ./mbedtls-development/tf-psa-crypto/programs/psa/crypto_examples.su ./mbedtls-development/tf-psa-crypto/programs/psa/hmac_demo.cyclo ./mbedtls-development/tf-psa-crypto/programs/psa/hmac_demo.d ./mbedtls-development/tf-psa-crypto/programs/psa/hmac_demo.o ./mbedtls-development/tf-psa-crypto/programs/psa/hmac_demo.su ./mbedtls-development/tf-psa-crypto/programs/psa/key_ladder_demo.cyclo ./mbedtls-development/tf-psa-crypto/programs/psa/key_ladder_demo.d ./mbedtls-development/tf-psa-crypto/programs/psa/key_ladder_demo.o ./mbedtls-development/tf-psa-crypto/programs/psa/key_ladder_demo.su ./mbedtls-development/tf-psa-crypto/programs/psa/psa_constant_names.cyclo ./mbedtls-development/tf-psa-crypto/programs/psa/psa_constant_names.d ./mbedtls-development/tf-psa-crypto/programs/psa/psa_constant_names.o ./mbedtls-development/tf-psa-crypto/programs/psa/psa_constant_names.su ./mbedtls-development/tf-psa-crypto/programs/psa/psa_hash.cyclo ./mbedtls-development/tf-psa-crypto/programs/psa/psa_hash.d ./mbedtls-development/tf-psa-crypto/programs/psa/psa_hash.o ./mbedtls-development/tf-psa-crypto/programs/psa/psa_hash.su

.PHONY: clean-mbedtls-2d-development-2f-tf-2d-psa-2d-crypto-2f-programs-2f-psa

