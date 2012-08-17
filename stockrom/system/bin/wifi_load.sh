#!/system/bin/sh

/system/bin/wlan_calibrator set upd_nvs /etc/tiwlan.ini /data/etc/wifi/fw
/system/bin/insmod /system/lib/modules/drivers/net/wireless/wl12xx/wl12xx_sdio.ko
