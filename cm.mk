# Copyright (C) 2015 The CyanogenMod Project
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

$(call inherit-product, device/smartisan/u1/full_u1.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

PRODUCT_NAME := cm_u1
BOARD_VENDOR := smartisan
PRODUCT_DEVICE := u1

# Release name
PRODUCT_RELEASE_NAME := U1

PRODUCT_GMS_CLIENTID_BASE := android-smartisan

TARGET_VENDOR_PRODUCT_NAME := msm8916_32
TARGET_VENDOR_DEVICE_NAME := msm8916_32
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=msm8916_32 \
    PRODUCT_NAME=msm8916_32 \
    BUILD_FINGERPRINT=SMARTISAN/msm8916_32:6.0/LMY47V/23:user/release-keys \
    PRIVATE_BUILD_DESC="msm8916_32-user 6.0 LMY47V 23 release-keys"
