import common
import edify_generator

def AddAssertions(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if ");" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(");", ' || getprop("ro.product.device") == "MT15i" || getprop("ro.build.product") == "MT15i" || getprop("ro.product.device") == "MT11i" || getprop("ro.build.product") == "MT11i" || getprop("ro.product.device") == "ST18i" || getprop("ro.build.product") == "ST18i");')
            return

def WriteRawImage(info, *args):
    return True

def AddWifiLink(info):
    info.script.AppendExtra('symlink("/data/etc/wifi/wl1271-nvs.bin","/system/etc/firmware/ti-connectivity/wl1271-nvs.bin");')
    return

def HandleDeviceName(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if ('assert(apply_patch_check("/system/build.prop"' in edify.script[i]):
            edify.script[i] = ""
        if ('assert(file_getprop("/system/build.prop", "ro.build.fingerprint")' in edify.script[i]):
            edify.script[i] = ""
        if ('apply_patch("/system/build.prop"' in edify.script[i]):
            edify.script[i] = ""

    extraCommand = """);

package_extract_file("full_build.prop/handle_device_name.sh","/data/handle_device_name.sh");
run_program("/sbin/busybox", "chmod", "777", "/data/handle_device_name.sh");
run_program("/data/handle_device_name.sh", "--save_device_name");
"""
    for i in xrange(len(edify.script)):
        if ");" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(");", extraCommand)
            break

    extraCommand = """
package_extract_file("full_build.prop/build.prop", "/system/build.prop");
run_program("/data/handle_device_name.sh", "--recovery_device_name");
"""
    edify.AppendExtra(extraCommand)
    return

def WriteRawImage(info, *args):
    return True

def PerpareFileToOutZip(info, isfullota):
    if isfullota == "false":
        info.output_zip.writestr("full_build.prop/build.prop", info.target_zip.read("SYSTEM/build.prop"))
        info.output_zip.writestr("full_build.prop/handle_device_name.sh", info.target_zip.read("SYSTEM/bin/handle_device_name.sh")) 
    else:
        #info.output_zip.writestr("full_build.prop/build.prop", info.input_zip.read("SYSTEM/build.prop"))
        #info.output_zip.writestr("full_build.prop/handle_device_name.sh", info.input_zip.read("SYSTEM/bin/handle_device_name.sh"))       
        info.script.AppendExtra('run_program("/sbin/busybox", "rm", "/data/handle_device_name.sh", "-f");')
    return

def FullOTA_InstallEnd(info):
    #AddAssertions(info)
    AddWifiLink(info)
    #HandleDeviceName(info)
    PerpareFileToOutZip(info, "true")
    return

def IncrementalOTA_InstallEnd(info):
    AddAssertions(info)
    AddWifiLink(info)
    HandleDeviceName(info)
    PerpareFileToOutZip(info, "false")
    return

