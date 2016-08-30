.class public abstract Lcom/lge/wifi/p2p/WifiP2pExtMonitor;
.super Ljava/lang/Object;
.source "WifiP2pExtMonitor.java"


# instance fields
.field private mMonitorId:I

.field protected mMonitoring:Z

.field protected final mTag:Ljava/lang/String;

.field private mWifiP2pExtMonitorWorker:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker;

.field protected final mWifiP2pExtNative:Lcom/lge/wifi/p2p/WifiP2pExtNative;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/p2p/WifiP2pExtNative;Ljava/lang/String;)V
    .registers 4
    .param p1, "wifiP2pExtNative"    # Lcom/lge/wifi/p2p/WifiP2pExtNative;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mTag:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mWifiP2pExtNative:Lcom/lge/wifi/p2p/WifiP2pExtNative;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mMonitoring:Z

    .line 20
    new-instance v0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mWifiP2pExtMonitorWorker:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mMonitorId:I

    .line 22
    return-void
.end method


# virtual methods
.method public abstract dispatchEvent(Ljava/lang/String;)Z
.end method

.method public lostSupplicantConnection()V
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mWifiP2pExtMonitorWorker:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker;

    invoke-virtual {v0}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker;->lostSupplicantConnection()V

    .line 53
    return-void
.end method

.method public registerMonitor()Z
    .registers 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mWifiP2pExtMonitorWorker:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker;

    invoke-virtual {v0, p0}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker;->registerMonitor(Lcom/lge/wifi/p2p/WifiP2pExtMonitor;)I

    move-result v0

    iput v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mMonitorId:I

    .line 27
    iget v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mMonitorId:I

    if-gez v0, :cond_15

    .line 28
    iget-object v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mTag:Ljava/lang/String;

    const-string v1, "registerMonitor is Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v0, 0x0

    .line 32
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public startMonitoring()V
    .registers 3

    .prologue
    .line 36
    iget v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mMonitorId:I

    if-gez v0, :cond_c

    .line 37
    iget-object v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mTag:Ljava/lang/String;

    const-string v1, "startMonitoring is Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :goto_b
    return-void

    .line 40
    :cond_c
    iget-object v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mWifiP2pExtMonitorWorker:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker;

    iget v1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mMonitorId:I

    invoke-virtual {v0, v1}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker;->startMonitoring(I)V

    goto :goto_b
.end method

.method public stopMonitoring()V
    .registers 3

    .prologue
    .line 44
    iget v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mMonitorId:I

    if-gez v0, :cond_c

    .line 45
    iget-object v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mTag:Ljava/lang/String;

    const-string v1, "stopMonitoring is Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_b
    return-void

    .line 48
    :cond_c
    iget-object v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mWifiP2pExtMonitorWorker:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker;

    iget v1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mMonitorId:I

    invoke-virtual {v0, v1}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker;->stopMonitoring(I)V

    goto :goto_b
.end method

.method public abstract supplicantConnection(Z)V
.end method
