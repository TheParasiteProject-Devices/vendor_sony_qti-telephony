TARGET_SHIPS_CUSTOM_QTI_TELEPHONY ?= true
ifeq ($(TARGET_SHIPS_CUSTOM_QTI_TELEPHONY),true)
PRODUCT_SOONG_NAMESPACES += \
    vendor/sony/qti-telephony/custom

# QTI Telephony
PRODUCT_PACKAGES += \
    QtiTelephonyCustom \
    imsCustom \
    qti-telephony-common-custom
endif
