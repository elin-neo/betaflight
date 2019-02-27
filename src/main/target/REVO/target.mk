ifeq ($(TARGET), ELINF722)
	F7X2RE_TARGETS += $(TARGET) 
else
	F405_TARGETS   += $(TARGET)
endif
ifeq ($(TARGET), AIRBOTF4SD)
FEATURES       = VCP SDCARD_SPI
else
FEATURES       = VCP ONBOARDFLASH
endif

TARGET_SRC = \
            drivers/accgyro/accgyro_spi_mpu6000.c \
            drivers/accgyro/accgyro_mpu6500.c \
            drivers/accgyro/accgyro_spi_mpu6500.c \
            drivers/barometer/barometer_ms5611.c \
            drivers/barometer/barometer_bmp085.c \
            drivers/barometer/barometer_bmp280.c \
            drivers/compass/compass_hmc5883l.c \
            drivers/compass/compass_qmc5883l.c \
            drivers/max7456.c
