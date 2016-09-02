.class public Lcom/lge/android/atservice/MIDResView;
.super Landroid/preference/PreferenceActivity;
.source "MIDResView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/android/atservice/MIDResView$1;,
        Lcom/lge/android/atservice/MIDResView$2;
    }
.end annotation


# static fields
.field public static final EVENT_STARTDAY:I = 0x74

.field private static final Key_BTAddr:Ljava/lang/String; = "bt_addr"

.field private static final Key_HWVersion:Ljava/lang/String; = "hardware_version"

.field private static final Key_IMEI:Ljava/lang/String; = "imei"

.field private static final Key_SWVersion:Ljava/lang/String; = "software_version"

.field private static final Key_SerialNo:Ljava/lang/String; = "serial_no"

.field private static final Key_StartDate:Ljava/lang/String; = "start_date"

.field private static final Key_WidevineKeybox:Ljava/lang/String; = "widevine_keybox"

.field private static final Key_WifiMacAddr:Ljava/lang/String; = "wifi_mac_addr"

.field public static final SIM_SLOT_1_SEL:I = 0x0

.field public static final SIM_SLOT_2_SEL:I = 0x1

.field public static final SIM_SLOT_3_SEL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MIDResView"


# instance fields
.field final FAIL:Ljava/lang/String;

.field final NEED_KEYBOX:Ljava/lang/String;

.field final NOT_SUPPORT:Ljava/lang/String;

.field final OK:Ljava/lang/String;

.field final UNAVAILABLE:Ljava/lang/String;

.field private country_code:Ljava/lang/String;

.field private isMultiSimEnabled:Z

.field private mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field m_display_run:Ljava/lang/Runnable;

.field private operator_code:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/lge/android/atservice/MIDResView;)Lcom/lge/android/atservice/client/LGATCMDClient;
    .registers 2

    iget-object v0, p0, Lcom/lge/android/atservice/MIDResView;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 46
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/MIDResView;->operator_code:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/MIDResView;->country_code:Ljava/lang/String;

    .line 49
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/android/atservice/MIDResView;->isMultiSimEnabled:Z

    .line 65
    const-string/jumbo v0, "OK"

    iput-object v0, p0, Lcom/lge/android/atservice/MIDResView;->OK:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "NOT SUPPORT"

    iput-object v0, p0, Lcom/lge/android/atservice/MIDResView;->NOT_SUPPORT:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "NEED KEYBOX"

    iput-object v0, p0, Lcom/lge/android/atservice/MIDResView;->NEED_KEYBOX:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "FAIL"

    iput-object v0, p0, Lcom/lge/android/atservice/MIDResView;->FAIL:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "UNAVAILABLE"

    iput-object v0, p0, Lcom/lge/android/atservice/MIDResView;->UNAVAILABLE:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/lge/android/atservice/MIDResView$1;

    invoke-direct {v0, p0}, Lcom/lge/android/atservice/MIDResView$1;-><init>(Lcom/lge/android/atservice/MIDResView;)V

    iput-object v0, p0, Lcom/lge/android/atservice/MIDResView;->mHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/lge/android/atservice/MIDResView$2;

    invoke-direct {v0, p0}, Lcom/lge/android/atservice/MIDResView$2;-><init>(Lcom/lge/android/atservice/MIDResView;)V

    iput-object v0, p0, Lcom/lge/android/atservice/MIDResView;->m_display_run:Ljava/lang/Runnable;

    .line 39
    return-void
.end method

