#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PRODUCT_AAPT_CONFIG += xlarge large
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

PRODUCT_CHARACTERISTICS := tablet
TARGET_TEGRA_VERSION := t124
TARGET_TEGRA_MODEM := icera
TARGET_TEGRA_TOUCH := raydium

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/nvidia/shieldtablet/shieldtablet-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    device/nvidia/shieldtablet/overlay

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.tn8 \
    init.recovery.tn8.rc \
    init.tn8.rc \
    init.tn8_common.rc \
    power.tn8.rc \
    ueventd.tn8.rc

# Light
PRODUCT_PACKAGES += \
    lights.tegra

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Power
PRODUCT_PACKAGES += power.tegra

# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/twrp/twrp.fstab:recovery/root/etc/twrp.fstab \
    $(LOCAL_PATH)/twrp/rm-runner.sh:recovery/root/system/bin/rm-runner.sh \
    $(OUT)/obj/EXECUTABLES/rm-wrapper_intermediates/LINKED/rm-wrapper:recovery/root/system/bin/rm-wrapper \
    $(OUT)/system/bin/linker:recovery/root/system/bin/linker \
    $(OUT)/system/lib/libc.so:recovery/root/system/lib/libc.so \
    $(OUT)/system/lib/libdl.so:recovery/root/system/lib/libdl.so \
    $(OUT)/system/lib/liblog.so:recovery/root/system/lib/liblog.so \
    $(OUT)/system/lib/libm.so:recovery/root/system/lib/libm.so \
    $(OUT)/system/lib/libc++.so:recovery/root/system/lib/libc++.so \
    $(OUT)/system/lib/libstdc++.so:recovery/root/system/lib/libstdc++.so \
    $(LOCAL_PATH)/twrp/librm31080.so:recovery/root/system/lib/librm31080.so \
    $(LOCAL_PATH)/twrp/ts.default.so:recovery/root/system/lib/hw/ts.default.so \
    $(LOCAL_PATH)/twrp/para_10_02_00_20.so:recovery/root/system/lib/para_10_02_00_20.so \
    $(LOCAL_PATH)/twrp/para_10_02_00_a0.so:recovery/root/system/lib/para_10_02_00_a0.so \
    $(LOCAL_PATH)/twrp/para_10_02_00_b0.so:recovery/root/system/lib/para_10_02_00_b0.so \
    $(LOCAL_PATH)/twrp/para_10_03_00_20.so:recovery/root/system/lib/para_10_03_00_20.so \
    $(LOCAL_PATH)/twrp/para_10_03_00_a0.so:recovery/root/system/lib/para_10_03_00_a0.so \
    $(LOCAL_PATH)/twrp/para_10_03_00_a0.so:recovery/root/system/lib/para_10_03_00_b0.so \
    $(LOCAL_PATH)/twrp/para_10_04_00_b0.so:recovery/root/system/lib/para_10_04_00_b0.so \
    $(LOCAL_PATH)/twrp/para_10_04_00_c0.so:recovery/root/system/lib/para_10_04_00_c0.so \
    $(LOCAL_PATH)/twrp/para_10_05_00_c0.so:recovery/root/system/lib/para_10_05_00_c0.so \
    $(LOCAL_PATH)/twrp/para_10_06_00_b0.so:recovery/root/system/lib/para_10_06_00_b0.so \
    $(LOCAL_PATH)/twrp/para_10_07_00_b0.so:recovery/root/system/lib/para_10_07_00_b0.so \
    $(LOCAL_PATH)/twrp/para_10_08_00_20.so:recovery/root/system/lib/para_10_08_00_20.so \
    $(LOCAL_PATH)/twrp/para_10_08_00_a0.so:recovery/root/system/lib/para_10_08_00_a0.so \
    $(LOCAL_PATH)/twrp/para_10_08_00_b0.so:recovery/root/system/lib/para_10_08_00_b0.so \
    $(LOCAL_PATH)/twrp/para_10_09_00_c0.so:recovery/root/system/lib/para_10_09_00_c0.so \
    $(LOCAL_PATH)/twrp/para_10_09_01_c0.so:recovery/root/system/lib/para_10_09_01_c0.so \
    $(LOCAL_PATH)/twrp/para_10_09_02_c0.so:recovery/root/system/lib/para_10_09_02_c0.so \
    $(LOCAL_PATH)/twrp/para_10_0a_00_b0.so:recovery/root/system/lib/para_10_0a_00_b0.so \
    $(LOCAL_PATH)/twrp/para_10_0b_00_a0.so:recovery/root/system/lib/para_10_0b_00_a0.so

$(call inherit-product, device/nvidia/shield-common/shield.mk)
