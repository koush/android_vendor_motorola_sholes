#
# Product-specific compile-time definitions.
#

TARGET_BOARD_PLATFORM := omap3
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8

TARGET_NO_BOOTLOADER := false

#HARDWARE_OMX := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libCustomWifi
BOARD_WLAN_DEVICE := tiwlan0
BOARD_WLAN_TI_STA_DK_ROOT := system/wlan/ti/wilink_6_1
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/tiwlan_drv.ko"
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_DRIVER_MODULE_NAME     := "tiwlan_drv"
WIFI_FIRMWARE_LOADER        := "wlan_loader"

TARGET_BOOTLOADER_BOARD_NAME := sholes

BOARD_KERNEL_CMDLINE := console=ttyS2,115200n8 rw mem=244M@0x80C00000 init=/init ip=off brdrev=P3A_CDMA mtdparts=omap2-nand.0:640k@128k(mbm),384k@1408k(cdt),384k@3328k(lbl),384k@6272k(misc),3584k(boot),4608k(recovery),143744k(system),94848k(cache),268032k(userdata),2m(kpanic)

BOARD_HAVE_BLUETOOTH := true

BOARD_GL_TEX_POW2_DIMENSION_REQUIRED := true

TARGET_HARDWARE_3D := false

BOARD_GPS_LIBRARIES := libmoto_gps

USE_PV_WINDOWS_MEDIA := false

BOARD_BOOTIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00380000)
BOARD_RECOVERYIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00480000)
BOARD_SYSTEMIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x08c60000)
BOARD_USERDATAIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x105c0000)
# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 131072

# BOARD_KERNEL_BASE := 0x20000000
USE_CAMERA_STUB := false
BOARD_EGL_CFG := vendor/motorola/sholes/egl.cfg

ENABLE_ANIMATED_GIF := true
ALLOW_LGPL := true

