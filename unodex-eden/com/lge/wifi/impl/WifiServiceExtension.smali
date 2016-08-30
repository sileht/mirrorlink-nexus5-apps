.class public Lcom/lge/wifi/impl/WifiServiceExtension;
.super Ljava/lang/Object;
.source "WifiServiceExtension.java"

# interfaces
.implements Lcom/lge/wifi/extension/IWifiServiceExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/WifiServiceExtension$EapExt;,
        Lcom/lge/wifi/impl/WifiServiceExtension$WifiExtBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiServiceExtension"

.field private static mIsProvisioned:Z

.field private static mUiccNotSupported:Z

.field private static sCallingWifiUid:I


# instance fields
.field private mCM:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mPrepOobConnection:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-boolean v0, Lcom/lge/wifi/impl/WifiServiceExtension;->mUiccNotSupported:Z

    .line 59
    sput-boolean v0, Lcom/lge/wifi/impl/WifiServiceExtension;->mIsProvisioned:Z

    .line 60
    const/4 v0, -0x1

    sput v0, Lcom/lge/wifi/impl/WifiServiceExtension;->sCallingWifiUid:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    new-instance v0, Lcom/lge/wifi/impl/WifiExtInfo;

    invoke-direct {v0}, Lcom/lge/wifi/impl/WifiExtInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    .line 53
    iput-object v1, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mPrepOobConnection:Z

    .line 142
    return-void
.end method

