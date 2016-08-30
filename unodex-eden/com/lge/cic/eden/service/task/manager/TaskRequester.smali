.class public Lcom/lge/cic/eden/service/task/manager/TaskRequester;
.super Ljava/lang/Object;
.source "TaskRequester.java"


# static fields
.field private static final MAX_TASK_SIZE:I = 0x7

.field static logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/lge/cic/eden/service/task/manager/TaskRequester;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/service/task/manager/TaskRequester;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTaskPriority(Ljava/lang/String;)I
    .registers 5
    .param p0, "taskName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x2

    const/4 v2, 0x1

    .line 100
    const-string v3, "3-SYNC_TASK"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 101
    const/4 v0, 0x3

    .line 121
    :cond_c
    :goto_c
    return v0

    .line 103
    :cond_d
    const-string v3, "2-DELETE_MEDIA"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 106
    const-string v3, "4-EVENT_CLUSTERING_TASK"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v0, v1

    .line 107
    goto :goto_c

    .line 109
    :cond_1f
    const-string v3, "1-CLEAR_DB_TASK"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    move v0, v2

    .line 110
    goto :goto_c

    .line 112
    :cond_29
    const-string v3, "1-CLEAR_DB_POI_TASK"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    move v0, v2

    .line 113
    goto :goto_c

    .line 115
    :cond_33
    const-string v2, "5-STORY_CLUSTERING_TASK"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    move v0, v1

    .line 116
    goto :goto_c

    .line 118
    :cond_3d
    const-string v1, "2-LIGHT_SYNC_TASK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 121
    const/16 v0, 0x63

    goto :goto_c
.end method

.method public static requestTask(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;Ljava/lang/String;)V
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bridge"    # Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    .param p2, "taskName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 23
    if-nez p1, :cond_c

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DatabaseBridge is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_c
    if-nez p2, :cond_16

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "taskName is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_16
    new-instance v11, Lcom/lge/cic/eden/db/type/TaskInfo;

    invoke-direct {v11, p2, v0, v0}, Lcom/lge/cic/eden/db/type/TaskInfo;-><init>(Ljava/lang/String;II)V

    .line 32
    .local v11, "requestTask":Lcom/lge/cic/eden/db/type/TaskInfo;
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/TaskRequester;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Request Task] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v11, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v11, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 34
    const-class v1, Lcom/lge/cic/eden/db/type/TaskInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/TaskInfoTable;->TABLE_URI_LIMIT:Landroid/net/Uri;

    const-string v4, "TASK_TYPE = 1"

    const-string v6, "TASK_NAME ASC"

    move-object v0, p1

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 37
    .local v10, "prevTaskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/TaskInfo;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_96

    .line 38
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/TaskRequester;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "             [INSERT(TABLE_EMPTY): Task] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v11, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v11, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1, v11}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->insert(Lcom/lge/cic/eden/db/type/ColumnInfo;)Landroid/net/Uri;

    .line 58
    :goto_8e
    invoke-static {}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->getInstance()Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->start()V

    .line 97
    return-void

    .line 42
    :cond_96
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/cic/eden/db/type/TaskInfo;

    .line 44
    .local v7, "activatedTask":Lcom/lge/cic/eden/db/type/TaskInfo;
    const/4 v9, 0x0

    .line 46
    .local v9, "isPreemptive":Z
    iget-object v0, v11, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    invoke-static {v0}, Lcom/lge/cic/eden/service/task/manager/TaskRequester;->getTaskPriority(Ljava/lang/String;)I

    move-result v0

    iget-object v1, v7, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    invoke-static {v1}, Lcom/lge/cic/eden/service/task/manager/TaskRequester;->getTaskPriority(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_c8

    .line 47
    invoke-static {}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->getInstance()Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->stop()Z

    .line 48
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v12, "serviceIntent":Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string v0, "com.lge.cic.eden.service"

    const-string v1, "com.lge.cic.eden.service.eventclustering.EventClusteringService"

    invoke-direct {v8, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v8, "component":Landroid/content/ComponentName;
    invoke-virtual {v12, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v12}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 52
    const/4 v9, 0x1

    .line 54
    .end local v8    # "component":Landroid/content/ComponentName;
    .end local v12    # "serviceIntent":Landroid/content/Intent;
    :cond_c8
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/TaskRequester;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "             [INSERT(PREEMPTIVE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): Task] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v11, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v11, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1, v11}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->insert(Lcom/lge/cic/eden/db/type/ColumnInfo;)Landroid/net/Uri;

    goto :goto_8e
.end method
