#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from KG5j device
$(call inherit-product, device/tecno/KG5j/device.mk)

PRODUCT_DEVICE := KG5j
PRODUCT_NAME := lineage_KG5j
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := KG5j
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-transsion

BUILD_FINGERPRINT := "google/redfin/redfin:13/TQ3A.230901.001/10750268:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 13 TQ3A.230901.001 10750268 release-keys"
