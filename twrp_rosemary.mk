#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from star device
$(call inherit-product, device/xiaomi/rosemary/device.mk)

# Inherit some common recovery stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := rosemary
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)
PRODUCT_BRAND := redmi
PRODUCT_MODEL := Redmi Note 10s
PRODUCT_MANUFACTURER := Xiaomi
