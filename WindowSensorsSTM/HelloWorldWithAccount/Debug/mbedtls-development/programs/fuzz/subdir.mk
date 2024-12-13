################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbedtls-development/programs/fuzz/common.c \
../mbedtls-development/programs/fuzz/fuzz_client.c \
../mbedtls-development/programs/fuzz/fuzz_dtlsclient.c \
../mbedtls-development/programs/fuzz/fuzz_dtlsserver.c \
../mbedtls-development/programs/fuzz/fuzz_pkcs7.c \
../mbedtls-development/programs/fuzz/fuzz_privkey.c \
../mbedtls-development/programs/fuzz/fuzz_pubkey.c \
../mbedtls-development/programs/fuzz/fuzz_server.c \
../mbedtls-development/programs/fuzz/fuzz_x509crl.c \
../mbedtls-development/programs/fuzz/fuzz_x509crt.c \
../mbedtls-development/programs/fuzz/fuzz_x509csr.c \
../mbedtls-development/programs/fuzz/onefile.c 

OBJS += \
./mbedtls-development/programs/fuzz/common.o \
./mbedtls-development/programs/fuzz/fuzz_client.o \
./mbedtls-development/programs/fuzz/fuzz_dtlsclient.o \
./mbedtls-development/programs/fuzz/fuzz_dtlsserver.o \
./mbedtls-development/programs/fuzz/fuzz_pkcs7.o \
./mbedtls-development/programs/fuzz/fuzz_privkey.o \
./mbedtls-development/programs/fuzz/fuzz_pubkey.o \
./mbedtls-development/programs/fuzz/fuzz_server.o \
./mbedtls-development/programs/fuzz/fuzz_x509crl.o \
./mbedtls-development/programs/fuzz/fuzz_x509crt.o \
./mbedtls-development/programs/fuzz/fuzz_x509csr.o \
./mbedtls-development/programs/fuzz/onefile.o 

C_DEPS += \
./mbedtls-development/programs/fuzz/common.d \
./mbedtls-development/programs/fuzz/fuzz_client.d \
./mbedtls-development/programs/fuzz/fuzz_dtlsclient.d \
./mbedtls-development/programs/fuzz/fuzz_dtlsserver.d \
./mbedtls-development/programs/fuzz/fuzz_pkcs7.d \
./mbedtls-development/programs/fuzz/fuzz_privkey.d \
./mbedtls-development/programs/fuzz/fuzz_pubkey.d \
./mbedtls-development/programs/fuzz/fuzz_server.d \
./mbedtls-development/programs/fuzz/fuzz_x509crl.d \
./mbedtls-development/programs/fuzz/fuzz_x509crt.d \
./mbedtls-development/programs/fuzz/fuzz_x509csr.d \
./mbedtls-development/programs/fuzz/onefile.d 


# Each subdirectory must supply rules for building sources it contributes
mbedtls-development/programs/fuzz/%.o mbedtls-development/programs/fuzz/%.su mbedtls-development/programs/fuzz/%.cyclo: ../mbedtls-development/programs/fuzz/%.c mbedtls-development/programs/fuzz/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/mbedtls-development" -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-mbedtls-2d-development-2f-programs-2f-fuzz

clean-mbedtls-2d-development-2f-programs-2f-fuzz:
	-$(RM) ./mbedtls-development/programs/fuzz/common.cyclo ./mbedtls-development/programs/fuzz/common.d ./mbedtls-development/programs/fuzz/common.o ./mbedtls-development/programs/fuzz/common.su ./mbedtls-development/programs/fuzz/fuzz_client.cyclo ./mbedtls-development/programs/fuzz/fuzz_client.d ./mbedtls-development/programs/fuzz/fuzz_client.o ./mbedtls-development/programs/fuzz/fuzz_client.su ./mbedtls-development/programs/fuzz/fuzz_dtlsclient.cyclo ./mbedtls-development/programs/fuzz/fuzz_dtlsclient.d ./mbedtls-development/programs/fuzz/fuzz_dtlsclient.o ./mbedtls-development/programs/fuzz/fuzz_dtlsclient.su ./mbedtls-development/programs/fuzz/fuzz_dtlsserver.cyclo ./mbedtls-development/programs/fuzz/fuzz_dtlsserver.d ./mbedtls-development/programs/fuzz/fuzz_dtlsserver.o ./mbedtls-development/programs/fuzz/fuzz_dtlsserver.su ./mbedtls-development/programs/fuzz/fuzz_pkcs7.cyclo ./mbedtls-development/programs/fuzz/fuzz_pkcs7.d ./mbedtls-development/programs/fuzz/fuzz_pkcs7.o ./mbedtls-development/programs/fuzz/fuzz_pkcs7.su ./mbedtls-development/programs/fuzz/fuzz_privkey.cyclo ./mbedtls-development/programs/fuzz/fuzz_privkey.d ./mbedtls-development/programs/fuzz/fuzz_privkey.o ./mbedtls-development/programs/fuzz/fuzz_privkey.su ./mbedtls-development/programs/fuzz/fuzz_pubkey.cyclo ./mbedtls-development/programs/fuzz/fuzz_pubkey.d ./mbedtls-development/programs/fuzz/fuzz_pubkey.o ./mbedtls-development/programs/fuzz/fuzz_pubkey.su ./mbedtls-development/programs/fuzz/fuzz_server.cyclo ./mbedtls-development/programs/fuzz/fuzz_server.d ./mbedtls-development/programs/fuzz/fuzz_server.o ./mbedtls-development/programs/fuzz/fuzz_server.su ./mbedtls-development/programs/fuzz/fuzz_x509crl.cyclo ./mbedtls-development/programs/fuzz/fuzz_x509crl.d ./mbedtls-development/programs/fuzz/fuzz_x509crl.o ./mbedtls-development/programs/fuzz/fuzz_x509crl.su ./mbedtls-development/programs/fuzz/fuzz_x509crt.cyclo ./mbedtls-development/programs/fuzz/fuzz_x509crt.d ./mbedtls-development/programs/fuzz/fuzz_x509crt.o ./mbedtls-development/programs/fuzz/fuzz_x509crt.su ./mbedtls-development/programs/fuzz/fuzz_x509csr.cyclo ./mbedtls-development/programs/fuzz/fuzz_x509csr.d ./mbedtls-development/programs/fuzz/fuzz_x509csr.o ./mbedtls-development/programs/fuzz/fuzz_x509csr.su ./mbedtls-development/programs/fuzz/onefile.cyclo ./mbedtls-development/programs/fuzz/onefile.d ./mbedtls-development/programs/fuzz/onefile.o ./mbedtls-development/programs/fuzz/onefile.su

.PHONY: clean-mbedtls-2d-development-2f-programs-2f-fuzz

