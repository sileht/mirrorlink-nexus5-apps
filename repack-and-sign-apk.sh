#!/bin/bash
# Sample usage is as follows;
# ./signapk myapp.apk debug.keystore android androiddebugkey
# 
# param1, APK file: Calculator_debug.apk
# param2, keystore location: ~/.android/debug.keystore
# param3, key storepass: android
# param4, key alias: androiddebugkey

USER_HOME=$(eval echo ~${SUDO_USER})

# use my debug key default
APK=$1
DEX=$2
KEYSTORE="keystore"
STOREPASS="android"
ALIAS="platform"


# get the filename
APK_BASENAME=$(basename $APK)
SIGNED_APK="signed_"$APK_BASENAME

#debug
echo param1 $APK
echo param2 $KEYSTORE
echo param3 $STOREPASS
echo param4 $ALIAS

# delete META-INF folder
zip -d $APK META-INF/\*

if [ "$DEX" ] ; then
    cp -f $DEX classes.dex
    zip $APK classes.dex
    rm -f classes.dex
fi

# sign APK
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore $KEYSTORE -storepass $STOREPASS $APK $ALIAS
#verify
jarsigner -verify $APK

#zipalign
zipalign -v 4 $APK $SIGNED_APK 
