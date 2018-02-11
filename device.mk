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

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/bt_did.conf:system/etc/bluetooth/bt_did.conf

# Busybox
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/xbin/busybox:system/xbin/busybox \
    $(LOCAL_PATH)/prebuilt/system/xbin/ssl_helper:system/xbin/ssl_helper

# Display
PRODUCT_PACKAGES += \
    libion

# Extra packages
PRODUCT_PACKAGES += \
    Launcher3 \
    SnapdragonMusic \
    WallpaperPicker

# FPS
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

PRODUCT_PACKAGES += \
    hw-fpnav-daemon \
    hw-fpnav \
    hw-fpnav.dex

# Huawei Camera
PRODUCT_PACKAGES += \
    HwCamera2

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    Tag

PRODUCT_PACKAGES += \
    NfcNci \
    nfc_nci.pn54x.default

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/libnfc-nxp.conf:system/etc/libnfc-nxp.conf

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Telephony
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Camera Ui Sound
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/media/audio/ui/camera_click.ogg:system/media/audio/ui/camera_click.ogg \
    $(LOCAL_PATH)/prebuilt/system/media/audio/ui/camera_focus.ogg:system/media/audio/ui/camera_focus.ogg \
    $(LOCAL_PATH)/prebuilt/system/media/audio/ui/VideoPause.ogg:system/media/audio/ui/VideoPause.ogg \
    $(LOCAL_PATH)/prebuilt/system/media/audio/ui/VideoRecordEnd.ogg:system/media/audio/ui/VideoRecordEnd.ogg \
    $(LOCAL_PATH)/prebuilt/system/media/audio/ui/WaterWarning.ogg:system/media/audio/ui/WaterWarning.ogg

# Override device name
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=hi3660

# Su
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/xbin/su:system/xbin/su

PRODUCT_PACKAGES += \
    phh-su
