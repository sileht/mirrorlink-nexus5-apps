.class public Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;
.super Lcom/lge/wifi/impl/wifiSap/WifiApMonitor;
.source "WifiQsapMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiQsapMonitor"

.field private static final eventApShutdown:Ljava/lang/String; = "105"

.field private static final eventSapDisabled:Ljava/lang/String; = "101"

.field private static final eventSapEnabled:Ljava/lang/String; = "100"

.field private static final eventUnrecoverableError:Ljava/lang/String; = "104"

.field private static mThreadRunning:Z


# instance fields
.field private mQsapMonitorThread:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;

.field private final mWifiQsapApi:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 195
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mThreadRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;Landroid/content/Context;)V
    .registers 7
    .param p1, "sapHandler"    # Landroid/os/Handler;
    .param p2, "qsapApi"    # Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiApMonitor;-><init>(Landroid/os/Handler;)V

    .line 206
    iput-object p2, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mWifiQsapApi:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mQsapMonitorThread:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;

    .line 210
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$1;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$1;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;)V

    .line 223
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    return-void
.end method

.method static synthetic access$0(Z)V
    .registers 1

    .prologue
    .line 195
    sput-boolean p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mThreadRunning:Z

    return-void
.end method

.method static synthetic access$1(Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;)Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mWifiQsapApi:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;

    return-object v0
.end method

.method static synthetic access$2()Z
    .registers 1

    .prologue
    .line 195
    sget-boolean v0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mThreadRunning:Z

    return v0
.end method

.method static synthetic access$3(Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;)V
    .registers 2

    .prologue
    .line 197
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mQsapMonitorThread:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;

    return-void
.end method

.method static synthetic access$4(Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;I)V
    .registers 2

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->handleWifiApStateChanged(I)V

    return-void
.end method

.method private handleWifiApStateChanged(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 227
    const-string v0, "WifiQsapMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleWifiApStateChanged : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    packed-switch p1, :pswitch_data_38

    .line 274
    :goto_17
    :pswitch_17
    return-void

    .line 239
    :pswitch_18
    const-string v0, "WifiQsapMonitor"

    const-string v1, "handleWifiApStateChanged [MESSAGE_AP_DISABLED]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mWifiQsapApi:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->clearAssoStaMacList()V

    .line 252
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->notifySoftApDisabled()V

    goto :goto_17

    .line 256
    :pswitch_28
    const-string v0, "WifiQsapMonitor"

    const-string v1, "handleWifiApStateChanged [MESSAGE_AP_FAILED]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mWifiQsapApi:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->clearAssoStaMacList()V

    .line 269
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->notifySoftApDisabled()V

    goto :goto_17

    .line 228
    :pswitch_data_38
    .packed-switch 0xb
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_28
    .end packed-switch
.end method


# virtual methods
.method public startMonitoring()V
    .registers 3

    .prologue
    .line 278
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mThreadRunning:Z

    .line 280
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mQsapMonitorThread:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;

    if-nez v0, :cond_14

    .line 284
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mQsapMonitorThread:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;

    .line 285
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mQsapMonitorThread:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;->start()V

    .line 290
    :goto_13
    return-void

    .line 287
    :cond_14
    const-string v0, "WifiQsapMonitor"

    const-string v1, "QsapMonitorThread is already started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public stopMonitoring()V
    .registers 2

    .prologue
    .line 295
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mThreadRunning:Z

    .line 308
    return-void
.end method
