################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbedtls-development/tests/psa-client-server/psasim/src/aut_main.c \
../mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_aead_encrypt.c \
../mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_aead_encrypt_decrypt.c \
../mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_asymmetric_encrypt_decrypt.c \
../mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_cipher_encrypt_decrypt.c \
../mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_hash.c \
../mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_hash_compute.c \
../mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_hkdf.c \
../mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_key_agreement.c \
../mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_mac.c \
../mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_random.c \
../mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_sign_verify.c \
../mbedtls-development/tests/psa-client-server/psasim/src/client.c \
../mbedtls-development/tests/psa-client-server/psasim/src/psa_ff_client.c \
../mbedtls-development/tests/psa-client-server/psasim/src/psa_ff_server.c \
../mbedtls-development/tests/psa-client-server/psasim/src/psa_sim_crypto_client.c \
../mbedtls-development/tests/psa-client-server/psasim/src/psa_sim_crypto_server.c \
../mbedtls-development/tests/psa-client-server/psasim/src/psa_sim_serialise.c \
../mbedtls-development/tests/psa-client-server/psasim/src/server.c 

OBJS += \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_main.o \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_aead_encrypt.o \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_aead_encrypt_decrypt.o \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_asymmetric_encrypt_decrypt.o \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_cipher_encrypt_decrypt.o \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_hash.o \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_hash_compute.o \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_hkdf.o \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_key_agreement.o \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_mac.o \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_random.o \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_sign_verify.o \
./mbedtls-development/tests/psa-client-server/psasim/src/client.o \
./mbedtls-development/tests/psa-client-server/psasim/src/psa_ff_client.o \
./mbedtls-development/tests/psa-client-server/psasim/src/psa_ff_server.o \
./mbedtls-development/tests/psa-client-server/psasim/src/psa_sim_crypto_client.o \
./mbedtls-development/tests/psa-client-server/psasim/src/psa_sim_crypto_server.o \
./mbedtls-development/tests/psa-client-server/psasim/src/psa_sim_serialise.o \
./mbedtls-development/tests/psa-client-server/psasim/src/server.o 

C_DEPS += \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_main.d \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_aead_encrypt.d \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_aead_encrypt_decrypt.d \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_asymmetric_encrypt_decrypt.d \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_cipher_encrypt_decrypt.d \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_hash.d \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_hash_compute.d \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_hkdf.d \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_key_agreement.d \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_mac.d \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_random.d \
./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_sign_verify.d \
./mbedtls-development/tests/psa-client-server/psasim/src/client.d \
./mbedtls-development/tests/psa-client-server/psasim/src/psa_ff_client.d \
./mbedtls-development/tests/psa-client-server/psasim/src/psa_ff_server.d \
./mbedtls-development/tests/psa-client-server/psasim/src/psa_sim_crypto_client.d \
./mbedtls-development/tests/psa-client-server/psasim/src/psa_sim_crypto_server.d \
./mbedtls-development/tests/psa-client-server/psasim/src/psa_sim_serialise.d \
./mbedtls-development/tests/psa-client-server/psasim/src/server.d 


# Each subdirectory must supply rules for building sources it contributes
mbedtls-development/tests/psa-client-server/psasim/src/%.o mbedtls-development/tests/psa-client-server/psasim/src/%.su mbedtls-development/tests/psa-client-server/psasim/src/%.cyclo: ../mbedtls-development/tests/psa-client-server/psasim/src/%.c mbedtls-development/tests/psa-client-server/psasim/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/mbedtls-development" -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-mbedtls-2d-development-2f-tests-2f-psa-2d-client-2d-server-2f-psasim-2f-src

