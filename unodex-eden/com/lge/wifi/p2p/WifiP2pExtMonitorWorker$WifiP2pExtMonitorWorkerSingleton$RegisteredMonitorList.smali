.class Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;
.super Ljava/lang/Object;
.source "WifiP2pExtMonitorWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisteredMonitorList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList$RegMonitorIdComparator;
    }
.end annotation


# instance fields
.field private mMonitorId:I

.field private mRegMonitorIdC:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList$RegMonitorIdComparator;

.field private mRegisteredMonitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;


# direct methods
.method constructor <init>(Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;)V
    .registers 4

    .prologue
    .line 235
    iput-object p1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->this$1:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mMonitorId:I

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mRegisteredMonitors:Ljava/util/List;

    .line 238
    new-instance v0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList$RegMonitorIdComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList$RegMonitorIdComparator;-><init>(Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList$RegMonitorIdComparator;)V

    iput-object v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mRegMonitorIdC:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList$RegMonitorIdComparator;

    .line 239
    return-void
.end method

.method private getMonitorId()I
    .registers 3

    .prologue
    .line 251
    const/4 v0, -0x1

    .line 252
    .local v0, "monitorId":I
    iget v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mMonitorId:I

    .end local v0    # "monitorId":I
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mMonitorId:I

    .line 253
    .restart local v0    # "monitorId":I
    return v0
.end method

.method private trimMonitorId()V
    .registers 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mRegisteredMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mMonitorId:I

    .line 248
    :goto_b
    return-void

    .line 245
    :cond_c
    iget-object v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mRegisteredMonitors:Ljava/util/List;

    iget-object v1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mRegMonitorIdC:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList$RegMonitorIdComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 246
    iget-object v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mRegisteredMonitors:Ljava/util/List;

    iget-object v1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mRegisteredMonitors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;

    iget v0, v0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;->mMonitorId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mMonitorId:I

    goto :goto_b
.end method


# virtual methods
.method add(Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;)I
    .registers 4
    .param p1, "wifiP2pExtMonitor"    # Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;

    .prologue
    .line 257
    iget-object v1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mRegisteredMonitors:Ljava/util/List;

    monitor-enter v1

    .line 258
    :try_start_3
    invoke-direct {p0}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->getMonitorId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;->setMonitorId(I)V

    .line 259
    iget-object v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mRegisteredMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_13

    .line 261
    iget v0, p1, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;->mMonitorId:I

    return v0

    .line 257
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method containsListener(Lcom/lge/wifi/p2p/WifiP2pExtMonitor;)I
    .registers 6
    .param p1, "wifiP2pExtMonitor"    # Lcom/lge/wifi/p2p/WifiP2pExtMonitor;

    .prologue
    const/4 v2, -0x1

    .line 300
    iget-object v3, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mRegisteredMonitors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_a

    .line 312
    :cond_9
    :goto_9
    return v2

    .line 304
    :cond_a
    iget-object v3, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mRegisteredMonitors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 305
    .local v1, "regMonitorIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;>;"
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 306
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;

    .line 307
    .local v0, "regMonitor":Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;
    iget-object v3, v0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;->mWifiP2pExtMonitor:Lcom/lge/wifi/p2p/WifiP2pExtMonitor;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 308
    iget v2, v0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;->mMonitorId:I

    goto :goto_9
.end method

.method get(I)Lcom/lge/wifi/p2p/WifiP2pExtMonitor;
    .registers 6
    .param p1, "monitorId"    # I

    .prologue
    const/4 v2, 0x0

    .line 284
    iget-object v3, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mRegisteredMonitors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_a

    .line 296
    :cond_9
    :goto_9
    return-object v2

    .line 288
    :cond_a
    iget-object v3, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mRegisteredMonitors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 289
    .local v1, "regMonitorIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;>;"
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 290
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;

    .line 291
    .local v0, "regMonitor":Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;
    iget v3, v0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;->mMonitorId:I

    if-ne v3, p1, :cond_10

    .line 292
    iget-object v2, v0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;->mWifiP2pExtMonitor:Lcom/lge/wifi/p2p/WifiP2pExtMonitor;

    goto :goto_9
.end method

.method remove(I)V
    .registers 6
    .param p1, "monitorId"    # I

    .prologue
    .line 265
    iget-object v3, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mRegisteredMonitors:Ljava/util/List;

    monitor-enter v3

    .line 266
    :try_start_3
    iget-object v2, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mRegisteredMonitors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_d

    .line 267
    monitor-exit v3

    .line 281
    :goto_c
    return-void

    .line 270
    :cond_d
    iget-object v2, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mRegisteredMonitors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 271
    .local v1, "regMonitorIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;>;"
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_21

    .line 279
    :goto_19
    invoke-direct {p0}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->trimMonitorId()V

    .line 265
    monitor-exit v3

    goto :goto_c

    .end local v1    # "regMonitorIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;>;"
    :catchall_1e
    move-exception v2

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2

    .line 272
    .restart local v1    # "regMonitorIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;>;"
    :cond_21
    :try_start_21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;

    .line 273
    .local v0, "regMonitor":Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;
    iget v2, v0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;->mMonitorId:I

    if-ne v2, p1, :cond_13

    .line 274
    iget-object v2, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->mRegisteredMonitors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_1e

    goto :goto_19
.end method
