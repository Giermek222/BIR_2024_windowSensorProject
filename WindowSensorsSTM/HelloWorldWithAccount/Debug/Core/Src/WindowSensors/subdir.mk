################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/WindowSensors/WindowSensorSystem.c \
../Core/Src/WindowSensors/config.c \
../Core/Src/WindowSensors/gpio_control.c \
../Core/Src/WindowSensors/message_handler.c \
../Core/Src/WindowSensors/pointer_queue.c \
../Core/Src/WindowSensors/radioUtils.c 

OBJS += \
./Core/Src/WindowSensors/WindowSensorSystem.o \
./Core/Src/WindowSensors/config.o \
./Core/Src/WindowSensors/gpio_control.o \
./Core/Src/WindowSensors/message_handler.o \
./Core/Src/WindowSensors/pointer_queue.o \
./Core/Src/WindowSensors/radioUtils.o 

C_DEPS += \
./Core/Src/WindowSensors/WindowSensorSystem.d \
./Core/Src/WindowSensors/config.d \
./Core/Src/WindowSensors/gpio_control.d \
./Core/Src/WindowSensors/message_handler.d \
./Core/Src/WindowSensors/pointer_queue.d \
./Core/Src/WindowSensors/radioUtils.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/WindowSensors/%.o Core/Src/WindowSensors/%.su Core/Src/WindowSensors/%.cyclo: ../Core/Src/WindowSensors/%.c Core/Src/WindowSensors/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/mbedtls-mbedtls-3.6.2/include" -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Middlewares/ST/STM32_Cryptographic/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-WindowSensors

clean-Core-2f-Src-2f-WindowSensors:
	-$(RM) ./Core/Src/WindowSensors/WindowSensorSystem.cyclo ./Core/Src/WindowSensors/WindowSensorSystem.d ./Core/Src/WindowSensors/WindowSensorSystem.o ./Core/Src/WindowSensors/WindowSensorSystem.su ./Core/Src/WindowSensors/config.cyclo ./Core/Src/WindowSensors/config.d ./Core/Src/WindowSensors/config.o ./Core/Src/WindowSensors/config.su ./Core/Src/WindowSensors/gpio_control.cyclo ./Core/Src/WindowSensors/gpio_control.d ./Core/Src/WindowSensors/gpio_control.o ./Core/Src/WindowSensors/gpio_control.su ./Core/Src/WindowSensors/message_handler.cyclo ./Core/Src/WindowSensors/message_handler.d ./Core/Src/WindowSensors/message_handler.o ./Core/Src/WindowSensors/message_handler.su ./Core/Src/WindowSensors/pointer_queue.cyclo ./Core/Src/WindowSensors/pointer_queue.d ./Core/Src/WindowSensors/pointer_queue.o ./Core/Src/WindowSensors/pointer_queue.su ./Core/Src/WindowSensors/radioUtils.cyclo ./Core/Src/WindowSensors/radioUtils.d ./Core/Src/WindowSensors/radioUtils.o ./Core/Src/WindowSensors/radioUtils.su

.PHONY: clean-Core-2f-Src-2f-WindowSensors

