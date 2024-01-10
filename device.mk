#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# A/B
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS := \
    boot \
    dtbo \
    system \
    system_ext \
    product \
    vendor \
    vbmeta \
    vbmeta_system

# Build With GApps
#WITH_GMS := true

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service \
    bootctl

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=ext4 \
    POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script
    
# DT2W
PRODUCT_PACKAGES += \
    DT2W-Service-KG5j

# IMS
#$(call inherit-product, vendor/mediatek/ims/mtk-ims.mk)


# ImsInit hack
PRODUCT_PACKAGES += \
    ImsInit

# ImsService
PRODUCT_PACKAGES += \
    com.android.ims.rcsmanager \
    PresencePolling \
    RcsService
    
# Engineer Mode
#$(call inherit-product, vendor/mediatek/ims/mtk-engi.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_effects.conf

# Display
TARGET_SCREEN_DENSITY := 320
TARGET_SCREEN_HEIGHT := 1612
TARGET_SCREEN_WIDTH := 720
TARGET_BOOT_ANIMATION_RES := 720

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Light
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.kg5j

# KPOC
PRODUCT_PACKAGES += \
    libsuspend \
    android.hardware.health@2.0

# RcsService
PRODUCT_PACKAGES += \
    RcsService

PRODUCT_PACKAGES += \
    MtkInCallService
    
# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0_system \
    android.hidl.manager@1.0_system \
    libhidltransport \
    libhwbinder 
    
# Symbols
PRODUCT_PACKAGES += \
    libshim_vtservice \
    ImsServiceBase

# Overlays
PRODUCT_PACKAGES += \
    ApertureOverlayKG5j \
    ApertureQRScannerOverlayKG5j \
    CarrierConfigOverlayKG5j \
    FrameworksResOverlayKG5j \
    SettingsOverlayKG5j \
    SystemUIOverlayKG5j \
    TelephonyOverlayKG5j \
    WifiOverlayKG5j

# APN's
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/apns-conf.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/apns-conf.xml

# [DNM] Temp permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/xyz.extras.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/xyz.extras.xml \
    $(LOCAL_PATH)/permissions/xyz.extras.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/xyz.extras.xml \
    $(LOCAL_PATH)/permissions/xyz.extras.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/xyz.extras.xml

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# RootDir
PRODUCT_PACKAGES += \
    init.mt6761.rc \
    init.target.rc \
    fstab.mt6761

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6761:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6761 \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6761:$(TARGET_COPY_OUT_RAMDISK)/first_stage_ramdisk/fstab.mt6761

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/tecno/KG5j/KG5j-vendor.mk)
