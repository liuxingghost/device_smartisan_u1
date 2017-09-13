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
        $(TARGET_OUT)/lib/modules/wlan.ko)
endif


