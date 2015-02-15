#
# Copyright (C) 2014 The CyanogenMod Project
# Copyright (C) 2014 The NamelessRom Project
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

# Inherit from msm8974-common
-include device/oppo/msm8974-common/BoardConfigCommon.mk

# Init
TARGET_INIT_VENDOR_LIB := libinit_find7

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE     := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE    := 536870912
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1364320256
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.selinux=permissive
TARGET_KERNEL_CONFIG := cyanogenmod_find7_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/oppo/find7/bluetooth

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DOPPO_CAMERA_HARDWARE

# Flags
TARGET_RELEASE_CPPFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Audio
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true


# Dummy
TARGET_RECOVERY_FSTAB := device/oppo/find7/rootdir/etc/fstab.qcom

# Assert
TARGET_OTA_ASSERT_DEVICE := FIND7,find7,find7u,find7a,find7au,find7s,find7su,find7ext

# SELinux policies
BOARD_SEPOLICY_DIRS += device/oppo/find7/sepolicy

# Inherit from the proprietary version
-include vendor/oppo/find7/BoardConfigVendor.mk
