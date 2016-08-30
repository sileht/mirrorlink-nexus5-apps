.class public Lcom/lge/cic/eden/service/task/manager/TaskFactory;
.super Ljava/lang/Object;
.source "TaskFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeTask(Lcom/lge/cic/eden/db/type/TaskInfo;Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)Lcom/lge/cic/eden/service/task/Task;
    .registers 5
    .param p0, "taskInfo"    # Lcom/lge/cic/eden/db/type/TaskInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseBridge"    # Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    const-string v1, "3-SYNC_TASK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 20
    new-instance v0, Lcom/lge/cic/eden/service/task/SyncTask;

    invoke-direct {v0, p1, p2}, Lcom/lge/cic/eden/service/task/SyncTask;-><init>(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V

    .line 38
    :goto_f
    return-object v0

    .line 22
    :cond_10
    iget-object v0, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    const-string v1, "4-EVENT_CLUSTERING_TASK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 23
    new-instance v0, Lcom/lge/cic/eden/service/task/EventClusteringTask;

    invoke-direct {v0, p1, p2}, Lcom/lge/cic/eden/service/task/EventClusteringTask;-><init>(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V

    goto :goto_f

    .line 25
    :cond_20
    iget-object v0, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    const-string v1, "5-STORY_CLUSTERING_TASK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 26
    new-instance v0, Lcom/lge/cic/eden/service/task/StoryClusteringTask;

    invoke-direct {v0, p1, p2}, Lcom/lge/cic/eden/service/task/StoryClusteringTask;-><init>(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V

    goto :goto_f

    .line 28
    :cond_30
    iget-object v0, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    const-string v1, "1-CLEAR_DB_TASK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 29
    new-instance v0, Lcom/lge/cic/eden/service/task/ClearDBTask;

    invoke-direct {v0, p1, p2}, Lcom/lge/cic/eden/service/task/ClearDBTask;-><init>(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V

    goto :goto_f

    .line 31
    :cond_40
    iget-object v0, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    const-string v1, "1-CLEAR_DB_POI_TASK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 32
    new-instance v0, Lcom/lge/cic/eden/service/task/ClearDBPOITask;

    invoke-direct {v0, p1, p2}, Lcom/lge/cic/eden/service/task/ClearDBPOITask;-><init>(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V

    goto :goto_f

    .line 34
    :cond_50
    iget-object v0, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    const-string v1, "2-DELETE_MEDIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 35
    new-instance v0, Lcom/lge/cic/eden/service/task/DeleteMediaTask;

    invoke-direct {v0, p1, p2}, Lcom/lge/cic/eden/service/task/DeleteMediaTask;-><init>(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V

    goto :goto_f

    .line 37
    :cond_60
    iget-object v0, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    const-string v1, "2-LIGHT_SYNC_TASK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 38
    new-instance v0, Lcom/lge/cic/eden/service/task/LightSyncTask;

    invoke-direct {v0, p1, p2}, Lcom/lge/cic/eden/service/task/LightSyncTask;-><init>(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V

    goto :goto_f

    .line 40
    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
