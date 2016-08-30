.class public Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;
.super Ljava/lang/Object;
.source "LocationTaskWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker$LocationRunnable;
    }
.end annotation


# static fields
.field private static instance:Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;

.field private static isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static lock:Ljava/lang/Object;

.field static logger:Lcom/lge/cic/eden/utils/Logger;


# instance fields
.field private context:Landroid/content/Context;

.field private databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

.field private runnable:Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker$LocationRunnable;

.field private taskWorker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    const-class v0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->instance:Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->lock:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseBridge"    # Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->taskWorker:Ljava/util/concurrent/ExecutorService;

    .line 21
    iput-object v0, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->context:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 23
    iput-object v0, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->runnable:Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker$LocationRunnable;

    .line 30
    iput-object p1, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 33
    iput-object v0, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->taskWorker:Ljava/util/concurrent/ExecutorService;

    .line 34
    new-instance v0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker$LocationRunnable;

    invoke-direct {v0, p0}, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker$LocationRunnable;-><init>(Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;)V

    iput-object v0, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->runnable:Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker$LocationRunnable;

    .line 35
    return-void
.end method

.method static synthetic access$0()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static create(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "databaseBridge"    # Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .prologue
    .line 38
    sget-object v1, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_3
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->instance:Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;

    if-nez v0, :cond_e

    .line 40
    new-instance v0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;

    invoke-direct {v0, p0, p1}, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;-><init>(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V

    sput-object v0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->instance:Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;

    .line 38
    :cond_e
    monitor-exit v1

    .line 43
    return-void

    .line 38
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public static getInstance()Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;
    .registers 2

    .prologue
    .line 46
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->instance:Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;

    if-nez v0, :cond_c

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LocationTaskWorker is null... call LocationTaskWorker.create() first..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_c
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->instance:Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;

    return-object v0
.end method

.method private isBusy()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    sget-object v3, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "LocationTaskWorker (isBusy) : "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v1

    :goto_14
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2a

    :goto_27
    return v1

    :cond_28
    move v0, v2

    .line 62
    goto :goto_14

    :cond_2a
    move v1, v2

    .line 63
    goto :goto_27
.end method

.method private isStarted()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->taskWorker:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_6

    .line 58
    :cond_5
    :goto_5
    return v0

    .line 57
    :cond_6
    sget-object v1, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LocationTaskWorker (isShutDown and isTerminated) : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->taskWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->taskWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->taskWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public cancel()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 89
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 91
    invoke-direct {p0}, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 92
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 93
    :try_start_f
    iget-object v3, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->taskWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 92
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_2d

    .line 95
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "LocationTaskWorker will be stopped!! "

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 97
    :try_start_1c
    iget-object v2, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->taskWorker:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v4, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 98
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "LocationTaskWorker is stopped!! "

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_2c} :catch_30

    .line 111
    :goto_2c
    return v1

    .line 92
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1

    .line 99
    :catch_30
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "LocationTaskWorker is not finished!! "

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 101
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 102
    :try_start_3b
    iget-object v1, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->taskWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 101
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_4a

    .line 104
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 105
    const/4 v1, 0x0

    goto :goto_2c

    .line 101
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1

    .line 109
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4d
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "LocationTaskWorker has been already stopped!! "

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public requestAsync(Landroid/location/Location;)V
    .registers 5
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 67
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "requestAsync"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->isStarted()Z

    move-result v0

    if-nez v0, :cond_13

    .line 69
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->taskWorker:Ljava/util/concurrent/ExecutorService;

    .line 72
    :cond_13
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 73
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->runnable:Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker$LocationRunnable;

    invoke-virtual {v0, p1}, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker$LocationRunnable;->setLocation(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 74
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    sget-object v1, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_2c
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->taskWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_42

    .line 77
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->taskWorker:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->runnable:Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker$LocationRunnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 78
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "LocationTaskWorker is started!! "

    invoke-virtual {v0, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 75
    :cond_42
    monitor-exit v1

    .line 87
    :cond_43
    :goto_43
    return-void

    .line 75
    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_2c .. :try_end_46} :catchall_44

    throw v0

    .line 84
    :cond_47
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "LocationTaskWorker has been already started!! "

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    goto :goto_43
.end method
