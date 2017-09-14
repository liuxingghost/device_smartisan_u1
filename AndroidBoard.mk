LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)



#wlan
ifeq ($(strip $(BOARD_HAS_QCOM_WLAN)),true)
#Create symbolic links
$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wlan/prima; \
        mkdir -p $(TARGET_OUT)/lib/modules; \
        rm $(TARGET_OUT_ETC)/firmware/wlan/prima/WCNSS_hw_wlan_nv.bin; \
        ln -sf /system/etc/wifi/WCNSS_hw_wlan_nv.bin \
        $(TARGET_OUT_ETC)/firmware/wlan/prima/WCNSS_hw_wlan_nv.bin; \
        rm $(TARGET_OUT_ETC)/firmware/wlan/prima/WCNSS_qcom_cfg.ini; \
        ln -sf /system/etc/wifi/WCNSS_qcom_cfg.ini \
        $(TARGET_OUT_ETC)/firmware/wlan/prima/WCNSS_qcom_cfg.ini; \
        rm $(TARGET_OUT)/lib/modules/wlan.ko; \
        ln -sf /system/lib/modules/pronto/pronto_wlan.ko \
        $(TARGET_OUT)/lib/modules/wlan.ko); \
		ln -sf /system/lib/libwebviewchromium.so  \
		$(TARGET_OUT)/app/webview/lib/arm/libwebviewchromium.so; \
		ln -sf /system/lib/libGLESv3.so  \
		$(TARGET_OUT)/lib/libGLESv2.so; \
		ln -sf /system/vendor/ChinaMobile/system/app/RcsService/lib/arm/librcs_jni.so  \
		$(TARGET_OUT)/vendor/lib/librcs_jni.so; \
		ln -sf /system/vendor/app/VideoCall/lib/arm/libcamerahandler_jni.so  \
		$(TARGET_OUT)/vendor/lib/libcamerahandler_jni.so; \
		ln -sf /system/vendor/app/VideoCall/lib/arm/libcsvt_jni.so  \
		$(TARGET_OUT)/vendor/lib/libcsvt_jni.so; \
		ln -sf /system/vendor/ims/lib/arm/libimscamera_jni.so  \
		 $(TARGET_OUT)/vendor/lib/libimscamera_jni.so; \
		ln -sf /system/vendor/ims/lib/arm/libimsmedia_jni.so  \
		 $(TARGET_OUT)/vendor/lib/libimsmedia_jni.so
endif


