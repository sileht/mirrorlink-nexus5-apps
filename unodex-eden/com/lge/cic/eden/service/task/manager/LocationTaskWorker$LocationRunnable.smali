.class Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker$LocationRunnable;
.super Ljava/lang/Object;
.source "LocationTaskWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocationRunnable"
.end annotation


# instance fields
.field private location:Landroid/location/Location;

.field final synthetic this$0:Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;


# direct methods
.method public constructor <init>(Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;)V
    .registers 3

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker$LocationRunnable;->this$0:Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker$LocationRunnable;->location:Landroid/location/Location;

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;Landroid/location/Location;)V
    .registers 3
    .param p2, "location"    # Landroid/location/Location;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker$LocationRunnable;->this$0:Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p0, p2}, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker$LocationRunnable;->setLocation(Landroid/location/Location;)Z

    .line 122
    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker$LocationRunnable;->location:Landroid/location/Location;

    return-object v0
.end method

.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 150
    new-instance v1, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;

    iget-object v2, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker$LocationRunnable;->this$0:Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;

    # getter for: Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->access$1(Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;-><init>(Landroid/content/Context;)V

    .line 152
    .local v1, "locationPOImanager":Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;
    :try_start_c
    iget-object v2, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker$LocationRunnable;->location:Landroid/location/Location;

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->setLocationPOI(Landroid/location/Location;)V

    .line 153
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_17} :catch_1f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_17} :catch_2f
    .catchall {:try_start_c .. :try_end_17} :catchall_50

    .line 159
    # getter for: Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->access$0()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    :goto_1e
    return-void

    .line 154
    :catch_1f
    move-exception v0

    .line 155
    .local v0, "e":Ljava/io/IOException;
    :try_start_20
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "POI location is null"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_50

    .line 159
    # getter for: Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->access$0()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1e

    .line 156
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2f
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_30
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LocationTaskWorker is interrupted : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_30 .. :try_end_48} :catchall_50

    .line 159
    # getter for: Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->access$0()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1e

    .line 158
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_50
    move-exception v2

    .line 159
    # getter for: Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->access$0()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 160
    throw v2
.end method

.method public setLocation(Landroid/location/Location;)Z
    .registers 12
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const-wide v8, -0x3f70c80000000000L    # -999.0

    const/4 v4, 0x0

    .line 124
    if-nez p1, :cond_10

    .line 125
    sget-object v5, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v6, "location is null "

    invoke-virtual {v5, v6}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 142
    :goto_f
    return v4

    .line 128
    :cond_10
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 129
    .local v0, "latitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 131
    .local v2, "longitude":D
    sget-object v5, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "latitude or longitude is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 133
    cmpl-double v5, v0, v8

    if-eqz v5, :cond_3e

    cmpl-double v5, v2, v8

    if-nez v5, :cond_5d

    .line 134
    :cond_3e
    sget-object v5, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "latitude or longitude is -999 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_f

    .line 137
    :cond_5d
    # getter for: Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->access$0()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_6f

    .line 138
    sget-object v5, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v6, "LocationTaskWorker is working..... "

    invoke-virtual {v5, v6}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_f

    .line 141
    :cond_6f
    iput-object p1, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker$LocationRunnable;->location:Landroid/location/Location;

    .line 142
    const/4 v4, 0x1

    goto :goto_f
.end method
