.class public Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
.super Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;
.source "WiFiOffloadingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$Scanner;,
        Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;,
        Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiAuToDialogRunnable;,
        Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDialogRunnable;,
        Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDisableThread;,
        Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiEnableThread;
    }
.end annotation


# static fields
.field private static final ABOVE_UI_42:Z

.field private static final CLASSNAME_WIFI_SETTINGS_AUTO_CONNECT_DIALOG:Ljava/lang/String; = "com.android.settings.wifi.WifiOffloadingAutoConnectNoti"

.field private static final CLASSNAME_WIFI_SETTINGS_AUTO_CONNECT_DIALOG_ABOVE_UI42:Ljava/lang/String; = "com.lge.wifisettings.WifiOffloadingAutoConnectNoti"

.field private static final CLASSNAME_WIFI_SETTINGS_DIALOG:Ljava/lang/String; = "com.android.settings.wifi.WifiOffloadingDialog"

.field private static final CLASSNAME_WIFI_SETTINGS_DIALOG_ABOVE_UI42:Ljava/lang/String; = "com.lge.wifisettings.WifiOffloadingDialog"

.field private static final PACKAGENAME_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final PACKAGENAME_SETTINGS_ABOVE_UI42:Ljava/lang/String; = "com.lge.wifisettings"

.field static final SECURITY_EAP:I = 0x3

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x2

.field static final SECURITY_WEP:I = 0x1

.field private static final WIFI_AUTO_DIALOG_DELAYED_MS:I = 0x0

.field private static final WIFI_DIALOG_DELAYED_MS:I = 0x7d0

.field private static mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;


# instance fields
.field private final EVT_CHECK_SCANN:I

.field private final TAG:Ljava/lang/String;

.field private hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private final mHandler:Landroid/os/Handler;

.field private mLooper:Landroid/os/Looper;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanCount:I

.field private final mWifiAuToDialogRunnable:Ljava/lang/Runnable;

.field private final mWifiDialogRunnable:Ljava/lang/Runnable;

.field private mWifiDisableThread:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDisableThread;

.field private mWifiEnableThread:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiEnableThread;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private misWifiAPOn:Z

.field private misWifiOn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 62
    sget v0, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    .line 61
    :goto_6
    sput-boolean v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->ABOVE_UI_42:Z

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    .line 89
    return-void

    .line 62
    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;-><init>()V

    .line 48
    const-string v0, "WiFiOffloadingService"

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mHandler:Landroid/os/Handler;

    .line 72
    iput-boolean v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->misWifiOn:Z

    .line 73
    iput-boolean v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->misWifiAPOn:Z

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->EVT_CHECK_SCANN:I

    .line 83
    iput-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mLooper:Landroid/os/Looper;

    .line 85
    iput v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mScanCount:I

    .line 92
    new-instance v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDialogRunnable;

    invoke-direct {v0, p0, v2}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDialogRunnable;-><init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDialogRunnable;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiDialogRunnable:Ljava/lang/Runnable;

    .line 93
    new-instance v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiAuToDialogRunnable;

    invoke-direct {v0, p0, v2}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiAuToDialogRunnable;-><init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiAuToDialogRunnable;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiAuToDialogRunnable:Ljava/lang/Runnable;

    .line 146
    new-instance v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$1;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$1;-><init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    iput-object p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    .line 135
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    invoke-direct {v0, p0, v2}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;-><init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    .line 144
    return-void
.end method

