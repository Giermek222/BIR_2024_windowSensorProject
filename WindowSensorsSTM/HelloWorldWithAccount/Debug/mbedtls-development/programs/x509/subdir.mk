################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbedtls-development/programs/x509/cert_app.c \
../mbedtls-development/programs/x509/cert_req.c \
../mbedtls-development/programs/x509/cert_write.c \
../mbedtls-development/programs/x509/crl_app.c \
../mbedtls-development/programs/x509/load_roots.c \
../mbedtls-development/programs/x509/req_app.c 

OBJS += \
./mbedtls-development/programs/x509/cert_app.o \
./mbedtls-development/programs/x509/cert_req.o \
./mbedtls-development/programs/x509/cert_write.o \
./mbedtls-development/programs/x509/crl_app.o \
./mbedtls-development/programs/x509/load_roots.o \
./mbedtls-development/programs/x509/req_app.o 

C_DEPS += \
./mbedtls-development/programs/x509/cert_app.d \
./mbedtls-development/programs/x509/cert_req.d \
./mbedtls-development/programs/x509/cert_write.d \
./mbedtls-development/programs/x509/crl_app.d \
./mbedtls-development/programs/x509/load_roots.d \
./mbedtls-development/programs/x509/req_app.d 


# Each subdirectory must supply rules for building sources it contributes
mbedtls-development/programs/x509/%.o mbedtls-development/programs/x509/%.su mbedtls-development/programs/x509/%.cyclo: ../mbedtls-development/programs/x509/%.c mbedtls-development/programs/x509/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/mbedtls-development" -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-mbedtls-2d-development-2f-programs-2f-x509

clean-mbedtls-2d-development-2f-programs-2f-x509:
	-$(RM) ./mbedtls-development/programs/x509/cert_app.cyclo ./mbedtls-development/programs/x509/cert_app.d ./mbedtls-development/programs/x509/cert_app.o ./mbedtls-development/programs/x509/cert_app.su ./mbedtls-development/programs/x509/cert_req.cyclo ./mbedtls-development/programs/x509/cert_req.d ./mbedtls-development/programs/x509/cert_req.o ./mbedtls-development/programs/x509/cert_req.su ./mbedtls-development/programs/x509/cert_write.cyclo ./mbedtls-development/programs/x509/cert_write.d ./mbedtls-development/programs/x509/cert_write.o ./mbedtls-development/programs/x509/cert_write.su ./mbedtls-development/programs/x509/crl_app.cyclo ./mbedtls-development/programs/x509/crl_app.d ./mbedtls-development/programs/x509/crl_app.o ./mbedtls-development/programs/x509/crl_app.su ./mbedtls-development/programs/x509/load_roots.cyclo ./mbedtls-development/programs/x509/load_roots.d ./mbedtls-development/programs/x509/load_roots.o ./mbedtls-development/programs/x509/load_roots.su ./mbedtls-development/programs/x509/req_app.cyclo ./mbedtls-development/programs/x509/req_app.d ./mbedtls-development/programs/x509/req_app.o ./mbedtls-development/programs/x509/req_app.su

.PHONY: clean-mbedtls-2d-development-2f-programs-2f-x509

