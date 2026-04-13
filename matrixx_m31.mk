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

# NFC
TARGET_HAS_NFC := false

# Inherit device configuration
$(call inherit-product, device/samsung/m31/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
## Inherit some common matrixx stuff
$(call inherit-product, vendor/matrixx/config/common_full_phone.mk)

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Client-id base
PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
	BuildDesc="m31nsxx-user 12 SP1A.210812.016 M315FXXU3CWA2 release-keys" \
	BuildFingerprint="samsung/m31nsxx/m31:12/SP1A.210812.016/M315FXXU3CWA2:user/release-keys"

## Device configuration
PRODUCT_NAME := matrixx_m31
PRODUCT_DEVICE := m31
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M315F
PRODUCT_MANUFACTURER := samsung

TARGET_BOOT_ANIMATION_RES := 1080

#Matrixx Stuff
MATRIXX_MAINTAINER := PARBINDAR7
TARGET_SUPPORTED_REFRESH_RATES := 60
TARGET_CUSTOM_UDFPS := true
WITH_GMS := false
WITH_BCR := true
BYPASS_CHARGE_SUPPORTED := false
PRODUCT_NO_CAMERA := false
