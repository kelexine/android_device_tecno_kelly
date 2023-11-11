#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from TECNO-KG5j device
$(call inherit-product, device/tecno/TECNO-KG5j/device.mk)

PRODUCT_DEVICE := TECNO-KG5j
PRODUCT_NAME := lineage_TECNO-KG5j
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO KG5j
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_tssi_32_ago_tecno-user 11 RP1A.200720.011 110917 release-keys"

BUILD_FINGERPRINT := TECNO/KG5j-OP/TECNO-KG5j:11/RP1A.200720.011/220929V405:user/release-keys
