.class public Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;
.super Ljava/lang/Object;
.source "TaskStatusUpdater.java"


# static fields
.field static logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->logger:Lcom/lge/cic/eden/utils/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteTask(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Lcom/lge/cic/eden/db/type/TaskInfo;)V
    .registers 6
    .param p0, "bridge"    # Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    .param p1, "taskInfo"    # Lcom/lge/cic/eden/db/type/TaskInfo;

    .prologue
    .line 26
    if-nez p0, :cond_a

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DatabaseBridge is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_a
    if-nez p1, :cond_14

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "taskName is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_14
    sget-object v0, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[deleteTask] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->delete(Lcom/lge/cic/eden/db/type/ColumnInfo;)I

    .line 35
    return-void
.end method

.method public static updateTask(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Lcom/lge/cic/eden/db/type/TaskInfo;)V
    .registers 6
    .param p0, "bridge"    # Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    .param p1, "taskInfo"    # Lcom/lge/cic/eden/db/type/TaskInfo;

    .prologue
    .line 13
    if-nez p0, :cond_a

    .line 14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DatabaseBridge is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_a
    if-nez p1, :cond_14

    .line 17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "taskName is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_14
    sget-object v0, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[updateTask] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TASK_INFO"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TASK_STATUS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TASK_TYPE"

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->update(Lcom/lge/cic/eden/db/type/ColumnInfo;[Ljava/lang/String;)I

    .line 23
    return-void
.end method
