################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbedtls-development/programs/pkey/dh_client.c \
../mbedtls-development/programs/pkey/dh_genprime.c \
../mbedtls-development/programs/pkey/dh_server.c \
../mbedtls-development/programs/pkey/ecdh_curve25519.c \
../mbedtls-development/programs/pkey/ecdsa.c \
../mbedtls-development/programs/pkey/gen_key.c \
../mbedtls-development/programs/pkey/key_app.c \
../mbedtls-development/programs/pkey/key_app_writer.c \
../mbedtls-development/programs/pkey/mpi_demo.c \
../mbedtls-development/programs/pkey/pk_decrypt.c \
../mbedtls-development/programs/pkey/pk_encrypt.c \
../mbedtls-development/programs/pkey/pk_sign.c \
../mbedtls-development/programs/pkey/pk_verify.c \
../mbedtls-development/programs/pkey/rsa_decrypt.c \
../mbedtls-development/programs/pkey/rsa_encrypt.c \
../mbedtls-development/programs/pkey/rsa_genkey.c \
../mbedtls-development/programs/pkey/rsa_sign.c \
../mbedtls-development/programs/pkey/rsa_sign_pss.c \
../mbedtls-development/programs/pkey/rsa_verify.c \
../mbedtls-development/programs/pkey/rsa_verify_pss.c 

OBJS += \
./mbedtls-development/programs/pkey/dh_client.o \
./mbedtls-development/programs/pkey/dh_genprime.o \
./mbedtls-development/programs/pkey/dh_server.o \
./mbedtls-development/programs/pkey/ecdh_curve25519.o \
./mbedtls-development/programs/pkey/ecdsa.o \
./mbedtls-development/programs/pkey/gen_key.o \
./mbedtls-development/programs/pkey/key_app.o \
./mbedtls-development/programs/pkey/key_app_writer.o \
./mbedtls-development/programs/pkey/mpi_demo.o \
./mbedtls-development/programs/pkey/pk_decrypt.o \
./mbedtls-development/programs/pkey/pk_encrypt.o \
./mbedtls-development/programs/pkey/pk_sign.o \
./mbedtls-development/programs/pkey/pk_verify.o \
./mbedtls-development/programs/pkey/rsa_decrypt.o \
./mbedtls-development/programs/pkey/rsa_encrypt.o \
./mbedtls-development/programs/pkey/rsa_genkey.o \
./mbedtls-development/programs/pkey/rsa_sign.o \
./mbedtls-development/programs/pkey/rsa_sign_pss.o \
./mbedtls-development/programs/pkey/rsa_verify.o \
./mbedtls-development/programs/pkey/rsa_verify_pss.o 

C_DEPS += \
./mbedtls-development/programs/pkey/dh_client.d \
./mbedtls-development/programs/pkey/dh_genprime.d \
./mbedtls-development/programs/pkey/dh_server.d \
./mbedtls-development/programs/pkey/ecdh_curve25519.d \
./mbedtls-development/programs/pkey/ecdsa.d \
./mbedtls-development/programs/pkey/gen_key.d \
./mbedtls-development/programs/pkey/key_app.d \
./mbedtls-development/programs/pkey/key_app_writer.d \
./mbedtls-development/programs/pkey/mpi_demo.d \
./mbedtls-development/programs/pkey/pk_decrypt.d \
./mbedtls-development/programs/pkey/pk_encrypt.d \
./mbedtls-development/programs/pkey/pk_sign.d \
./mbedtls-development/programs/pkey/pk_verify.d \
./mbedtls-development/programs/pkey/rsa_decrypt.d \
./mbedtls-development/programs/pkey/rsa_encrypt.d \
./mbedtls-development/programs/pkey/rsa_genkey.d \
./mbedtls-development/programs/pkey/rsa_sign.d \
./mbedtls-development/programs/pkey/rsa_sign_pss.d \
./mbedtls-development/programs/pkey/rsa_verify.d \
./mbedtls-development/programs/pkey/rsa_verify_pss.d 


# Each subdirectory must supply rules for building sources it contributes
mbedtls-development/programs/pkey/%.o mbedtls-development/programs/pkey/%.su mbedtls-development/programs/pkey/%.cyclo: ../mbedtls-development/programs/pkey/%.c mbedtls-development/programs/pkey/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/mbedtls-development" -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-mbedtls-2d-development-2f-programs-2f-pkey

