#
# Copyright (C) 2022 The LineageOS Project
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

# Inherit some common AOSP stuff
$(call inherit-product, device/google/atv/products/atv_base.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tv.mk)

# Inherit from sheldon device
$(call inherit-product, device/amazon/sheldon/device.mk)

# Inherit go optimizations for sheldon
$(call inherit-product, device/amazon/sheldon/go_opt.mk)

PRODUCT_NAME := lineage_sheldon
PRODUCT_DEVICE := sheldon
PRODUCT_MANUFACTURER := Amazon
PRODUCT_BRAND := Amazon
PRODUCT_MODEL := AFTSS

# Display
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Client ID
PRODUCT_GMS_CLIENTID_BASE := android-mtk

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=sheldon \
	PRIVATE_BUILD_DESC="sheldon-user 7.0 PS7249 2719 amz-p,release-keys"

BUILD_FINGERPRINT := Amazon/sheldon/sheldon:7.0/PS7249/2719N:user/amz-p,release-keys
