################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbedtls-development/library/debug.c \
../mbedtls-development/library/mps_reader.c \
../mbedtls-development/library/mps_trace.c \
../mbedtls-development/library/net_sockets.c \
../mbedtls-development/library/pkcs7.c \
../mbedtls-development/library/ssl_cache.c \
../mbedtls-development/library/ssl_ciphersuites.c \
../mbedtls-development/library/ssl_client.c \
../mbedtls-development/library/ssl_cookie.c \
../mbedtls-development/library/ssl_msg.c \
../mbedtls-development/library/ssl_ticket.c \
../mbedtls-development/library/ssl_tls.c \
../mbedtls-development/library/ssl_tls12_client.c \
../mbedtls-development/library/ssl_tls12_server.c \
../mbedtls-development/library/ssl_tls13_client.c \
../mbedtls-development/library/ssl_tls13_generic.c \
../mbedtls-development/library/ssl_tls13_keys.c \
../mbedtls-development/library/ssl_tls13_server.c \
../mbedtls-development/library/timing.c \
../mbedtls-development/library/version.c \
../mbedtls-development/library/x509.c \
../mbedtls-development/library/x509_create.c \
../mbedtls-development/library/x509_crl.c \
../mbedtls-development/library/x509_crt.c \
../mbedtls-development/library/x509_csr.c \
../mbedtls-development/library/x509write.c \
../mbedtls-development/library/x509write_crt.c \
../mbedtls-development/library/x509write_csr.c 

OBJS += \
./mbedtls-development/library/debug.o \
./mbedtls-development/library/mps_reader.o \
./mbedtls-development/library/mps_trace.o \
./mbedtls-development/library/net_sockets.o \
./mbedtls-development/library/pkcs7.o \
./mbedtls-development/library/ssl_cache.o \
./mbedtls-development/library/ssl_ciphersuites.o \
./mbedtls-development/library/ssl_client.o \
./mbedtls-development/library/ssl_cookie.o \
./mbedtls-development/library/ssl_msg.o \
./mbedtls-development/library/ssl_ticket.o \
./mbedtls-development/library/ssl_tls.o \
./mbedtls-development/library/ssl_tls12_client.o \
./mbedtls-development/library/ssl_tls12_server.o \
./mbedtls-development/library/ssl_tls13_client.o \
./mbedtls-development/library/ssl_tls13_generic.o \
./mbedtls-development/library/ssl_tls13_keys.o \
./mbedtls-development/library/ssl_tls13_server.o \
./mbedtls-development/library/timing.o \
./mbedtls-development/library/version.o \
./mbedtls-development/library/x509.o \
./mbedtls-development/library/x509_create.o \
./mbedtls-development/library/x509_crl.o \
./mbedtls-development/library/x509_crt.o \
./mbedtls-development/library/x509_csr.o \
./mbedtls-development/library/x509write.o \
./mbedtls-development/library/x509write_crt.o \
./mbedtls-development/library/x509write_csr.o 

C_DEPS += \
./mbedtls-development/library/debug.d \
./mbedtls-development/library/mps_reader.d \
./mbedtls-development/library/mps_trace.d \
./mbedtls-development/library/net_sockets.d \
./mbedtls-development/library/pkcs7.d \
./mbedtls-development/library/ssl_cache.d \
./mbedtls-development/library/ssl_ciphersuites.d \
./mbedtls-development/library/ssl_client.d \
./mbedtls-development/library/ssl_cookie.d \
./mbedtls-development/library/ssl_msg.d \
./mbedtls-development/library/ssl_ticket.d \
./mbedtls-development/library/ssl_tls.d \
./mbedtls-development/library/ssl_tls12_client.d \
./mbedtls-development/library/ssl_tls12_server.d \
./mbedtls-development/library/ssl_tls13_client.d \
./mbedtls-development/library/ssl_tls13_generic.d \
./mbedtls-development/library/ssl_tls13_keys.d \
./mbedtls-development/library/ssl_tls13_server.d \
./mbedtls-development/library/timing.d \
./mbedtls-development/library/version.d \
./mbedtls-development/library/x509.d \
./mbedtls-development/library/x509_create.d \
./mbedtls-development/library/x509_crl.d \
./mbedtls-development/library/x509_crt.d \
./mbedtls-development/library/x509_csr.d \
./mbedtls-development/library/x509write.d \
./mbedtls-development/library/x509write_crt.d \
./mbedtls-development/library/x509write_csr.d 


# Each subdirectory must supply rules for building sources it contributes
mbedtls-development/library/%.o mbedtls-development/library/%.su mbedtls-development/library/%.cyclo: ../mbedtls-development/library/%.c mbedtls-development/library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/mbedtls-development" -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-mbedtls-2d-development-2f-library

