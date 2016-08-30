.class Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;
.super Ljava/lang/Object;
.source "WifiP2pExtMonitorWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisteredMonitor"
.end annotation


# instance fields
.field mMonitorId:I

.field mWifiP2pExtMonitor:Lcom/lge/wifi/p2p/WifiP2pExtMonitor;

.field final synthetic this$1:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;


# direct methods
.method constructor <init>(Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;Lcom/lge/wifi/p2p/WifiP2pExtMonitor;)V
    .registers 4
    .param p2, "wifiP2pExtMonitor"    # Lcom/lge/wifi/p2p/WifiP2pExtMonitor;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;->this$1:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;->mMonitorId:I

    .line 222
    iput-object p2, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;->mWifiP2pExtMonitor:Lcom/lge/wifi/p2p/WifiP2pExtMonitor;

    .line 223
    return-void
.end method


# virtual methods
.method setMonitorId(I)V
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 226
    iput p1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;->mMonitorId:I

    .line 227
    return-void
.end method