.method static synthetic access$0(Lcom/lge/wifi/impl/WifiServiceExtension;Lcom/lge/wifi/impl/WifiExtInfo;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    return-void
.end method

.method private checkAndSetConnectivityInstance()V
    .registers 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 340
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mCM:Landroid/net/ConnectivityManager;

    .line 342
    :cond_10
    return-void
.end method

.method private checkWifiManager()Z
    .registers 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_10

    .line 390
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 393
    :cond_10
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private enforceAccessPermission()V
    .registers 4

    .prologue
    .line 302
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 303
    const-string v2, "WifiServiceExtension"

    .line 302
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public static getInstance()Lcom/lge/wifi/impl/WifiServiceExtension;
    .registers 1

    .prologue
    .line 149
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiServiceExtIface()Lcom/lge/wifi/extension/IWifiServiceExtension;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/WifiServiceExtension;

    return-object v0
.end method

.method private getSoftApMaxuserInRoaming()I
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 462
    .line 463
    const/4 v5, 0x1

    .line 464
    .local v5, "roamingState":I
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_chameleon_roaming_type"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 466
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SPR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    const/16 v4, 0x8

    .line 467
    .local v4, "maxUser":I
    :goto_1c
    new-instance v2, Ljava/lang/String;

    const-string v6, "/carrier/wifi/hm"

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 468
    .local v2, "cmln_sap_h_maxuser":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    const-string v6, "/carrier/wifi/dm"

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, "cmln_sap_d_maxuser":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const-string v6, "/carrier/wifi/gm"

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 470
    .local v1, "cmln_sap_g_maxuser":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    const-string v6, "/carrier/wifi/im"

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 472
    .local v3, "cmln_sap_i_maxuser":Ljava/lang/String;
    if-ne v8, v5, :cond_69

    .line 473
    invoke-direct {p0, v2, v4}, Lcom/lge/wifi/impl/WifiServiceExtension;->readChameleonIntValue(Ljava/lang/String;I)I

    move-result v4

    .line 481
    :cond_3e
    :goto_3e
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServiceExtension;->isNetworkTypeGSM()Z

    move-result v6

    if-eqz v6, :cond_48

    .line 482
    invoke-direct {p0, v1, v8}, Lcom/lge/wifi/impl/WifiServiceExtension;->readChameleonIntValue(Ljava/lang/String;I)I

    move-result v4

    .line 485
    :cond_48
    const-string v6, "WifiServiceExtension"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Hotspot roaming type : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " max user : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return v4

    .line 466
    .end local v0    # "cmln_sap_d_maxuser":Ljava/lang/String;
    .end local v1    # "cmln_sap_g_maxuser":Ljava/lang/String;
    .end local v2    # "cmln_sap_h_maxuser":Ljava/lang/String;
    .end local v3    # "cmln_sap_i_maxuser":Ljava/lang/String;
    .end local v4    # "maxUser":I
    :cond_67
    const/4 v4, 0x5

    goto :goto_1c

    .line 474
    .restart local v0    # "cmln_sap_d_maxuser":Ljava/lang/String;
    .restart local v1    # "cmln_sap_g_maxuser":Ljava/lang/String;
    .restart local v2    # "cmln_sap_h_maxuser":Ljava/lang/String;
    .restart local v3    # "cmln_sap_i_maxuser":Ljava/lang/String;
    .restart local v4    # "maxUser":I
    :cond_69
    const/4 v6, 0x3

    if-ne v6, v5, :cond_71

    .line 475
    invoke-direct {p0, v0, v4}, Lcom/lge/wifi/impl/WifiServiceExtension;->readChameleonIntValue(Ljava/lang/String;I)I

    move-result v4

    .line 476
    goto :goto_3e

    :cond_71
    const/4 v6, 0x2

    if-ne v6, v5, :cond_3e

    .line 477
    invoke-direct {p0, v3, v4}, Lcom/lge/wifi/impl/WifiServiceExtension;->readChameleonIntValue(Ljava/lang/String;I)I

    move-result v4

    goto :goto_3e
.end method

.method private getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .registers 6
    .param p1, "netId"    # I

    .prologue
    .line 397
    const/4 v1, 0x0

    .line 398
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServiceExtension;->checkWifiManager()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 399
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 402
    :cond_d
    if-eqz v1, :cond_19

    .line 403
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 409
    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return-object v0

    .line 403
    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 404
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_13

    goto :goto_1a
.end method

.method private getWifiState()I
    .registers 2

    .prologue
    .line 298
    const/4 v0, 0x1

    return v0
.end method

.method private isNetworkTypeGSM()Z
    .registers 7

    .prologue
    .line 491
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 492
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x0

    .line 495
    .local v1, "networkType":I
    if-eqz v2, :cond_25

    .line 496
    :try_start_d
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I

    move-result v1

    .line 497
    const-string v3, "WifiServiceExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isNetworkTypeGSM(), networkType = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_25} :catch_2a

    .line 503
    :cond_25
    :goto_25
    packed-switch v1, :pswitch_data_32

    .line 516
    :pswitch_28
    const/4 v3, 0x0

    :goto_29
    return v3

    .line 499
    :catch_2a
    move-exception v0

    .line 500
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_25

    .line 511
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_2f
    const/4 v3, 0x1

    goto :goto_29

    .line 503
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_2f
    .end packed-switch
.end method

.method private readChameleonIntValue(Ljava/lang/String;I)I
    .registers 14
    .param p1, "fn"    # Ljava/lang/String;
    .param p2, "ref_value"    # I

    .prologue
    .line 415
    const/4 v1, 0x0

    .line 416
    .local v1, "fr":Ljava/io/FileReader;
    const/4 v8, 0x0

    .line 417
    .local v8, "value":Ljava/lang/String;
    move v5, p2

    .line 419
    .local v5, "ret_value":I
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, "fh":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_10

    move v6, v5

    .line 456
    .end local v5    # "ret_value":I
    .local v6, "ret_value":I
    :goto_f
    return v6

    .line 425
    .end local v6    # "ret_value":I
    .restart local v5    # "ret_value":I
    :cond_10
    :try_start_10
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_3d
    .catchall {:try_start_10 .. :try_end_15} :catchall_46

    .line 426
    .end local v1    # "fr":Ljava/io/FileReader;
    .local v2, "fr":Ljava/io/FileReader;
    :try_start_15
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 427
    .local v3, "inFile":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 428
    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2f

    .line 429
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 430
    .local v7, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2e} :catch_5a
    .catchall {:try_start_15 .. :try_end_2e} :catchall_57

    move-result-object v8

    .line 436
    .end local v7    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_2f
    if-eqz v2, :cond_4e

    .line 437
    :try_start_31
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_4d

    move-object v1, v2

    .line 445
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v3    # "inFile":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v1    # "fr":Ljava/io/FileReader;
    :cond_35
    :goto_35
    if-eqz v8, :cond_50

    .line 446
    :try_start_37
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_52

    move-result v5

    :goto_3b
    move v6, v5

    .line 456
    .end local v5    # "ret_value":I
    .restart local v6    # "ret_value":I
    goto :goto_f

    .end local v6    # "ret_value":I
    .restart local v5    # "ret_value":I
    :catch_3d
    move-exception v9

    .line 436
    :goto_3e
    if-eqz v1, :cond_35

    .line 437
    :try_start_40
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_35

    .line 439
    :catch_44
    move-exception v9

    goto :goto_35

    .line 434
    :catchall_46
    move-exception v9

    .line 436
    :goto_47
    if-eqz v1, :cond_4c

    .line 437
    :try_start_49
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_55

    .line 441
    :cond_4c
    :goto_4c
    throw v9

    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    .restart local v3    # "inFile":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :catch_4d
    move-exception v9

    :cond_4e
    move-object v1, v2

    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    goto :goto_35

    .line 449
    .end local v3    # "inFile":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :cond_50
    move v5, p2

    goto :goto_3b

    .line 453
    :catch_52
    move-exception v9

    move v5, p2

    goto :goto_3b

    :catch_55
    move-exception v10

    goto :goto_4c

    .line 434
    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    :catchall_57
    move-exception v9

    move-object v1, v2

    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    goto :goto_47

    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    :catch_5a
    move-exception v9

    move-object v1, v2

    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    goto :goto_3e
