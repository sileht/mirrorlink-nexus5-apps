.class public Lcom/lge/cic/eden/service/task/DeleteMediaTask;
.super Ljava/lang/Object;
.source "DeleteMediaTask.java"

# interfaces
.implements Lcom/lge/cic/eden/service/task/Task;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;
    }
.end annotation


# static fields
.field private static deleteMediaRequestForms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;",
            ">;"
        }
    .end annotation
.end field

.field private static lock:Ljava/lang/Object;

.field private static logger:Lcom/lge/cic/eden/utils/Logger;


# instance fields
.field private context:Landroid/content/Context;

.field databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

.field mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/lge/cic/eden/service/task/DeleteMediaTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->deleteMediaRequestForms:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bridge"    # Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    .line 34
    iput-object v0, p0, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 36
    sget-object v0, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "DeleteMediaTask instance creation"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    invoke-direct {v0, p1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    .line 38
    iput-object p1, p0, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 40
    return-void
.end method

.method public static addRequestForm(Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;)V
    .registers 3
    .param p0, "form"    # Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;

    .prologue
    .line 72
    sget-object v1, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_3
    sget-object v0, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->deleteMediaRequestForms:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    monitor-exit v1

    .line 75
    return-void

    .line 72
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private deleteTaskForDeletedList()Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 93
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    :try_start_4
    invoke-static {v6, v7, v5}, Ljava/lang/Thread;->sleep(JI)V

    .line 94
    invoke-static {}, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->getCurrentRequestForm()Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;

    move-result-object v1

    .line 95
    .local v1, "form":Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;
    # getter for: Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;->deletedList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;->access$0(Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;)Ljava/util/ArrayList;

    move-result-object v2

    .line 96
    .local v2, "listForDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_30

    .line 97
    sget-object v5, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v6, "!listForDelete.isEmpty()"

    invoke-virtual {v5, v6}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_40

    .line 101
    iget-object v5, p0, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    invoke-virtual {v5, v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->deleteForDeletedImageList(Ljava/util/ArrayList;)Z

    .line 102
    iget-object v5, p0, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    invoke-virtual {v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->updateEventVisibilityUsingDeleteFlag()V

    .line 104
    :cond_30
    iget-object v5, p0, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->context:Landroid/content/Context;

    # getter for: Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;->requestId:J
    invoke-static {v1}, Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;->access$1(Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;)J

    move-result-wide v6

    const/4 v8, 0x1

    const-string v9, "MediaDelete"

    invoke-static {v5, v6, v7, v8, v9}, Lcom/lge/cic/eden/broadcast/EdenBroadcastHelper;->sendResultIntentToGallery(Landroid/content/Context;JZLjava/lang/String;)V

    .line 105
    invoke-static {v1}, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->removeRequestForm(Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;)V

    .line 110
    .end local v1    # "form":Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;
    .end local v2    # "listForDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_3f
    return v4

    .line 98
    .restart local v1    # "form":Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;
    .restart local v2    # "listForDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_40
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 99
    .local v3, "mediaId":Ljava/lang/Long;
    sget-object v6, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "!listForDelete.isEmpty() - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_5a} :catch_5b

    goto :goto_20

    .line 107
    .end local v1    # "form":Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;
    .end local v2    # "listForDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v3    # "mediaId":Ljava/lang/Long;
    :catch_5b
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v4, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "DeleteMediaRequestForms are empty.."

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 110
    const/4 v4, 0x0

    goto :goto_3f
.end method

.method private static getCurrentRequestForm()Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;
    .registers 3

    .prologue
    .line 82
    sget-object v1, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_3
    sget-object v0, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->deleteMediaRequestForms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "deleteMediaRequestForms are empty!!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0

    .line 87
    :cond_16
    :try_start_16
    sget-object v0, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->deleteMediaRequestForms:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_13

    return-object v0
.end method

.method private static removeRequestForm(Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;)V
    .registers 3
    .param p0, "form"    # Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;

    .prologue
    .line 77
    sget-object v1, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_3
    sget-object v0, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->deleteMediaRequestForms:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    monitor-exit v1

    .line 80
    return-void

    .line 77
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method


# virtual methods
.method public onComplete()V
    .registers 3

    .prologue
    .line 67
    sget-object v0, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "Complete DeleteMediaTask"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 69
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

    .line 44
    sget-object v2, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "processing DeleteMedia"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 45
    if-eqz p1, :cond_21

    iget v2, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    if-eq v2, v4, :cond_21

    .line 46
    const/4 v2, 0x2

    iput v2, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    .line 47
    iget-object v2, p0, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {v2, p1}, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->updateTask(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Lcom/lge/cic/eden/db/type/TaskInfo;)V

    .line 50
    const/4 v1, 0x1

    .line 51
    .local v1, "status":Z
    :goto_17
    if-nez v1, :cond_29

    .line 54
    const/4 v2, 0x3

    :try_start_1a
    iput v2, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    .line 55
    iget-object v2, p0, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {v2, p1}, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->updateTask(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Lcom/lge/cic/eden/db/type/TaskInfo;)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_21} :catch_2e

    .line 62
    .end local v1    # "status":Z
    :cond_21
    sget-object v2, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "DeleteMediaTask is done"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 63
    return-void

    .line 52
    .restart local v1    # "status":Z
    :cond_29
    :try_start_29
    invoke-direct {p0}, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->deleteTaskForDeletedList()Z
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2c} :catch_2e

    move-result v1

    goto :goto_17

    .line 56
    :catch_2e
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 58
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
