.class Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiP2pExtMonitorWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonitorThread"
.end annotation


# instance fields
.field private final mWifiMonitorSingleton:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;

.field private final mWifiP2pExtNative:Lcom/lge/wifi/p2p/WifiP2pExtNative;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/p2p/WifiP2pExtNative;Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;)V
    .registers 4
    .param p1, "wifiP2pExtNative"    # Lcom/lge/wifi/p2p/WifiP2pExtNative;
    .param p2, "wifiP2pExtMonitorWorkerSingleton"    # Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;

    .prologue
    .line 333
    const-string v0, "P2pExtMonWorker"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 334
    iput-object p1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$MonitorThread;->mWifiP2pExtNative:Lcom/lge/wifi/p2p/WifiP2pExtNative;

    .line 335
    iput-object p2, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$MonitorThread;->mWifiMonitorSingleton:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;

    .line 336
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 341
    :cond_0
    iget-object v1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$MonitorThread;->mWifiP2pExtNative:Lcom/lge/wifi/p2p/WifiP2pExtNative;

    invoke-virtual {v1}, Lcom/lge/wifi/p2p/WifiP2pExtNative;->waitForEvent()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "eventStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$MonitorThread;->mWifiMonitorSingleton:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;

    # invokes: Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->dispatchEvent(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->access$0(Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    const-string v1, "P2pExtMonWorker"

    const-string v2, "Disconnecting from the supplicant, no more events"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$MonitorThread;->mWifiP2pExtNative:Lcom/lge/wifi/p2p/WifiP2pExtNative;

    invoke-virtual {v1}, Lcom/lge/wifi/p2p/WifiP2pExtNative;->disconnectToSupplicant()V

    .line 356
    return-void
.end method
