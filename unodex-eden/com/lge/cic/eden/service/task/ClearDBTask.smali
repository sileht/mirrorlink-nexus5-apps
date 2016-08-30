.class public Lcom/lge/cic/eden/service/task/ClearDBTask;
.super Ljava/lang/Object;
.source "ClearDBTask.java"

# interfaces
.implements Lcom/lge/cic/eden/service/task/Task;


# instance fields
.field context:Landroid/content/Context;

.field databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

.field dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

.field private logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseBridge"    # Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-class v0, Lcom/lge/cic/eden/service/task/ClearDBTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/service/task/ClearDBTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 18
    iput-object v1, p0, Lcom/lge/cic/eden/service/task/ClearDBTask;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    .line 19
    iput-object v1, p0, Lcom/lge/cic/eden/service/task/ClearDBTask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 20
    iput-object v1, p0, Lcom/lge/cic/eden/service/task/ClearDBTask;->context:Landroid/content/Context;

    .line 23
    iput-object p1, p0, Lcom/lge/cic/eden/service/task/ClearDBTask;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/lge/cic/eden/service/task/ClearDBTask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 25
    new-instance v0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-direct {v0, p2}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;-><init>(Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V

    iput-object v0, p0, Lcom/lge/cic/eden/service/task/ClearDBTask;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    .line 26
    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/ClearDBTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "Complete ClearDBTask"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 54
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

    .line 30
    iget-object v2, p0, Lcom/lge/cic/eden/service/task/ClearDBTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "processing ClearDBTask"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 31
    if-eqz p1, :cond_36

    iget v2, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    if-eq v2, v4, :cond_36

    .line 32
    const/4 v2, 0x2

    iput v2, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    .line 33
    iget-object v2, p0, Lcom/lge/cic/eden/service/task/ClearDBTask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {v2, p1}, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->updateTask(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Lcom/lge/cic/eden/db/type/TaskInfo;)V

    .line 35
    iget-object v2, p0, Lcom/lge/cic/eden/service/task/ClearDBTask;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-virtual {v2}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->clearDatabase()V

    .line 37
    new-instance v0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;

    iget-object v2, p0, Lcom/lge/cic/eden/service/task/ClearDBTask;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;-><init>(Landroid/content/Context;)V

    .line 38
    .local v0, "cardPublisher":Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;
    invoke-virtual {v0}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->clearPublishedEventId()V

    .line 41
    new-instance v1, Lcom/lge/cic/eden/clustering/utils/StoryPolicyManager;

    iget-object v2, p0, Lcom/lge/cic/eden/service/task/ClearDBTask;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/cic/eden/clustering/utils/StoryPolicyManager;-><init>(Landroid/content/Context;)V

    .line 42
    .local v1, "storyManager":Lcom/lge/cic/eden/clustering/utils/StoryPolicyManager;
    invoke-virtual {v1}, Lcom/lge/cic/eden/clustering/utils/StoryPolicyManager;->clearAll()V

    .line 44
    iput v4, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    .line 45
    iget-object v2, p0, Lcom/lge/cic/eden/service/task/ClearDBTask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {v2, p1}, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->updateTask(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Lcom/lge/cic/eden/db/type/TaskInfo;)V

    .line 47
    .end local v0    # "cardPublisher":Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;
    .end local v1    # "storyManager":Lcom/lge/cic/eden/clustering/utils/StoryPolicyManager;
    :cond_36
    iget-object v2, p0, Lcom/lge/cic/eden/service/task/ClearDBTask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "ClearDBTask is done"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 48
    return-void
.end method
