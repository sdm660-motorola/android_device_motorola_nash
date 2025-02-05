#
# Copyright (C) 2017 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from nash device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifiers
#BUILD_FINGERPRINT := motorola/nash_retail/nash:9/PPX29.159-24/e78f1:user/release-keys
PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := nash
PRODUCT_MANUFACTURER := Motorola
PRODUCT_MODEL := Moto Z2 Force
PRODUCT_NAME := lineage_nash

PRODUCT_BUILD_PROP_OVERRIDES += \
     PRODUCT_NAME=nash \
     PRIVATE_BUILD_DESC="nash-user 9 PPX29.159-24 e78f1 release-keys"
