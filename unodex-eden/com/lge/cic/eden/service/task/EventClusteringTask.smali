.class public Lcom/lge/cic/eden/service/task/EventClusteringTask;
.super Ljava/lang/Object;
.source "EventClusteringTask.java"

# interfaces
.implements Lcom/lge/cic/eden/service/task/Task;


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x3


# instance fields
.field context:Landroid/content/Context;

.field databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

.field private logger:Lcom/lge/cic/eden/utils/Logger;

.field mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseBridge"    # Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    .line 26
    const-class v0, Lcom/lge/cic/eden/service/task/EventClusteringTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 27
    iput-object v1, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->context:Landroid/content/Context;

    .line 28
    iput-object v1, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 32
    iput-object p2, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 33
    iput-object p1, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->context:Landroid/content/Context;

    .line 34
    new-instance v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    invoke-direct {v0, p1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    .line 35
    return-void
.end method

.method private checkStopCondition(J)Z
    .registers 14
    .param p1, "taskId"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 137
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v1, Lcom/lge/cic/eden/db/type/TaskInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/TaskInfoTable;->TABLE_URI:Landroid/net/Uri;

    const-string v4, "TASK_TYPE = 1"

    const-string v6, "TASK_ID ASC"

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 138
    .local v8, "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/TaskInfo;>;"
    if-eqz v8, :cond_1a

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_23

    .line 139
    :cond_1a
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "checkStopCondition() : no task.."

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    move v0, v9

    .line 158
    :goto_22
    return v0

    .line 142
    :cond_23
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/cic/eden/db/type/TaskInfo;

    .line 143
    .local v7, "task":Lcom/lge/cic/eden/db/type/TaskInfo;
    iget-wide v0, v7, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_51

    .line 144
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkStopCondition() : diffrent task id.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v7, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    move v0, v9

    .line 145
    goto :goto_22

    .line 147
    :cond_51
    iget v0, v7, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5f

    .line 148
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "checkStopCondition() : EventClusteringTask is completed"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    move v0, v9

    .line 149
    goto :goto_22

    .line 151
    :cond_5f
    iget v0, v7, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6d

    .line 152
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "checkStopCondition() : EventClusteringTask is incompleted. I\'ll try to later"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    move v0, v9

    .line 153
    goto :goto_22

    .line 154
    :cond_6d
    iget v0, v7, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7b

    .line 155
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "checkStopCondition() : EventClusteringTask is pending. I\'ll try to later"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    move v0, v9

    .line 156
    goto :goto_22

    :cond_7b
    move v0, v10

    .line 158
    goto :goto_22
.end method

.method private isRunningEventService()Z
    .registers 6

    .prologue
    .line 106
    iget-object v2, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->context:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 107
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 112
    const/4 v2, 0x0

    :goto_1c
    return v2

    .line 107
    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 108
    .local v1, "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v3, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.lge.cic.eden.service.eventclustering.EventClusteringService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 109
    const/4 v2, 0x1

    goto :goto_1c
.end method

.method private sendRequest(J)V
    .registers 8
    .param p1, "taskId"    # J

    .prologue
    .line 121
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v1, "serviceIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.lge.cic.eden.service"

    const-string v3, "com.lge.cic.eden.service.eventclustering.EventClusteringService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 124
    const-string v2, "MSG_TYPE"

    const-string v3, "ManualAnalysis"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v2, "REQUEST_ID"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 126
    iget-object v2, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 127
    return-void
.end method

.method private stopRequest()V
    .registers 5

    .prologue
    .line 130
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v1, "serviceIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.lge.cic.eden.service"

    const-string v3, "com.lge.cic.eden.service.eventclustering.EventClusteringService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 133
    iget-object v2, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 134
    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "Complete EventClusteringTask"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public processing(Lcom/lge/cic/eden/db/type/TaskInfo;)V
    .registers 13
    .param p1, "taskInfo"    # Lcom/lge/cic/eden/db/type/TaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x1

    .line 39
    iget-object v6, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v7, "processing EventClusteringTask"

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 41
    if-eqz p1, :cond_ae

    iget v6, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    if-eq v6, v10, :cond_ae

    .line 42
    const/4 v6, 0x2

    iput v6, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    .line 43
    iget-object v6, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {v6, p1}, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->updateTask(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Lcom/lge/cic/eden/db/type/TaskInfo;)V

    .line 45
    iget-object v6, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->context:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 46
    .local v2, "powerManager":Landroid/os/PowerManager;
    const-string v6, "EventClusteringTaskWakeLock"

    invoke-virtual {v2, v8, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 50
    .local v3, "wakeLock":Landroid/os/PowerManager$WakeLock;
    if-eqz v3, :cond_33

    .line 51
    :try_start_29
    iget-object v6, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v7, "acquire : EventClusteringTaskWakeLock "

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 54
    :cond_33
    iget-object v6, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v7, "preparing for event clustering.."

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 56
    const-wide/16 v6, 0x2710

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 58
    iget-object v6, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v7, "now, sync for event clustering.."

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 61
    .local v4, "startTime":J
    const-string v6, "EdenTimer"

    const-string v7, "Full sync Start"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v6, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    .line 63
    const-string v6, "EdenTimer"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Full sunc End - spent time : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v6, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v7, "finally, requsest for event clustering.."

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 66
    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 67
    iget-wide v6, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    invoke-direct {p0, v6, v7}, Lcom/lge/cic/eden/service/task/EventClusteringTask;->sendRequest(J)V

    .line 68
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, "failedCount":I
    :goto_8d
    iget-wide v6, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    invoke-direct {p0, v6, v7}, Lcom/lge/cic/eden/service/task/EventClusteringTask;->checkStopCondition(J)Z

    move-result v6

    if-nez v6, :cond_9f

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_9c
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_9c} :catch_e9
    .catchall {:try_start_29 .. :try_end_9c} :catchall_114

    move-result v6

    if-eqz v6, :cond_b6

    .line 94
    :cond_9f
    invoke-direct {p0}, Lcom/lge/cic/eden/service/task/EventClusteringTask;->stopRequest()V

    .line 96
    if-eqz v3, :cond_ae

    .line 97
    iget-object v6, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v7, "release : EventClusteringTaskWakeLock "

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 102
    .end local v1    # "failedCount":I
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    .end local v3    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    .end local v4    # "startTime":J
    :cond_ae
    iget-object v6, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v7, "EventClusteringTask is done"

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 103
    return-void

    .line 72
    .restart local v1    # "failedCount":I
    .restart local v2    # "powerManager":Landroid/os/PowerManager;
    .restart local v3    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    .restart local v4    # "startTime":J
    :cond_b6
    :try_start_b6
    invoke-direct {p0}, Lcom/lge/cic/eden/service/task/EventClusteringTask;->isRunningEventService()Z

    move-result v6

    if-nez v6, :cond_e3

    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    iget-object v6, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "isRunningEventService() : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 75
    if-le v1, v10, :cond_125

    .line 76
    const/4 v6, 0x4

    iput v6, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    .line 77
    iget-object v6, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {v6, p1}, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->updateTask(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Lcom/lge/cic/eden/db/type/TaskInfo;)V

    .line 78
    iget-object v6, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v7, "event clustering is failed : MAX_RETRY_COUNT_LIMIT_EXCEED"

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 84
    :cond_e3
    :goto_e3
    const-wide/16 v6, 0x1388

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e8
    .catch Ljava/lang/InterruptedException; {:try_start_b6 .. :try_end_e8} :catch_e9
    .catchall {:try_start_b6 .. :try_end_e8} :catchall_114

    goto :goto_8d

    .line 89
    .end local v1    # "failedCount":I
    .end local v4    # "startTime":J
    :catch_e9
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_ea
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 91
    new-instance v6, Ljava/lang/InterruptedException;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " interrupted"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_114
    .catchall {:try_start_ea .. :try_end_114} :catchall_114

    .line 93
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_114
    move-exception v6

    .line 94
    invoke-direct {p0}, Lcom/lge/cic/eden/service/task/EventClusteringTask;->stopRequest()V

    .line 96
    if-eqz v3, :cond_124

    .line 97
    iget-object v7, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v8, "release : EventClusteringTaskWakeLock "

    invoke-virtual {v7, v8}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 100
    :cond_124
    throw v6

    .line 80
    .restart local v1    # "failedCount":I
    .restart local v4    # "startTime":J
    :cond_125
    :try_start_125
    iget-wide v6, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    invoke-direct {p0, v6, v7}, Lcom/lge/cic/eden/service/task/EventClusteringTask;->sendRequest(J)V

    .line 81
    iget-object v6, p0, Lcom/lge/cic/eden/service/task/EventClusteringTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v7, "retry to sending request for event clustering"

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V
    :try_end_131
    .catch Ljava/lang/InterruptedException; {:try_start_125 .. :try_end_131} :catch_e9
    .catchall {:try_start_125 .. :try_end_131} :catchall_114

    goto :goto_e3
.end method