.method private checkBTAddr()Ljava/lang/String;
    .registers 3

    .prologue
    .line 275
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 276
    .local v0, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 278
    if-nez v0, :cond_d

    .line 280
    const-string/jumbo v1, "NOT SUPPORT"

    return-object v1

    .line 282
    :cond_d
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private checkIMEI()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 205
    iget-object v2, p0, Lcom/lge/android/atservice/MIDResView;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "CDMA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 206
    iget-object v2, p0, Lcom/lge/android/atservice/MIDResView;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v2

    if-ne v2, v5, :cond_c5

    .line 207
    iget-object v2, p0, Lcom/lge/android/atservice/MIDResView;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "mImei":Ljava/lang/String;
    const-string/jumbo v2, "MIDResView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IMEI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v2, p0, Lcom/lge/android/atservice/MIDResView;->operator_code:Ljava/lang/String;

    const-string/jumbo v3, "VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 211
    invoke-direct {p0}, Lcom/lge/android/atservice/MIDResView;->getVzwImei()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 212
    :cond_48
    iget-object v2, p0, Lcom/lge/android/atservice/MIDResView;->operator_code:Ljava/lang/String;

    const-string/jumbo v3, "MPCS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    iget-object v2, p0, Lcom/lge/android/atservice/MIDResView;->operator_code:Ljava/lang/String;

    const-string/jumbo v3, "USC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 213
    :cond_5e
    if-eqz v0, :cond_69

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 221
    :cond_69
    return-object v0

    .line 214
    :cond_6a
    const-string/jumbo v2, "MIDResView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mImei.length() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_a2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_a2

    .line 216
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 218
    :cond_a2
    return-object v0

    .line 223
    :cond_a3
    const-string/jumbo v2, "LRA"

    iget-object v3, p0, Lcom/lge/android/atservice/MIDResView;->operator_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 224
    return-object v0

    .line 226
    :cond_af
    const-string/jumbo v2, "CTC"

    iget-object v3, p0, Lcom/lge/android/atservice/MIDResView;->operator_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 227
    const-string/jumbo v2, "NOT SUPPORT"

    return-object v2

    .line 229
    :cond_be
    iget-object v2, p0, Lcom/lge/android/atservice/MIDResView;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 233
    .end local v0    # "mImei":Ljava/lang/String;
    :cond_c5
    const-string/jumbo v2, "NOT SUPPORT"

    return-object v2

    .line 237
    :cond_c9
    invoke-direct {p0}, Lcom/lge/android/atservice/MIDResView;->isMultiSimEnabled()Z

    move-result v2

    if-nez v2, :cond_d5

    invoke-direct {p0}, Lcom/lge/android/atservice/MIDResView;->isTripleSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 238
    :cond_d5
    const-string/jumbo v1, ""

    .line 239
    .local v1, "simIMEI":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/android/atservice/MIDResView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/android/atservice/MIDResView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v2, v3}, Lcom/lge/android/atservice/MIDResView;->get_device_ID(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    .line 240
    return-object v1

    .line 242
    .end local v1    # "simIMEI":Ljava/lang/String;
    :cond_e3
    const-string/jumbo v2, "VZW"

    iget-object v3, p0, Lcom/lge/android/atservice/MIDResView;->operator_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 243
    invoke-direct {p0}, Lcom/lge/android/atservice/MIDResView;->getVzwImei()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 245
    :cond_f3
    iget-object v2, p0, Lcom/lge/android/atservice/MIDResView;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private checkWidevine()Ljava/lang/String;
    .registers 9

    .prologue
    .line 308
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/system/vendor/lib/libwvdrm_L1.so"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1c

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/system/lib/libwvdrm_L1.so"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 317
    :cond_1c
    new-instance v2, Ljava/util/UUID;

    const-wide v4, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v6, -0x5c37d8232ae2de13L

    invoke-direct {v2, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    .line 319
    .local v2, "kWidevineScheme":Ljava/util/UUID;
    :try_start_2b
    new-instance v0, Landroid/media/MediaDrm;

    invoke-direct {v0, v2}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    .line 320
    .local v0, "drm":Landroid/media/MediaDrm;
    const-string/jumbo v4, "securityLevel"

    invoke-virtual {v0, v4}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, "level":Ljava/lang/String;
    if-eqz v3, :cond_73

    const-string/jumbo v4, "L1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 323
    const-string/jumbo v4, "OK"
    :try_end_45
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_2b .. :try_end_45} :catch_80

    return-object v4

    .line 309
    .end local v0    # "drm":Landroid/media/MediaDrm;
    .end local v2    # "kWidevineScheme":Ljava/util/UUID;
    .end local v3    # "level":Ljava/lang/String;
    :cond_46
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/system/vendor/lib/libwvdrm_L3.so"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_62

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/system/lib/libwvdrm_L3.so"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 310
    :cond_62
    const-string/jumbo v4, "NOT SUPPORT"

    return-object v4

    .line 312
    :cond_66
    const-string/jumbo v4, "MIDResView"

    const-string/jumbo v5, "Widevine level is neither L1 or L3"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string/jumbo v4, "FAIL"

    return-object v4

    .line 325
    .restart local v0    # "drm":Landroid/media/MediaDrm;
    .restart local v2    # "kWidevineScheme":Ljava/util/UUID;
    .restart local v3    # "level":Ljava/lang/String;
    :cond_73
    :try_start_73
    const-string/jumbo v4, "MIDResView"

    const-string/jumbo v5, "Need keybox provisioning"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string/jumbo v4, "NEED KEYBOX"
    :try_end_7f
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_73 .. :try_end_7f} :catch_80

    return-object v4

    .line 328
    .end local v0    # "drm":Landroid/media/MediaDrm;
    .end local v3    # "level":Ljava/lang/String;
    :catch_80
    move-exception v1

    .line 329
    .local v1, "e":Landroid/media/UnsupportedSchemeException;
    const-string/jumbo v4, "MIDResView"

    const-string/jumbo v5, "UnsupportedSchemeException occured."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string/jumbo v4, "FAIL"

    return-object v4
