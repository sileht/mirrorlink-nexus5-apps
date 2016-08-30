.class public Lcom/lge/cic/eden/service/task/StoryClusteringTask;
.super Ljava/lang/Object;
.source "StoryClusteringTask.java"

# interfaces
.implements Lcom/lge/cic/eden/service/task/Task;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseBridge"    # Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    .prologue
    .line 24
    return-void
.end method

.method public processing(Lcom/lge/cic/eden/db/type/TaskInfo;)V
    .registers 2
    .param p1, "taskInfo"    # Lcom/lge/cic/eden/db/type/TaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 18
    return-void
.end method