clean-mbedtls-2d-development-2f-library:
	-$(RM) ./mbedtls-development/library/debug.cyclo ./mbedtls-development/library/debug.d ./mbedtls-development/library/debug.o ./mbedtls-development/library/debug.su ./mbedtls-development/library/mps_reader.cyclo ./mbedtls-development/library/mps_reader.d ./mbedtls-development/library/mps_reader.o ./mbedtls-development/library/mps_reader.su ./mbedtls-development/library/mps_trace.cyclo ./mbedtls-development/library/mps_trace.d ./mbedtls-development/library/mps_trace.o ./mbedtls-development/library/mps_trace.su ./mbedtls-development/library/net_sockets.cyclo ./mbedtls-development/library/net_sockets.d ./mbedtls-development/library/net_sockets.o ./mbedtls-development/library/net_sockets.su ./mbedtls-development/library/pkcs7.cyclo ./mbedtls-development/library/pkcs7.d ./mbedtls-development/library/pkcs7.o ./mbedtls-development/library/pkcs7.su ./mbedtls-development/library/ssl_cache.cyclo ./mbedtls-development/library/ssl_cache.d ./mbedtls-development/library/ssl_cache.o ./mbedtls-development/library/ssl_cache.su ./mbedtls-development/library/ssl_ciphersuites.cyclo ./mbedtls-development/library/ssl_ciphersuites.d ./mbedtls-development/library/ssl_ciphersuites.o ./mbedtls-development/library/ssl_ciphersuites.su ./mbedtls-development/library/ssl_client.cyclo ./mbedtls-development/library/ssl_client.d ./mbedtls-development/library/ssl_client.o ./mbedtls-development/library/ssl_client.su ./mbedtls-development/library/ssl_cookie.cyclo ./mbedtls-development/library/ssl_cookie.d ./mbedtls-development/library/ssl_cookie.o ./mbedtls-development/library/ssl_cookie.su ./mbedtls-development/library/ssl_msg.cyclo ./mbedtls-development/library/ssl_msg.d ./mbedtls-development/library/ssl_msg.o ./mbedtls-development/library/ssl_msg.su ./mbedtls-development/library/ssl_ticket.cyclo ./mbedtls-development/library/ssl_ticket.d ./mbedtls-development/library/ssl_ticket.o ./mbedtls-development/library/ssl_ticket.su ./mbedtls-development/library/ssl_tls.cyclo ./mbedtls-development/library/ssl_tls.d ./mbedtls-development/library/ssl_tls.o ./mbedtls-development/library/ssl_tls.su ./mbedtls-development/library/ssl_tls12_client.cyclo ./mbedtls-development/library/ssl_tls12_client.d ./mbedtls-development/library/ssl_tls12_client.o ./mbedtls-development/library/ssl_tls12_client.su ./mbedtls-development/library/ssl_tls12_server.cyclo ./mbedtls-development/library/ssl_tls12_server.d ./mbedtls-development/library/ssl_tls12_server.o ./mbedtls-development/library/ssl_tls12_server.su ./mbedtls-development/library/ssl_tls13_client.cyclo ./mbedtls-development/library/ssl_tls13_client.d ./mbedtls-development/library/ssl_tls13_client.o ./mbedtls-development/library/ssl_tls13_client.su ./mbedtls-development/library/ssl_tls13_generic.cyclo ./mbedtls-development/library/ssl_tls13_generic.d ./mbedtls-development/library/ssl_tls13_generic.o ./mbedtls-development/library/ssl_tls13_generic.su ./mbedtls-development/library/ssl_tls13_keys.cyclo ./mbedtls-development/library/ssl_tls13_keys.d ./mbedtls-development/library/ssl_tls13_keys.o ./mbedtls-development/library/ssl_tls13_keys.su ./mbedtls-development/library/ssl_tls13_server.cyclo ./mbedtls-development/library/ssl_tls13_server.d ./mbedtls-development/library/ssl_tls13_server.o ./mbedtls-development/library/ssl_tls13_server.su ./mbedtls-development/library/timing.cyclo ./mbedtls-development/library/timing.d ./mbedtls-development/library/timing.o ./mbedtls-development/library/timing.su ./mbedtls-development/library/version.cyclo ./mbedtls-development/library/version.d ./mbedtls-development/library/version.o ./mbedtls-development/library/version.su ./mbedtls-development/library/x509.cyclo ./mbedtls-development/library/x509.d ./mbedtls-development/library/x509.o ./mbedtls-development/library/x509.su ./mbedtls-development/library/x509_create.cyclo ./mbedtls-development/library/x509_create.d ./mbedtls-development/library/x509_create.o ./mbedtls-development/library/x509_create.su ./mbedtls-development/library/x509_crl.cyclo ./mbedtls-development/library/x509_crl.d ./mbedtls-development/library/x509_crl.o ./mbedtls-development/library/x509_crl.su ./mbedtls-development/library/x509_crt.cyclo ./mbedtls-development/library/x509_crt.d ./mbedtls-development/library/x509_crt.o ./mbedtls-development/library/x509_crt.su ./mbedtls-development/library/x509_csr.cyclo ./mbedtls-development/library/x509_csr.d ./mbedtls-development/library/x509_csr.o ./mbedtls-development/library/x509_csr.su ./mbedtls-development/library/x509write.cyclo ./mbedtls-development/library/x509write.d ./mbedtls-development/library/x509write.o ./mbedtls-development/library/x509write.su ./mbedtls-development/library/x509write_crt.cyclo ./mbedtls-development/library/x509write_crt.d ./mbedtls-development/library/x509write_crt.o ./mbedtls-development/library/x509write_crt.su ./mbedtls-development/library/x509write_csr.cyclo ./mbedtls-development/library/x509write_csr.d ./mbedtls-development/library/x509write_csr.o ./mbedtls-development/library/x509write_csr.su

.PHONY: clean-mbedtls-2d-development-2f-library