.end method

.method private checkWifiMacAddr()Ljava/lang/String;
    .registers 6

    .prologue
    .line 287
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/lge/android/atservice/MIDResView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 288
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 290
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_18

    .line 291
    const-string/jumbo v3, "MIDResView"

    const-string/jumbo v4, "setWifiStatus , wifiInfo is NULL !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_18
    if-nez v1, :cond_2c

    const-string/jumbo v0, "UNAVAILABLE"

    .line 296
    .local v0, "macAddress":Ljava/lang/String;
    :goto_1d
    if-nez v0, :cond_31

    .line 297
    const-string/jumbo v3, "MIDResView"

    const-string/jumbo v4, "wifiInfo.getMacAddress() is NULL !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string/jumbo v0, "Cannot get WifiMac Address"

    .line 303
    :goto_2b
    return-object v0

    .line 294
    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_2c
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "macAddress":Ljava/lang/String;
    goto :goto_1d

    .line 300
    :cond_31
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b
.end method

.method private getVzwImei()Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xc

    const/16 v6, 0x8

    const/4 v5, 0x4

    .line 255
    iget-object v2, p0, Lcom/lge/android/atservice/MIDResView;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "mImei":Ljava/lang/String;
    const-string/jumbo v2, "MIDResView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mImei:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_9b

    .line 260
    const-string/jumbo v2, "MIDResView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mImei.length() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 262
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 262
    const-string/jumbo v3, " "

    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 263
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 263
    const-string/jumbo v3, " "

    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 264
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 265
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "mImei_VZW":Ljava/lang/String;
    :goto_9a
    return-object v1

    .line 267
    .end local v1    # "mImei_VZW":Ljava/lang/String;
    :cond_9b
    move-object v1, v0

    .restart local v1    # "mImei_VZW":Ljava/lang/String;
    goto :goto_9a
.end method

