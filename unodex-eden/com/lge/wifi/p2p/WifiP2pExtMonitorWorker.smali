.class public Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker;
.super Ljava/lang/Object;
.source "WifiP2pExtMonitorWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$MonitorThread;,
        Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "P2pExtMonWorker"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public lostSupplicantConnection()V
    .registers 2

    .prologue
    .line 33
    # getter for: Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->sInstance:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;
    invoke-static {}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->access$1()Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->lostSupplicantConnection()V

    .line 34
    return-void
.end method

.method public registerMonitor(Lcom/lge/wifi/p2p/WifiP2pExtMonitor;)I
    .registers 3
    .param p1, "wifiP2pExtMonitor"    # Lcom/lge/wifi/p2p/WifiP2pExtMonitor;

    .prologue
    .line 21
    # getter for: Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->sInstance:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;
    invoke-static {}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->access$1()Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->registerMonitor(Lcom/lge/wifi/p2p/WifiP2pExtMonitor;)I

    move-result v0

    return v0
.end method

.method public startMonitoring(I)V
    .registers 3
    .param p1, "monitorId"    # I

    .prologue
    .line 25
    # getter for: Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->sInstance:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;
    invoke-static {}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->access$1()Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->startMonitoring(I)V

    .line 26
    return-void
.end method

.method public stopMonitoring(I)V
    .registers 3
    .param p1, "monitorId"    # I

    .prologue
    .line 29
    # getter for: Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->sInstance:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;
    invoke-static {}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->access$1()Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->stopMonitoring(I)V

    .line 30
    return-void
.end method