.method static synthetic access$0(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1()Z
    .registers 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->ABOVE_UI_42:Z

    return v0
.end method

.method static synthetic access$2(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)Landroid/net/wifi/WifiManager;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Landroid/net/wifi/WifiManager;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method static synthetic access$5(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Landroid/os/Looper;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method static synthetic access$6(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    return-void
.end method

.method static synthetic access$7(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    return-object v0
.end method

.method private destroy()V
    .registers 3

    .prologue
    .line 871
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->pause()V

    .line 872
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 877
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->setWifiOffloadOngoing(Z)V

    .line 878
    return-void
.end method

.method private enforceAccessPermission()V
    .registers 4

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "wifiOffloadingService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    return-void
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .registers 3
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 769
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 770
    const/4 v0, 0x1

    .line 776
    :goto_b
    return v0

    .line 771
    :cond_c
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 772
    const/4 v0, 0x2

    goto :goto_b

    .line 773
    :cond_18
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 774
    const/4 v0, 0x3

    goto :goto_b

    .line 776
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

    .line 780
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_e

    move v0, v2

    .line 787
    :cond_d
    :goto_d
    return v0

    .line 783
    :cond_e
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 784
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1e
    move v0, v3

    .line 785
    goto :goto_d

    .line 787
    :cond_20
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_d

    move v0, v1

    goto :goto_d
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 530
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 533
    iget-object v5, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 534
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v4, :cond_1f

    .line 535
    const-string v5, "WiFiOffloadingService"

    const-string v6, "SCAN_RESULTS_AVAILABLE_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :goto_1b
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->updateAPState()V

    .line 579
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_1e
    :goto_1e
    return-void

    .line 537
    .restart local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_1f
    const-string v5, "WiFiOffloadingService"

    const-string v6, "[NEZZIMOM],SCAN_RESULTS_AVAILABLE_ACTION null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :try_start_26
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->finalize()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_1b

    .line 540
    :catch_2a
    move-exception v1

    .line 541
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1b

    .line 549
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_2f
    const-string v5, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 550
    const-string v5, "WiFiOffloadingService"

    const-string v6, "SUPPLICANT_STATE_CHANGED_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v5, "newState"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SupplicantState;

    .line 553
    .local v3, "new_supplicant_state":Landroid/net/wifi/SupplicantState;
    sget-object v5, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v5, v3, :cond_1e

    .line 554
    sget-object v5, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v5, v3, :cond_1e

    .line 555
    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_1e

    .line 558
    .end local v3    # "new_supplicant_state":Landroid/net/wifi/SupplicantState;
    :cond_56
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 559
    const-string v5, "WiFiOffloadingService"

    const-string v6, "NETWORK_STATE_CHANGED_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-string v5, "networkInfo"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 566
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1e

    .line 567
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_1e
.end method

.method private updateAPState()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 662
    const-string v7, "WiFiOffloadingService"

    const-string v8, "[NEZZIMOM], updateAPState"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v7, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 664
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v7, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    .line 666
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v3, 0x0

    .line 667
    .local v3, "founded":Z
    const/4 v4, 0x0

    .line 668
    .local v4, "not_find":Z
    if-eqz v1, :cond_1bb

    .line 669
    const-string v7, "WiFiOffloadingService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Profiled AP exists"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1a9

    .line 671
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_ae

    .line 718
    iget v7, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mScanCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mScanCount:I

    .line 719
    const-string v7, "WiFiOffloadingService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[NEZZIMOM], founded: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", not_find: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 720
    const-string v9, ", mScanCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mScanCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 719
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    if-nez v3, :cond_a7

    if-eqz v4, :cond_a7

    iget v7, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mScanCount:I

    const/4 v8, 0x3

    if-le v7, v8, :cond_a7

    .line 722
    const-string v7, "WiFiOffloadingService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[NEZZIMOM], out of range :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const-string v7, "WiFiOffloadingService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[NEZZIMOM],out of range with profiled APs , not_find :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :try_start_a1
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->finalize()V

    .line 727
    const/4 v7, 0x0

    iput v7, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mScanCount:I
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_a7} :catch_1a3

    .line 733
    :cond_a7
    :goto_a7
    if-eqz v3, :cond_ab

    .line 734
    iput v12, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mScanCount:I

    .line 736
    :cond_ab
    const/4 v3, 0x0

    .line 737
    const/4 v4, 0x0

    .line 757
    :goto_ad
    return-void

    .line 671
    :cond_ae
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 672
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v8, "WiFiOffloadingService"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[NEZZIMOM], WifiConfiguration :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v8, :cond_e6

    .line 676
    const/4 v8, 0x2

    iput v8, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 681
    :cond_d1
    :goto_d1
    if-eqz v6, :cond_19a

    .line 682
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_d7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_ee

    .line 705
    :goto_dd
    const-string v8, "WiFiOffloadingService"

    const-string v9, "[NEZZIMOM], not find any configured APs in for-loop "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 677
    :cond_e6
    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d1

    .line 678
    iput v12, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_d1

    .line 682
    :cond_ee
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 684
    .local v5, "result":Landroid/net/wifi/ScanResult;
    const-string v9, "WiFiOffloadingService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[NEZZIMOM], scan result SSID: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string v9, "WiFiOffloadingService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[NEZZIMOM], scan result BSSID: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string v9, "WiFiOffloadingService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[NEZZIMOM], scan result capabilities: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 687
    iget-object v11, v5, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 686
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const-string v9, "WiFiOffloadingService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[NEZZIMOM], scan result level: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v5, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const-string v9, "WiFiOffloadingService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[NEZZIMOM], scan result frequency: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v5, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {p0, v0, v5}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z

    move-result v9

    if-eqz v9, :cond_181

    .line 692
    const-string v8, "WiFiOffloadingService"

    .line 693
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[NEZZIMOM], found profiled AP from scan result. level : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 694
    iget v10, v5, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 693
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 692
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v3, 0x1

    .line 696
    goto/16 :goto_dd

    .line 699
    :cond_181
    const-string v9, "WiFiOffloadingService"

    .line 700
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[NEZZIMOM], not find any configured APs from scan result. level : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 701
    iget v11, v5, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 700
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 699
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v4, 0x1

    goto/16 :goto_d7

    .line 708
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    :cond_19a
    const-string v8, "WiFiOffloadingService"

    const-string v9, "[NEZZIMOM], scan result is null "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 728
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :catch_1a3
    move-exception v2

    .line 729
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_a7

    .line 739
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1a9
    const-string v7, "WiFiOffloadingService"

    const-string v8, "AP does not exists"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :try_start_1b0
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->finalize()V
    :try_end_1b3
    .catch Ljava/lang/Throwable; {:try_start_1b0 .. :try_end_1b3} :catch_1b5

    goto/16 :goto_ad

    .line 742
    :catch_1b5
    move-exception v2

    .line 743
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_ad

    .line 749
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1bb
    const-string v7, "WiFiOffloadingService"

    const-string v8, "Configured AP does not exists"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :try_start_1c2
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->finalize()V
    :try_end_1c5
    .catch Ljava/lang/Throwable; {:try_start_1c2 .. :try_end_1c5} :catch_1c7

    goto/16 :goto_ad

    .line 752
    :catch_1c7
    move-exception v2

    .line 753
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_ad
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 8
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 582
    const-string v1, "WiFiOffloadingService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateConnectionState "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_22

    .line 584
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->pause()V

    .line 650
    :cond_21
    :goto_21
    return-void

    .line 588
    :cond_22
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_46

    .line 589
    const-string v1, "WiFiOffloadingService"

    const-string v2, "OBTAINING_IPADDR PAUSE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->pause()V

    .line 601
    :goto_32
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_53

    .line 602
    const-string v1, "WiFiOffloadingService"

    const-string v2, "updateConnectionState IDLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :try_start_3d
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->finalize()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_21

    .line 605
    :catch_41
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_21

    .line 592
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_46
    const-string v1, "WiFiOffloadingService"

    const-string v2, "ELSE RESUME"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->resume()V

    goto :goto_32

    .line 608
    :cond_53
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_5f

    .line 609
    const-string v1, "WiFiOffloadingService"

    const-string v2, "updateConnectionState SCANNING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 610
    :cond_5f
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_6b

    .line 611
    const-string v1, "WiFiOffloadingService"

    const-string v2, "updateConnectionState CONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 612
    :cond_6b
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_77

    .line 613
    const-string v1, "WiFiOffloadingService"

    const-string v2, "updateConnectionState AUTHENTICATING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 614
    :cond_77
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_83

    .line 615
    const-string v1, "WiFiOffloadingService"

    const-string v2, "updateConnectionState OBTAINING_IPADDR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 616
    :cond_83
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_a9

    .line 617
    const-string v1, "WiFiOffloadingService"

    const-string v2, "updateConnectionState CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mScanCount:I

    .line 619
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisAutoConnect()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 620
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->destroy()V

    goto :goto_21

    .line 622
    :cond_9b
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->destroy()V

    .line 623
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiAuToDialogRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_21

    .line 625
    :cond_a9
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_b6

    .line 626
    const-string v1, "WiFiOffloadingService"

    const-string v2, "updateConnectionState SUSPENDED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 627
    :cond_b6
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_cc

    .line 628
    const-string v1, "WiFiOffloadingService"

    const-string v2, "updateConnectionState DISCONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :try_start_c1
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->finalize()V
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_c4} :catch_c6

    goto/16 :goto_21

    .line 631
    :catch_c6
    move-exception v0

    .line 632
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_21

    .line 634
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_cc
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_e2

    .line 635
    const-string v1, "WiFiOffloadingService"

    const-string v2, "updateConnectionState DISCONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :try_start_d7
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->finalize()V
    :try_end_da
    .catch Ljava/lang/Throwable; {:try_start_d7 .. :try_end_da} :catch_dc

    goto/16 :goto_21

    .line 638
    :catch_dc
    move-exception v0

    .line 639
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_21

    .line 641
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_e2
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_21

    .line 642
    const-string v1, "WiFiOffloadingService"

    const-string v2, "updateConnectionState FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :try_start_ed
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->finalize()V
    :try_end_f0
    .catch Ljava/lang/Throwable; {:try_start_ed .. :try_end_f0} :catch_f2

    goto/16 :goto_21

    .line 645
    :catch_f2
    move-exception v0

    .line 646
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_21
.end method

.method private updateWifiState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 653
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1d

    .line 654
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->resume()V

    .line 658
    :goto_8
    const-string v0, "WiFiOffloadingService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateWifiState"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return-void

    .line 656
    :cond_1d
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->pause()V

    goto :goto_8
.end method


# virtual methods
.method public disableWifi()V
    .registers 3

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 431
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_13

    .line 432
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 436
    :cond_13
    new-instance v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDisableThread;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDisableThread;-><init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiDisableThread:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDisableThread;

    .line 437
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiDisableThread:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDisableThread;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDisableThread;->start()V

    .line 438
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->setWifiOffloadOngoing(Z)V

    .line 439
    return-void
.end method

.method public disableWifioffloadTimerReminder()V
    .registers 4

    .prologue
    .line 911
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 913
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 914
    const-string v1, "wifi_offloading_timer_reminder"

    const/4 v2, 0x0

    .line 913
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 915
    return-void
.end method

.method public disable_background()Z
    .registers 3

    .prologue
    .line 286
    const-string v0, "WiFiOffloadingService"

    const-string v1, "[W Offloading] diable_background"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 288
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->disableWifi()V

    .line 291
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->pause()V

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public enable()Z
    .registers 5

    .prologue
    .line 248
    const-string v0, "WiFiOffloadingService"

    const-string v1, "[W Offloading] enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 262
    const-string v0, "WiFiOffloadingService"

    const-string v1, "start wifioffloading activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiDialogRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public enableWifi()V
    .registers 4

    .prologue
    .line 419
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_10

    .line 420
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 422
    :cond_10
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 423
    .local v0, "isWifiEnabled":Z
    const-string v1, "WiFiOffloadingService"

    const-string v2, "enableWifi"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 427
    return-void
.end method

.method public enable_background()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 271
    const-string v0, "WiFiOffloadingService"

    const-string v1, "[W Offloading] enable_background"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 275
    const/4 v0, 0x1

    :try_start_c
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->setWifiOffloadingStart(I)V

    .line 276
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->wifiEnable()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_13

    .line 281
    :goto_12
    return v2

    .line 278
    :catch_13
    move-exception v0

    const-string v0, "WiFiOffloadingService"

    const-string v1, "enable_background error"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 858
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisWifiOn()Z

    move-result v0

    if-nez v0, :cond_9

    .line 859
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->disableWifi()V

    .line 862
    :cond_9
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->destroy()V

    .line 866
    invoke-super {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->finalize()V

    .line 868
    return-void
.end method

.method public getAutoAP_ssid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, "ssid":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 848
    .local v1, "winfo":Landroid/net/wifi/WifiInfo;
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 849
    if-eqz v1, :cond_12

    .line 851
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 854
    :goto_11
    return-object v2

    :cond_12
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public getWifiOffloadOngoing()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 982
    const-string v2, "wifi.lge.offloading.ongoing"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 983
    .local v0, "OffloadOngoing":Z
    const-string v2, "WiFiOffloadingService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[NEZZIMOM] getWifiOffloadOngoing() : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    if-eqz v0, :cond_1e

    .line 986
    const/4 v1, 0x1

    .line 988
    :cond_1e
    return v1
.end method

.method public getWifiOffloadingStart()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 970
    const-string v0, "WiFiOffloadingService"

    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[W Offloading] getWifiOffloadingStart"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 972
    iget-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 973
    const-string v3, "Wifi_offloading_start"

    .line 972
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 971
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 970
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 976
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 977
    const-string v1, "Wifi_offloading_start"

    .line 976
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getisAutoConnect()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 522
    iget-object v3, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 523
    const-string v4, "wifi_networks_available_auto_connect"

    .line 522
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 524
    .local v0, "noti":I
    const-string v3, "WiFiOffloadingService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getisAutoConnect : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v3, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 526
    const-string v4, "wifi_networks_available_auto_connect"

    .line 525
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_31

    :goto_30
    return v1

    :cond_31
    move v1, v2

    goto :goto_30
.end method

.method public getisAutoOn()Z
    .registers 3

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 502
    const-string v0, "WiFiOffloadingService"

    const-string v1, "getisAutoOn => getAutoConnect() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method public getisNotifyMe()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 482
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 483
    iget-object v3, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 484
    const-string v4, "com.lge.settings.wifi.wifiOffloadingNotifyMe"

    .line 483
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 485
    .local v0, "noti":I
    const-string v3, "WiFiOffloadingService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getisNotifyMe : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    if-ne v1, v0, :cond_28

    .line 491
    :goto_27
    return v1

    .line 488
    :cond_28
    if-nez v0, :cond_2c

    move v1, v2

    .line 489
    goto :goto_27

    :cond_2c
    move v1, v2

    .line 491
    goto :goto_27
.end method

.method public getisWifiAPOn()Z
    .registers 2

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 461
    iget-boolean v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->misWifiAPOn:Z

    return v0
.end method

.method public getisWifiOn()Z
    .registers 4

    .prologue
    .line 448
    const-string v0, "WiFiOffloadingService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getisWifiOn"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->misWifiOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 450
    iget-boolean v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->misWifiOn:Z

    return v0
.end method

.method public init()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    const-string v1, "WiFiOffloadingService"

    const-string v4, "[W Offloading] WiFiOffloadingService Init!!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 157
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1c

    .line 158
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 161
    :cond_1c
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_2c

    .line 163
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 162
    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 166
    :cond_2c
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getWifiOffloadOngoing()I

    move-result v1

    if-ne v1, v3, :cond_3b

    .line 167
    const-string v1, "WiFiOffloadingService"

    const-string v3, "[W Offloading] WifiOffloading is going, so do not offloading"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 243
    :goto_3a
    return v1

    .line 170
    :cond_3b
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 171
    invoke-virtual {p0, v3}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->setisWifiOn(Z)V

    .line 177
    :goto_46
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getWifiOffloadingStart()I

    move-result v1

    if-ne v1, v3, :cond_59

    .line 178
    const-string v1, "WiFiOffloadingService"

    const-string v3, "[W Offloading] return"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 179
    goto :goto_3a

    .line 174
    :cond_55
    invoke-virtual {p0, v2}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->setisWifiOn(Z)V

    goto :goto_46

    .line 182
    :cond_59
    const-string v1, "wifi.lge.mhp"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 183
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useMobileHotspot()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 184
    sget-object v1, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    if-nez v1, :cond_71

    .line 185
    invoke-static {}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->getMobileHotspotServiceProxy()Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v1

    sput-object v1, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    .line 187
    :cond_71
    sget-object v1, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->isMHPEnabled()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 193
    :try_start_79
    const-string v1, "WiFiOffloadingService"

    const-string v4, "[W Offloading] MHP or WP2P on in init()"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_80} :catch_9d

    move v1, v2

    .line 194
    goto :goto_3a

    .line 200
    :cond_82
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 206
    :try_start_8a
    const-string v1, "WiFiOffloadingService"

    const-string v3, "[W Offloading] MHP or WP2P on in init()"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_91} :catch_93

    move v1, v2

    .line 207
    goto :goto_3a

    .line 209
    :catch_93
    move-exception v1

    const-string v1, "WiFiOffloadingService"

    const-string v3, "[W Offloading] MHP or WP2P on in init err()"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 210
    goto :goto_3a

    .line 199
    :catch_9d
    move-exception v1

    .line 215
    :cond_9e
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->isTethered()Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 216
    const-string v1, "WiFiOffloadingService"

    const-string v3, "USB or Bluetooth tethering is on. So return!."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 217
    goto :goto_3a

    .line 220
    :cond_ad
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 221
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_d6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "WIFI"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 222
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v4, :cond_d6

    .line 223
    invoke-virtual {p0, v3}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->setisWifiAPOn(Z)V

    .line 225
    const-string v1, "WiFiOffloadingService"

    const-string v3, "Offloading do not process because WiFi is already connected!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 226
    goto/16 :goto_3a

    .line 229
    :cond_d6
    invoke-virtual {p0, v2}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->setisWifiAPOn(Z)V

    .line 233
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisWifiOn()Z

    move-result v1

    if-nez v1, :cond_ef

    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisAutoOn()Z

    move-result v1

    if-nez v1, :cond_ef

    .line 234
    const-string v1, "WiFiOffloadingService"

    const-string v3, "[W Offloading] no noti popup"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 235
    goto/16 :goto_3a

    .line 238
    :cond_ef
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisWifiOn()Z

    move-result v1

    if-eqz v1, :cond_105

    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisNotifyMe()Z

    move-result v1

    if-nez v1, :cond_105

    .line 239
    const-string v1, "WiFiOffloadingService"

    const-string v3, "[W Offloading] no noti popup"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 240
    goto/16 :goto_3a

    :cond_105
    move v1, v3

    .line 243
    goto/16 :goto_3a
.end method

.method public isOffloadingReminder_on()I
    .registers 4

    .prologue
    .line 903
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 904
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 905
    const-string v1, "wifi_offloading_reminder"

    const/4 v2, 0x0

    .line 904
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isOffloadingTimer_on()Z
    .registers 5

    .prologue
    .line 889
    const/4 v0, 0x0

    .line 890
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 891
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 892
    const-string v2, "wifi_offloading_timer_reminder"

    const/4 v3, 0x0

    .line 891
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 892
    const/4 v2, 0x1

    .line 891
    if-ne v1, v2, :cond_16

    .line 893
    const/4 v0, 0x1

    .line 898
    :goto_15
    return v0

    .line 896
    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isTethered()Z
    .registers 15

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 997
    iget-object v9, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    .line 998
    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 997
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 999
    .local v2, "cm":Landroid/net/ConnectivityManager;
    if-nez v2, :cond_f

    .line 1024
    :goto_e
    return v7

    .line 1003
    :cond_f
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 1004
    .local v6, "tethered":[Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 1005
    .local v1, "Usbtetherable":[Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, "Bluetoothtetherable":[Ljava/lang/String;
    array-length v11, v6

    move v10, v7

    :goto_1d
    if-lt v10, v11, :cond_27

    .line 1023
    const-string v8, "WiFiOffloadingService"

    const-string v9, "USB/Bluetooth Tethering is disabled!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1007
    :cond_27
    aget-object v3, v6, v10

    .local v3, "o":Ljava/lang/String;
    move-object v5, v3

    .line 1008
    check-cast v5, Ljava/lang/String;

    .line 1009
    .local v5, "s":Ljava/lang/String;
    array-length v12, v1

    move v9, v7

    :goto_2e
    if-lt v9, v12, :cond_38

    .line 1016
    array-length v12, v0

    move v9, v7

    :goto_32
    if-lt v9, v12, :cond_4c

    .line 1007
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_1d

    .line 1009
    :cond_38
    aget-object v4, v1, v9

    .line 1010
    .local v4, "regex":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_49

    .line 1011
    const-string v7, "WiFiOffloadingService"

    const-string v9, "Now USB Tethering is enabled!"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 1012
    goto :goto_e

    .line 1009
    :cond_49
    add-int/lit8 v9, v9, 0x1

    goto :goto_2e

    .line 1016
    .end local v4    # "regex":Ljava/lang/String;
    :cond_4c
    aget-object v4, v0, v9

    .line 1017
    .restart local v4    # "regex":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5d

    .line 1018
    const-string v7, "WiFiOffloadingService"

    const-string v9, "Now Bluetooth Tethering is enabled!"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 1019
    goto :goto_e

    .line 1016
    :cond_5d
    add-int/lit8 v9, v9, 0x1

    goto :goto_32
.end method

.method public isWifiAPOn()Z
    .registers 4

    .prologue
    .line 465
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_10

    .line 467
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 466
    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 469
    :cond_10
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 477
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_2e

    const/4 v1, 0x1

    :goto_2d
    return v1

    :cond_2e
    const/4 v1, 0x0

    goto :goto_2d
.end method

.method public isWifiOffloadingEnabled()I
    .registers 4

    .prologue
    .line 882
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 883
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 884
    const-string v1, "Wifi_offloading_reminder"

    const/4 v2, 0x0

    .line 883
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public resetWifioffloadTimerReminder(I)Z
    .registers 5
    .param p1, "check"    # I

    .prologue
    .line 926
    const/4 v0, 0x0

    .line 928
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 929
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 930
    const-string v2, "wifi_offloading_timer_reminder"

    .line 929
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 932
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->setAutoOn(Z)V

    .line 939
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->setWifiOffloadOngoing(Z)V

    .line 940
    return v0
.end method

.method public setAutoOn(Z)V
    .registers 5
    .param p1, "value"    # Z

    .prologue
    .line 510
    const-string v0, "WiFiOffloadingService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAutoOn : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    if-eqz p1, :cond_23

    .line 512
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 513
    const-string v1, "wifi_networks_available_auto_on"

    const/4 v2, 0x1

    .line 512
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 518
    :goto_22
    return-void

    .line 515
    :cond_23
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 516
    const-string v1, "wifi_networks_available_auto_on"

    const/4 v2, 0x0

    .line 515
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_22
.end method

.method public setWifiOffloadOngoing(Z)V
    .registers 4
    .param p1, "OffloadOngoing"    # Z

    .prologue
    .line 945
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 946
    if-eqz p1, :cond_14

    .line 947
    const-string v0, "WiFiOffloadingService"

    const-string v1, "[NEZZIMOM] setOffloadOngoing >> 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const-string v0, "wifi.lge.offloading.ongoing"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    :goto_13
    return-void

    .line 953
    :cond_14
    const-string v0, "WiFiOffloadingService"

    const-string v1, "[NEZZIMOM] setOffloadOngoing >> 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string v0, "wifi.lge.offloading.ongoing"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public setWifiOffloadingStart(I)V
    .registers 5
    .param p1, "WiFiOffloadingStart"    # I

    .prologue
    .line 962
    const-string v0, "WiFiOffloadingService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[W Offloading] setWifiOffloadingStart"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 964
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Wifi_offloading_start"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 966
    return-void
.end method

.method public setisWifiAPOn(Z)V
    .registers 5
    .param p1, "value"    # Z

    .prologue
    .line 454
    const-string v0, "WiFiOffloadingService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setisWifiAPOn "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 456
    iput-boolean p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->misWifiAPOn:Z

    .line 457
    return-void
.end method

.method public setisWifiOn(Z)V
    .registers 5
    .param p1, "value"    # Z

    .prologue
    .line 442
    const-string v0, "WiFiOffloadingService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setisWifiOn"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 444
    iput-boolean p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->misWifiOn:Z

    .line 445
    return-void
.end method

.method public start(Z)Z
    .registers 7
    .param p1, "persistSetting"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 302
    const-string v0, "WiFiOffloadingService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[W Offloading] start "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 308
    invoke-virtual {p0, v2}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->setWifiOffloadOngoing(Z)V

    .line 310
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_32

    .line 311
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 324
    :cond_32
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->isTethered()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 325
    const-string v0, "WiFiOffloadingService"

    const-string v2, "USB or Bluetooth tethering is on. So return!."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 342
    :goto_40
    return v0

    .line 330
    :cond_41
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisWifiOn()Z

    move-result v0

    if-nez v0, :cond_59

    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisAutoOn()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 331
    const-string v0, "WiFiOffloadingService"

    const-string v1, "[W Offloading] wifi off auto on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enable_background()Z

    move v0, v2

    .line 333
    goto :goto_40

    .line 336
    :cond_59
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisWifiOn()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisNotifyMe()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 337
    const-string v0, "WiFiOffloadingService"

    const-string v1, "[W Offloading] wifi on noti on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enable()Z

    move v0, v2

    .line 339
    goto :goto_40

    :cond_71
    move v0, v1

    .line 342
    goto :goto_40
.end method

.method public start_background(Z)Z
    .registers 4
    .param p1, "persistSetting"    # Z

    .prologue
    .line 347
    const-string v0, "WiFiOffloadingService"

    const-string v1, "[W Offloading] start_background"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 354
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisAutoOn()Z

    move-result v0

    if-nez v0, :cond_19

    .line 355
    const-string v0, "WiFiOffloadingService"

    const-string v1, "[W Offloading] wifi off auto off"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v0, 0x0

    .line 360
    :goto_18
    return v0

    .line 359
    :cond_19
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enable_background()Z

    .line 360
    const/4 v0, 0x1

    goto :goto_18
.end method

.method public stopWifioffloadTimer()V
    .registers 4

    .prologue
    .line 919
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enforceAccessPermission()V

    .line 920
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.settings.wifi.WifiOffloadingTimeReceiver.stop"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 921
    return-void
.end method

.method update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z
    .registers 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 761
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 762
    invoke-static {p1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    invoke-static {p2}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v0, v1, :cond_1a

    .line 763
    const/4 v0, 0x1

    .line 765
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public wifiEnable()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 401
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    .line 402
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 406
    new-instance v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiEnableThread;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiEnableThread;-><init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiEnableThread:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiEnableThread;

    .line 407
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiEnableThread:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiEnableThread;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiEnableThread;->start()V

    .line 415
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->resume()V

    .line 416
    return-void
.end method