.method public static get_device_ID(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mTelephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 335
    const-string/jumbo v1, "tab"

    invoke-static {v1, p0}, Lcom/lge/android/atservice/MIDResView;->read_SharedPreference(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "sTabName":Ljava/lang/String;
    const-string/jumbo v1, "sim1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 338
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 339
    :cond_1a
    const-string/jumbo v1, "sim2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 340
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 341
    :cond_2d
    const-string/jumbo v1, "sim3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 342
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 344
    :cond_40
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isMultiSimEnabled()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 367
    const-string/jumbo v3, "ro.lge.mtk_dualsim"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 368
    .local v1, "mtk_dual":Z
    if-eqz v1, :cond_c

    .line 369
    return v2

    .line 371
    :cond_c
    const-string/jumbo v3, "persist.radio.multisim.config"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "isMutiSim":Ljava/lang/String;
    const-string/jumbo v3, "dsds"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string/jumbo v2, "dsda"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_23
    return v2
.end method

.method private isTripleSimEnabled()Z
    .registers 4

    .prologue
    .line 356
    const-string/jumbo v1, "true"

    const-string/jumbo v2, "ro.lge.mtk_triplesim"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 357
    const/4 v1, 0x1

    return v1

    .line 360
    :cond_12
    const-string/jumbo v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "isTripleSim":Ljava/lang/String;
    const-string/jumbo v1, "tsts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static read_SharedPreference(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "sp_key"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 349
    const/4 v0, 0x7

    .line 351
    .local v0, "sp_mode":I
    const-string/jumbo v1, "dsim_test_preference"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 352
    const-string/jumbo v2, ""

    .line 351
    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/lge/android/atservice/MIDResView;->addPreferencesFromResource(I)V

    .line 179
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/lge/android/atservice/MIDResView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/lge/android/atservice/MIDResView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 181
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/MIDResView;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 182
    iget-object v0, p0, Lcom/lge/android/atservice/MIDResView;->country_code:Ljava/lang/String;

    const-string/jumbo v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 183
    iget-object v0, p0, Lcom/lge/android/atservice/MIDResView;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/lge/android/atservice/MIDResView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x74

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const v2, 0x6000d

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->getModemStringItem(ILandroid/os/Message;)V

    .line 188
    :goto_34
    new-instance v0, Lcom/lge/android/atservice/client/LGATCMDClient;

    invoke-direct {v0, p0}, Lcom/lge/android/atservice/client/LGATCMDClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/android/atservice/MIDResView;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    .line 189
    iget-object v0, p0, Lcom/lge/android/atservice/MIDResView;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    invoke-virtual {v0}, Lcom/lge/android/atservice/client/LGATCMDClient;->bindService()V

    .line 190
    iget-object v0, p0, Lcom/lge/android/atservice/MIDResView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/android/atservice/MIDResView;->m_display_run:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    const-string/jumbo v0, "imei"

    invoke-virtual {p0, v0}, Lcom/lge/android/atservice/MIDResView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/lge/android/atservice/MIDResView;->checkIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 193
    const-string/jumbo v0, "bt_addr"

    invoke-virtual {p0, v0}, Lcom/lge/android/atservice/MIDResView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/lge/android/atservice/MIDResView;->checkBTAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    const-string/jumbo v0, "wifi_mac_addr"

    invoke-virtual {p0, v0}, Lcom/lge/android/atservice/MIDResView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/lge/android/atservice/MIDResView;->checkWifiMacAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    const-string/jumbo v0, "widevine_keybox"

    invoke-virtual {p0, v0}, Lcom/lge/android/atservice/MIDResView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/lge/android/atservice/MIDResView;->checkWidevine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    return-void

    .line 185
    :cond_82
    const-string/jumbo v0, "start_date"

    invoke-virtual {p0, v0}, Lcom/lge/android/atservice/MIDResView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string/jumbo v1, "NOT SUPPORT"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_34
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/lge/android/atservice/MIDResView;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    invoke-virtual {v0}, Lcom/lge/android/atservice/client/LGATCMDClient;->unbindService()V

    .line 201
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 199
    return-void
.end method
