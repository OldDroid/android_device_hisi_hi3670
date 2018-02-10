LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := HwCamera2
LOCAL_MODULE_OWNER := honor
LOCAL_SRC_FILES := system/priv-app/HwCamera2/HwCamera2.apk
LOCAL_OVERRIDES_PACKAGES := Camera2
LOCAL_CERTIFICATE := shared
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := .apk
LOCAL_PRIVILEGED_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Stardust
LOCAL_MODULE_OWNER := honor
LOCAL_SRC_FILES := system/app/Stardust-2-11.1.2-Debug/Stardust-2-11.1.2-Debug.apk
LOCAL_OVERRIDES_PACKAGES := Music Eleven
LOCAL_CERTIFICATE := shared
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := system/bin/hw-fpnav
LOCAL_MODULE := hw-fpnav
LOCAL_MODULE_CLASS := EXECUTABLES
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := hw-fpnav.dex
LOCAL_MODULE_TAGS := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := system/etc/hw-fpnav.dex
include $(BUILD_PREBUILT)
