# Inherit from AOSP
$(call inherit-product, build/target/product/languages_full.mk)

# ste-sony
$(call inherit-product, hardware/ste-sony/common.mk)

# Inherit from the vendor common montblanc definitions
$(call inherit-product-if-exists, vendor/sony/montblanc-common/montblanc-common-vendor.mk)

# Common montblanc headers
TARGET_SPECIFIC_HEADER_PATH := device/sony/montblanc-common/include

# Common montblanc settings overlays
DEVICE_PACKAGE_OVERLAYS += device/sony/montblanc-common/overlay

# Common montblanc features
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
        frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
        frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
        frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
        frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
        frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
        frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
        frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
        frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
        frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
        frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
        frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
        frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
        frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
        frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
        frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
        packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Configuration files
PRODUCT_COPY_FILES += \
        device/sony/montblanc-common/config/media_codecs.xml:system/etc/media_codecs.xml \
        device/sony/montblanc-common/config/egl.cfg:system/lib/egl/egl.cfg \
        device/sony/montblanc-common/config/asound.conf:system/etc/asound.conf \
        device/sony/montblanc-common/config/hostapd.conf:system/etc/wifi/hostapd.conf \
        device/sony/montblanc-common/config/01stesetup:system/etc/init.d/01stesetup \
        device/sony/montblanc-common/config/10wireless:system/etc/init.d/10wireless \
        device/sony/montblanc-common/config/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf 
        

# Filesystem management tools
PRODUCT_PACKAGES += \
        make_ext4fs \
        setup_fs \
        e2fsck
   
# libtinyalsa & audio.usb.default
PRODUCT_PACKAGES += \
       tinyalsa \
       libtinyalsa \
       audio_policy.default \
       audio.usb.default
       
# libaudioparameter
PRODUCT_PACKAGES += libaudioparameter

# Wifi
PRODUCT_PACKAGES += \
      crda \
      regdbdump \
      regulatory.bin \
      linville.key.pub.pem

# Crda Config ,need ?
PRODUCT_COPY_FILES += \
        device/sony/montblanc-common/config/regulatory.rules:system/etc/udev/rules.d/85-regulatory.rules \

# Hostapd
PRODUCT_PACKAGES += \
       hostapd_cli \
       hostapd

# Torch
PRODUCT_PACKAGES += Torch

# Sim tool Kit
PRODUCT_PACKAGES += Stk

# Misc
PRODUCT_PACKAGES += com.android.future.usb.accessory

# BlueZ
PRODUCT_PACKAGES += \
        libglib \
        bluetoothd \
        bluetooth.default \
        haltest \
        btmon \
        btproxy \
        audio.a2dp.default \
        l2test \
        bluetoothd-snoop \
        init.bluetooth.rc \
        btmgmt \
        hcitool \
        l2ping \
        avtest \
        libsbc \
        hciattach

ADDITIONAL_DEFAULT_PROPERTIES += \
        ro.debuggable=1 \
        ro.secure=0 \
        ro.adb.secure=0 \
        ro.allow.mock.location=0 \
        persist.sys.usb.config=adb

# Custom init scripts
PRODUCT_COPY_FILES += \
        device/sony/montblanc-common/config/init.rc:root/init.rc \
        device/sony/montblanc-common/config/init.environ.rc:root/init.environ.rc \
        device/sony/montblanc-common/config/init.st-ericsson.rc:root/init.st-ericsson.rc \
        device/sony/montblanc-common/config/ueventd.st-ericsson.rc:root/ueventd.st-ericsson.rc 

# Post recovery script
PRODUCT_COPY_FILES += \
        device/sony/montblanc-common/recovery/postrecoveryboot.sh:root/sbin/postrecoveryboot.sh

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Hardware configuration scripts
PRODUCT_COPY_FILES += \
        device/sony/montblanc-common/config/omxloaders:system/etc/omxloaders \
        device/sony/montblanc-common/config/ril_config:system/etc/ril_config \
        device/sony/montblanc-common/config/install_wlan.sh:system/bin/install_wlan.sh \
        device/sony/montblanc-common/config/ste_modem.sh:system/etc/ste_modem.sh \
	device/sony/montblanc-common/config/cacert.txt:system/etc/suplcert/cacert.txt

# Garbage Collector type
PRODUCT_TAGS += dalvik.gc.type-precise

# OpenDelta
 PRODUCT_PROPERTY_OVERRIDES += ro.delta.version=VERSION
 PRODUCT_PACKAGES += OpenDelta
