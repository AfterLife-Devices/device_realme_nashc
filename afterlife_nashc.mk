#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile.
$(call inherit-product, device/realme/nashc/device.mk)

# Inherit some common Afertlife stuff.
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# Boot animation
scr_resolution := 1440
TARGET_SCREEN_WIDTH := 1440
TARGET_SCREEN_HEIGHT := 3120
TARGET_BOOT_ANIMATION_RES := 1440

# AfterLife Flags
AFTERLIFE_GAPPS := true
AFTERLIFE_CORE := true
USE_PIXEL_CHARGING =: true
AFTERLIFE_MAINTAINER := "Eren Yeager"
TARGET_SUPPORTS_QUICK_TAP := false
AFTERLIFE_GAPPS := true
AFTERLIFE_CORE := true
AFTERLIFE_EXTRA := true
BUILD_GALLERYGO := true
BUILD_GMAIL := true
BUILD_AOSP_CAMERA := false
TARGET_USE_MOTO_CALCULATOR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USE_GOOGLE_TELEPHONY := false
TARGET_SUPPORTS_TOUCHGESTURES := true

PRODUCT_NAME := afterlife_nashc
PRODUCT_DEVICE := nashc
PRODUCT_MANUFACTURER := Realme
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 8

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX3085L1 \
    PRODUCT_NAME=RMX3085 \
    PRIVATE_BUILD_DESC="RMX3085-user 12 SP1A.210812.016 R.GDPR.11887c9-1 release-keys"

BUILD_FINGERPRINT := realme/RMX3085/RMX3085L1:12/SP1A.210812.016/R.GDPR.11887c9-1:user/release-keys
