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

# overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Ramdisk
PRODUCT_PACKAGES += \
    init.qcom.rc \
    init.qcom.usb.rc \
    libinit_find7

# Ramdisk - LVM+std variants
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.fs.rc.std:root/init.fs.rc.std \
    $(LOCAL_PATH)/rootdir/etc/init.fs.rc.lvm:root/init.fs.rc.lvm \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom.std:root/fstab.qcom.std \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom.lvm:root/fstab.qcom.lvm

# LVM
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/lvm/lvm_init.sh:root/lvm_init.sh \
    $(LOCAL_PATH)/lvm/lvm_symlinks.sh:root/lvm_symlinks.sh \
    $(LOCAL_PATH)/lvm/lvm_setprop.sh:root/lvm_setprop.sh \
    $(LOCAL_PATH)/lvm/lvm:root/sbin/lvm \
    $(LOCAL_PATH)/lvm/lvm.conf:root/lvm/etc/lvm.conf

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Camera
PRODUCT_PACKAGES += \
    camera.msm8974

# NFC packages
PRODUCT_PACKAGES += \
    nfc.msm8974 \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

# call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# call the proprietary setup
$(call inherit-product-if-exists, vendor/oppo/find7/find7-vendor.mk)

# Inherit from msm8974-common
$(call inherit-product, device/oppo/msm8974-common/msm8974.mk)
