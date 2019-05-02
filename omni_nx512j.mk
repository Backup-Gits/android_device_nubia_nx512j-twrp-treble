# Release name
PRODUCT_RELEASE_NAME := NX512J

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nx512j
PRODUCT_NAME := omni_nx512j
PRODUCT_BRAND := NUBIA
PRODUCT_MODEL := Z9 Max (TWRP)
PRODUCT_MANUFACTURER := NUBIA

# Enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=NX512J \
    ro.product.device=NX512J \
    ro.product.model=NX512J

ALLOW_MISSING_DEPENDENCIES := true
