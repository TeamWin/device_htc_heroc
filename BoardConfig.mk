# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# config.mk
#
# Product-specific compile-time definitions.
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# Fake building with eclair cam
BOARD_USES_ECLAIR_LIBCAMERA := true

-include vendor/htc/heroc/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := msm7k
TARGET_BOARD_PLATFORM_GPU := qcom

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOOTLOADER_BOARD_NAME := heroc
TARGET_OTA_ASSERT_DEVICE := heroc
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_BOOTLOADER_BOARD_NAME=heroc

# ARMv6-compatible processor rev 5 (v6l)
TARGET_CPU_ABI := armeabi-v6j
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6j

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libWifiApi
BOARD_WLAN_TI_STA_DK_ROOT   := system/wlan/ti/sta_dk_4_0_4_32
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_DRIVER_MODULE_NAME     := "wlan"
WIFI_FIRMWARE_LOADER        := "wlan_loader"

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x19200000

#libsurfaceflinger to avoid Draw Texture Extenstion
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true

BOARD_USES_GENERIC_AUDIO := false

BOARD_HAVE_BLUETOOTH := true

BOARD_VENDOR_USE_AKMD := akm8973

BOARD_VENDOR_QCOM_AMSS_VERSION := 6355

BOARD_USES_QCOM_HARDWARE := true

# BOARD_HAS_LIMITED_EGL := true

TARGET_HARDWARE_3D := false

# OpenGL drivers config file path
BOARD_EGL_CFG := device/htc/heroc/egl.cfg

# No authoring clock for OpenCore
# BOARD_NO_PV_AUTHORING_CLOCK := true

BOARD_USE_HTC_LIBSENSORS := true
BOARD_USE_heroc_LIBSENSORS := true

# use old sensors HAL
# TARGET_USES_OLD_LIBSENSORS_HAL := true

BOARD_USES_QCOM_LIBS := true

#TARGET_HAS_ANCIENT_MSMCAMERA := true
BUILD_LIBCAMERA := true
BOARD_CAMERA_LIBRARIES := libcameraservice libcamera
USE_CAMERA_STUB:= false

BOARD_USES_GPSSHIM := true

BOARD_GPS_NEEDS_XTRA := true

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

WITH_DEXPREOPT := true

JS_ENGINE := v8

# Stagefright fully enabled
BUILD_WITH_FULL_STAGEFRIGHT := true

# No fallback font by default (space savings)
# NO_FALLBACK_FONT:=true

TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00040000 00020000 "misc"
# mtd1: 00500000 00020000 "recovery"
# mtd2: 00280000 00020000 "boot"
# mtd3: 05a00000 00020000 "system"
# mtd4: 05000000 00020000 "cache"
# mtd5: 127c0000 00020000 "userdata"
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00280000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0aa00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a5c0000

# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 131072

#TARGET_RECOVERY_UI_LIB := librecovery_ui_heroc librecovery_ui_htc
TARGET_PREBUILT_KERNEL := device/htc/heroc/prebuilt/kernel

#TWRP:
DEVICE_RESOLUTION := 320x480
TW_SDEXT_NO_EXT4 := true
TW_CUSTOM_POWER_BUTTON := 107