.end method

.method private registerWifiExtBroadcastReceiver()V
    .registers 4

    .prologue
    .line 169
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_22

    .line 173
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 179
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.hotspotprovision.hotspot.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v1, "com.lge.wifi.WIFI_UPDATE_WIFI_EXTINFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    new-instance v1, Lcom/lge/wifi/impl/WifiServiceExtension$WifiExtBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/lge/wifi/impl/WifiServiceExtension$WifiExtBroadcastReceiver;-><init>(Lcom/lge/wifi/impl/WifiServiceExtension;)V

    iput-object v1, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :goto_21
    return-void

    .line 189
    :cond_22
    const-string v1, "WifiServiceExtension"

    const-string v2, "register : alread registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private unregisterWifiExtBroadcastReceiver()V
    .registers 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_f

    .line 197
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    :goto_e
    return-void

    .line 200
    :cond_f
    const-string v0, "WifiServiceExtension"

    const-string v1, "unregister : we don\'t need to unregister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method


# virtual methods
.method public getCallingWifiUid()I
    .registers 4

    .prologue
    .line 635
    const-string v0, "WifiServiceExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCallingWifiUid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/lge/wifi/impl/WifiServiceExtension;->sCallingWifiUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    sget v0, Lcom/lge/wifi/impl/WifiServiceExtension;->sCallingWifiUid:I

    return v0
.end method

.method public getConnectionExtInfo()Lcom/lge/wifi/impl/WifiExtInfo;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    return-object v0
.end method

.method public getPrepOobConnection()Z
    .registers 2

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mPrepOobConnection:Z

    return v0
.end method

.method public getSecurityType()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 222
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 229
    :goto_d
    return v0

    :cond_e
    const-string v1, "persist.sys.security"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    goto :goto_d
.end method

.method public getSoftApMaxScb(I)I
    .registers 5
    .param p1, "defaultMaxScb"    # I

    .prologue
    .line 520
    move v0, p1

    .line 522
    .local v0, "maxScb":I
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiChameleonFeaturedCarrier()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 524
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServiceExtension;->getSoftApMaxuserInRoaming()I

    move-result v1

    .line 525
    .local v1, "maxScbChameleon":I
    if-ge v1, v0, :cond_e

    move v0, v1

    .line 532
    .end local v0    # "maxScb":I
    .end local v1    # "maxScbChameleon":I
    :cond_e
    return v0
.end method

