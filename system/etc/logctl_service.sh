#!/system/bin/sh
#
#This file is added for restarting logcat_service after sleeping 20s waiting for oba file
#
retval_image=`getprop ro.image`
retval_bootmode=`getprop ro.bootmode`
retval_runmode=`getprop ro.runmode`
if [ $retval_image = "bootimage" ]&&[ $retval_bootmode != "charger" ]&&[ $retval_runmode != "factory" ];then
    sleep 20
    start logcat_service
fi
exit 0
