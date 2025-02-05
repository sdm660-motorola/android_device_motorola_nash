#
# Copyright (C) 2017 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Must set these before including common config
TARGET_BOARD_PLATFORM := msm8998
TARGET_BOOTLOADER_BOARD_NAME := Nash
TARGET_SUPPORTS_MOTO_MODS := true

# Inherit from motorola msm8998-common
include device/motorola/msm8998-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/nash

# Assertations
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/configs/board-info.txt
TARGET_OTA_ASSERT_DEVICE := nash

# Display
TARGET_SCREEN_DENSITY := 560

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/vintf/nash_manifest.xml

# Kernel
BOARD_KERNEL_CMDLINE += androidboot.boot_devices=soc/1da4000.ufshc
TARGET_KERNEL_CONFIG := lineageos_nash_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864 # 64 MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4378853376 # 4176 MB
BOARD_VENDORIMAGE_PARTITION_SIZE := 1409286144 # 1344 MB
TARGET_USES_OEM_AS_VENDOR := true

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/props/vendor.prop

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Inherit from the proprietary version
include vendor/motorola/nash/BoardConfigVendor.mk