.method public initWifiServiceExt(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mContext:Landroid/content/Context;

    .line 160
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServiceExtension;->registerWifiExtBroadcastReceiver()V

    .line 161
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 162
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_uicc_simnotsupported:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/impl/WifiServiceExtension;->mUiccNotSupported:Z

    .line 163
    const-string v0, "WifiServiceExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initWifiServiceExt done mUiccNotSupported = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/lge/wifi/impl/WifiServiceExtension;->mUiccNotSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method public isGigaWifi()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 252
    const-string v1, "persist.sys.security"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public isHotspotSSIDKSC5601(Ljava/lang/StringBuilder;)Z
    .registers 5
    .param p1, "cmd"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v0, 0x0

    .line 366
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 367
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "softap set"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 368
    const-string v1, "persist.sys.hotssid.ksc5601"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 369
    const-string v0, "WifiServiceExtension"

    const-string v1, "isHotspotKSC5601 is true ==> ksc5601"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v0, 0x1

    .line 374
    :cond_29
    return v0
.end method

.method public isInternetCheckAvailable()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 348
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 349
    const-string v5, "wifi_data_continuity_enabled"

    .line 348
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4e

    move v0, v2

    .line 350
    .local v0, "isPoortNetworkEnabled":Z
    :goto_11
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_50

    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_50

    move v1, v2

    .line 351
    .local v1, "isRoaming":Z
    :goto_1e
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServiceExtension;->checkAndSetConnectivityInstance()V

    .line 352
    sget-boolean v4, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_DCF:Z

    if-eqz v4, :cond_45

    .line 353
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mCM:Landroid/net/ConnectivityManager;

    if-eqz v4, :cond_31

    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 354
    :cond_31
    sget-boolean v4, Lcom/lge/wifi/impl/WifiServiceExtension;->mUiccNotSupported:Z

    if-nez v4, :cond_41

    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_41

    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 355
    :cond_41
    if-eqz v0, :cond_45

    .line 356
    if-eqz v1, :cond_4d

    .line 357
    :cond_45
    const-string v2, "WifiServiceExtension"

    const-string v4, "isInternetCheckAvailable return false"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 361
    :cond_4d
    return v2

    .end local v0    # "isPoortNetworkEnabled":Z
    .end local v1    # "isRoaming":Z
    :cond_4e
    move v0, v3

    .line 348
    goto :goto_11

    .restart local v0    # "isPoortNetworkEnabled":Z
    :cond_50
    move v1, v3

    .line 350
    goto :goto_1e
.end method

.method public isProvisioned()Z
    .registers 2

    .prologue
    .line 276
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useMobileHotspot()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 277
    sget-boolean v0, Lcom/lge/wifi/impl/WifiServiceExtension;->mIsProvisioned:Z

    .line 280
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public isShowKTPayPopup()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 380
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 381
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 382
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 385
    :goto_25
    return v0

    :cond_26
    const-string v1, "persist.sys.ktpopup"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_25
.end method

.method public isUPlusAP(Ljava/lang/String;)Z
    .registers 7
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LGU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 264
    :cond_d
    :goto_d
    return v1

    .line 261
    :cond_e
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServiceExtension;->getSecurityType()I

    move-result v0

    .line 262
    .local v0, "security_type":I
    const-string v2, "WifiServiceExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isUPlusAP   ssid : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  getSecurityType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    sget v2, Lcom/lge/wifi/config/LgeServiceExtConstant;->MSCHAP_AP:I

    if-eq v0, v2, :cond_38

    sget v2, Lcom/lge/wifi/config/LgeServiceExtConstant;->AKA_AP:I

    if-ne v0, v2, :cond_d

    .line 265
    :cond_38
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "u+acn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_68

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "u+zone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 266
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "u+ acn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_68

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "u+ zone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 264
    :cond_68
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public isVZWMobileHotspotEnabled()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 581
    const-string v2, "wifi.lge.mhp"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 582
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiMobileHotspotIface()Lcom/lge/wifi/extension/IWifiMobileHotspot;

    move-result-object v0

    .line 583
    .local v0, "wifiMHPIfaceIface":Lcom/lge/wifi/extension/IWifiMobileHotspot;
    if-eqz v0, :cond_13

    .line 584
    invoke-interface {v0}, Lcom/lge/wifi/extension/IWifiMobileHotspot;->isMHPEnabled()Z

    move-result v1

    .line 593
    .end local v0    # "wifiMHPIfaceIface":Lcom/lge/wifi/extension/IWifiMobileHotspot;
    :cond_13
    :goto_13
    return v1

    .line 588
    :cond_14
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServiceExtension;->checkWifiManager()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 589
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    goto :goto_13

    .line 592
    :cond_21
    const-string v2, "WifiServiceExtension"

    const-string v3, "isn\'t isWifiApEnabled()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public setCallingWifiUid(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 627
    sput p1, Lcom/lge/wifi/impl/WifiServiceExtension;->sCallingWifiUid:I

    .line 628
    const-string v0, "WifiServiceExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCallingWifiUid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-void
.end method

.method public setDlnaUsing(Z)Z
    .registers 6
    .param p1, "bEnable"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 307
    if-eqz p1, :cond_32

    .line 308
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServiceExtension;->enforceAccessPermission()V

    .line 309
    const-string v0, "WifiServiceExtension"

    const-string v1, "setDlnaUsing(true) is called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :try_start_e
    const-string v0, "dhcp.dlna.using"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_5e

    .line 314
    :goto_15
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServiceExtension;->getWifiState()I

    move-result v0

    if-ne v3, v0, :cond_2a

    .line 315
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setDynamicBeaconWakeup(Z)Z

    move-result v0

    if-nez v0, :cond_29

    .line 316
    const-string v0, "WifiServiceExtension"

    const-string v1, "setDynamicBeaconWakeup is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_29
    :goto_29
    return v2

    .line 319
    :cond_2a
    const-string v0, "WifiServiceExtension"

    const-string v1, "setDlnaUsing() : Wifi is not Enabled yet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 322
    :cond_32
    const-string v0, "WifiServiceExtension"

    const-string v1, "setDlnaUsing(false) is called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :try_start_39
    const-string v0, "dhcp.dlna.using"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_40} :catch_5c

    .line 327
    :goto_40
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServiceExtension;->getWifiState()I

    move-result v0

    if-ne v3, v0, :cond_54

    .line 328
    invoke-static {v2}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setDynamicBeaconWakeup(Z)Z

    move-result v0

    if-nez v0, :cond_29

    .line 329
    const-string v0, "WifiServiceExtension"

    const-string v1, "setDynamicBeaconWakeup is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 332
    :cond_54
    const-string v0, "WifiServiceExtension"

    const-string v1, "setDlnaUsing() : Wifi is not Enabled yet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :catch_5c
    move-exception v0

    goto :goto_40

    :catch_5e
    move-exception v0

    goto :goto_15
