LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := QtiTelephonyCustom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := QtiTelephonyCustom.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_INSTALLED_MODULE_STEM := QtiTelephony.apk
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := QtiTelephony
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_NO_STANDARD_LIBRARIES := true
LOCAL_USES_LIBRARIES := com.qti.extphone.extphonelib com.qualcomm.qcrilhook qti-telephony-utils qti-telephony-hidl-wrapper
LOCAL_OVERRIDES_PACKAGES := QtiTelephony
LOCAL_MULTILIB := both
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := imsCustom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := imsCustom.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_INSTALLED_MODULE_STEM := ims.apk
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := ims
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_NO_STANDARD_LIBRARIES := true
LOCAL_USES_LIBRARIES := qti-telephony-hidl-wrapper qti-telephony-utils ims-ext-common
LOCAL_OVERRIDES_PACKAGES := ims
LOCAL_MULTILIB := both
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qti-telephony-common-custom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := qti-telephony-common-custom.jar
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_INSTALLED_MODULE_STEM := qti-telephony-common.jar
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_MODULE_SUFFIX := .jar
LOCAL_OVERRIDES_PACKAGES := qti-telephony-common
include $(BUILD_PREBUILT)
