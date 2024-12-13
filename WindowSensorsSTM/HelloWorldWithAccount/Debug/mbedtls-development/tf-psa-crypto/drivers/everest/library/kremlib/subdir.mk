################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbedtls-development/tf-psa-crypto/drivers/everest/library/kremlib/FStar_UInt128_extracted.c \
../mbedtls-development/tf-psa-crypto/drivers/everest/library/kremlib/FStar_UInt64_FStar_UInt32_FStar_UInt16_FStar_UInt8.c 

OBJS += \
./mbedtls-development/tf-psa-crypto/drivers/everest/library/kremlib/FStar_UInt128_extracted.o \
./mbedtls-development/tf-psa-crypto/drivers/everest/library/kremlib/FStar_UInt64_FStar_UInt32_FStar_UInt16_FStar_UInt8.o 

C_DEPS += \
./mbedtls-development/tf-psa-crypto/drivers/everest/library/kremlib/FStar_UInt128_extracted.d \
./mbedtls-development/tf-psa-crypto/drivers/everest/library/kremlib/FStar_UInt64_FStar_UInt32_FStar_UInt16_FStar_UInt8.d 


# Each subdirectory must supply rules for building sources it contributes
mbedtls-development/tf-psa-crypto/drivers/everest/library/kremlib/%.o mbedtls-development/tf-psa-crypto/drivers/everest/library/kremlib/%.su mbedtls-development/tf-psa-crypto/drivers/everest/library/kremlib/%.cyclo: ../mbedtls-development/tf-psa-crypto/drivers/everest/library/kremlib/%.c mbedtls-development/tf-psa-crypto/drivers/everest/library/kremlib/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/mbedtls-development" -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-mbedtls-2d-development-2f-tf-2d-psa-2d-crypto-2f-drivers-2f-everest-2f-library-2f-kremlib

clean-mbedtls-2d-development-2f-tf-2d-psa-2d-crypto-2f-drivers-2f-everest-2f-library-2f-kremlib:
	-$(RM) ./mbedtls-development/tf-psa-crypto/drivers/everest/library/kremlib/FStar_UInt128_extracted.cyclo ./mbedtls-development/tf-psa-crypto/drivers/everest/library/kremlib/FStar_UInt128_extracted.d ./mbedtls-development/tf-psa-crypto/drivers/everest/library/kremlib/FStar_UInt128_extracted.o ./mbedtls-development/tf-psa-crypto/drivers/everest/library/kremlib/FStar_UInt128_extracted.su ./mbedtls-development/tf-psa-crypto/drivers/everest/library/kremlib/FStar_UInt64_FStar_UInt32_FStar_UInt16_FStar_UInt8.cyclo ./mbedtls-development/tf-psa-crypto/drivers/everest/library/kremlib/FStar_UInt64_FStar_UInt32_FStar_UInt16_FStar_UInt8.d ./mbedtls-development/tf-psa-crypto/drivers/everest/library/kremlib/FStar_UInt64_FStar_UInt32_FStar_UInt16_FStar_UInt8.o ./mbedtls-development/tf-psa-crypto/drivers/everest/library/kremlib/FStar_UInt64_FStar_UInt32_FStar_UInt16_FStar_UInt8.su

.PHONY: clean-mbedtls-2d-development-2f-tf-2d-psa-2d-crypto-2f-drivers-2f-everest-2f-library-2f-kremlib

