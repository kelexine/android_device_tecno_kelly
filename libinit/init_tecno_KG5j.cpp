/*
 * Copyright (C) 2021-2022 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_variant.h>
#include <libinit_utils.h>

#include "vendor_init.h"

#define FINGERPRINT_FL "Tecno/KG5j_global/KG5j:12/SP1A.210812.016/V13.0.9.0.SKEMIXM:user/release-keys"
#define FINGERPRINT_FLP "Tecno/KG5j_p_global/KG5j:12/SP1A.210812.016/V13.0.9.0.SKEMIXM:user/release-keys"
#define FINGERPRINT_ML "Tecno/kelly_global/kelly:12/SP1A.210812.016/V13.0.9.0.SKEMIXM:user/release-keys"
#define FINGERPRINT_MLP_IN "Tecno/kelly_p_in/kelly:12/SP1A.210812.016/V13.0.5.0.SKEINXM:user/release-keys"
#define FINGERPRINT_ML_IN "Tecno/kelly_in/kelly:12/SP1A.210812.016/V13.0.5.0.SKEINXM:user/release-keys"

static const variant_info_t KG5j_info = {
    .hwc_value = "Global",
    .sku_value = "KG5j",
    .brand = "Tecno",
    .device = "KG5j",
    .marketname = "Tecno Spark 8C",
    .model = "2201117SY",
    .mod_device = "KG5j_global",
    .build_fingerprint = FINGERPRINT_FL,
};

static const variant_info_t KG5jp_info = {
    .hwc_value = "Global",
    .sku_value = "KG5jp",
    .brand = "Tecno",
    .device = "KG5j",
    .marketname = "Tecno Spark 8C",
    .model = "2201117PG",
    .mod_device = "KG5j_p_global",
    .build_fingerprint = FINGERPRINT_FLP,
};

static const variant_info_t kelly_info = {
    .hwc_value = "Global",
    .sku_value = "kelly",
    .brand = "Tecno",
    .device = "kelly",
    .marketname = "Tecno Spark 8C",
    .model = "2201117SG",
    .mod_device = "kelly_global",
    .build_fingerprint = FINGERPRINT_ML,
};

static const variant_info_t kelly_in_info = {
    .hwc_value = "Nigeria",
    .sku_value = "kelly",
    .brand = "Tecno",
    .device = "kelly",
    .marketname = "Tecno Spark 8C",
    .model = "2201117SI",
    .mod_device = "kelly_in",
    .build_fingerprint = FINGERPRINT_ML_IN,
};

static const variant_info_t kellyp_info = {
    .hwc_value = "Nigeria",
    .sku_value = "kellyp",
    .brand = "Tecno",
    .device = "kelly",
    .marketname = "Tecno Spark 8C",
    .model = "2201117PI",
    .mod_device = "kelly_p_in",
    .build_fingerprint = FINGERPRINT_MLP_IN,
};

static const std::vector<variant_info_t> variants = {
    KG5j_info,
    KG5jp_info,
    kelly_info,
    kellyp_info,
    kelly_in_info,
};

void vendor_load_properties() {
    search_variant(variants);

    // SafetyNet workaround
    property_override("ro.boot.verifiedbootstate", "green");
}
