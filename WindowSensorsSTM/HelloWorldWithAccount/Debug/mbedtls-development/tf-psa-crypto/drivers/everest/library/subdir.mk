################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbedtls-development/tf-psa-crypto/drivers/everest/library/Hacl_Curve25519.c \
../mbedtls-development/tf-psa-crypto/drivers/everest/library/Hacl_Curve25519_joined.c \
../mbedtls-development/tf-psa-crypto/drivers/everest/library/everest.c \
../mbedtls-development/tf-psa-crypto/drivers/everest/library/x25519.c 

OBJS += \
./mbedtls-development/tf-psa-crypto/drivers/everest/library/Hacl_Curve25519.o \
./mbedtls-development/tf-psa-crypto/drivers/everest/library/Hacl_Curve25519_joined.o \
./mbedtls-development/tf-psa-crypto/drivers/everest/library/everest.o \
./mbedtls-development/tf-psa-crypto/drivers/everest/library/x25519.o 

C_DEPS += \
./mbedtls-development/tf-psa-crypto/drivers/everest/library/Hacl_Curve25519.d \
./mbedtls-development/tf-psa-crypto/drivers/everest/library/Hacl_Curve25519_joined.d \
./mbedtls-development/tf-psa-crypto/drivers/everest/library/everest.d \
./mbedtls-development/tf-psa-crypto/drivers/everest/library/x25519.d 


# Each subdirectory must supply rules for building sources it contributes
mbedtls-development/tf-psa-crypto/drivers/everest/library/%.o mbedtls-development/tf-psa-crypto/drivers/everest/library/%.su mbedtls-development/tf-psa-crypto/drivers/everest/library/%.cyclo: ../mbedtls-development/tf-psa-crypto/drivers/everest/library/%.c mbedtls-development/tf-psa-crypto/drivers/everest/library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/mbedtls-development" -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-mbedtls-2d-development-2f-tf-2d-psa-2d-crypto-2f-drivers-2f-everest-2f-library

clean-mbedtls-2d-development-2f-tf-2d-psa-2d-crypto-2f-drivers-2f-everest-2f-library:
	-$(RM) ./mbedtls-development/tf-psa-crypto/drivers/everest/library/Hacl_Curve25519.cyclo ./mbedtls-development/tf-psa-crypto/drivers/everest/library/Hacl_Curve25519.d ./mbedtls-development/tf-psa-crypto/drivers/everest/library/Hacl_Curve25519.o ./mbedtls-development/tf-psa-crypto/drivers/everest/library/Hacl_Curve25519.su ./mbedtls-development/tf-psa-crypto/drivers/everest/library/Hacl_Curve25519_joined.cyclo ./mbedtls-development/tf-psa-crypto/drivers/everest/library/Hacl_Curve25519_joined.d ./mbedtls-development/tf-psa-crypto/drivers/everest/library/Hacl_Curve25519_joined.o ./mbedtls-development/tf-psa-crypto/drivers/everest/library/Hacl_Curve25519_joined.su ./mbedtls-development/tf-psa-crypto/drivers/everest/library/everest.cyclo ./mbedtls-development/tf-psa-crypto/drivers/everest/library/everest.d ./mbedtls-development/tf-psa-crypto/drivers/everest/library/everest.o ./mbedtls-development/tf-psa-crypto/drivers/everest/library/everest.su ./mbedtls-development/tf-psa-crypto/drivers/everest/library/x25519.cyclo ./mbedtls-development/tf-psa-crypto/drivers/everest/library/x25519.d ./mbedtls-development/tf-psa-crypto/drivers/everest/library/x25519.o ./mbedtls-development/tf-psa-crypto/drivers/everest/library/x25519.su

.PHONY: clean-mbedtls-2d-development-2f-tf-2d-psa-2d-crypto-2f-drivers-2f-everest-2f-library

