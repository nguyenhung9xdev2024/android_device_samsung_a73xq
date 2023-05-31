#
# Copyright (C) 2023 The LineageOS Project
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

# Inherit device configuration
$(call inherit-product, device/samsung/a73xq/device.mk)

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common PixysOS stuff.
$(call inherit-product, vendor/pixys/config/common_full_phone.mk)

# PixysOS Properties
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

## Device identifier. This must come after all inclusions
PRODUCT_NAME := pixys_a73xq
PRODUCT_DEVICE := a73xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A736B
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_SHIPPING_API_LEVEL := 30

# Vendor fingerprint
BUILD_FINGERPRINT := "samsung/a73xqxx/a73xq:11/RP1A.200720.012/A736BXXU3CWB7:user/release-keys"
PRIVATE_BUILD_DESC := "samsung/a73xqxx/a73xq:11/RP1A.200720.012/A736BXXU3CWB7:user/release-keys"
