#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/sky

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common Lineage configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/sky/sky-vendor.mk)

# RisingOS flags
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := false
TARGET_SHIP_LINEAGE_PREBUILTS := false
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_ENABLE_PIXEL_FEATURES := true
TARGET_USE_PIXEL_FINGERPRINT := true
TARGET_BUILD_APERTURE_CAMERA := true
TARGET_PREBUILT_BCR := true
PRODUCT_NO_CAMERA := false
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := false
RISING_BUILDTYPE := OFFICIAL
TARGET_EXCLUDES_AUDIOFX := true
TARGET_SUPPORTS_QUICK_TAP := true
RISING_MAINTAINER := alanpdk
RISING_BATTERY := 5000mAh
RISING_DISPLAY := 1080x2460

## Device identifier
PRODUCT_DEVICE := sky
PRODUCT_NAME := lineage_sky
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23076RN4BI
PRODUCT_MANUFACTURER := Xiaomi
	
# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
