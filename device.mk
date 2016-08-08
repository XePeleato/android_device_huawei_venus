#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/HUAWEI/hi6250

TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1280
DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay



# Add openssh support for remote debugging and job submission
PRODUCT_PACKAGES += ssh sftp scp sshd ssh-keygen sshd_config start-ssh uim wpa_supplicant

# Build and run only ART
PRODUCT_RUNTIMES := runtime_libart_default

# Build BT a2dp audio HAL
PRODUCT_PACKAGES += audio.a2dp.default

# Needed to sync the system clock with the RTC clock
PRODUCT_PACKAGES += hwclock

# Include USB speed switch App
PRODUCT_PACKAGES += UsbSpeedSwitch

# Build libion for new double-buffering HDLCD driver
PRODUCT_PACKAGES += libion

# Build gatord daemon for DS-5/Streamline
PRODUCT_PACKAGES += gatord

# Build gralloc for Juno
PRODUCT_PACKAGES += gralloc.hi6250
#Include ION tests
PRODUCT_PACKAGES += iontest \
                    ion-unit-tests

# Set zygote config
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.zygote=zygote64_32
PRODUCT_PROPERTY_OVERRIDES += \
         debug.sf.no_hw_vsync=1 \
         ro.secure=0 \
         ro.adb.secure=0

PRODUCT_COPY_FILES += system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc
PRODUCT_PACKAGES += libGLES_android


PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
        frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \

#RIL
PRODUCT_PROPERTY_OVERRIDES += \
     audioril.lib=libhuawei-audio-ril.so \
     ro.telephony.ril_class=HuaweiRIL 

PRODUCT_COPY_FILES += \
     vendor/global/apns-conf.xml:system/etc/apns-conf.xml

#Audio Config
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/audio/audio_effects.conf:system/etc/audio_effects.conf \
     $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf

#Bluetooth
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/bluetooth/auto_pair_devlist.conf:system/etc/bluetooth/auto_pair_devlist.conf \
     $(LOCAL_PATH)/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
     $(LOCAL_PATH)/bluetooth/bt_stack.conf:system/etc/bluetooth/bt_stack.conf

#Media patches
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml \
     $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
     $(LOCAL_PATH)/media/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml

PRODUCT_PACKAGES += \
     audio.primary.default \
     audio_policy.stub \
     audio.a2dp.default \
     audio.usb.default \
     audio.r_submix.default \
     libaudioutils \
     libtinyalsa \
     tinyplay \
     tinycap \
     tinymix \
     tinypcminfo \
     sound_trigger.primary.hi6250 \
     libion.huawei \
     libwpa_client \
     wpa_supplicant \
     wpa_supplicant-conf \
     libnfc-nci \
     libnfc_nci_jni \
     Nfc \
     Tag \
     com.android.nfc_extras

#SeLinux
BOARD_SEPOLICY_DIRS += \
     $(LOCAL_PATH)/selinux

#BOARD_SEPOLICY_UNION += \
#     file_contexts \
#     installd.te

# Call vendor files ( for now just put all files in /vendor dir and adjust vendor.mk file)
$(call inherit-product, $(LOCAL_PATH)/vendor.mk)
