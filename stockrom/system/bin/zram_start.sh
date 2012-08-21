#!/system/bin/sh

echo $((60*1024*1024)) > /sys/block/zram0/disksize
/system/xbin/busybox mknod -m 600 /dev/zram0 b 253 0
/system/xbin/busybox mkswap /dev/zram0
/system/xbin/busybox swapon /dev/zram0
