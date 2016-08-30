.class public Lcom/lge/cic/eden/controller/EventServiceController;
.super Ljava/lang/Object;
.source "EventServiceController.java"


# instance fields
.field private context:Landroid/content/Context;

.field private databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

.field private logger:Lcom/lge/cic/eden/utils/Logger;

.field private service:Landroid/app/Service;

.field public worker:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Service;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/Service;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-class v0, Lcom/lge/cic/eden/controller/EventServiceController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/controller/EventServiceController;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 23
    iput-object v1, p0, Lcom/lge/cic/eden/controller/EventServiceController;->worker:Ljava/lang/Thread;

    .line 24
    iput-object v1, p0, Lcom/lge/cic/eden/controller/EventServiceController;->context:Landroid/content/Context;

    .line 25
    iput-object v1, p0, Lcom/lge/cic/eden/controller/EventServiceController;->service:Landroid/app/Service;

    .line 26
    iput-object v1, p0, Lcom/lge/cic/eden/controller/EventServiceController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 29
    iput-object p1, p0, Lcom/lge/cic/eden/controller/EventServiceController;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/lge/cic/eden/controller/EventServiceController;->service:Landroid/app/Service;

    .line 31
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/controller/EventServiceController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/lge/cic/eden/controller/EventServiceController;)Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EventServiceController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/cic/eden/controller/EventServiceController;)Lcom/lge/cic/eden/utils/Logger;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EventServiceController;->logger:Lcom/lge/cic/eden/utils/Logger;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/cic/eden/controller/EventServiceController;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EventServiceController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/cic/eden/controller/EventServiceController;)Landroid/app/Service;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EventServiceController;->service:Landroid/app/Service;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized analyzeAsync(J)Z
    .registers 6
    .param p1, "requestId"    # J

    .prologue
    .line 50
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EventServiceController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "analyzeAsync()"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/lge/cic/eden/controller/EventServiceController;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 52
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EventServiceController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "  analyzer is busy"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_39

    .line 53
    const/4 v0, 0x0

    .line 125
    :goto_16
    monitor-exit p0

    return v0

    .line 56
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EventServiceController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "  start analysis"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/cic/eden/controller/EventServiceController$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/cic/eden/controller/EventServiceController$1;-><init>(Lcom/lge/cic/eden/controller/EventServiceController;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/cic/eden/controller/EventServiceController;->worker:Ljava/lang/Thread;

    .line 122
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EventServiceController;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 124
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EventServiceController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "  analyzeAsync - end"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_18 .. :try_end_37} :catchall_39

    .line 125
    const/4 v0, 0x1

    goto :goto_16

    .line 50
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroy()V
    .registers 5

    .prologue
    .line 35
    iget-object v1, p0, Lcom/lge/cic/eden/controller/EventServiceController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "destroy()"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/lge/cic/eden/controller/EventServiceController;->worker:Ljava/lang/Thread;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/lge/cic/eden/controller/EventServiceController;->worker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 37
    iget-object v1, p0, Lcom/lge/cic/eden/controller/EventServiceController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "  worker is alive"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/lge/cic/eden/controller/EventServiceController;->worker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 41
    :try_start_1f
    iget-object v1, p0, Lcom/lge/cic/eden/controller/EventServiceController;->worker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_24} :catch_2c

    .line 45
    :goto_24
    iget-object v1, p0, Lcom/lge/cic/eden/controller/EventServiceController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "  complete destroy"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 47
    :cond_2b
    return-void

    .line 42
    :catch_2c
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/lge/cic/eden/controller/EventServiceController;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InterruptedException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_24
.end method

.method public isBusy()Z
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EventServiceController;->worker:Ljava/lang/Thread;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lge/cic/eden/controller/EventServiceController;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 130
    const/4 v0, 0x1

    .line 132
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
