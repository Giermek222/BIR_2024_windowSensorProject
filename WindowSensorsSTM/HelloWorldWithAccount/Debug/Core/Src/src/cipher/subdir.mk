################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/src/cipher/legacy_v3_aes_cbc.c \
../Core/Src/src/cipher/legacy_v3_aes_ccm.c \
../Core/Src/src/cipher/legacy_v3_aes_cfb.c \
../Core/Src/src/cipher/legacy_v3_aes_ctr.c \
../Core/Src/src/cipher/legacy_v3_aes_ecb.c \
../Core/Src/src/cipher/legacy_v3_aes_gcm.c \
../Core/Src/src/cipher/legacy_v3_aes_keywrap.c \
../Core/Src/src/cipher/legacy_v3_aes_ofb.c \
../Core/Src/src/cipher/legacy_v3_aes_xts.c \
../Core/Src/src/cipher/legacy_v3_chachapoly.c 

OBJS += \
./Core/Src/src/cipher/legacy_v3_aes_cbc.o \
./Core/Src/src/cipher/legacy_v3_aes_ccm.o \
./Core/Src/src/cipher/legacy_v3_aes_cfb.o \
./Core/Src/src/cipher/legacy_v3_aes_ctr.o \
./Core/Src/src/cipher/legacy_v3_aes_ecb.o \
./Core/Src/src/cipher/legacy_v3_aes_gcm.o \
./Core/Src/src/cipher/legacy_v3_aes_keywrap.o \
./Core/Src/src/cipher/legacy_v3_aes_ofb.o \
./Core/Src/src/cipher/legacy_v3_aes_xts.o \
./Core/Src/src/cipher/legacy_v3_chachapoly.o 

C_DEPS += \
./Core/Src/src/cipher/legacy_v3_aes_cbc.d \
./Core/Src/src/cipher/legacy_v3_aes_ccm.d \
./Core/Src/src/cipher/legacy_v3_aes_cfb.d \
./Core/Src/src/cipher/legacy_v3_aes_ctr.d \
./Core/Src/src/cipher/legacy_v3_aes_ecb.d \
./Core/Src/src/cipher/legacy_v3_aes_gcm.d \
./Core/Src/src/cipher/legacy_v3_aes_keywrap.d \
./Core/Src/src/cipher/legacy_v3_aes_ofb.d \
./Core/Src/src/cipher/legacy_v3_aes_xts.d \
./Core/Src/src/cipher/legacy_v3_chachapoly.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/src/cipher/%.o Core/Src/src/cipher/%.su Core/Src/src/cipher/%.cyclo: ../Core/Src/src/cipher/%.c Core/Src/src/cipher/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.17.0/WindowSensorsSTM/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.17.0/WindowSensorsSTM/HelloWorldWithAccount/Middlewares/ST/STM32_Cryptographic/legacy_v3/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-src-2f-cipher

clean-Core-2f-Src-2f-src-2f-cipher:
	-$(RM) ./Core/Src/src/cipher/legacy_v3_aes_cbc.cyclo ./Core/Src/src/cipher/legacy_v3_aes_cbc.d ./Core/Src/src/cipher/legacy_v3_aes_cbc.o ./Core/Src/src/cipher/legacy_v3_aes_cbc.su ./Core/Src/src/cipher/legacy_v3_aes_ccm.cyclo ./Core/Src/src/cipher/legacy_v3_aes_ccm.d ./Core/Src/src/cipher/legacy_v3_aes_ccm.o ./Core/Src/src/cipher/legacy_v3_aes_ccm.su ./Core/Src/src/cipher/legacy_v3_aes_cfb.cyclo ./Core/Src/src/cipher/legacy_v3_aes_cfb.d ./Core/Src/src/cipher/legacy_v3_aes_cfb.o ./Core/Src/src/cipher/legacy_v3_aes_cfb.su ./Core/Src/src/cipher/legacy_v3_aes_ctr.cyclo ./Core/Src/src/cipher/legacy_v3_aes_ctr.d ./Core/Src/src/cipher/legacy_v3_aes_ctr.o ./Core/Src/src/cipher/legacy_v3_aes_ctr.su ./Core/Src/src/cipher/legacy_v3_aes_ecb.cyclo ./Core/Src/src/cipher/legacy_v3_aes_ecb.d ./Core/Src/src/cipher/legacy_v3_aes_ecb.o ./Core/Src/src/cipher/legacy_v3_aes_ecb.su ./Core/Src/src/cipher/legacy_v3_aes_gcm.cyclo ./Core/Src/src/cipher/legacy_v3_aes_gcm.d ./Core/Src/src/cipher/legacy_v3_aes_gcm.o ./Core/Src/src/cipher/legacy_v3_aes_gcm.su ./Core/Src/src/cipher/legacy_v3_aes_keywrap.cyclo ./Core/Src/src/cipher/legacy_v3_aes_keywrap.d ./Core/Src/src/cipher/legacy_v3_aes_keywrap.o ./Core/Src/src/cipher/legacy_v3_aes_keywrap.su ./Core/Src/src/cipher/legacy_v3_aes_ofb.cyclo ./Core/Src/src/cipher/legacy_v3_aes_ofb.d ./Core/Src/src/cipher/legacy_v3_aes_ofb.o ./Core/Src/src/cipher/legacy_v3_aes_ofb.su ./Core/Src/src/cipher/legacy_v3_aes_xts.cyclo ./Core/Src/src/cipher/legacy_v3_aes_xts.d ./Core/Src/src/cipher/legacy_v3_aes_xts.o ./Core/Src/src/cipher/legacy_v3_aes_xts.su ./Core/Src/src/cipher/legacy_v3_chachapoly.cyclo ./Core/Src/src/cipher/legacy_v3_chachapoly.d ./Core/Src/src/cipher/legacy_v3_chachapoly.o ./Core/Src/src/cipher/legacy_v3_chachapoly.su

.PHONY: clean-Core-2f-Src-2f-src-2f-cipher

