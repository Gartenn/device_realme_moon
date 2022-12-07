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
BUILD_FINGERPRINT := "google/coral/coral:13/TP1A.221105.004/8927612:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=moon \
    PRODUCT_NAME=moon \
    PRIVATE_BUILD_DESC="sys_oplus_mssi_64_cn-user-11-RP1A.200720.011-1607914664672-release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)


# chipset flag enclose var with "" if more than one
# this will reflect on build/display version, a firmware package/zip name 
# e.g. riceDroid-7.0-COMMUNITY-device-AOSP.zip - AOSP is the default package type, WITH_GMS will override the package type to PIXEL
RICE_PACKAGE_TYPE := "VANILLA AOSP"

# maintainer flag (one word only/no spacing)
RICE_MAINTAINER := Garten

# chipset flag (one word only/no spacing)
RICE_CHIPSET := HelioG85

# gapps build flag, if not defined build type is vanilla
WITH_GMS := true

# Sushi Bootanimation (only 720/1080p/1440 supported. if not defined, bootanimation is google bootanimation)
SUSHI_BOOTANIMATION := 720

# Graphene Camera
TARGET_BUILD_GRAPHENEOS_CAMERA := true

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true
