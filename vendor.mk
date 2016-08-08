#################################################################################
#
#			P9 Lite
#			Propietary Blobs
#
#################################################################################





#Audio Config
PRODUCT_COPY_FILES += \
		device/HUAWEI/hi6250/audio/audio_effects.conf:system/etc/audio_effects.conf \
		device/HUAWEI/hi6250/audio/audio_policy.conf:system/etc/audio_policy.conf
		

#Bluetooth
PRODUCT_COPY_FILES += \
		device/HUAWEI/hi6250/bluetooth/auto_pair_devlist.conf:system/etc/bluetooth/auto_pair_devlist.conf \
		device/HUAWEI/hi6250/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
		device/HUAWEI/hi6250/bluetooth/bt_stack.conf:system/etc/bluetooth/bt_stack.conf

# Graphics
PRODUCT_COPY_FILES += \
		vendor/lib/egl/libGLES_mali.so:system/lib/egl/libGLES_mali.so \
		vendor/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
		vendor/lib64/egl/libGLES_mali.so:system/lib64/egl/libGLES_mali.so \
		vendor/lib64/egl/libGLES_android.so:system/lib64/egl/libGLES_android.so \
		vendor/lib/libsurfaceflinger.so:system/lib/libsurfaceflinger.so \
		vendor/lib64/libsurfaceflinger.so:system/lib64/libsurfaceflinger.so \
		vendor/lib/libgralloc_ext.default.so:system/lib/libgralloc_ext.default.so \
		vendor/lib64/libgralloc_ext.default.so:system/lib64/libgralloc_ext.default.so \
		vendor/lib/libgralloc_ext.so:system/lib/libgralloc_ext.so \
		vendor/lib64/libgralloc_ext.so:system/lib64/libgralloc_ext.so \
		vendor/lib/libhwaps.so:system/lib/libhwaps.so \
		vendor/lib64/libhwaps.so:system/lib64/libhwaps.so \
		vendor/lib/libgui.so:system/lib/libgui.so \
		vendor/lib64/libgui.so:system/lib64/libgui.so \
		vendor/lib64/libEGL.so:system/lib64/libEGL.so \
		vendor/lib/hw/gralloc.hi6210sft.so:system/lib/hw/gralloc.hi6210sft.so \
		vendor/lib64/hw/gralloc.hi6210sft.so:system/lib64/hw/gralloc.hi6210sft.so \
		vendor/lib/hw/hwcomposer.hi6210sft.so:system/lib/hw/hwcomposer.hi6210sft.so \
		vendor/lib64/hw/hwcomposer.hi6210sft.so:system/lib64/hw/hwcomposer.hi6210sft.so 



#Hardware Packages
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
libion.huawei


#Misc
PRODUCT_COPY_FILES += \
		vendor/lib/liblog.so:system/lib/liblog.so \
		vendor/lib64/liblog.so:system/lib64/liblog.so \
		vendor/lib/libion.so:system/lib/libion.so \
		vendor/lib64/libion.so:system/lib64/libion.so \
		vendor/lib/libnvme.so:system/lib/libnvme.so \
		vendor/lib64/libnvme.so:system/lib64/libnvme.so \
		vendor/lib/libpowergenie_native3.so:system/lib/libpowergenie_native3.so

	

