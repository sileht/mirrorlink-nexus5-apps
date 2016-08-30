.class public Lcom/lge/cic/eden/service/task/SyncTask;
.super Ljava/lang/Object;
.source "SyncTask.java"

# interfaces
.implements Lcom/lge/cic/eden/service/task/Task;


# instance fields
.field databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

.field private logger:Lcom/lge/cic/eden/utils/Logger;

.field mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bridge"    # Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-class v0, Lcom/lge/cic/eden/service/task/SyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/service/task/SyncTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 16
    iput-object v1, p0, Lcom/lge/cic/eden/service/task/SyncTask;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    .line 17
    iput-object v1, p0, Lcom/lge/cic/eden/service/task/SyncTask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 19
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/SyncTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "SyncTask instance creation"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    invoke-direct {v0, p1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/cic/eden/service/task/SyncTask;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    .line 21
    iput-object p2, p0, Lcom/lge/cic/eden/service/task/SyncTask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 22
    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/SyncTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "Complete SyncTask"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public processing(Lcom/lge/cic/eden/db/type/TaskInfo;)V
    .registers 7
    .param p1, "taskInfo"    # Lcom/lge/cic/eden/db/type/TaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 26
    iget-object v2, p0, Lcom/lge/cic/eden/service/task/SyncTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "processing SyncTask"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 27
    if-eqz p1, :cond_25

    iget v2, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    if-eq v2, v4, :cond_25

    .line 28
    const/4 v2, 0x2

    iput v2, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    .line 29
    iget-object v2, p0, Lcom/lge/cic/eden/service/task/SyncTask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {v2, p1}, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->updateTask(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Lcom/lge/cic/eden/db/type/TaskInfo;)V

    .line 32
    :try_start_16
    iget-object v2, p0, Lcom/lge/cic/eden/service/task/SyncTask;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v1

    .line 34
    .local v1, "status":Z
    const/4 v2, 0x3

    iput v2, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    .line 35
    iget-object v2, p0, Lcom/lge/cic/eden/service/task/SyncTask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {v2, p1}, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->updateTask(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Lcom/lge/cic/eden/db/type/TaskInfo;)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_25} :catch_2d

    .line 42
    .end local v1    # "status":Z
    :cond_25
    iget-object v2, p0, Lcom/lge/cic/eden/service/task/SyncTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "SyncTask is done"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 43
    return-void

    .line 36
    :catch_2d
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 38
    new-instance v2, Ljava/lang/InterruptedException;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " interrupted\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
