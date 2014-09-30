$(call inherit-product, device/oppo/find7/full_find7.mk)


# Inherit some common Nameless stuff
$(call inherit-product, vendor/aicp/configs/common.mk)

# Enhanced NFC
$(call inherit-product, vendor/aicp/configs/nfc_enhanced.mk)

# Logo
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/logo.bin:system/logo.bin

PRODUCT_NAME := aicp_find7
PRODUCT_DEVICE := find7

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=4.3/JLS36C/1390381364:user/release-keys PRIVATE_BUILD_DESC="msm8974-user 4.3 JLS36C eng.root.20140122.170107 release-keys"
