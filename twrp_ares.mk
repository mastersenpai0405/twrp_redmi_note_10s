#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from star device
$(call inherit-product, device/xiaomi/ares/device.mk)

# Inherit some common recovery stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ares
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi K40,Poco F3 GT
PRODUCT_MANUFACTURER := Xiaomi
