#!/bin/bash
result_dir=$1

adb shell rm -rf /sdcard/screenshots
adb shell mkdir /sdcard/screenshots
mkdir $result_dir/screenshots/
while :
do
    d1=$(date +%Y%m%d_%H%M%S_%N)
    adb shell /system/bin/screencap -p /sdcard/screenshots/screenshot_"$d1".png
    adb pull /sdcard/screenshots/screenshot_"$d1".png $result_dir/screenshots/
    adb shell rm /sdcard/screenshots/screenshot_"$d1".png
    sleep 0.3
done