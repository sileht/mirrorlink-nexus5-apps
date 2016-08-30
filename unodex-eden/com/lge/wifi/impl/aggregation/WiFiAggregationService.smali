.class public Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;
.super Lcom/lge/wifi/impl/aggregation/IWiFiAggregation$Stub;
.source "WiFiAggregationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/aggregation/WiFiAggregationService$WifiServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_AGGREGATION_CLEAR:Ljava/lang/String; = "com.android.settings.wifi.action.Clear"

.field public static final ACTION_AGGREGATION_CLICK:Ljava/lang/String; = "com.android.settings.wifi.action.ClickAP"

.field static final SECURITY_EAP:I = 0x3

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x2

.field static final SECURITY_WEP:I = 0x1

.field private static final WIFI_AGGREGATION_START:Ljava/lang/String; = "android.wifi.intent.action.WIFI_AGGREGATION_START"

.field private static final WIFI_AGGREGATION_STOP:Ljava/lang/String; = "android.wifi.intent.action.WIFI_AGGREGATION_STOP"

.field private static final WIFI_AGGREGATION_VZWAP_FOR_EAPAKA:Ljava/lang/String; = "VerizonWiFiAccess"

.field private static final WIFI_AGGREGATION_VZWAP_FOR_WISPR:Ljava/lang/String; = "VerizonWiFi"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRssi:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiaggregationaddOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/lge/wifi/impl/aggregation/IWiFiAggregation$Stub;-><init>()V

    .line 55
    const-string v0, "WiFiAggregation"

    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->TAG:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiaggregationaddOn:Z

    .line 121
    new-instance v0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService$1;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService$1;-><init>(Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    iput-object p1, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    .line 119
    return-void
.end method

.method static synthetic access$0(Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method private connectToWifi(Ljava/lang/String;)Z
    .registers 6
    .param p1, "knownSSID"    # Ljava/lang/String;

    .prologue
    .line 616
    const-string v1, "WiFiAggregation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connectToWifi :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 618
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 619
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useEAPAKAWiFiAggregation()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 621
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 622
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 623
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 627
    :goto_33
    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->connectToWifiWithConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    return v1

    .line 625
    :cond_38
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_33
.end method

.method private connectToWifiWithConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x1

    .line 638
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 640
    .local v0, "ssid":Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 641
    const-string v2, "WiFiAggregation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connectToWifiWithConfiguration "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_35

    .line 644
    const-string v2, "WiFiAggregation"

    const-string v3, "Wifi is not enabled, return false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 646
    const/4 v1, 0x0

    .line 651
    :goto_34
    return v1

    .line 649
    :cond_35
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, p1, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_34
.end method

.method protected static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private destroy()V
    .registers 3

    .prologue
    .line 483
    const-string v0, "WiFiAggregation"

    const-string v1, "destroy destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 488
    return-void
.end method

.method private getAggregationAP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 690
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useEAPAKAWiFiAggregation()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 691
    const-string v0, "VerizonWiFiAccess"

    .line 693
    :goto_8
    return-object v0

    :cond_9
    const-string v0, "VerizonWiFi"

    goto :goto_8
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .registers 3
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 429
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 430
    const/4 v0, 0x1

    .line 436
    :goto_b
    return v0

    .line 431
    :cond_c
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 432
    const/4 v0, 0x2

    goto :goto_b

    .line 433
    :cond_18
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 434
    const/4 v0, 0x3

    goto :goto_b

    .line 436
    :cond_24
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .registers 6
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 440
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_e

    move v0, v2

    .line 447
    :cond_d
    :goto_d
    return v0

    .line 443
    :cond_e
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 444
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1e
    move v0, v3

    .line 445
    goto :goto_d

    .line 447
    :cond_20
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_d

    move v0, v1

    goto :goto_d
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    .line 153
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "action":Ljava/lang/String;
    const-string v8, "WiFiAggregation"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "handleEvent :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v8, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 158
    const-string v9, "wi_fi_notifications"

    .line 157
    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 160
    .local v6, "noti":I
    if-nez v6, :cond_47

    .line 161
    const-string v8, "WiFiAggregation"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "notification is :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v8, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v9, "WIFI_AGGREGATION"

    sget v10, Lcom/lge/internal/R$drawable;->stat_notify_vzw_ap:I

    invoke-virtual {v8, v9, v10}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 163
    iput-boolean v11, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiaggregationaddOn:Z

    .line 270
    :cond_46
    :goto_46
    return-void

    .line 168
    :cond_47
    const-string v8, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 169
    invoke-direct {p0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->isAutoDetectionAvailable()Z

    move-result v8

    if-eqz v8, :cond_46

    .line 170
    invoke-direct {p0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->updateAPState()V

    goto :goto_46

    .line 172
    :cond_59
    const-string v8, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 173
    const-string v8, "WiFiAggregation"

    const-string v9, "SUPPLICANT_STATE_CHANGED_ACTION"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v8, "newState"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/SupplicantState;

    .line 176
    .local v5, "new_supplicant_state":Landroid/net/wifi/SupplicantState;
    if-eqz v5, :cond_82

    .line 177
    sget-object v8, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v8, v5, :cond_46

    .line 178
    sget-object v8, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v8, v5, :cond_46

    .line 179
    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_46

    .line 184
    :cond_82
    const-string v8, "WiFiAggregation"

    const-string v9, "[AggregationService],SUPPLICANT_STATE_CHANGED_ACTION null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 187
    .end local v5    # "new_supplicant_state":Landroid/net/wifi/SupplicantState;
    :cond_8a
    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_119

    .line 188
    const-string v8, "WiFiAggregation"

    const-string v9, "NETWORK_STATE_CHANGED_ACTION"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v8, "networkInfo"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 191
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_110

    .line 192
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v8, v9, :cond_107

    .line 193
    const-string v8, "WiFiAggregation"

    const-string v9, "NetworkInfo.State.CONNECTED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v8, "wifiInfo"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiInfo;

    .line 196
    .local v7, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v7, :cond_107

    .line 197
    const-string v8, "WiFiAggregation"

    const-string v9, "null != wifiInfo"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "connectedSsid":Ljava/lang/String;
    const-string v8, "WiFiAggregation"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "connectedSsid "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-eqz v1, :cond_107

    .line 202
    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->getAggregationAP()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_107

    .line 203
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.lge.wifi.impl.aggregation.start"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v3, "in":Landroid/content/Intent;
    iget-object v8, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 205
    iget-object v8, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 206
    const-string v8, "WiFiAggregation"

    const-string v9, "sendBroadcast WIFI_AGGREGATION_SERVER_START"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v1    # "connectedSsid":Ljava/lang/String;
    .end local v3    # "in":Landroid/content/Intent;
    .end local v7    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_107
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_46

    .line 215
    :cond_110
    const-string v8, "WiFiAggregation"

    const-string v9, "[AggregationService],NETWORK_STATE_CHANGED_ACTION null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_46

    .line 218
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_119
    const-string v8, "android.wifi.intent.action.WIFI_AGGREGATION_START"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13b

    .line 219
    const-string v8, "WiFiAggregation"

    const-string v9, "WIFI_AGGREGATION_START"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v8, "networkInfo"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 222
    .restart local v4    # "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_46

    .line 223
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_46

    .line 225
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_13b
    const-string v8, "android.wifi.intent.action.WIFI_AGGREGATION_STOP"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_157

    .line 226
    const-string v8, "WiFiAggregation"

    const-string v9, "WIFI_AGGREGATION_STOP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v8, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v9, "WIFI_AGGREGATION"

    sget v10, Lcom/lge/internal/R$drawable;->stat_notify_vzw_ap:I

    invoke-virtual {v8, v9, v10}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 229
    iput-boolean v11, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiaggregationaddOn:Z

    goto/16 :goto_46

    .line 230
    :cond_157
    const-string v8, "com.android.settings.wifi.action.ClickAP"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17e

    .line 231
    const-string v8, "WiFiAggregation"

    const-string v9, "ACTION_AGGREGATION_CLICK"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->disconnectAP()Z

    .line 233
    invoke-direct {p0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->getAggregationAP()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->connectToWifi(Ljava/lang/String;)Z

    .line 235
    iget-object v8, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v9, "WIFI_AGGREGATION"

    sget v10, Lcom/lge/internal/R$drawable;->stat_notify_vzw_ap:I

    invoke-virtual {v8, v9, v10}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 236
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiaggregationaddOn:Z

    goto/16 :goto_46

    .line 247
    :cond_17e
    const-string v8, "com.android.settings.wifi.action.Clear"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19a

    .line 248
    const-string v8, "WiFiAggregation"

    const-string v9, "ACTION_AGGREGATION_CLEAR"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v8, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v9, "WIFI_AGGREGATION"

    sget v10, Lcom/lge/internal/R$drawable;->stat_notify_vzw_ap:I

    invoke-virtual {v8, v9, v10}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 251
    iput-boolean v11, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiaggregationaddOn:Z

    goto/16 :goto_46

    .line 260
    :cond_19a
    const-string v8, "com.lge.wifi.impl.aggregation.end"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_46

    .line 261
    const-string v8, "WiFiAggregation"

    const-string v9, "WIFI_AGGREGATION_SERVER_END"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v8, 0x0

    :try_start_1aa
    invoke-direct {p0, v8}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->wifiaggregationaddOnOffNotification(Z)V

    .line 264
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->wifiaggregationShowResult(Landroid/content/Intent;)V
    :try_end_1b0
    .catch Landroid/os/RemoteException; {:try_start_1aa .. :try_end_1b0} :catch_1b2

    goto/16 :goto_46

    .line 266
    :catch_1b2
    move-exception v2

    .line 267
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_46
.end method

.method private isAutoDetectionAvailable()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 518
    const/4 v0, 0x0

    .line 520
    .local v0, "bResult":Z
    iget-object v1, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 522
    const-string v2, "wifi_auto_connect_vzw_ap"

    .line 520
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_18

    .line 523
    const-string v1, "WiFiAggregation"

    const-string v2, "isAutoDetectionAvailable true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v0, 0x1

    .line 526
    :cond_18
    return v0
.end method

.method private updateAPState()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 328
    const-string v5, "WiFiAggregation"

    const-string v6, "[NEZZIMOM], updateAPState"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v5, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 330
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v5, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 331
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v1, :cond_3e

    .line 332
    const-string v5, "WiFiAggregation"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Profiled AP exists"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3e

    .line 334
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_38
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4b

    .line 388
    :cond_3e
    if-eqz v4, :cond_4a

    .line 389
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_44
    :goto_44
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_112

    .line 409
    :cond_4a
    :goto_4a
    return-void

    .line 334
    :cond_4b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 335
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v6, "WiFiAggregation"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[NEZZIMOM], WifiConfiguration :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v6, :cond_82

    .line 339
    const/4 v6, 0x2

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 343
    :cond_6e
    :goto_6e
    if-eqz v4, :cond_109

    .line 344
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_74
    :goto_74
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_8a

    .line 380
    const-string v6, "WiFiAggregation"

    const-string v7, "[NEZZIMOM], not find any configured APs in for-loop "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 340
    :cond_82
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v6, v10, :cond_6e

    .line 341
    const/4 v6, 0x0

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_6e

    .line 344
    :cond_8a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 345
    .local v3, "result":Landroid/net/wifi/ScanResult;
    if-eqz v0, :cond_d7

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_d7

    .line 347
    invoke-virtual {p0, v0, v3}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z

    move-result v7

    if-eqz v7, :cond_c0

    .line 348
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 349
    iget-object v7, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->getAggregationAP()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 354
    const/4 v7, 0x1

    :try_start_b7
    invoke-direct {p0, v7}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->wifiaggregationaddOnOffNotification(Z)V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_b7 .. :try_end_ba} :catch_bb

    goto :goto_4a

    .line 356
    :catch_bb
    move-exception v2

    .line 357
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_74

    .line 367
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_c0
    const-string v7, "WiFiAggregation"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "---------result ssid 2: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 370
    :cond_d7
    if-nez v0, :cond_e8

    .line 371
    const-string v7, "WiFiAggregation"

    const-string v8, "[NEZZIMOM], config is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_e0
    const-string v7, "WiFiAggregation"

    const-string v8, "--------- config or config.SSID is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 372
    :cond_e8
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v7, :cond_f4

    .line 373
    const-string v7, "WiFiAggregation"

    const-string v8, "[NEZZIMOM], config.ssid is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    .line 375
    :cond_f4
    const-string v7, "WiFiAggregation"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[NEZZIMOM], config:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    .line 382
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_109
    const-string v6, "WiFiAggregation"

    const-string v7, "[NEZZIMOM], scan result is null "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    .line 389
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_112
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 391
    .restart local v3    # "result":Landroid/net/wifi/ScanResult;
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_44

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_44

    .line 392
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v7, "[IBSS]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 396
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->getAggregationAP()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 398
    const-string v6, "WiFiAggregation"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "---------result ssid 3: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v6, 0x1

    :try_start_151
    invoke-direct {p0, v6}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->wifiaggregationaddOnOffNotification(Z)V
    :try_end_154
    .catch Landroid/os/RemoteException; {:try_start_151 .. :try_end_154} :catch_156

    goto/16 :goto_4a

    .line 403
    :catch_156
    move-exception v2

    .line 404
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_44
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 6
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v3, 0x0

    .line 273
    const-string v0, "WiFiAggregation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateConnectionState "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_2c

    .line 276
    const-string v0, "WiFiAggregation"

    const-string v1, "OBTAINING_IPADDR PAUSE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_20
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_34

    .line 287
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_2b
    :goto_2b
    return-void

    .line 278
    :cond_2c
    const-string v0, "WiFiAggregation"

    const-string v1, "ELSE RESUME"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 288
    :cond_34
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_40

    .line 289
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState SCANNING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 290
    :cond_40
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_4c

    .line 291
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState CONNECTING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 292
    :cond_4c
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_58

    .line 293
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState AUTHENTICATING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 294
    :cond_58
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_64

    .line 295
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState OBTAINING_IPADDR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 296
    :cond_64
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_7b

    .line 297
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "WIFI_AGGREGATION"

    sget v2, Lcom/lge/internal/R$drawable;->stat_notify_vzw_ap:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 300
    iput-boolean v3, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiaggregationaddOn:Z

    goto :goto_2b

    .line 301
    :cond_7b
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_92

    .line 302
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState CAPTIVE_PORTAL_CHECK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "WIFI_AGGREGATION"

    sget v2, Lcom/lge/internal/R$drawable;->stat_notify_vzw_ap:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 305
    iput-boolean v3, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiaggregationaddOn:Z

    goto :goto_2b

    .line 306
    :cond_92
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_9e

    .line 307
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState SUSPENDED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 308
    :cond_9e
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_aa

    .line 309
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState DISCONNECTING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 310
    :cond_aa
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_b7

    .line 311
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 312
    :cond_b7
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_2b

    .line 313
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b
.end method

.method private updateWifiState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 324
    const-string v0, "WiFiAggregation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateWifiState"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void
.end method

.method private wifiaggregationShowResult(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0xfa0

    .line 531
    const-string v2, "aggregation_result"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "sExtra":Ljava/lang/String;
    const-string v2, "WiFiAggregation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wifiaggregationShowResult"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    if-eqz v1, :cond_46

    .line 534
    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 535
    invoke-direct {p0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->getAggregationAP()Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "ap_name":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 545
    .end local v0    # "ap_name":Ljava/lang/String;
    :cond_46
    :goto_46
    return-void

    .line 539
    :cond_47
    const-string v2, "FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 540
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    const-string v3, "Failed to connect to Wi-Fi"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_46
.end method

.method private wifiaggregationaddOnOffNotification(Z)V
    .registers 10
    .param p1, "isOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 548
    const/4 v2, 0x0

    .line 551
    .local v2, "notification":Landroid/app/Notification;
    invoke-direct {p0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->isAutoDetectionAvailable()Z

    move-result v4

    if-nez v4, :cond_a

    .line 608
    :goto_9
    return-void

    .line 555
    :cond_a
    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 556
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_60

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WIFI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 557
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_60

    .line 558
    const-string v4, "WiFiAggregation"

    const-string v5, "AP is connected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 560
    .local v3, "winfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_60

    .line 562
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->getAggregationAP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 563
    const-string v4, "WiFiAggregation"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AP ssid"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 569
    .end local v3    # "winfo":Landroid/net/wifi/WifiInfo;
    :cond_60
    iget-boolean v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiaggregationaddOn:Z

    if-eqz v4, :cond_6c

    .line 570
    const-string v4, "WiFiAggregation"

    const-string v5, "mWifiaggregationaddOn ==true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 575
    :cond_6c
    if-eqz p1, :cond_d9

    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_d9

    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_d9

    .line 576
    iput-boolean v6, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiaggregationaddOn:Z

    .line 577
    new-instance v2, Landroid/app/Notification;

    .end local v2    # "notification":Landroid/app/Notification;
    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 579
    .restart local v2    # "notification":Landroid/app/Notification;
    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 581
    const-string v5, "wifi_aggregation_audio"

    .line 579
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 584
    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 586
    const-string v5, "wifi_aggregation_vibration"

    .line 584
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 591
    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.wifi.action.ClickAP"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v7, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 593
    .local v0, "contentintentclick":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/app/Notification;->when:J

    .line 594
    sget v4, Lcom/lge/internal/R$drawable;->stat_notify_vzw_ap:I

    iput v4, v2, Landroid/app/Notification;->icon:I

    .line 595
    const/4 v4, 0x2

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 596
    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 597
    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    sget v6, Lcom/lge/internal/R$string;->sp_vzw_network_avail_NORMAL:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 598
    iget-object v6, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    sget v7, Lcom/lge/internal/R$string;->sp_tapto_connectto_wifi_NOTMAL:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 597
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 600
    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v5, "WIFI_AGGREGATION"

    sget v6, Lcom/lge/internal/R$drawable;->stat_notify_vzw_ap:I

    .line 601
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 600
    invoke-virtual {v4, v5, v6, v2, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_9

    .line 604
    .end local v0    # "contentintentclick":Landroid/app/PendingIntent;
    :cond_d9
    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v5, "WIFI_AGGREGATION"

    sget v6, Lcom/lge/internal/R$drawable;->stat_notify_vzw_ap:I

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 605
    iput-boolean v7, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiaggregationaddOn:Z

    .line 606
    const-string v4, "WiFiAggregation"

    const-string v5, "wifiaggregationaddOnOffNotification cancel"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9
.end method


# virtual methods
.method public disconnectAP()Z
    .registers 8

    .prologue
    .line 656
    iget-object v3, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 657
    .local v2, "wifiConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_52

    .line 659
    const-string v3, "WiFiAggregation"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "size of wifiConfigList: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 666
    const/4 v3, 0x1

    .line 668
    :goto_2b
    return v3

    .line 660
    :cond_2c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 661
    .local v1, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    const-string v4, "WiFiAggregation"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "remove wifi configuration: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 664
    .local v0, "netId":I
    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v4, v0, v5}, Landroid/net/wifi/WifiManager;->disable(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_24

    .line 668
    .end local v0    # "netId":I
    .end local v1    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_52
    const/4 v3, 0x0

    goto :goto_2b
.end method

.method public enable()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 492
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mFilter:Landroid/content/IntentFilter;

    .line 494
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.wifi.intent.action.WIFI_AGGREGATION_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.wifi.intent.action.WIFI_AGGREGATION_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.wifi.action.ClickAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.wifi.action.Clear"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lge.wifi.impl.aggregation.end"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 509
    const-string v0, "WiFiAggregation"

    const-string v1, "enable enable "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-direct {p0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->isAutoDetectionAvailable()Z

    .line 515
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->destroy()V

    .line 478
    invoke-super {p0}, Lcom/lge/wifi/impl/aggregation/IWiFiAggregation$Stub;->finalize()V

    .line 480
    return-void
.end method

.method public init()Z
    .registers 3

    .prologue
    .line 131
    const-string v0, "WiFiAggregation"

    const-string v1, "[Aggregation] WiFiAggregationService Init!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1e

    .line 133
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 134
    const-string v0, "WiFiAggregation"

    const-string v1, "[Aggregation init ] mWifiManager.initialize!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1e
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_35

    .line 138
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    .line 139
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 138
    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 140
    const-string v0, "WiFiAggregation"

    const-string v1, "[Aggregation init] mConnectivityManager!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_35
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_4c

    .line 144
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    .line 145
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 144
    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 146
    const-string v0, "WiFiAggregation"

    const-string v1, "[Aggregation init] mNotificationManager!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_4c
    const/4 v0, 0x1

    return v0
.end method

.method update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z
    .registers 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 412
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 413
    invoke-static {p1}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    invoke-static {p2}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v3

    if-ne v2, v3, :cond_1e

    .line 414
    iget v2, p2, Landroid/net/wifi/ScanResult;->level:I

    iput v2, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mRssi:I

    .line 417
    :cond_1e
    iget v2, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mRssi:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2d

    .line 418
    const-string v1, "WiFiAggregation"

    const-string v2, "out of range"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_2c
    return v0

    .line 420
    :cond_2d
    if-eqz p1, :cond_3b

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v2, v1, :cond_3b

    .line 421
    const-string v1, "WiFiAggregation"

    const-string v2, "wificonfiguration disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :cond_3b
    move v0, v1

    .line 424
    goto :goto_2c
.end method
