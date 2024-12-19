################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/src/hash/legacy_v3_sha1.c \
../Core/Src/src/hash/legacy_v3_sha224.c \
../Core/Src/src/hash/legacy_v3_sha256.c \
../Core/Src/src/hash/legacy_v3_sha384.c \
../Core/Src/src/hash/legacy_v3_sha512.c 

OBJS += \
./Core/Src/src/hash/legacy_v3_sha1.o \
./Core/Src/src/hash/legacy_v3_sha224.o \
./Core/Src/src/hash/legacy_v3_sha256.o \
./Core/Src/src/hash/legacy_v3_sha384.o \
./Core/Src/src/hash/legacy_v3_sha512.o 

C_DEPS += \
./Core/Src/src/hash/legacy_v3_sha1.d \
./Core/Src/src/hash/legacy_v3_sha224.d \
./Core/Src/src/hash/legacy_v3_sha256.d \
./Core/Src/src/hash/legacy_v3_sha384.d \
./Core/Src/src/hash/legacy_v3_sha512.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/src/hash/%.o Core/Src/src/hash/%.su Core/Src/src/hash/%.cyclo: ../Core/Src/src/hash/%.c Core/Src/src/hash/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.17.0/WindowSensorsSTM/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.17.0/WindowSensorsSTM/HelloWorldWithAccount/Middlewares/ST/STM32_Cryptographic/legacy_v3/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-src-2f-hash

clean-Core-2f-Src-2f-src-2f-hash:
	-$(RM) ./Core/Src/src/hash/legacy_v3_sha1.cyclo ./Core/Src/src/hash/legacy_v3_sha1.d ./Core/Src/src/hash/legacy_v3_sha1.o ./Core/Src/src/hash/legacy_v3_sha1.su ./Core/Src/src/hash/legacy_v3_sha224.cyclo ./Core/Src/src/hash/legacy_v3_sha224.d ./Core/Src/src/hash/legacy_v3_sha224.o ./Core/Src/src/hash/legacy_v3_sha224.su ./Core/Src/src/hash/legacy_v3_sha256.cyclo ./Core/Src/src/hash/legacy_v3_sha256.d ./Core/Src/src/hash/legacy_v3_sha256.o ./Core/Src/src/hash/legacy_v3_sha256.su ./Core/Src/src/hash/legacy_v3_sha384.cyclo ./Core/Src/src/hash/legacy_v3_sha384.d ./Core/Src/src/hash/legacy_v3_sha384.o ./Core/Src/src/hash/legacy_v3_sha384.su ./Core/Src/src/hash/legacy_v3_sha512.cyclo ./Core/Src/src/hash/legacy_v3_sha512.d ./Core/Src/src/hash/legacy_v3_sha512.o ./Core/Src/src/hash/legacy_v3_sha512.su

.PHONY: clean-Core-2f-Src-2f-src-2f-hash

