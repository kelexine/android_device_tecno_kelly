#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from kelly device
$(call inherit-product, device/tecno/kelly/device.mk)

PRODUCT_DEVICE := kelly
PRODUCT_NAME := lineage_kelly
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := kelly
PRODUCT_MANUFACTURER := TECNO MOBILE LIMITED

PRODUCT_GMS_CLIENTID_BASE := android-transsion

#BUILD_FINGERPRINT := "tecno/kelly/kelly:11/RQ3A.230901.001/10750268:user/release-keys"
#PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRIVATE_BUILD_DESC="kelly-user 11 RQ3A.230901.001 10750268 release-keys"
