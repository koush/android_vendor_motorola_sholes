LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
endif

file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)

INSTALLED_RECOVERY_KERNEL_TARGET := $(PRODUCT_OUT)/recovery_kernel
ifeq ($(TARGET_PREBUILT_RECOVERY_KERNEL),)
TARGET_PREBUILT_RECOVERY_KERNEL := $(LOCAL_PATH)/recovery_kernel
endif

file := $(INSTALLED_RECOVERY_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_RECOVERY_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/init.sholes.rc
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/init.sholes.rc | $(ACP)
	$(transform-prebuilt-to-target)

include $(CLEAR_VARS)
LOCAL_MODULE := libmoto_gps.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libaudio.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libaudiopolicy.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libcamera.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libril_rds.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libnmea.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/tiwlan_drv.ko:system/lib/modules/tiwlan_drv.ko 

PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/proprietary/droid.ogg:system/media/audio/notifications/droid.ogg \
$(LOCAL_PATH)/proprietary/SaveBPVer:system/bin/SaveBPVer \
$(LOCAL_PATH)/proprietary/akmd2:system/bin/akmd2 \
$(LOCAL_PATH)/proprietary/ap_gain.bin:system/bin/ap_gain.bin \
$(LOCAL_PATH)/proprietary/battd:system/bin/battd \
$(LOCAL_PATH)/proprietary/bthelp:system/bin/bthelp \
$(LOCAL_PATH)/proprietary/chat-ril:system/bin/chat-ril \
$(LOCAL_PATH)/proprietary/ftmipcd:system/bin/ftmipcd \
$(LOCAL_PATH)/proprietary/mdm_panicd:system/bin/mdm_panicd \
$(LOCAL_PATH)/proprietary/picd:system/bin/picd \
$(LOCAL_PATH)/proprietary/pppd-ril:system/bin/pppd-ril \
$(LOCAL_PATH)/proprietary/pvrsrvinit:system/bin/pvrsrvinit \
$(LOCAL_PATH)/proprietary/tcmd:system/bin/tcmd \
$(LOCAL_PATH)/proprietary/cameraCalFileDef.bin:system/etc/cameraCalFileDef.bin \
$(LOCAL_PATH)/proprietary/excluded-input-devices.xml:system/etc/excluded-input-devices.xml \
$(LOCAL_PATH)/proprietary/wl1271.bin:system/etc/firmware/wl1271.bin \
$(LOCAL_PATH)/proprietary/gps.conf:system/etc/gps.conf \
$(LOCAL_PATH)/proprietary/key_code_map.txt:system/etc/motorola/12m/key_code_map.txt \
$(LOCAL_PATH)/proprietary/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
$(LOCAL_PATH)/proprietary/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
$(LOCAL_PATH)/proprietary/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
$(LOCAL_PATH)/proprietary/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
$(LOCAL_PATH)/proprietary/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
$(LOCAL_PATH)/proprietary/pppd-ril.options:system/etc/ppp/peers/pppd-ril.options \
$(LOCAL_PATH)/proprietary/pvasflocal.cfg:system/etc/pvasflocal.cfg \
$(LOCAL_PATH)/proprietary/macro_data:system/etc/vendor/cpcap/macro_data \
$(LOCAL_PATH)/proprietary/vector_data:system/etc/vendor/cpcap/vector_data \
$(LOCAL_PATH)/proprietary/vold.conf:system/etc/vold.conf \
$(LOCAL_PATH)/proprietary/fw_wlan1271.bin:system/etc/wifi/fw_wlan1271.bin \
$(LOCAL_PATH)/proprietary/baseimage.dof:system/lib/dsp/baseimage.dof \
$(LOCAL_PATH)/proprietary/conversions.dll64P:system/lib/dsp/conversions.dll64P \
$(LOCAL_PATH)/proprietary/h264vdec_sn.dll64P:system/lib/dsp/h264vdec_sn.dll64P \
$(LOCAL_PATH)/proprietary/h264venc_sn.dll64P:system/lib/dsp/h264venc_sn.dll64P \
$(LOCAL_PATH)/proprietary/jpegenc_sn.dll64P:system/lib/dsp/jpegenc_sn.dll64P \
$(LOCAL_PATH)/proprietary/m4venc_sn.dll64P:system/lib/dsp/m4venc_sn.dll64P \
$(LOCAL_PATH)/proprietary/mp4vdec_sn.dll64P:system/lib/dsp/mp4vdec_sn.dll64P \
$(LOCAL_PATH)/proprietary/mpeg4aacenc_sn.dll64P:system/lib/dsp/mpeg4aacenc_sn.dll64P \
$(LOCAL_PATH)/proprietary/nbamrenc_sn.dll64P:system/lib/dsp/nbamrenc_sn.dll64P \
$(LOCAL_PATH)/proprietary/postprocessor_dualout.dll64P:system/lib/dsp/postprocessor_dualout.dll64P \
$(LOCAL_PATH)/proprietary/ringio.dll64P:system/lib/dsp/ringio.dll64P \
$(LOCAL_PATH)/proprietary/usn.dll64P:system/lib/dsp/usn.dll64P \
$(LOCAL_PATH)/proprietary/wbamrenc_sn.dll64P:system/lib/dsp/wbamrenc_sn.dll64P \
$(LOCAL_PATH)/proprietary/libEGL_POWERVR_SGX530_121.so:system/lib/egl/libEGL_POWERVR_SGX530_121.so \
$(LOCAL_PATH)/proprietary/libGLESv1_CM_POWERVR_SGX530_121.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX530_121.so \
$(LOCAL_PATH)/proprietary/libGLESv2_POWERVR_SGX530_121.so:system/lib/egl/libGLESv2_POWERVR_SGX530_121.so \
$(LOCAL_PATH)/proprietary/gralloc.omap3.so:system/lib/hw/gralloc.omap3.so \
$(LOCAL_PATH)/proprietary/lights.sholes.so:system/lib/hw/lights.sholes.so \
$(LOCAL_PATH)/proprietary/sensors.sholes.so:system/lib/hw/sensors.sholes.so \
$(LOCAL_PATH)/proprietary/libHPImgApi.so:system/lib/libHPImgApi.so \
$(LOCAL_PATH)/proprietary/libIMGegl.so:system/lib/libIMGegl.so \
$(LOCAL_PATH)/proprietary/libbattd.so:system/lib/libbattd.so \
$(LOCAL_PATH)/proprietary/libglslcompiler.so:system/lib/libglslcompiler.so \
$(LOCAL_PATH)/proprietary/libgtalk_jni.so:system/lib/libgtalk_jni.so \
$(LOCAL_PATH)/proprietary/libmoto_ril.so:system/lib/libmoto_ril.so \
$(LOCAL_PATH)/proprietary/liboemcamera.so:system/lib/liboemcamera.so \
$(LOCAL_PATH)/proprietary/libomx_wmadec_sharedlibrary.so:system/lib/libomx_wmadec_sharedlibrary.so \
$(LOCAL_PATH)/proprietary/libomx_wmvdec_sharedlibrary.so:system/lib/libomx_wmvdec_sharedlibrary.so \
$(LOCAL_PATH)/proprietary/libpppd_plugin-ril.so:system/lib/libpppd_plugin-ril.so \
$(LOCAL_PATH)/proprietary/libpvasfcommon.so:system/lib/libpvasfcommon.so \
$(LOCAL_PATH)/proprietary/libpvasflocalpb.so:system/lib/libpvasflocalpb.so \
$(LOCAL_PATH)/proprietary/libpvasflocalpbreg.so:system/lib/libpvasflocalpbreg.so \
$(LOCAL_PATH)/proprietary/libpvr2d.so:system/lib/libpvr2d.so \
$(LOCAL_PATH)/proprietary/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \
$(LOCAL_PATH)/proprietary/libspeech.so:system/lib/libspeech.so \
$(LOCAL_PATH)/proprietary/libsrv_um.so:system/lib/libsrv_um.so \
$(LOCAL_PATH)/proprietary/de-DE_gl0_sg.bin:system/tts/lang_pico/de-DE_gl0_sg.bin \
$(LOCAL_PATH)/proprietary/de-DE_ta.bin:system/tts/lang_pico/de-DE_ta.bin \
$(LOCAL_PATH)/proprietary/en-GB_kh0_sg.bin:system/tts/lang_pico/en-GB_kh0_sg.bin \
$(LOCAL_PATH)/proprietary/en-GB_ta.bin:system/tts/lang_pico/en-GB_ta.bin \
$(LOCAL_PATH)/proprietary/en-US_lh0_sg.bin:system/tts/lang_pico/en-US_lh0_sg.bin \
$(LOCAL_PATH)/proprietary/en-US_ta.bin:system/tts/lang_pico/en-US_ta.bin \
$(LOCAL_PATH)/proprietary/es-ES_ta.bin:system/tts/lang_pico/es-ES_ta.bin \
$(LOCAL_PATH)/proprietary/es-ES_zl0_sg.bin:system/tts/lang_pico/es-ES_zl0_sg.bin \
$(LOCAL_PATH)/proprietary/fr-FR_nk0_sg.bin:system/tts/lang_pico/fr-FR_nk0_sg.bin \
$(LOCAL_PATH)/proprietary/fr-FR_ta.bin:system/tts/lang_pico/fr-FR_ta.bin \
$(LOCAL_PATH)/proprietary/it-IT_cm0_sg.bin:system/tts/lang_pico/it-IT_cm0_sg.bin \
$(LOCAL_PATH)/proprietary/it-IT_ta.bin:system/tts/lang_pico/it-IT_ta.bin \
$(LOCAL_PATH)/proprietary/sholes-keypad.kcm.bin:system/usr/keychars/sholes-keypad.kcm.bin \
$(LOCAL_PATH)/proprietary/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl \
$(LOCAL_PATH)/proprietary/sholes-keypad.kl:system/usr/keylayout/sholes-keypad.kl \
$(LOCAL_PATH)/proprietary/01_Vendor_ti_omx.cfg:system/etc/01_Vendor_ti_omx.cfg \
$(LOCAL_PATH)/proprietary/contributors.css:system/etc/contributors.css \
$(LOCAL_PATH)/proprietary/contributors.html:system/etc/contributors.html \
$(LOCAL_PATH)/proprietary/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
$(LOCAL_PATH)/proprietary/libLCML.so:system/lib/libLCML.so \
$(LOCAL_PATH)/proprietary/libOMX.TI.AAC.encode.so:system/lib/libOMX.TI.AAC.encode.so \
$(LOCAL_PATH)/proprietary/libOMX.TI.AMR.encode.so:system/lib/libOMX.TI.AMR.encode.so \
$(LOCAL_PATH)/proprietary/libOMX.TI.JPEG.Encoder.so:system/lib/libOMX.TI.JPEG.Encoder.so \
$(LOCAL_PATH)/proprietary/libOMX.TI.Video.Decoder.so:system/lib/libOMX.TI.Video.Decoder.so \
$(LOCAL_PATH)/proprietary/libOMX.TI.Video.encoder.so:system/lib/libOMX.TI.Video.encoder.so \
$(LOCAL_PATH)/proprietary/libOMX.TI.WBAMR.encode.so:system/lib/libOMX.TI.WBAMR.encode.so \
$(LOCAL_PATH)/proprietary/libOMX_Core.so:system/lib/libOMX_Core.so \
$(LOCAL_PATH)/proprietary/libPERF.so:system/lib/libPERF.so \
$(LOCAL_PATH)/proprietary/libVendor_ti_omx.so:system/lib/libVendor_ti_omx.so \
$(LOCAL_PATH)/proprietary/libVendor_ti_omx_config_parser.so:system/lib/libVendor_ti_omx_config_parser.so \
$(LOCAL_PATH)/proprietary/libopencore_author.so:system/lib/libopencore_author.so

