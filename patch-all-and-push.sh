#!/bin/bash
set -ex

cleanup() {
    rm -f keystore
    rm -f signed_*.apk
    rm -rf unodex-*
    rm -rf *classes.dex
    rm -rf MirrorLinkServer
    rm -rf MirrorLinkCertUpdate
}

if [ "$1" != "-t" ]; then
    trap cleanup EXIT
fi
cleanup

# Rebuild keystore file with :
./genkeystore cm-13.0-signkeys/platform.x509.pem cm-13.0-signkeys/platform.pk8 android platform keystore

#zip Mirrorlink_MM.zip
tar -xzf MirrorLink_MM.tar.gz
java -jar baksmali-2.1.3.jar -x -c framework-6.0.1-lg-g4/arm/boot.oat -d framework-6.0.1-lg-g4/arm -o unodex-server MirrorLinkServer/oat/arm/MirrorLinkServer.odex
java -jar baksmali-2.1.3.jar -x -c framework-6.0.1-lg-g4/arm64/boot.oat -d framework-6.0.1-lg-g4/arm64 -o unodex-certupdate MirrorLinkCertUpdate/oat/arm64/MirrorLinkCertUpdate.odex
java -jar smali-2.1.3.jar -o server-classes.dex unodex-server
java -jar smali-2.1.3.jar -o certupdate-classes.dex unodex-certupdate

./repack-and-sign-apk.sh MirrorLinkServer/MirrorLinkServer.apk server-classes.dex
./repack-and-sign-apk.sh MirrorLinkCertUpdate/MirrorLinkCertUpdate.apk certupdate-classes.dex

if [ "$1" != "-t" ]; then
    adb root
    sleep 5
    adb shell mount -o remount,rw /system
    adb shell mkdir -p /system/app/MirrorLinkServer/lib/arm /system/app/MirrorLinkCertUpdate
    adb push signed_MirrorLinkCertUpdate.apk /system/app/MirrorLinkCertUpdate/MirrorLinkCertUpdate.apk
    adb push signed_MirrorLinkServer.apk /system/app/MirrorLinkServer/MirrorLinkServer.apk
    adb push MirrorLinkServer/lib/arm/libCapture.so /system/app/MirrorLinkServer/lib/arm/
    adb push MirrorLinkServer/lib/arm/libmlupnp.so /system/app/MirrorLinkServer/lib/arm/
    adb shell sync
    adb shell reboot
fi
