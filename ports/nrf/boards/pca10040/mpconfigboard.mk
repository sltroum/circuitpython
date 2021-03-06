MCU_SERIES = m4
MCU_VARIANT = nrf52
MCU_SUB_VARIANT = nrf52
SD ?= s132
SOFTDEV_VERSION ?= 5.0.0

ifeq ($(SD),)
    LD_FILE = boards/nrf52832_512k_64k.ld
else
    LD_FILE = boards/nrf52832_512k_64k_s132_$(SOFTDEV_VERSION).ld
endif

NRF_DEFINES += -DNRF52832_XXAA
