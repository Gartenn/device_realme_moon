#
# Copyright (C) 2020 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/moon/device.mk)
# Inherit some rom sruff
$(call inherit-product, vendor/lineage/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := rice_moon
PRODUCT_DEVICE := moon
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme Moon
PRODUCT_MANUFACTURER := realme
TARGET_BOOT_ANIMATION_RES := 720

# Build info
BUILD_FINGERPRINT := "google/coral/coral:12/SQ3A.220805.003.A1/8672226:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=moon \
    PRODUCT_NAME=moon \
    PRIVATE_BUILD_DESC="sys_oplus_mssi_64_cn-user-11-RP1A.200720.011-1607914664672-release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

# maintainer flag (one word only/no spacing)
RICE_MAINTAINER := Garten

# chipset flag (one word only/no spacing)
RICE_CHIPSET := HelioG85

# Sushi Bootanimation (only 720/1080p/1440 supported. if not defined, bootanimation is google bootanimation)
SUSHI_BOOTANIMATION := 720

# Graphene Camera
TARGET_BUILD_GRAPHENEOS_CAMERA := true

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true
