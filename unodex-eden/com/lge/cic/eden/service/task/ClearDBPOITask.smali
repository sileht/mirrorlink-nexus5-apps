.class public Lcom/lge/cic/eden/service/task/ClearDBPOITask;
.super Ljava/lang/Object;
.source "ClearDBPOITask.java"

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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lcom/lge/cic/eden/service/task/ClearDBPOITask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/service/task/ClearDBPOITask;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 17
    iput-object v1, p0, Lcom/lge/cic/eden/service/task/ClearDBPOITask;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    .line 18
    iput-object v1, p0, Lcom/lge/cic/eden/service/task/ClearDBPOITask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 19
    iput-object v1, p0, Lcom/lge/cic/eden/service/task/ClearDBPOITask;->context:Landroid/content/Context;

    .line 22
    iput-object p1, p0, Lcom/lge/cic/eden/service/task/ClearDBPOITask;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/lge/cic/eden/service/task/ClearDBPOITask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 24
    new-instance v0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-direct {v0, p2}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;-><init>(Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V

    iput-object v0, p0, Lcom/lge/cic/eden/service/task/ClearDBPOITask;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    .line 25
    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/ClearDBPOITask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "Complete ClearDBPOITask"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 48
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

    .line 29
    iget-object v1, p0, Lcom/lge/cic/eden/service/task/ClearDBPOITask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "processing ClearDBPOITask"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 30
    if-eqz p1, :cond_2c

    iget v1, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    if-eq v1, v3, :cond_2c

    .line 31
    const/4 v1, 0x2

    iput v1, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    .line 32
    iget-object v1, p0, Lcom/lge/cic/eden/service/task/ClearDBPOITask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {v1, p1}, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->updateTask(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Lcom/lge/cic/eden/db/type/TaskInfo;)V

    .line 34
    iget-object v1, p0, Lcom/lge/cic/eden/service/task/ClearDBPOITask;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-virtual {v1}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->clearDatabaseForPOI()V

    .line 36
    new-instance v0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;

    iget-object v1, p0, Lcom/lge/cic/eden/service/task/ClearDBPOITask;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, "cardPublisher":Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;
    invoke-virtual {v0}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->clearPublishedEventId()V

    .line 39
    iput v3, p1, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    .line 40
    iget-object v1, p0, Lcom/lge/cic/eden/service/task/ClearDBPOITask;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {v1, p1}, Lcom/lge/cic/eden/db/helper/TaskStatusUpdater;->updateTask(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Lcom/lge/cic/eden/db/type/TaskInfo;)V

    .line 42
    .end local v0    # "cardPublisher":Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;
    :cond_2c
    iget-object v1, p0, Lcom/lge/cic/eden/service/task/ClearDBPOITask;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "ClearDBPOITask is done."

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 43
    return-void
.end method
