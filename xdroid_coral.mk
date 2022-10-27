#
# Copyright (C) 2020-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common xDroid stuff.
$(call inherit-product, vendor/xdroid/config/common.mk)
TARGET_DISABLE_EPPE := true

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_coral.mk)

include device/google/coral/coral/device-lineage.mk

# Device identifier. This must come after all inclusions
TARGET_SUPPORTS_QUICK_TAP := true

TARGET_BOOT_ANIMATION_RES := 1080

XDROID_MAINTAINER := c0nfid
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4 XL
PRODUCT_NAME := xdroid_coral

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=coral \
    PRIVATE_BUILD_DESC="coral-user 13 TP1A.221005.002 9012097 release-keys"

BUILD_FINGERPRINT := google/coral/coral:13/TP1A.221005.002/9012097:user/release-keys

$(call inherit-product, vendor/google/coral/coral-vendor.mk)
