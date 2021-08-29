#!/sbin/sh

load_rosemary()
{
	 resetprop "ro.product.model" "rosemary"
	 resetprop "ro.product.marketname" "Redmi Note 10S"
 	resetprop "ro.product.name" "rosemary_in"
 	resetprop "ro.build.product" "rosemary"
 	resetprop "ro.product.device" "rosemary"
 	resetprop "ro.product.vendor.device" "rosemary"
}

load secrets_global()
{
     resetprop "ro.product.model" "M2101K7BG"
     resetprop "ro.product.marketname" "Redmi Note 10S"
load_maltose()
{
 	resetprop "ro.product.model" "maltose"
 	resetprop "ro.product.marketname" "Redmi Note 10S"
 	resetprop "ro.product.name" "maltose_in"
 	resetprop "ro.build.product" "maltose"
 	resetprop "ro.product.device" "maltose"
 	resetprop "ro.product.vendor.device" "maltose"
}

variant=$(getprop ro.boot.hwc)
echo $variant

case $variant in
    "GLOBAL")
        load_rosemary
        ;;
    "INDIA")
        load_secrets
        ;;
    "CHINA")
        load_maltose
        ;;
    *)
        load_ares
        ;;
esac

exit 0