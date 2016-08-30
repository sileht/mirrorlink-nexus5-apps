#!/bin/bash
set -ex

cleanup() {
    rm -f keystore
    rm -f signed_*.apk
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

#java -jar baksmali-2.1.3.jar -x -c framework-6.0.1-lg-g4/arm/boot.oat -d framework-6.0.1-lg-g4/arm -o unodex-server MirrorLinkServer/oat/arm/MirrorLinkServer.odex
#java -jar baksmali-2.1.3.jar -x -c framework-6.0.1-lg-g4/arm64/boot.oat -d framework-6.0.1-lg-g4/arm64 -o unodex-certupdate MirrorLinkCertUpdate/oat/arm64/MirrorLinkCertUpdate.odex
#sed -i 's/.line 683/return-void\n\n    .line 683/' unodex-server/com/lge/mirrorlink/vnc/lib/FramebufferUpdateThread.smali
#sed -i 's/.line 851/const\/4 v6, 0x1\n\n    return v6\n\n    .line 851/g' unodex-server/com/lge/mirrorlink/certificate/CertificateManager.smali
#sed -i 's/ShareConnectionActivity/TetherSettingsActivity/g' unodex-server/com/lge/mirrorlink/MirrorLinkSettings.smali

java -jar smali-2.1.3.jar -o server-classes.dex unodex-server
java -jar smali-2.1.3.jar -o certupdate-classes.dex unodex-certupdate
java -jar smali-2.1.3.jar -o eden-classes.dex unodex-certupdate

# Add some proprietary lg libs
cp -a lg-lib/*.so MirrorLinkServer/lib/arm/

./repack-and-sign-apk.sh MirrorLinkServer/MirrorLinkServer.apk server-classes.dex
./repack-and-sign-apk.sh MirrorLinkCertUpdate/MirrorLinkCertUpdate.apk certupdate-classes.dex
./repack-and-sign-apk.sh EdenService/EdenService.apk eden-classes.dex

if [ "$1" != "-t" ]; then
    #adb connect 192.168.8.104
    adb root
    sleep 3
    adb remount
    adb shell mkdir -p /system/app/MirrorLinkServer/lib/arm /system/app/MirrorLinkCertUpdate /system/priv-app/EdenService
    adb push signed_EdenService.apk /system/priv-app/EdenService/EdenService.apk
    adb push signed_MirrorLinkCertUpdate.apk /system/app/MirrorLinkCertUpdate/MirrorLinkCertUpdate.apk
    adb push signed_MirrorLinkServer.apk /system/app/MirrorLinkServer/MirrorLinkServer.apk
    adb push MirrorLinkServer/lib/arm/ /system/app/MirrorLinkServer/lib/arm/
    adb shell sync
#    adb shell reboot
fi