.end method

.method public setPrepOobConnection(Z)V
    .registers 5
    .param p1, "on"    # Z

    .prologue
    .line 643
    const-string v0, "WifiServiceExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set PREP_OOB_CONNECTION value to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mPrepOobConnection:Z

    .line 645
    return-void
.end method

.method public setProvisioned(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 285
    sput-boolean p1, Lcom/lge/wifi/impl/WifiServiceExtension;->mIsProvisioned:Z

    .line 286
    return-void
.end method

.method public setSecurityType(I)V
    .registers 7
    .param p1, "secMode"    # I

    .prologue
    .line 212
    :try_start_0
    const-string v2, "persist.sys.security"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    and-int/lit8 v1, v2, 0x10

    .line 213
    .local v1, "vhtCapaField":I
    or-int v2, v1, p1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "s":Ljava/lang/String;
    const-string v2, "WifiServiceExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setSecurityType  : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v2, "persist.sys.security"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 219
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "vhtCapaField":I
    :goto_28
    return-void

    :catch_29
    move-exception v2

    goto :goto_28
.end method

.method public setVZWMobileHotspot(Z)Z
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 603
    if-eqz p1, :cond_4

    .line 619
    :cond_3
    :goto_3
    return v1

    .line 609
    :cond_4
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiMobileHotspotIface()Lcom/lge/wifi/extension/IWifiMobileHotspot;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 610
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiMobileHotspotIface()Lcom/lge/wifi/extension/IWifiMobileHotspot;

    move-result-object v0

    .line 611
    .local v0, "wifiMHPIfaceIface":Lcom/lge/wifi/extension/IWifiMobileHotspot;
    if-eqz v0, :cond_3

    .line 612
    invoke-interface {v0}, Lcom/lge/wifi/extension/IWifiMobileHotspot;->disableMobileHotspot()Z

    .line 613
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public setVhtCapabilityType(Z)V
    .registers 7
    .param p1, "vhtCapa"    # Z

    .prologue
    .line 235
    :try_start_0
    const-string v2, "persist.sys.security"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    and-int/lit8 v1, v2, 0xf

    .line 237
    .local v1, "securityField":I
    if-eqz p1, :cond_2f

    .line 238
    or-int/lit8 v2, v1, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "s":Ljava/lang/String;
    :goto_11
    const-string v3, "WifiServiceExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "setVHTCapabilityType  : "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_34

    const-string v2, "true"

    :goto_1e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v2, "persist.sys.security"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "securityField":I
    :goto_2e
    return-void

    .line 240
    .restart local v1    # "securityField":I
    :cond_2f
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_11

    .line 241
    :cond_34
    const-string v2, "false"
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    goto :goto_1e

    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "securityField":I
    :catch_37
    move-exception v2

    goto :goto_2e
.end method