clean-mbedtls-2d-development-2f-tests-2f-psa-2d-client-2d-server-2f-psasim-2f-src:
	-$(RM) ./mbedtls-development/tests/psa-client-server/psasim/src/aut_main.cyclo ./mbedtls-development/tests/psa-client-server/psasim/src/aut_main.d ./mbedtls-development/tests/psa-client-server/psasim/src/aut_main.o ./mbedtls-development/tests/psa-client-server/psasim/src/aut_main.su ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_aead_encrypt.cyclo ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_aead_encrypt.d ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_aead_encrypt.o ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_aead_encrypt.su ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_aead_encrypt_decrypt.cyclo ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_aead_encrypt_decrypt.d ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_aead_encrypt_decrypt.o ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_aead_encrypt_decrypt.su ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_asymmetric_encrypt_decrypt.cyclo ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_asymmetric_encrypt_decrypt.d ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_asymmetric_encrypt_decrypt.o ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_asymmetric_encrypt_decrypt.su ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_cipher_encrypt_decrypt.cyclo ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_cipher_encrypt_decrypt.d ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_cipher_encrypt_decrypt.o ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_cipher_encrypt_decrypt.su ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_hash.cyclo ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_hash.d ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_hash.o ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_hash.su ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_hash_compute.cyclo ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_hash_compute.d ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_hash_compute.o ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_hash_compute.su ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_hkdf.cyclo ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_hkdf.d ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_hkdf.o ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_hkdf.su ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_key_agreement.cyclo ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_key_agreement.d ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_key_agreement.o ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_key_agreement.su ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_mac.cyclo ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_mac.d ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_mac.o ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_mac.su ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_random.cyclo ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_random.d ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_random.o ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_random.su ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_sign_verify.cyclo ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_sign_verify.d ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_sign_verify.o ./mbedtls-development/tests/psa-client-server/psasim/src/aut_psa_sign_verify.su ./mbedtls-development/tests/psa-client-server/psasim/src/client.cyclo ./mbedtls-development/tests/psa-client-server/psasim/src/client.d ./mbedtls-development/tests/psa-client-server/psasim/src/client.o ./mbedtls-development/tests/psa-client-server/psasim/src/client.su ./mbedtls-development/tests/psa-client-server/psasim/src/psa_ff_client.cyclo ./mbedtls-development/tests/psa-client-server/psasim/src/psa_ff_client.d ./mbedtls-development/tests/psa-client-server/psasim/src/psa_ff_client.o ./mbedtls-development/tests/psa-client-server/psasim/src/psa_ff_client.su ./mbedtls-development/tests/psa-client-server/psasim/src/psa_ff_server.cyclo ./mbedtls-development/tests/psa-client-server/psasim/src/psa_ff_server.d ./mbedtls-development/tests/psa-client-server/psasim/src/psa_ff_server.o ./mbedtls-development/tests/psa-client-server/psasim/src/psa_ff_server.su ./mbedtls-development/tests/psa-client-server/psasim/src/psa_sim_crypto_client.cyclo ./mbedtls-development/tests/psa-client-server/psasim/src/psa_sim_crypto_client.d ./mbedtls-development/tests/psa-client-server/psasim/src/psa_sim_crypto_client.o ./mbedtls-development/tests/psa-client-server/psasim/src/psa_sim_crypto_client.su ./mbedtls-development/tests/psa-client-server/psasim/src/psa_sim_crypto_server.cyclo ./mbedtls-development/tests/psa-client-server/psasim/src/psa_sim_crypto_server.d ./mbedtls-development/tests/psa-client-server/psasim/src/psa_sim_crypto_server.o ./mbedtls-development/tests/psa-client-server/psasim/src/psa_sim_crypto_server.su ./mbedtls-development/tests/psa-client-server/psasim/src/psa_sim_serialise.cyclo ./mbedtls-development/tests/psa-client-server/psasim/src/psa_sim_serialise.d ./mbedtls-development/tests/psa-client-server/psasim/src/psa_sim_serialise.o ./mbedtls-development/tests/psa-client-server/psasim/src/psa_sim_serialise.su ./mbedtls-development/tests/psa-client-server/psasim/src/server.cyclo ./mbedtls-development/tests/psa-client-server/psasim/src/server.d ./mbedtls-development/tests/psa-client-server/psasim/src/server.o ./mbedtls-development/tests/psa-client-server/psasim/src/server.su

.PHONY: clean-mbedtls-2d-development-2f-tests-2f-psa-2d-client-2d-server-2f-psasim-2f-src

