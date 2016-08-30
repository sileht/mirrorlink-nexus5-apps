.class public Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;
.super Ljava/lang/Object;
.source "WiFiOffloadingManager.java"


# static fields
.field private static final EXTRA_PACKAGENAME:Ljava/lang/String; = "com.lge.intent.extra.PACKAGE_NAME"

.field private static final INTERNET_PERMISSION:Ljava/lang/String; = "android.permission.INTERNET"

.field private static final NET_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_STATE"

.field public static final SERVICE_NAME:Ljava/lang/String; = "wifiOffloadingService"

.field private static final TAG:Ljava/lang/String; = "WiFiOffloadingManager"

.field public static final WIFI_OFFLOADING_BLACK_LIST:[Ljava/lang/String;

.field private static final WIFI_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_WIFI_STATE"

.field private static deathBinderNotificator:Landroid/os/IBinder$DeathRecipient;

.field private static mWiFiOffloadingManager:Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

.field private static mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    .line 35
    sput-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingManager:Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    .line 46
    const/16 v0, 0x3e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 47
    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 48
    const-string v2, "com.android.LGSetupWizard"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 49
    const-string v2, "com.lge.AppSetupWizard"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 50
    const-string v2, "com.android.LGSetupWizardApp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 51
    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 52
    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 53
    const-string v2, "com.lge.LgHiddenMenu"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 55
    const-string v2, "com.android.gallery3d"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 56
    const-string v2, "com.lge.music"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 57
    const-string v2, "com.android.music"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 58
    const-string v2, "com.lge.videoplayer"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 59
    const-string v2, "com.lge.clock"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 60
    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 61
    const-string v2, "com.lge.helpcenter"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 62
    const-string v2, "com.lge.deskhome"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 63
    const-string v2, "com.lge.smartshare"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 64
    const-string v2, "com.google.android.apps.maps"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 65
    const-string v2, "com.infraware.polarisoffice"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 66
    const-string v2, "com.pv.android.verizon.avod"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 67
    const-string v2, "com.pv.android.verizon.mod"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 68
    const-string v2, "com.vzw.hs.android.modlite"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 69
    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 70
    const-string v2, "com.lge.hotspotprovision"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 71
    const-string v2, "com.lge.vvm"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 72
    const-string v2, "com.mobitv.client.nfl2010"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 73
    const-string v2, "com.vcast.mediamanager"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 75
    const-string v2, "com.vzw.hss.myverizon"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 76
    const-string v2, "com.vznavigator.VS9304G"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 77
    const-string v2, "com.vznavigator.VS9204G"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 78
    const-string v2, "com.vznavigator.VS9504G"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 79
    const-string v2, "com.vznavigator.VS8704G"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 80
    const-string v2, "com.vznavigator.VS8904G"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 81
    const-string v2, "com.vznavigator.VS9804G"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 82
    const-string v2, "com.vznavigator.VS8764G"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 83
    const-string v2, "com.lge.phonetestmode"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 84
    const-string v2, "com.lge.mobilehotspot.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 85
    const-string v2, "com.lge.mobilehotspot.util"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 86
    const-string v2, "itectokyo.sharegenie.app"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 87
    const-string v2, "itectokyo.fileshare.ics20"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 88
    const-string v2, "com.android.gallery3d"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 89
    const-string v2, "com.lge.music"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 90
    const-string v2, "com.lge.cloudvmm"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 91
    const-string v2, "com.vcast.service"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 92
    const-string v2, "com.lge.voicerecorder"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 93
    const-string v2, "com.lge.vzw.bua"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 94
    const-string v2, "com.lge.comsso.ssoclient"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 95
    const-string v2, "com.cequint.ecid"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 96
    const-string v2, "com.lge.filemanager"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 97
    const-string v2, "com.popcap.pvz"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 98
    const-string v2, "com.lge.tagplus.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 99
    const-string v2, "com.lge.app.richnote"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 100
    const-string v2, "com.verizon.messaging.vzmsgs"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 101
    const-string v2, "com.belkin.android.androidbelkinnetcam"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 102
    const-string v2, "com.androidhub"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 103
    const-string v2, "com.vcast.mediamanager"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 104
    const-string v2, "com.vzw.hs.android.modlite"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 105
    const-string v2, "com.verizon.messaging.vzmsgs"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 106
    const-string v2, "com.vznavigator.Tablet"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 107
    const-string v2, "com.vznavigator.Generic"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 108
    const-string v2, "com.lge.vzw.bua"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 109
    const-string v2, "com.lge.cloudservice"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 110
    const-string v2, "com.lge.wifisettings"

    aput-object v2, v0, v1

    .line 46
    sput-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->WIFI_OFFLOADING_BLACK_LIST:[Ljava/lang/String;

    .line 176
    new-instance v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager$1;

    invoke-direct {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager$1;-><init>()V

    sput-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->deathBinderNotificator:Landroid/os/IBinder$DeathRecipient;

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method private constructor <init>(Lcom/lge/wifi/impl/offloading/IWiFiOffloading;)V
    .registers 2
    .param p1, "service"    # Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    sput-object p1, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    .line 126
    return-void
.end method

.method private checkPermissionGranted()Z
    .registers 14

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 292
    const/4 v1, 0x0

    .line 293
    .local v1, "internet_permission":I
    const/4 v3, 0x0

    .line 294
    .local v3, "net_permission":I
    const/4 v7, 0x0

    .line 295
    .local v7, "wifi_permission":I
    const/4 v2, 0x0

    .line 302
    .local v2, "isPackageOk":Z
    const-string v10, "WiFiOffloadingManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "checkPermissionGranted "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :try_start_1c
    iget-object v10, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 306
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mPackageName:Ljava/lang/String;

    const/16 v11, 0x1000

    invoke-virtual {v5, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 308
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 309
    .local v6, "requestedPermissions":[Ljava/lang/String;
    const-string v10, "WiFiOffloadingManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mPackageName "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    if-nez v6, :cond_55

    .line 312
    const-string v10, "WiFiOffloadingManager"

    const-string v11, "This package has no permission "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_4b} :catch_9f

    .line 354
    :goto_4b
    if-eqz v2, :cond_a2

    .line 355
    const-string v9, "Wifi"

    const-string v10, "finally launch offloading"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "requestedPermissions":[Ljava/lang/String;
    :goto_54
    return v8

    .line 314
    .restart local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "requestedPermissions":[Ljava/lang/String;
    :cond_55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_56
    :try_start_56
    array-length v10, v6

    if-lt v0, v10, :cond_64

    .line 328
    if-ne v1, v8, :cond_9d

    if-eq v3, v8, :cond_5f

    if-ne v7, v8, :cond_9d

    .line 329
    :cond_5f
    const/4 v7, 0x0

    move v3, v7

    move v1, v7

    .line 330
    const/4 v2, 0x1

    .line 331
    goto :goto_4b

    .line 315
    :cond_64
    aget-object v10, v6, v0

    const-string v11, "android.permission.INTERNET"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_76

    .line 316
    const-string v10, "WiFiOffloadingManager"

    const-string v11, "internet_permission = 1"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v1, 0x1

    .line 319
    :cond_76
    aget-object v10, v6, v0

    const-string v11, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_88

    .line 320
    const-string v10, "WiFiOffloadingManager"

    const-string v11, "net_permission =1;"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v3, 0x1

    .line 323
    :cond_88
    aget-object v10, v6, v0

    const-string v11, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9a

    .line 324
    const-string v10, "WiFiOffloadingManager"

    const-string v11, "wifi_permission =1;"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_99} :catch_9f

    .line 325
    const/4 v7, 0x1

    .line 314
    :cond_9a
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 332
    :cond_9d
    const/4 v2, 0x0

    goto :goto_4b

    .line 336
    .end local v0    # "i":I
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "requestedPermissions":[Ljava/lang/String;
    :catch_9f
    move-exception v8

    move v8, v9

    goto :goto_54

    .line 358
    .restart local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "requestedPermissions":[Ljava/lang/String;
    :cond_a2
    const-string v8, "Wifi"

    const-string v10, "finally do not launch offloading"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 359
    goto :goto_54
.end method

.method public static getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;
    .registers 2

    .prologue
    .line 159
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingManager:Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    if-nez v0, :cond_16

    .line 161
    new-instance v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getService()Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;-><init>(Lcom/lge/wifi/impl/offloading/IWiFiOffloading;)V

    sput-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingManager:Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    .line 162
    const-string v0, "WiFiOffloadingManager"

    const-string v1, "Get a service instance in WiFiOffloadingManager() : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_16
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-nez v0, :cond_27

    .line 166
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getService()Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    .line 167
    const-string v0, "WiFiOffloadingManager"

    const-string v1, "Get a service instance in WiFiOffloadingManager() : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_27
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingManager:Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    return-object v0
.end method

.method private getPackageName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 402
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mIntent:Landroid/content/Intent;

    const-string v2, "com.lge.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "pkg":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 407
    .end local v0    # "pkg":Ljava/lang/String;
    :goto_a
    return-object v0

    .restart local v0    # "pkg":Ljava/lang/String;
    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public static getService()Lcom/lge/wifi/impl/offloading/IWiFiOffloading;
    .registers 5

    .prologue
    .line 133
    sget-object v2, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-eqz v2, :cond_7

    .line 134
    sget-object v2, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    .line 154
    .local v0, "b":Landroid/os/IBinder;
    :goto_6
    return-object v2

    .line 137
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_7
    const-string v2, "wifiOffloadingService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 138
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    move-result-object v2

    sput-object v2, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    .line 147
    :try_start_13
    sget-object v2, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-eqz v2, :cond_23

    .line 148
    sget-object v2, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v2}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->deathBinderNotificator:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_23} :catch_26

    .line 154
    :cond_23
    :goto_23
    sget-object v2, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    goto :goto_6

    .line 150
    :catch_26
    move-exception v1

    .line 152
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_23
.end method

.method private isAirplane()I
    .registers 4

    .prologue
    .line 397
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public disableBackgroundOffloading()V
    .registers 3

    .prologue
    .line 217
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-nez v0, :cond_5

    .line 229
    :cond_4
    :goto_4
    return-void

    .line 222
    :cond_5
    :try_start_5
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->isWifiAPOn()Z

    move-result v0

    if-nez v0, :cond_4

    .line 223
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->disable_background()Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_4

    .line 226
    :catch_13
    move-exception v0

    const-string v0, "WiFiOffloadingManager"

    const-string v1, "WiFi Offloading enable error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public disableWifioffloadTimerReminder()V
    .registers 3

    .prologue
    .line 456
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-nez v0, :cond_c

    .line 457
    const-string v0, "WiFiOffloadingManager"

    const-string v1, "mWiFiOffloadingService is null! on disableWifioffloadTimerReminder()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_b
    return-void

    .line 460
    :cond_c
    :try_start_c
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->disableWifioffloadTimerReminder()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_b

    :catch_12
    move-exception v0

    goto :goto_b
.end method

.method public getWifiOffloadingStart()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 244
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_11

    .line 245
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "Wifi_offloading_start"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 248
    :cond_11
    return v0
.end method

.method public isCheckedWifioffloadTimerReminder()I
    .registers 14

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 366
    const-wide/16 v0, 0x0

    .line 367
    .local v0, "curTime":J
    const-wide/16 v4, 0x0

    .line 368
    .local v4, "startTime":J
    const/4 v2, 0x0

    .line 370
    .local v2, "ret":I
    iget-object v3, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_offloading_timer_reminder"

    invoke-static {v3, v6, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_93

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 373
    const-string v3, "Wifi"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isCheckedWifioffloadTimerReminder() Timer : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v3, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_offloading_timer_start_time"

    invoke-static {v3, v6, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 375
    cmp-long v3, v4, v10

    if-eqz v3, :cond_8a

    sub-long v6, v0, v4

    const-wide/32 v8, 0x2932e00

    cmp-long v3, v6, v8

    if-ltz v3, :cond_8a

    .line 377
    const-string v3, "Wifi"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isCheckedWifioffloadTimerReminder Offloading Timer reset: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v8, v0, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v3, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_offloading_timer_reminder"

    invoke-static {v3, v6, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    iget-object v3, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_offloading_timer_start_time"

    invoke-static {v3, v6, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 380
    const/4 v2, 0x0

    .line 389
    :goto_75
    const-string v3, "Wifi"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Does Current timer keep going :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return v2

    .line 382
    :cond_8a
    const-string v3, "Wifi"

    const-string v6, "isCheckedWifioffloadTimerReminder Offloading Timer keep going:1 "

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v2, 0x1

    .line 385
    goto :goto_75

    .line 386
    :cond_93
    const-string v3, "Wifi"

    const-string v6, "isCheckedWifioffloadTimerReminder Offloading Timer keep going:2 "

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v2, 0x0

    goto :goto_75
.end method

.method public isOffloadingAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 253
    iput-object p2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mIntent:Landroid/content/Intent;

    .line 254
    iput-object p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "appBlocked":Z
    const/4 v2, 0x0

    .line 259
    .local v2, "wiFiOffloadingStart":Z
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mPackageName:Ljava/lang/String;

    .line 260
    const-string v3, "WiFiOffloadingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isOffloadingAvailable "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    sget-object v3, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->WIFI_OFFLOADING_BLACK_LIST:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_3f

    .line 275
    :goto_28
    if-nez v0, :cond_3e

    .line 276
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->checkPermissionGranted()Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->isCheckedWifioffloadTimerReminder()I

    move-result v3

    if-nez v3, :cond_8c

    .line 277
    const-string v3, "WiFiOffloadingManager"

    const-string v4, "WiFi Offloading Ready to Launch"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v2, 0x1

    .line 285
    :cond_3e
    :goto_3e
    return v2

    .line 264
    :cond_3f
    iget-object v3, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mPackageName:Ljava/lang/String;

    sget-object v4, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->WIFI_OFFLOADING_BLACK_LIST:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 265
    const-string v3, "WiFiOffloadingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WiFi Offloading found "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->WIFI_OFFLOADING_BLACK_LIST:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "in the B-list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v3, "WiFiOffloadingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WiFiOffloading checks Package Name : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v3, "WiFiOffloadingManager"

    const-string v4, "WiFi Offloading found this application in the B-list"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v0, 0x1

    .line 269
    goto :goto_28

    .line 272
    :cond_88
    const/4 v0, 0x0

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 280
    :cond_8c
    const-string v3, "WiFiOffloadingManager"

    const-string v4, "This application is in B-List!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v2, 0x0

    goto :goto_3e
.end method

.method public isOffloadingReminder_on()I
    .registers 3

    .prologue
    .line 442
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-nez v0, :cond_d

    .line 443
    const-string v0, "WiFiOffloadingManager"

    const-string v1, "mWiFiOffloadingService is null! on isOffloadingReminder_on()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :goto_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 446
    :cond_d
    :try_start_d
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->isOffloadingReminder_on()I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_14

    move-result v0

    goto :goto_c

    :catch_14
    move-exception v0

    goto :goto_b
.end method

.method public isOffloadingTimer_on()Z
    .registers 3

    .prologue
    .line 427
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-nez v0, :cond_d

    .line 428
    const-string v0, "WiFiOffloadingManager"

    const-string v1, "mWiFiOffloadingService is null! on isOffloadingTimer_on()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :goto_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 431
    :cond_d
    :try_start_d
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->isOffloadingTimer_on()Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_14

    move-result v0

    goto :goto_c

    :catch_14
    move-exception v0

    goto :goto_b
.end method

.method public isWifiOffloadingEnabled()I
    .registers 3

    .prologue
    .line 413
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-nez v0, :cond_d

    .line 414
    const-string v0, "WiFiOffloadingManager"

    const-string v1, "mWiFiOffloadingService is null! on isWifiOffloadingEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :goto_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 417
    :cond_d
    :try_start_d
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->isWifiOffloadingEnabled()I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_14

    move-result v0

    goto :goto_c

    :catch_14
    move-exception v0

    goto :goto_b
.end method

.method public processingOffloading()V
    .registers 3

    .prologue
    .line 189
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-nez v0, :cond_c

    .line 190
    const-string v0, "WiFiOffloadingManager"

    const-string v1, "mWiFiOffloadingService is null on processingOffloading()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_b
    :goto_b
    return-void

    .line 195
    :cond_c
    :try_start_c
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->init()Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_2e

    move-result v0

    if-eqz v0, :cond_b

    .line 204
    :try_start_14
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->start(Z)Z

    move-result v0

    if-nez v0, :cond_b

    .line 205
    const-string v0, "WiFiOffloadingManager"

    const-string v1, "Could not start offloading in processingOffloading()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_24} :catch_25

    goto :goto_b

    .line 209
    :catch_25
    move-exception v0

    const-string v0, "WiFiOffloadingManager"

    const-string v1, "Could not start offloading in processingOffloading()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 199
    :catch_2e
    move-exception v0

    const-string v0, "WiFiOffloadingManager"

    const-string v1, "Could not init offloading in processingOffloading()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public resetWifioffloadTimerReminder(I)Z
    .registers 4
    .param p1, "check"    # I

    .prologue
    .line 483
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-nez v0, :cond_d

    .line 484
    const-string v0, "WiFiOffloadingManager"

    const-string v1, "mWiFiOffloadingService is null! on resetWifioffloadTimerReminder()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :goto_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 487
    :cond_d
    :try_start_d
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v0, p1}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->resetWifioffloadTimerReminder(I)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_14

    move-result v0

    goto :goto_c

    :catch_14
    move-exception v0

    goto :goto_b
.end method

.method public setWifiOffloadOngoing(Z)V
    .registers 4
    .param p1, "OffloadOngoing"    # Z

    .prologue
    .line 497
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-nez v0, :cond_c

    .line 498
    const-string v0, "WiFiOffloadingManager"

    const-string v1, "mWiFiOffloadingService is null! on setWifiOffloadingOngoing()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :goto_b
    return-void

    .line 501
    :cond_c
    :try_start_c
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v0, p1}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->setWifiOffloadOngoing(Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_b

    :catch_12
    move-exception v0

    goto :goto_b
.end method

.method public setWifiOffloadingStart(I)V
    .registers 5
    .param p1, "WiFiOffloadingStart"    # I

    .prologue
    .line 234
    const-string v0, "WiFiOffloadingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[W Offloading] setWifiOffloadingStart"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_23

    .line 237
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Wifi_offloading_start"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 239
    :cond_23
    return-void
.end method

.method public stopWifioffloadTimer()V
    .registers 3

    .prologue
    .line 469
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-nez v0, :cond_c

    .line 470
    const-string v0, "WiFiOffloadingManager"

    const-string v1, "mWiFiOffloadingService is null! on stopWifioffloadTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_b
    return-void

    .line 473
    :cond_c
    :try_start_c
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->stopWifioffloadTimer()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_b

    :catch_12
    move-exception v0

    goto :goto_b
.end method
