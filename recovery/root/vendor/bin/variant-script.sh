#!/sbin/sh

load_ares()
{
 	resetprop "ro.product.model" "M2012K10C"
 	resetprop "ro.product.marketname" "Poco F3 GT"
 	resetprop "ro.product.name" "ares"
 	resetprop "ro.build.product" "ares"
 	resetprop "ro.product.device" "ares"
 	resetprop "ro.product.vendor.device" "ares"
}

load_aresin()
{
	 resetprop "ro.product.model" "M2104K10I"
	 resetprop "ro.product.marketname" "Redmi K40 Gaming"
 	resetprop "ro.product.name" "aresin"
 	resetprop "ro.build.product" "aresin"
 	resetprop "ro.product.device" "aresin"
 	resetprop "ro.product.vendor.device" "aresin"
}

variant=$(getprop ro.boot.hwc)
echo $variant

case $variant in
    "GLOBAL")
        load_ares
        ;;
    "INDIA")
        load_aresin
        ;;
    *)
        load_ares
        ;;
esac

exit 0