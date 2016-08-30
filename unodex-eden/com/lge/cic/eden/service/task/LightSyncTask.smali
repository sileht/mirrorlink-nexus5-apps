.class public Lcom/lge/cic/eden/service/task/LightSyncTask;
.super Ljava/lang/Object;
.source "LightSyncTask.java"

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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-class v0, Lcom/lge/cic/eden/service/task/LightSyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/service/task/LightSyncTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 15
    iput-object v1, p0, Lcom/lge/cic/eden/service/task/LightSyncTask;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    .line 16
    iput-object v1, p0, Lcom/lge/cic/eden/service/task/LightSyncTask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 18
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/LightSyncTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "LightSyncTask instance creation"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    invoke-direct {v0, p1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/cic/eden/service/task/LightSyncTask;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    .line 20
    iput-object p2, p0, Lcom/lge/cic/eden/service/task/LightSyncTask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 21
    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/LightSyncTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "Complete LightSyncTask"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public processing(Lcom/lge/cic/eden/db/type/TaskInfo;)V
    .registers 6
    .param p1, "taskInfo"    # Lcom/lge/cic/eden/db/type/TaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 25
    iget-object v1, p0, Lcom/lge/cic/eden/service/task/LightSyncTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "processing LightSyncTask"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 26
    if-eqz p1, :cond_23

    iget v1, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    if-eq v1, v3, :cond_23

    .line 27
    const/4 v1, 0x2

    iput v1, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    .line 28
    iget-object v1, p0, Lcom/lge/cic/eden/service/task/LightSyncTask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {v1, p1}, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->updateTask(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Lcom/lge/cic/eden/db/type/TaskInfo;)V

    .line 30
    iget-object v1, p0, Lcom/lge/cic/eden/service/task/LightSyncTask;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    invoke-virtual {v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->lightSyncOnRequest()Z

    move-result v0

    .line 32
    .local v0, "status":Z
    iput v3, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    .line 33
    iget-object v1, p0, Lcom/lge/cic/eden/service/task/LightSyncTask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {v1, p1}, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->updateTask(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Lcom/lge/cic/eden/db/type/TaskInfo;)V

    .line 36
    .end local v0    # "status":Z
    :cond_23
    iget-object v1, p0, Lcom/lge/cic/eden/service/task/LightSyncTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "LightSyncTask is done"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 37
    return-void
.end method
