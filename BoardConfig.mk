#
# Copyright (C) 2014 The CyanogenMod Project
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
#

-include device/nvidia/shield-common/BoardConfigCommon.mk

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15

# Board
TARGET_BOARD_PLATFORM := tegra
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/nvidia/shieldtablet
TARGET_KERNEL_CONFIG := omni_shieldtablet_defconfig
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
BOARD_KERNEL_CMDLINE := androidboot.hardware=tn8 androidboot.selinux=permissive

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE := 1073741824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1342177280
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 12799754240
BOARD_FLASH_BLOCK_SIZE := 4096

# PowerHAL
TARGET_POWERHAL_VARIANT := tegra

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Per-application sizes for shader cache
MAX_EGL_CACHE_SIZE := 4194304
MAX_EGL_CACHE_ENTRY_SIZE := 262144

# Recovery
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_RECOVERY_FSTAB := device/nvidia/shieldtablet/initfiles/fstab.tn8

# SELinux
BOARD_SEPOLICY_DIRS += device/nvidia/shieldtablet/sepolicy

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_tn8
TARGET_LIBINIT_DEFINES_FILE := device/nvidia/shieldtablet/init/init_tn8.cpp

# TWRP
TW_THEME := portrait_hdpi
TW_THEME_LANDSCAPE := landscape_hdpi
BOARD_HAS_FLIPPED_SCREEN := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_BRIGHTNESS_PATH := /sys/class/backlight/pwm-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_INCLUDE_CRYPTO := true
TARGET_RECOVERY_DEVICE_MODULES := rm-wrapper
