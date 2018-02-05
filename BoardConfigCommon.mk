#
# Copyright (C) 2018 Team OpenKirin
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

LOCAL_PATH := device/hisi/hi3660

# Architecture
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

TARGET_USES_64_BIT_BINDER := true

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Dex pre-opt
ifeq ($(HOST_OS),linux)
  ifeq ($(WITH_DEXPREOPT),)
    WITH_DEXPREOPT := true
    WITH_DEXPREOPT_PIC := true
    ifneq ($(TARGET_BUILD_VARIANT),user)
      # Retain classes.dex in APK's for non-user builds
      DEX_PREOPT_DEFAULT := nostripping
    endif
  endif
endif

# Display
TARGET_USES_HWC2 := true

# FS
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4718592000	# 4.6 GB
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
TARGET_USES_MKE2FS := true

BOARD_FLASH_BLOCK_SIZE := 512
BOARD_NAND_SPARE_SIZE := 0

# Properties
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Vendor
BOARD_USES_VENDORIMAGE := true
TARGET_COPY_OUT_VENDOR := vendor
