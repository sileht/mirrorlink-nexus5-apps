.class public Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;
.super Ljava/lang/Object;
.source "WifiHostapdWrapperBcm.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$wifi$impl$wifiSap$WifiSapMacFilterMode:[I = null

.field private static final HOSTAPD_ACCEPT_MAC_FILE:Ljava/lang/String; = "/data/misc/wifi/hostapd.accept"

.field private static final HOSTAPD_DENY_MAC_FILE:Ljava/lang/String; = "/data/misc/wifi/hostapd.deny"

.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiHostapdWrapperBcm"


# instance fields
.field private mAuthenticationMode:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mIsSetAuthenticationCalled:Z

.field private final mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

.field private final mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$wifi$impl$wifiSap$WifiSapMacFilterMode()[I
    .registers 3

    .prologue
    .line 45
    sget-object v0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->$SWITCH_TABLE$com$lge$wifi$impl$wifiSap$WifiSapMacFilterMode:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->values()[Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2e

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->DENY_UNLESS_IN_ACCEPT_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_2c

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->NUM_OF_MAC_FILTER_MODE:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_2a

    :goto_27
    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->$SWITCH_TABLE$com$lge$wifi$impl$wifiSap$WifiSapMacFilterMode:[I

    goto :goto_4

    :catch_2a
    move-exception v1

    goto :goto_27

    :catch_2c
    move-exception v1

    goto :goto_1e

    :catch_2e
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mhpNotiReceiver"    # Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;-><init>(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    .line 181
    iput-object p2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    .line 182
    iput-boolean v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mIsSetAuthenticationCalled:Z

    .line 183
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    .line 184
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 185
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    .line 186
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v1, "AndroidAP"

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 187
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WifiHostapdWrapperBcm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 190
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->registerBroadcastReceiver()V

    .line 191
    return-void
.end method

.method private SetEncryptionMode(Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;)Z
    .registers 11
    .param p1, "encMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    .param p2, "secMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .prologue
    .line 1327
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 1328
    .local v3, "encModeWpa":Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 1330
    .local v2, "encModeRsn":Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    sget-object v5, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v5, p2, :cond_80

    .line 1331
    move-object v3, p1

    .line 1339
    :goto_9
    const/4 v4, 0x0

    .line 1340
    .local v4, "pairwise":Ljava/lang/String;
    sget-object v5, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne v5, p1, :cond_89

    .line 1341
    const-string v4, "NO_ENCRYPTION"

    .line 1349
    :goto_10
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mhs_encryption"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1351
    if-eqz v4, :cond_56

    .line 1352
    const/4 v0, 0x0

    .line 1353
    .local v0, "enc1":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1354
    .local v1, "enc2":Ljava/lang/String;
    sget-object v5, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-eq v5, v3, :cond_32

    .line 1355
    const-string v0, "WPA"

    .line 1356
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mhs_protocol"

    const-string v7, "WPA"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1359
    :cond_32
    sget-object v5, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-eq v5, v2, :cond_45

    .line 1360
    const-string v1, "RSN"

    .line 1361
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mhs_protocol"

    const-string v7, "RSN"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1364
    :cond_45
    if-eqz v0, :cond_56

    if-eqz v1, :cond_56

    .line 1365
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mhs_protocol"

    const-string v7, "WPA RSN"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1371
    .end local v0    # "enc1":Ljava/lang/String;
    .end local v1    # "enc2":Ljava/lang/String;
    :cond_56
    const-string v5, "WifiHostapdWrapperBcm"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SetEncryptionMode:encModeWpa : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    const-string v5, "WifiHostapdWrapperBcm"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SetEncryptionMode:encModeRsn : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/4 v5, 0x1

    return v5

    .line 1332
    .end local v4    # "pairwise":Ljava/lang/String;
    :cond_80
    sget-object v5, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v5, p2, :cond_86

    .line 1333
    move-object v2, p1

    .line 1334
    goto :goto_9

    .line 1335
    :cond_86
    move-object v3, p1

    .line 1336
    move-object v2, p1

    goto :goto_9

    .line 1342
    .restart local v4    # "pairwise":Ljava/lang/String;
    :cond_89
    sget-object v5, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne v5, p1, :cond_90

    .line 1343
    const-string v4, "TKIP"

    .line 1344
    goto :goto_10

    :cond_90
    sget-object v5, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne v5, p1, :cond_98

    .line 1345
    const-string v4, "CCMP"

    .line 1346
    goto/16 :goto_10

    .line 1347
    :cond_98
    const-string v4, "TKIP CCMP"

    goto/16 :goto_10
.end method

.method static synthetic access$0(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    return-object v0
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertToWifiCfgWepKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "wepKey"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 208
    .local v0, "length":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_c

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_15

    .line 209
    :cond_c
    const-string v1, "[0-9A-Fa-f]*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 215
    .end local p1    # "wepKey":Ljava/lang/String;
    :goto_14
    return-object p1

    .line 212
    .restart local p1    # "wepKey":Ljava/lang/String;
    :cond_15
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1c

    const/16 v1, 0xd

    if-ne v0, v1, :cond_21

    .line 213
    :cond_1c
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_14

    .line 215
    :cond_21
    const/4 p1, 0x0

    goto :goto_14
.end method

.method private registerBroadcastReceiver()V
    .registers 4

    .prologue
    .line 1311
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1313
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.wifi.sap.ENABLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1314
    const-string v1, "com.lge.wifi.sap.DISABLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1315
    const-string v1, "com.lge.wifi.sap.WIFI_SAP_STATION_ASSOC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1316
    const-string v1, "com.lge.wifi.sap.WIFI_SAP_STATION_DISASSOC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1317
    const-string v1, "com.lge.wifi.sap.WIFI_SAP_DHCP_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1318
    const-string v1, "com.lge.wifi.sap.WIFI_SAP_HOSTAPD_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1319
    const-string v1, "com.lge.wifi.sap.WIFI_SAP_MAX_REACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1321
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1323
    return-void
.end method

.method private setWifiCfgHidden(Z)V
    .registers 3
    .param p1, "bHidden"    # Z

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean p1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1378
    return-void
.end method

.method private setWifiCfgSecurity(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)Z
    .registers 7
    .param p1, "authMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    .param p2, "secMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    .param p3, "encMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .prologue
    .line 1385
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v0, p2, :cond_27

    .line 1386
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_security"

    const-string v2, "OPEN"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1398
    :goto_11
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WifiSapSecurityMode secMode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const/4 v0, 0x1

    return v0

    .line 1387
    :cond_27
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v0, p2, :cond_39

    .line 1388
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_security"

    const-string v2, "WEP"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_11

    .line 1389
    :cond_39
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v0, p2, :cond_4b

    .line 1390
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_security"

    const-string v2, "WPA_PSK"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_11

    .line 1391
    :cond_4b
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v0, p2, :cond_5d

    .line 1392
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_security"

    const-string v2, "WPA2_PSK"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_11

    .line 1394
    :cond_5d
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_security"

    const-string v2, "WPA_WPA2_MIXED"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_11
.end method

.method private setWifiCfgSsid(Ljava/lang/String;)V
    .registers 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1407
    return-void
.end method

.method private setWifiCfgWepKey(ILjava/lang/String;)Z
    .registers 5
    .param p1, "index"    # I
    .param p2, "wepKey"    # Ljava/lang/String;

    .prologue
    .line 1410
    invoke-direct {p0, p2}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->convertToWifiCfgWepKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1411
    .local v0, "convertedWepKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v0, v1, p1

    .line 1412
    const/4 v1, 0x1

    return v1
.end method

.method private setWifiCfgWepKeyIndex(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 1417
    return-void
.end method

.method private setWifiCfgWpaKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "wpaKey"    # Ljava/lang/String;

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1421
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .registers 3

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1433
    return-void
.end method


# virtual methods
.method public WifiSapAutModeCovertToVZWConfig(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;)I
    .registers 4
    .param p1, "authMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .prologue
    const/4 v0, 0x0

    .line 1438
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    if-ne p1, v1, :cond_6

    .line 1448
    :cond_5
    :goto_5
    return v0

    .line 1441
    :cond_6
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->SHARED_KEY_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    if-ne p1, v1, :cond_c

    .line 1442
    const/4 v0, 0x1

    goto :goto_5

    .line 1444
    :cond_c
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->MIXED_MODE_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    if-ne p1, v1, :cond_5

    .line 1445
    const/4 v0, 0x2

    goto :goto_5
.end method

.method public WifiSapEncryptionModeCovertToVZWConfig(Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)I
    .registers 4
    .param p1, "encMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .prologue
    const/4 v0, 0x0

    .line 1454
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne p1, v1, :cond_6

    .line 1467
    :cond_5
    :goto_5
    return v0

    .line 1457
    :cond_6
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne p1, v1, :cond_c

    .line 1458
    const/4 v0, 0x1

    goto :goto_5

    .line 1460
    :cond_c
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne p1, v1, :cond_12

    .line 1461
    const/4 v0, 0x2

    goto :goto_5

    .line 1463
    :cond_12
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP_CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne p1, v1, :cond_5

    .line 1464
    const/4 v0, 0x3

    goto :goto_5
.end method

.method public WifiSapSecurityModeCovertToVZWConfig(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;)I
    .registers 4
    .param p1, "secMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .prologue
    const/4 v0, 0x0

    .line 1473
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne p1, v1, :cond_6

    .line 1489
    :cond_5
    :goto_5
    return v0

    .line 1476
    :cond_6
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne p1, v1, :cond_c

    .line 1477
    const/4 v0, 0x1

    goto :goto_5

    .line 1479
    :cond_c
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne p1, v1, :cond_12

    .line 1480
    const/4 v0, 0x2

    goto :goto_5

    .line 1482
    :cond_12
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne p1, v1, :cond_18

    .line 1483
    const/4 v0, 0x3

    goto :goto_5

    .line 1485
    :cond_18
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_WPA2_MIXED:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne p1, v1, :cond_5

    .line 1486
    const/4 v0, 0x4

    goto :goto_5
.end method

.method public WifiVZWConfigCovertToSapAuthMode()Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    .registers 5

    .prologue
    .line 1495
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 1497
    .local v1, "mSapAuthMode":Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mhs_authentication"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1499
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_1a

    .line 1500
    const-string v2, "auth_none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1501
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 1512
    :cond_1a
    :goto_1a
    return-object v1

    .line 1502
    :cond_1b
    const-string v2, "auth_shared"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1503
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->SHARED_KEY_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 1504
    goto :goto_1a

    :cond_26
    const-string v2, "wpa_psk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1505
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->SHARED_KEY_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 1506
    goto :goto_1a

    :cond_31
    const-string v2, "wpa_psk2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1507
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->SHARED_KEY_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 1508
    goto :goto_1a

    :cond_3c
    const-string v2, "wpa_wpa2_mixed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1509
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->MIXED_MODE_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    goto :goto_1a
.end method

.method public WifiVZWConfigCovertToSapEncryptionMode()Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    .registers 5

    .prologue
    .line 1517
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 1519
    .local v1, "mSapEncryptionMode":Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mhs_encryption"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1521
    .local v0, "enc":Ljava/lang/String;
    if-eqz v0, :cond_1a

    .line 1522
    const-string v2, "NO_ENCRYPTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1523
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 1534
    :cond_1a
    :goto_1a
    return-object v1

    .line 1524
    :cond_1b
    const-string v2, "TKIP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1525
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 1526
    goto :goto_1a

    :cond_26
    const-string v2, "CCMP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1527
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 1528
    goto :goto_1a

    :cond_31
    const-string v2, "TKIP CCMP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1529
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP_CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 1530
    goto :goto_1a

    .line 1531
    :cond_3c
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    goto :goto_1a
.end method

.method public WifiVZWConfigCovertToSapSecurityMode()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    .registers 5

    .prologue
    .line 1539
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 1541
    .local v0, "mSapSecurityMode":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mhs_security"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1543
    .local v1, "sec":Ljava/lang/String;
    if-eqz v1, :cond_1a

    .line 1544
    const-string v2, "NO_SECURITY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1545
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 1559
    :cond_1a
    :goto_1a
    return-object v0

    .line 1546
    :cond_1b
    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1547
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 1548
    goto :goto_1a

    :cond_26
    const-string v2, "WPA_PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1549
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 1550
    goto :goto_1a

    :cond_31
    const-string v2, "WPA2_PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1551
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 1552
    goto :goto_1a

    :cond_3c
    const-string v2, "WPA_WPA2_MIXED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1553
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_WPA2_MIXED:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 1554
    goto :goto_1a

    .line 1555
    :cond_47
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    goto :goto_1a
.end method

.method public closeSoftAP()I
    .registers 3

    .prologue
    .line 195
    const-string v0, "WifiHostapdWrapperBcm"

    const-string v1, "closeSoftAP : nothing to do..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public createSoftAP()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 220
    const-string v2, "WifiHostapdWrapperBcm"

    const-string v3, "createSoftAP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_37

    .line 224
    const-string v2, "WifiHostapdWrapperBcm"

    const-string v3, "mWifiManager setWifiAPEnabledr"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :try_start_14
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_1c} :catch_1d

    .line 237
    :cond_1c
    :goto_1c
    return v1

    .line 227
    :catch_1d
    move-exception v0

    .line 228
    .local v0, "se":Ljava/lang/SecurityException;
    const-string v2, "WifiHostapdWrapperBcm"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SecurityException : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 232
    .end local v0    # "se":Ljava/lang/SecurityException;
    :cond_37
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v2, :cond_43

    .line 233
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v2, v4}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->enableSoftAp(Z)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 237
    :cond_43
    const/4 v1, -0x1

    goto :goto_1c
.end method

.method public destroySoftAP()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 242
    const-string v2, "WifiHostapdWrapperBcm"

    const-string v3, "destroySoftAP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_3e

    .line 246
    const-string v2, "WifiHostapdWrapperBcm"

    const-string v3, "mWifiManager setWifiApEnabledr"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :try_start_13
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_1a} :catch_24

    .line 252
    :goto_1a
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v2, :cond_23

    .line 253
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v2, v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->enableSoftAp(Z)Z

    .line 263
    :cond_23
    :goto_23
    return v1

    .line 249
    :catch_24
    move-exception v0

    .line 250
    .local v0, "se":Ljava/lang/SecurityException;
    const-string v2, "WifiHostapdWrapperBcm"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SecurityException : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 258
    .end local v0    # "se":Ljava/lang/SecurityException;
    :cond_3e
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v2, :cond_4a

    .line 259
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v2, v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->enableSoftAp(Z)Z

    move-result v2

    if-nez v2, :cond_23

    .line 263
    :cond_4a
    const/4 v1, -0x1

    goto :goto_23
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 270
    :try_start_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->unregisterBroadcastReceiver()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 272
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 274
    return-void

    .line 271
    :catchall_7
    move-exception v0

    .line 272
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 273
    throw v0
.end method

.method public isEnabledSoftAp()Z
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_b

    .line 280
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getSoftApStatus()Z

    move-result v0

    .line 282
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public loadP2PDriver()I
    .registers 3

    .prologue
    .line 293
    const-string v0, "WifiHostapdWrapperBcm"

    const-string v1, "loadP2PDriver : nothing to do..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public openSoftAP()I
    .registers 3

    .prologue
    .line 301
    const-string v0, "WifiHostapdWrapperBcm"

    const-string v1, "openSoftAP : nothing to do..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public p2pAddMacFilterAllowList(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_b

    .line 308
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->addMacFilterAllowList(Ljava/lang/String;I)Z

    move-result v0

    .line 310
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public p2pAddMacFilterDenyList(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_b

    .line 315
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->addMacFilterDenyList(Ljava/lang/String;I)Z

    move-result v0

    .line 317
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public p2pDeAuthMac(Ljava/lang/String;)I
    .registers 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_e

    .line 322
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setDisassociateStation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 323
    const/4 v0, 0x0

    .line 326
    :goto_d
    return v0

    :cond_e
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public p2pGetAllAssocMac()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_b

    .line 331
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getAllAssocMacList()[Ljava/lang/String;

    move-result-object v0

    .line 333
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public p2pGetAllAssocMacVZW()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_b

    .line 340
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getAllAssocMacListVZW()Ljava/util/List;

    move-result-object v0

    .line 342
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public p2pGetAllow11B()I
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 347
    iget-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mhs_hw_mode"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "sReturnVal":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mhs_ieee_80211n"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 349
    .local v0, "ieee_mode":I
    const-string v4, "b"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 359
    :goto_22
    return v2

    .line 352
    :cond_23
    const-string v2, "g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    if-nez v0, :cond_2f

    move v2, v3

    .line 353
    goto :goto_22

    .line 355
    :cond_2f
    const-string v2, "g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    if-ne v0, v3, :cond_3b

    .line 356
    const/4 v2, 0x2

    goto :goto_22

    .line 359
    :cond_3b
    const/4 v2, -0x1

    goto :goto_22
.end method

.method public p2pGetAssocListCount()I
    .registers 4

    .prologue
    .line 363
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_25

    .line 365
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pGetAssocListCount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getAssoStaMacListCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getAssoStaMacListCount()I

    move-result v0

    .line 369
    :goto_24
    return v0

    :cond_25
    const/4 v0, -0x1

    goto :goto_24
.end method

.method public p2pGetAuthentication()I
    .registers 7

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->WifiVZWConfigCovertToSapAuthMode()Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    move-result-object v0

    .line 375
    .local v0, "authMode":Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->WifiVZWConfigCovertToSapSecurityMode()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    move-result-object v2

    .line 376
    .local v2, "secMode":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->WifiVZWConfigCovertToSapEncryptionMode()Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    move-result-object v1

    .line 379
    .local v1, "encMode":Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "p2pGetAuthentication authMode : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "p2pGetAuthentication secMode : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "p2pGetAuthentication encMode : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    if-ne v3, v0, :cond_72

    .line 384
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-eq v3, v2, :cond_54

    .line 385
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v3, v2, :cond_56

    .line 389
    :cond_54
    const/4 v3, 0x1

    .line 424
    :goto_55
    return v3

    .line 391
    :cond_56
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "p2pGetAuthentication : unkown sec mode ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_70
    const/4 v3, -0x1

    goto :goto_55

    .line 393
    :cond_72
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->SHARED_KEY_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    if-ne v3, v0, :cond_a4

    .line 397
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v3, v2, :cond_7c

    .line 401
    const/4 v3, 0x4

    goto :goto_55

    .line 403
    :cond_7c
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v3, v2, :cond_83

    .line 407
    const/16 v3, 0x80

    goto :goto_55

    .line 409
    :cond_83
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v3, v2, :cond_89

    .line 414
    const/4 v3, 0x2

    goto :goto_55

    .line 416
    :cond_89
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "p2pGetAuthentication : unkown sec mode ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 421
    :cond_a4
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "p2pGetAuthentication : unkown auth mode ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70
.end method

.method public p2pGetCountryCode()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 429
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mhs_country"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "sReturnVal":Ljava/lang/String;
    if-eqz v0, :cond_31

    .line 432
    const-string v2, "WifiHostapdWrapperBcm"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetCountryCode  ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v2, "US"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 440
    :cond_31
    :goto_31
    return v1

    .line 436
    :cond_32
    const-string v2, "FR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 437
    const/4 v1, 0x1

    goto :goto_31
.end method

.method public p2pGetEncryption()I
    .registers 7

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->WifiVZWConfigCovertToSapAuthMode()Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    move-result-object v0

    .line 451
    .local v0, "authMode":Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->WifiVZWConfigCovertToSapSecurityMode()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    move-result-object v2

    .line 452
    .local v2, "secMode":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->WifiVZWConfigCovertToSapEncryptionMode()Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    move-result-object v1

    .line 455
    .local v1, "encMode":Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "p2pGetEncryption authMode : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "p2pGetEncryption secMode : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "p2pGetEncryption encMode : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v3, v2, :cond_55

    .line 464
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "p2pGetEncryption WifiSapSecurityMode.NO_SECURITY:0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v3, 0x0

    .line 497
    :goto_54
    return v3

    .line 467
    :cond_55
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v3, v2, :cond_62

    .line 472
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "p2pGetEncryption WifiSapSecurityMode.WEP:3"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v3, 0x3

    goto :goto_54

    .line 476
    :cond_62
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne v3, v1, :cond_6f

    .line 481
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "p2pGetEncryption WifiSapEncryptionMode.TKIP:2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v3, 0x2

    goto :goto_54

    .line 484
    :cond_6f
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne v3, v1, :cond_7c

    .line 489
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "p2pGetEncryption WifiSapEncryptionMode.CCMP:4"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v3, 0x4

    goto :goto_54

    .line 493
    :cond_7c
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "p2pGetEncryption : unkown enc mode ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v3, -0x1

    goto :goto_54
.end method

.method public p2pGetFrequency()I
    .registers 5

    .prologue
    .line 608
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_frequency"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 609
    .local v0, "sReturnVal":I
    return v0
.end method

.method public p2pGetHideSSID()I
    .registers 5

    .prologue
    .line 502
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 504
    .local v0, "sReturnVal":Z
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "p2pGetHideSSID  ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    if-eqz v0, :cond_22

    .line 506
    const/4 v1, 0x1

    .line 509
    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method

.method public p2pGetMacFilterByIndex(I)Ljava/lang/String;
    .registers 3
    .param p1, "iIndex"    # I

    .prologue
    .line 514
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_b

    .line 515
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getMacFilterByIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 517
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public p2pGetMacFilterCount()I
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_b

    .line 522
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getMacFilterCount()I

    move-result v0

    .line 524
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public p2pGetMacFilterMode()I
    .registers 6

    .prologue
    .line 528
    const/4 v1, 0x0

    .line 530
    .local v1, "macFilterModeP":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v2, :cond_b

    .line 531
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getMacFilterMode()Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;

    move-result-object v1

    .line 534
    :cond_b
    const-string v2, "WifiHostapdWrapperBcm"

    const-string v3, "p2pGetMacFilterMode ()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    if-eqz v1, :cond_9c

    .line 537
    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;->getFilterMode()Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    move-result-object v0

    .line 538
    .local v0, "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    const-string v2, "WifiHostapdWrapperBcm"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "p2pGetMacFilterMode ():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-static {}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->$SWITCH_TABLE$com$lge$wifi$impl$wifiSap$WifiSapMacFilterMode()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a4

    .line 561
    const-string v2, "WifiHostapdWrapperBcm"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "p2pGetMacFilterMode not supported ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .end local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    :goto_53
    const-string v2, "WifiHostapdWrapperBcm"

    const-string v3, "p2pGetMacFilterMode (): return -1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 v2, -0x1

    :goto_5b
    return v2

    .line 544
    .restart local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    :pswitch_5c
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetMacFilterCount()I

    move-result v2

    if-nez v2, :cond_64

    .line 545
    const/4 v2, 0x0

    goto :goto_5b

    .line 550
    :cond_64
    const-string v2, "WifiHostapdWrapperBcm"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "p2pGetMacFilterMode : ACCEPT_UNLESS_IN_DENY_LIST ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 551
    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 550
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v2, 0x2

    goto :goto_5b

    .line 557
    :pswitch_80
    const-string v2, "WifiHostapdWrapperBcm"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "p2pGetMacFilterMode : DENY_LIST ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 558
    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 557
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v2, 0x1

    goto :goto_5b

    .line 565
    .end local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    :cond_9c
    const-string v2, "WifiHostapdWrapperBcm"

    const-string v3, "p2pGetMacFilterMode macFilterModeP is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 539
    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_80
    .end packed-switch
.end method

.method public p2pGetMaxClients()I
    .registers 5

    .prologue
    .line 573
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_max_client"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 575
    .local v0, "sReturnVal":I
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "p2pGetMaxClients  ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return v0
.end method

.method public p2pGetSSID()Ljava/lang/String;
    .registers 5

    .prologue
    .line 614
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 616
    .local v0, "sReturnVal":Ljava/lang/String;
    if-eqz v0, :cond_29

    .line 617
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_2b

    .line 618
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "p2pGetSSID : not supported ssid length ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_29
    const/4 v0, 0x0

    .end local v0    # "sReturnVal":Ljava/lang/String;
    :goto_2a
    return-object v0

    .line 620
    .restart local v0    # "sReturnVal":Ljava/lang/String;
    :cond_2b
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "p2pGetSSID :  ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method public p2pGetSocialChannel()I
    .registers 5

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetFrequency()I

    move-result v1

    if-nez v1, :cond_2e

    .line 585
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_2g_channel"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 590
    .local v0, "sReturnVal":I
    :goto_13
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "p2pGetSocialChannel  ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return v0

    .line 587
    .end local v0    # "sReturnVal":I
    :cond_2e
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_5g_channel"

    const/16 v3, 0x95

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "sReturnVal":I
    goto :goto_13
.end method

.method public p2pGetSoftapIsolation()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 596
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mhs_isolated"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 598
    .local v0, "sReturnVal":I
    if-eqz v0, :cond_2b

    .line 599
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "p2pGetSoftapIsolation isolated ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v1, 0x1

    .line 603
    :goto_2a
    return v1

    .line 602
    :cond_2b
    const-string v2, "WifiHostapdWrapperBcm"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "p2pGetSoftapIsolation not isolated ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method public p2pGetWEPIndex()I
    .registers 4

    .prologue
    .line 629
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_27

    .line 630
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pGetWEPIndex  ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 633
    :goto_26
    return v0

    :cond_27
    const/4 v0, -0x1

    goto :goto_26
.end method

.method public p2pGetWEPKey1()Ljava/lang/String;
    .registers 3

    .prologue
    .line 642
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_13

    .line 643
    const-string v0, "WifiHostapdWrapperBcm"

    const-string v1, "p2pGetWEPKey  [0]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 646
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public p2pGetWEPKey2()Ljava/lang/String;
    .registers 3

    .prologue
    .line 655
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_13

    .line 656
    const-string v0, "WifiHostapdWrapperBcm"

    const-string v1, "p2pGetWEPKey  [1]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 659
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public p2pGetWEPKey3()Ljava/lang/String;
    .registers 3

    .prologue
    .line 668
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_13

    .line 669
    const-string v0, "WifiHostapdWrapperBcm"

    const-string v1, "p2pGetWEPKey  [2]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 672
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public p2pGetWEPKey4()Ljava/lang/String;
    .registers 3

    .prologue
    .line 681
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_13

    .line 682
    const-string v0, "WifiHostapdWrapperBcm"

    const-string v1, "p2pGetWEPKey  [3]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 685
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public p2pGetWPAKey()Ljava/lang/String;
    .registers 4

    .prologue
    .line 690
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_27

    .line 691
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pGetWPAKey  ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 694
    :goto_26
    return-object v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public p2pMacFilterremoveAllowedList(Ljava/lang/String;)I
    .registers 5
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 713
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pMacFilterremoveAllowedList: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_23

    .line 716
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v1, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->MacFilterremoveAllowedList(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_23

    .line 717
    const/4 v0, 0x0

    .line 720
    :goto_22
    return v0

    :cond_23
    const/4 v0, -0x1

    goto :goto_22
.end method

.method public p2pMacFilterremoveDeniedList(Ljava/lang/String;)I
    .registers 5
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 726
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pMacFilterremoveDeniedList: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_23

    .line 729
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v1, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->MacFilterremoveDeniedList(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_23

    .line 730
    const/4 v0, 0x0

    .line 733
    :goto_22
    return v0

    :cond_23
    const/4 v0, -0x1

    goto :goto_22
.end method

.method public p2pMacaddracl(I)Z
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 699
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pMacaddracl: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_mac_acl"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 702
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_2d

    .line 703
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setMacaddracl(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 704
    const/4 v0, 0x1

    .line 706
    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public p2pSetAllow11B(I)I
    .registers 7
    .param p1, "iCommand"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 752
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "p2pSetAllow11B: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetFrequency()I

    move-result v1

    if-nez v1, :cond_86

    .line 755
    packed-switch p1, :pswitch_data_a0

    .line 788
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetAllow11B unknown param ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/4 v0, -0x1

    .line 794
    :goto_3a
    return v0

    .line 761
    :pswitch_3b
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_hw_mode"

    const-string v3, "b"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 762
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_ieee_80211n"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3a

    .line 769
    :pswitch_54
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_hw_mode"

    const-string v3, "g"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 770
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_ieee_80211n"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3a

    .line 777
    :pswitch_6d
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_hw_mode"

    const-string v3, "g"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 778
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_ieee_80211n"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3a

    .line 792
    :cond_86
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_hw_mode"

    const-string v3, "a"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 793
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_ieee_80211n"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3a

    .line 755
    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_54
        :pswitch_6d
    .end packed-switch
.end method

.method public p2pSetAuthentication(I)I
    .registers 5
    .param p1, "iCommand"    # I

    .prologue
    const/4 v1, 0x1

    .line 814
    if-eq v1, p1, :cond_10

    .line 815
    const/4 v0, 0x2

    if-eq v0, p1, :cond_10

    .line 816
    const/4 v0, 0x4

    if-eq v0, p1, :cond_10

    .line 817
    const/16 v0, 0x80

    if-eq v0, p1, :cond_10

    .line 818
    const/4 v0, 0x3

    if-ne v0, p1, :cond_6b

    .line 819
    :cond_10
    iput-boolean v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mIsSetAuthenticationCalled:Z

    .line 820
    iput p1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    .line 822
    sparse-switch p1, :sswitch_data_88

    .line 838
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_authentication"

    const-string v2, "wpa_wpa2_mixed"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 841
    :goto_24
    const/4 v0, 0x0

    .line 845
    :goto_25
    return v0

    .line 824
    :sswitch_26
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_authentication"

    const-string v2, "auth_none"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_24

    .line 827
    :sswitch_34
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_authentication"

    const-string v2, "auth_shared"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_24

    .line 830
    :sswitch_42
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_authentication"

    const-string v2, "wpa_psk"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 832
    :sswitch_4f
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_authentication"

    const-string v2, "wpa_psk2"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_24

    .line 835
    :sswitch_5d
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_authentication"

    const-string v2, "wpa_wpa2_mixed"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_24

    .line 843
    :cond_6b
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetAuthentication unknown auth mode ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const/4 v0, -0x1

    goto :goto_25

    .line 822
    nop

    :sswitch_data_88
    .sparse-switch
        0x1 -> :sswitch_26
        0x2 -> :sswitch_34
        0x3 -> :sswitch_5d
        0x4 -> :sswitch_42
        0x80 -> :sswitch_4f
    .end sparse-switch
.end method

.method public p2pSetCountryCode(I)I
    .registers 6
    .param p1, "iCommand"    # I

    .prologue
    const/4 v1, -0x1

    .line 854
    if-nez p1, :cond_2e

    .line 855
    const-string v0, "US"

    .line 861
    .local v0, "countryCode":Ljava/lang/String;
    :goto_5
    if-eqz v0, :cond_2d

    .line 862
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_country"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 863
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "p2pSetCountryCode : ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const/4 v1, 0x0

    .line 866
    .end local v0    # "countryCode":Ljava/lang/String;
    :cond_2d
    return v1

    .line 856
    :cond_2e
    const/4 v2, 0x1

    if-ne v2, p1, :cond_2d

    .line 857
    const-string v0, "FR"

    .line 858
    .restart local v0    # "countryCode":Ljava/lang/String;
    goto :goto_5
.end method

.method public p2pSetEncryption(I)I
    .registers 12
    .param p1, "iCommand"    # I

    .prologue
    const/16 v9, 0x80

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x4

    const/4 v4, -0x1

    .line 875
    iget-boolean v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mIsSetAuthenticationCalled:Z

    if-nez v6, :cond_12

    .line 876
    const-string v5, "WifiHostapdWrapperBcm"

    const-string v6, "p2pSetEncryption : call p2pSetAuthentication() first"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_11
    :goto_11
    return v4

    .line 879
    :cond_12
    iput-boolean v5, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mIsSetAuthenticationCalled:Z

    .line 881
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 882
    .local v0, "authMode":Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 883
    .local v3, "secMode":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 885
    .local v1, "encMode":Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    packed-switch p1, :pswitch_data_18e

    .line 977
    :pswitch_1d
    const-string v5, "WifiHostapdWrapperBcm"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "p2pSetEncryption : unkown enc mode ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 889
    :pswitch_38
    iget v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    if-ne v7, v6, :cond_a3

    .line 890
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 891
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 892
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 895
    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v6, :cond_4b

    .line 896
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_49
    if-lt v2, v8, :cond_99

    .line 900
    .end local v2    # "i":I
    :cond_4b
    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 982
    :goto_50
    const-string v6, "WifiHostapdWrapperBcm"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "p2pSetEncryption authMode : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const-string v6, "WifiHostapdWrapperBcm"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "p2pSetEncryption secMode : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const-string v6, "WifiHostapdWrapperBcm"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "p2pSetEncryption encMode : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v6, :cond_11

    .line 987
    invoke-direct {p0, v0, v3, v1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->setWifiCfgSecurity(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)Z

    .line 988
    invoke-direct {p0, v1, v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->SetEncryptionMode(Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;)Z

    move v4, v5

    .line 989
    goto/16 :goto_11

    .line 897
    .restart local v2    # "i":I
    :cond_99
    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v6, v2

    .line 896
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 902
    .end local v2    # "i":I
    :cond_a3
    const-string v5, "WifiHostapdWrapperBcm"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "p2pSetEncryption : unkown auth mode ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 903
    const-string v7, "] [ALGO_OFF]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 902
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 910
    :pswitch_c1
    iget v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    if-ne v9, v6, :cond_cc

    .line 911
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 912
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 913
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 915
    goto :goto_50

    :cond_cc
    iget v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    if-ne v8, v6, :cond_d8

    .line 916
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 917
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 918
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 919
    goto/16 :goto_50

    .line 920
    :cond_d8
    const-string v5, "WifiHostapdWrapperBcm"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "p2pSetEncryption : unkown auth mode ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 921
    const-string v7, "] [ALGO_TKIP]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 920
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 928
    :pswitch_f6
    iget v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    if-ne v7, v6, :cond_102

    .line 929
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 930
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 931
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 933
    goto/16 :goto_50

    :cond_102
    const/4 v6, 0x2

    iget v7, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    if-ne v6, v7, :cond_10f

    .line 934
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->SHARED_KEY_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 935
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 936
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 937
    goto/16 :goto_50

    .line 938
    :cond_10f
    const-string v5, "WifiHostapdWrapperBcm"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "p2pSetEncryption : unkown auth mode ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 939
    const-string v7, "] [ALGO_WEP128]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 938
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 946
    :pswitch_12d
    iget v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    if-ne v9, v6, :cond_139

    .line 947
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 948
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 949
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 951
    goto/16 :goto_50

    :cond_139
    iget v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    if-ne v8, v6, :cond_145

    .line 952
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 953
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 954
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 955
    goto/16 :goto_50

    .line 956
    :cond_145
    const-string v5, "WifiHostapdWrapperBcm"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "p2pSetEncryption : unkown auth mode ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 957
    const-string v7, "] [ALGO_AES]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 956
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 964
    :pswitch_163
    const/4 v6, 0x3

    iget v7, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    if-ne v6, v7, :cond_170

    .line 965
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 966
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_WPA2_MIXED:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 967
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP_CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 969
    goto/16 :goto_50

    .line 970
    :cond_170
    const-string v5, "WifiHostapdWrapperBcm"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "p2pSetEncryption : unkown auth mode ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 971
    const-string v7, "] [ALGO_AES]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 970
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 885
    :pswitch_data_18e
    .packed-switch 0x0
        :pswitch_38
        :pswitch_1d
        :pswitch_c1
        :pswitch_f6
        :pswitch_12d
        :pswitch_163
    .end packed-switch
.end method

.method public p2pSetFrequency(I)V
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 1191
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetFrequency: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_frequency"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1195
    return-void
.end method

.method public p2pSetHideSSID(I)I
    .registers 6
    .param p1, "iCommand"    # I

    .prologue
    .line 1002
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "p2pSetHideSSID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const/4 v1, 0x1

    if-ne v1, p1, :cond_38

    .line 1005
    const/4 v0, 0x1

    .line 1019
    .local v0, "hiddenSsid":Z
    :goto_18
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1020
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "p2pSetHideSSID : ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const/4 v1, 0x0

    return v1

    .line 1007
    .end local v0    # "hiddenSsid":Z
    :cond_38
    const/4 v0, 0x0

    .restart local v0    # "hiddenSsid":Z
    goto :goto_18
.end method

.method public p2pSetMacFilterByIndex(ILjava/lang/String;)I
    .registers 6
    .param p1, "iIndex"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1026
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetMacFilterByIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bssid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_2c

    .line 1029
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setMacFilterByIndex(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1030
    const/4 v0, 0x0

    .line 1033
    :goto_2b
    return v0

    :cond_2c
    const/4 v0, -0x1

    goto :goto_2b
.end method

.method public p2pSetMacFilterCount(I)I
    .registers 5
    .param p1, "iCount"    # I

    .prologue
    .line 1038
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetMacFilterCount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_22

    .line 1041
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setMacFilterCount(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1042
    const/4 v0, 0x0

    .line 1044
    :goto_21
    return v0

    :cond_22
    const/4 v0, -0x1

    goto :goto_21
.end method

.method public p2pSetMacFilterMode(I)I
    .registers 8
    .param p1, "iMode"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1056
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "p2pSetMacFilterMode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    packed-switch p1, :pswitch_data_be

    .line 1100
    const-string v2, "WifiHostapdWrapperBcm"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "p2pSetMacFilterMode unknown param ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_33
    :goto_33
    return v1

    .line 1063
    :pswitch_34
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 1067
    .local v0, "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    invoke-virtual {p0, v2}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetMacFilterCount(I)I

    .line 1069
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mhs_accept_file"

    const-string v5, "/data/misc/wifi/hostapd.accept"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1070
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mhs_deny_file"

    const-string v5, "/data/misc/wifi/hostapd.deny"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1104
    :goto_53
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v3, :cond_33

    .line 1105
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    new-instance v4, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;

    invoke-direct {v4, v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;)V

    invoke-virtual {v3, v4}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setMacFilterMode(Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;)Z

    move-result v3

    if-eqz v3, :cond_33

    move v1, v2

    .line 1106
    goto :goto_33

    .line 1076
    .end local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    :pswitch_66
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->DENY_UNLESS_IN_ACCEPT_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 1078
    .restart local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mhs_accept_file"

    const-string v5, "/data/misc/wifi/hostapd.accept"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1079
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mhs_deny_file"

    const-string v5, "/data/misc/wifi/hostapd.deny"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_53

    .line 1085
    .end local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    :pswitch_83
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 1087
    .restart local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mhs_accept_file"

    const-string v5, "/data/misc/wifi/hostapd.accept"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1088
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mhs_deny_file"

    const-string v5, "/data/misc/wifi/hostapd.deny"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_53

    .line 1093
    .end local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    :pswitch_a0
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->NUM_OF_MAC_FILTER_MODE:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 1095
    .restart local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mhs_accept_file"

    const-string v5, "/data/misc/wifi/hostapd.accept"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1096
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mhs_deny_file"

    const-string v5, "/data/misc/wifi/hostapd.deny"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_53

    .line 1058
    nop

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_34
        :pswitch_66
        :pswitch_83
        :pswitch_a0
    .end packed-switch
.end method

.method public p2pSetMaxAssoc(I)I
    .registers 5
    .param p1, "max_assoc_num"    # I

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_max_client"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1116
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetMaxAssoc: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_2d

    .line 1119
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setMaxNumOfClients(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1120
    const/4 v0, 0x0

    .line 1122
    :goto_2c
    return v0

    :cond_2d
    const/4 v0, -0x1

    goto :goto_2c
.end method

.method public p2pSetMaxClients(I)Z
    .registers 5
    .param p1, "num"    # I

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_max_client"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1129
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetMaxClients: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_2d

    .line 1132
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setMaxNumOfClients(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1133
    const/4 v0, 0x1

    .line 1135
    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public p2pSetSSID(Ljava/lang/String;)I
    .registers 6
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 1212
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "p2pSetSSID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_39

    .line 1219
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "p2pSetSSID : not supported ssid length ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_38
    :goto_38
    return v0

    .line 1223
    :cond_39
    if-eqz p1, :cond_38

    .line 1224
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1225
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetSSID : ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const/4 v0, 0x0

    goto :goto_38
.end method

.method public p2pSetSocialChannel(I)I
    .registers 6
    .param p1, "iCommand"    # I

    .prologue
    const/4 v3, 0x0

    .line 1145
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetSocialChannel: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetFrequency()I

    move-result v0

    if-nez v0, :cond_41

    .line 1153
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_2g_channel"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1154
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetSocialChannel : ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :goto_40
    return v3

    .line 1158
    :cond_41
    packed-switch p1, :pswitch_data_92

    .line 1164
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_channel"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1165
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetSocialChannel : ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 1160
    :pswitch_6a
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_5g_chanel"

    const/16 v2, 0x95

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1161
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetSocialChannel : ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 1158
    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_6a
    .end packed-switch
.end method

.method public p2pSetSoftapIsolation(Z)Z
    .registers 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1174
    const-string v2, "WifiHostapdWrapperBcm"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "p2pSetSoftapIsolation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    if-eqz p1, :cond_30

    .line 1177
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mhs_isolated"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1182
    :goto_23
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v2, :cond_3c

    .line 1183
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v2, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setPrivacySeparator(Z)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1186
    :goto_2f
    return v0

    .line 1180
    :cond_30
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mhs_isolated"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_23

    :cond_3c
    move v0, v1

    .line 1186
    goto :goto_2f
.end method

.method public p2pSetTxPower(I)I
    .registers 5
    .param p1, "txpower"    # I

    .prologue
    .line 1199
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetTxPower: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "transmit_power_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1203
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_2a

    .line 1204
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setTxPower(I)I

    move-result v0

    .line 1206
    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public p2pSetWEPIndex(I)I
    .registers 5
    .param p1, "iCommand"    # I

    .prologue
    .line 1237
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetWEPIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1b

    .line 1240
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->setWifiCfgWepKeyIndex(I)V

    .line 1243
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method public p2pSetWEPKey1(Ljava/lang/String;)I
    .registers 6
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1248
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "p2pSetWEPKey1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1d

    .line 1252
    invoke-direct {p0, v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->setWifiCfgWepKey(ILjava/lang/String;)Z

    .line 1256
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, -0x1

    goto :goto_1c
.end method

.method public p2pSetWEPKey2(Ljava/lang/String;)I
    .registers 5
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 1261
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetWEPKey1: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1e

    .line 1265
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->setWifiCfgWepKey(ILjava/lang/String;)Z

    .line 1266
    const/4 v0, 0x0

    .line 1269
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, -0x1

    goto :goto_1d
.end method

.method public p2pSetWEPKey3(Ljava/lang/String;)I
    .registers 5
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 1274
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetWEPKey1: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1e

    .line 1278
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->setWifiCfgWepKey(ILjava/lang/String;)Z

    .line 1279
    const/4 v0, 0x0

    .line 1282
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, -0x1

    goto :goto_1d
.end method

.method public p2pSetWEPKey4(Ljava/lang/String;)I
    .registers 5
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 1287
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetWEPKey1: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1e

    .line 1291
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->setWifiCfgWepKey(ILjava/lang/String;)Z

    .line 1292
    const/4 v0, 0x0

    .line 1295
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, -0x1

    goto :goto_1d
.end method

.method public p2pSetWPAKey(Ljava/lang/String;)I
    .registers 5
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 1301
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetWPAKey: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1d

    .line 1304
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->setWifiCfgWpaKey(Ljava/lang/String;)V

    .line 1305
    const/4 v0, 0x0

    .line 1307
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, -0x1

    goto :goto_1c
.end method

.method public p2premoveAlltheList()I
    .registers 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_b

    .line 739
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->removeAlltheList()I

    move-result v0

    .line 741
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public unloadP2PDriver()I
    .registers 3

    .prologue
    .line 1425
    const-string v0, "WifiHostapdWrapperBcm"

    const-string v1, "unloadP2PDriver : nothing to do..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    const/4 v0, 0x0

    return v0
.end method
