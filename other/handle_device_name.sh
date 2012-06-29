#!/sbin/sh
if [ "$1" = "--save_device_name" ]
then
   cd /
   mount system/
   cat /system/build.prop | grep "ro.build.product=" | cut -d'=' -f2 > /data/DEVICE_NAME
   cat /system/build.prop | grep "ro.semc.product.name=" > /data/SEMC_DEVICE_NAME
elif [ "$1" = "--recovery_device_name" ]
then
   cd /
   mount system/
   sed "s/LT18/`cat /data/DEVICE_NAME | sed "s/i//g"`/g" /system/build.prop | sed -e "s/^ro\.semc\.product\.name=.*$/`cat /data/SEMC_DEVICE_NAME`/g" >/data/build.prop.swp
   mv /data/build.prop.swp /system/build.prop
   rm /system/bin/handle_device_name.sh -f
   rm /data/handle_device_name.sh -f
   rm /data/DEVICE_NAME -f
   rm /data/SEMC_DEVICE_NAME -f
fi
