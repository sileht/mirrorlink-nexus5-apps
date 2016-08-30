.class Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList$RegMonitorIdComparator;
.super Ljava/lang/Object;
.source "WifiP2pExtMonitorWorker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegMonitorIdComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;


# direct methods
.method private constructor <init>(Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;)V
    .registers 2

    .prologue
    .line 315
    iput-object p1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList$RegMonitorIdComparator;->this$2:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList$RegMonitorIdComparator;)V
    .registers 3

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList$RegMonitorIdComparator;-><init>(Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;)I
    .registers 5
    .param p1, "regMonitorA"    # Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;
    .param p2, "regMonitorB"    # Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;

    .prologue
    .line 317
    iget v0, p1, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;->mMonitorId:I

    iget v1, p2, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;->mMonitorId:I

    if-le v0, v1, :cond_8

    .line 318
    const/4 v0, 0x1

    .line 322
    :goto_7
    return v0

    .line 319
    :cond_8
    iget v0, p1, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;->mMonitorId:I

    iget v1, p2, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;->mMonitorId:I

    if-ne v0, v1, :cond_10

    .line 320
    const/4 v0, 0x0

    goto :goto_7

    .line 322
    :cond_10
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;

    check-cast p2, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList$RegMonitorIdComparator;->compare(Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;)I

    move-result v0

    return v0
.end method
