import common
import edify_generator

def WriteRawImage(info, *args):
    return True

def AddWifiLink(info):
    info.script.AppendExtra('symlink("/data/etc/wifi/wl1271-nvs.bin","/system/etc/firmware/ti-connectivity/wl1271-nvs.bin");')
    return 

def FullOTA_InstallEnd(info):
    AddWifiLink(info)
    return

def IncrementalOTA_InstallEnd(info):
    AddWifiLink(info)
    return
