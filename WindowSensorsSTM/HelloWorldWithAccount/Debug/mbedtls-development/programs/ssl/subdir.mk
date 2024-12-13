################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbedtls-development/programs/ssl/dtls_client.c \
../mbedtls-development/programs/ssl/dtls_server.c \
../mbedtls-development/programs/ssl/mini_client.c \
../mbedtls-development/programs/ssl/ssl_client1.c \
../mbedtls-development/programs/ssl/ssl_client2.c \
../mbedtls-development/programs/ssl/ssl_context_info.c \
../mbedtls-development/programs/ssl/ssl_fork_server.c \
../mbedtls-development/programs/ssl/ssl_mail_client.c \
../mbedtls-development/programs/ssl/ssl_pthread_server.c \
../mbedtls-development/programs/ssl/ssl_server.c \
../mbedtls-development/programs/ssl/ssl_server2.c \
../mbedtls-development/programs/ssl/ssl_test_common_source.c \
../mbedtls-development/programs/ssl/ssl_test_lib.c 

OBJS += \
./mbedtls-development/programs/ssl/dtls_client.o \
./mbedtls-development/programs/ssl/dtls_server.o \
./mbedtls-development/programs/ssl/mini_client.o \
./mbedtls-development/programs/ssl/ssl_client1.o \
./mbedtls-development/programs/ssl/ssl_client2.o \
./mbedtls-development/programs/ssl/ssl_context_info.o \
./mbedtls-development/programs/ssl/ssl_fork_server.o \
./mbedtls-development/programs/ssl/ssl_mail_client.o \
./mbedtls-development/programs/ssl/ssl_pthread_server.o \
./mbedtls-development/programs/ssl/ssl_server.o \
./mbedtls-development/programs/ssl/ssl_server2.o \
./mbedtls-development/programs/ssl/ssl_test_common_source.o \
./mbedtls-development/programs/ssl/ssl_test_lib.o 

C_DEPS += \
./mbedtls-development/programs/ssl/dtls_client.d \
./mbedtls-development/programs/ssl/dtls_server.d \
./mbedtls-development/programs/ssl/mini_client.d \
./mbedtls-development/programs/ssl/ssl_client1.d \
./mbedtls-development/programs/ssl/ssl_client2.d \
./mbedtls-development/programs/ssl/ssl_context_info.d \
./mbedtls-development/programs/ssl/ssl_fork_server.d \
./mbedtls-development/programs/ssl/ssl_mail_client.d \
./mbedtls-development/programs/ssl/ssl_pthread_server.d \
./mbedtls-development/programs/ssl/ssl_server.d \
./mbedtls-development/programs/ssl/ssl_server2.d \
./mbedtls-development/programs/ssl/ssl_test_common_source.d \
./mbedtls-development/programs/ssl/ssl_test_lib.d 


# Each subdirectory must supply rules for building sources it contributes
mbedtls-development/programs/ssl/%.o mbedtls-development/programs/ssl/%.su mbedtls-development/programs/ssl/%.cyclo: ../mbedtls-development/programs/ssl/%.c mbedtls-development/programs/ssl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/mbedtls-development" -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-mbedtls-2d-development-2f-programs-2f-ssl

clean-mbedtls-2d-development-2f-programs-2f-ssl:
	-$(RM) ./mbedtls-development/programs/ssl/dtls_client.cyclo ./mbedtls-development/programs/ssl/dtls_client.d ./mbedtls-development/programs/ssl/dtls_client.o ./mbedtls-development/programs/ssl/dtls_client.su ./mbedtls-development/programs/ssl/dtls_server.cyclo ./mbedtls-development/programs/ssl/dtls_server.d ./mbedtls-development/programs/ssl/dtls_server.o ./mbedtls-development/programs/ssl/dtls_server.su ./mbedtls-development/programs/ssl/mini_client.cyclo ./mbedtls-development/programs/ssl/mini_client.d ./mbedtls-development/programs/ssl/mini_client.o ./mbedtls-development/programs/ssl/mini_client.su ./mbedtls-development/programs/ssl/ssl_client1.cyclo ./mbedtls-development/programs/ssl/ssl_client1.d ./mbedtls-development/programs/ssl/ssl_client1.o ./mbedtls-development/programs/ssl/ssl_client1.su ./mbedtls-development/programs/ssl/ssl_client2.cyclo ./mbedtls-development/programs/ssl/ssl_client2.d ./mbedtls-development/programs/ssl/ssl_client2.o ./mbedtls-development/programs/ssl/ssl_client2.su ./mbedtls-development/programs/ssl/ssl_context_info.cyclo ./mbedtls-development/programs/ssl/ssl_context_info.d ./mbedtls-development/programs/ssl/ssl_context_info.o ./mbedtls-development/programs/ssl/ssl_context_info.su ./mbedtls-development/programs/ssl/ssl_fork_server.cyclo ./mbedtls-development/programs/ssl/ssl_fork_server.d ./mbedtls-development/programs/ssl/ssl_fork_server.o ./mbedtls-development/programs/ssl/ssl_fork_server.su ./mbedtls-development/programs/ssl/ssl_mail_client.cyclo ./mbedtls-development/programs/ssl/ssl_mail_client.d ./mbedtls-development/programs/ssl/ssl_mail_client.o ./mbedtls-development/programs/ssl/ssl_mail_client.su ./mbedtls-development/programs/ssl/ssl_pthread_server.cyclo ./mbedtls-development/programs/ssl/ssl_pthread_server.d ./mbedtls-development/programs/ssl/ssl_pthread_server.o ./mbedtls-development/programs/ssl/ssl_pthread_server.su ./mbedtls-development/programs/ssl/ssl_server.cyclo ./mbedtls-development/programs/ssl/ssl_server.d ./mbedtls-development/programs/ssl/ssl_server.o ./mbedtls-development/programs/ssl/ssl_server.su ./mbedtls-development/programs/ssl/ssl_server2.cyclo ./mbedtls-development/programs/ssl/ssl_server2.d ./mbedtls-development/programs/ssl/ssl_server2.o ./mbedtls-development/programs/ssl/ssl_server2.su ./mbedtls-development/programs/ssl/ssl_test_common_source.cyclo ./mbedtls-development/programs/ssl/ssl_test_common_source.d ./mbedtls-development/programs/ssl/ssl_test_common_source.o ./mbedtls-development/programs/ssl/ssl_test_common_source.su ./mbedtls-development/programs/ssl/ssl_test_lib.cyclo ./mbedtls-development/programs/ssl/ssl_test_lib.d ./mbedtls-development/programs/ssl/ssl_test_lib.o ./mbedtls-development/programs/ssl/ssl_test_lib.su

.PHONY: clean-mbedtls-2d-development-2f-programs-2f-ssl