clean-mbedtls-2d-development-2f-programs-2f-pkey:
	-$(RM) ./mbedtls-development/programs/pkey/dh_client.cyclo ./mbedtls-development/programs/pkey/dh_client.d ./mbedtls-development/programs/pkey/dh_client.o ./mbedtls-development/programs/pkey/dh_client.su ./mbedtls-development/programs/pkey/dh_genprime.cyclo ./mbedtls-development/programs/pkey/dh_genprime.d ./mbedtls-development/programs/pkey/dh_genprime.o ./mbedtls-development/programs/pkey/dh_genprime.su ./mbedtls-development/programs/pkey/dh_server.cyclo ./mbedtls-development/programs/pkey/dh_server.d ./mbedtls-development/programs/pkey/dh_server.o ./mbedtls-development/programs/pkey/dh_server.su ./mbedtls-development/programs/pkey/ecdh_curve25519.cyclo ./mbedtls-development/programs/pkey/ecdh_curve25519.d ./mbedtls-development/programs/pkey/ecdh_curve25519.o ./mbedtls-development/programs/pkey/ecdh_curve25519.su ./mbedtls-development/programs/pkey/ecdsa.cyclo ./mbedtls-development/programs/pkey/ecdsa.d ./mbedtls-development/programs/pkey/ecdsa.o ./mbedtls-development/programs/pkey/ecdsa.su ./mbedtls-development/programs/pkey/gen_key.cyclo ./mbedtls-development/programs/pkey/gen_key.d ./mbedtls-development/programs/pkey/gen_key.o ./mbedtls-development/programs/pkey/gen_key.su ./mbedtls-development/programs/pkey/key_app.cyclo ./mbedtls-development/programs/pkey/key_app.d ./mbedtls-development/programs/pkey/key_app.o ./mbedtls-development/programs/pkey/key_app.su ./mbedtls-development/programs/pkey/key_app_writer.cyclo ./mbedtls-development/programs/pkey/key_app_writer.d ./mbedtls-development/programs/pkey/key_app_writer.o ./mbedtls-development/programs/pkey/key_app_writer.su ./mbedtls-development/programs/pkey/mpi_demo.cyclo ./mbedtls-development/programs/pkey/mpi_demo.d ./mbedtls-development/programs/pkey/mpi_demo.o ./mbedtls-development/programs/pkey/mpi_demo.su ./mbedtls-development/programs/pkey/pk_decrypt.cyclo ./mbedtls-development/programs/pkey/pk_decrypt.d ./mbedtls-development/programs/pkey/pk_decrypt.o ./mbedtls-development/programs/pkey/pk_decrypt.su ./mbedtls-development/programs/pkey/pk_encrypt.cyclo ./mbedtls-development/programs/pkey/pk_encrypt.d ./mbedtls-development/programs/pkey/pk_encrypt.o ./mbedtls-development/programs/pkey/pk_encrypt.su ./mbedtls-development/programs/pkey/pk_sign.cyclo ./mbedtls-development/programs/pkey/pk_sign.d ./mbedtls-development/programs/pkey/pk_sign.o ./mbedtls-development/programs/pkey/pk_sign.su ./mbedtls-development/programs/pkey/pk_verify.cyclo ./mbedtls-development/programs/pkey/pk_verify.d ./mbedtls-development/programs/pkey/pk_verify.o ./mbedtls-development/programs/pkey/pk_verify.su ./mbedtls-development/programs/pkey/rsa_decrypt.cyclo ./mbedtls-development/programs/pkey/rsa_decrypt.d ./mbedtls-development/programs/pkey/rsa_decrypt.o ./mbedtls-development/programs/pkey/rsa_decrypt.su ./mbedtls-development/programs/pkey/rsa_encrypt.cyclo ./mbedtls-development/programs/pkey/rsa_encrypt.d ./mbedtls-development/programs/pkey/rsa_encrypt.o ./mbedtls-development/programs/pkey/rsa_encrypt.su ./mbedtls-development/programs/pkey/rsa_genkey.cyclo ./mbedtls-development/programs/pkey/rsa_genkey.d ./mbedtls-development/programs/pkey/rsa_genkey.o ./mbedtls-development/programs/pkey/rsa_genkey.su ./mbedtls-development/programs/pkey/rsa_sign.cyclo ./mbedtls-development/programs/pkey/rsa_sign.d ./mbedtls-development/programs/pkey/rsa_sign.o ./mbedtls-development/programs/pkey/rsa_sign.su ./mbedtls-development/programs/pkey/rsa_sign_pss.cyclo ./mbedtls-development/programs/pkey/rsa_sign_pss.d ./mbedtls-development/programs/pkey/rsa_sign_pss.o ./mbedtls-development/programs/pkey/rsa_sign_pss.su ./mbedtls-development/programs/pkey/rsa_verify.cyclo ./mbedtls-development/programs/pkey/rsa_verify.d ./mbedtls-development/programs/pkey/rsa_verify.o ./mbedtls-development/programs/pkey/rsa_verify.su ./mbedtls-development/programs/pkey/rsa_verify_pss.cyclo ./mbedtls-development/programs/pkey/rsa_verify_pss.d ./mbedtls-development/programs/pkey/rsa_verify_pss.o ./mbedtls-development/programs/pkey/rsa_verify_pss.su

.PHONY: clean-mbedtls-2d-development-2f-programs-2f-pkey

