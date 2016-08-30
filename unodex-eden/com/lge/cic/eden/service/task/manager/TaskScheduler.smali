.class public Lcom/lge/cic/eden/service/task/manager/TaskScheduler;
.super Ljava/lang/Object;
.source "TaskScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/eden/service/task/manager/TaskScheduler$ScheduleRunnable;
    }
.end annotation


# static fields
.field private static instance:Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

.field private static isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static lock:Ljava/lang/Object;

.field static logger:Lcom/lge/cic/eden/utils/Logger;


# instance fields
.field private context:Landroid/content/Context;

.field private databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

.field private pendingTaskWorker:Ljava/util/concurrent/ExecutorService;

.field private scheduleRunnable:Lcom/lge/cic/eden/service/task/manager/TaskScheduler$ScheduleRunnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    const-class v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->instance:Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->lock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseBridge"    # Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->pendingTaskWorker:Ljava/util/concurrent/ExecutorService;

    .line 29
    iput-object v0, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->context:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 31
    iput-object v0, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->scheduleRunnable:Lcom/lge/cic/eden/service/task/manager/TaskScheduler$ScheduleRunnable;

    .line 41
    iput-object p1, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 44
    iput-object v0, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->pendingTaskWorker:Ljava/util/concurrent/ExecutorService;

    .line 46
    new-instance v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler$ScheduleRunnable;

    invoke-direct {v0, p0}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler$ScheduleRunnable;-><init>(Lcom/lge/cic/eden/service/task/manager/TaskScheduler;)V

    iput-object v0, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->scheduleRunnable:Lcom/lge/cic/eden/service/task/manager/TaskScheduler$ScheduleRunnable;

    .line 47
    return-void
.end method

.method static synthetic access$0()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/cic/eden/service/task/manager/TaskScheduler;)Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/cic/eden/service/task/manager/TaskScheduler;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static create(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "databaseBridge"    # Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .prologue
    .line 50
    sget-object v1, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_3
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->instance:Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    if-nez v0, :cond_e

    .line 52
    new-instance v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    invoke-direct {v0, p0, p1}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;-><init>(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V

    sput-object v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->instance:Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    .line 50
    :cond_e
    monitor-exit v1

    .line 55
    return-void

    .line 50
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public static getInstance()Lcom/lge/cic/eden/service/task/manager/TaskScheduler;
    .registers 2

    .prologue
    .line 58
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->instance:Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    if-nez v0, :cond_c

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TaskScheduler is null... call TaskScheduler.create() first..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_c
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->instance:Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    return-object v0
.end method

.method private isBusy()Z
    .registers 4

    .prologue
    .line 126
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TaskScheduler (isBusy) : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->pendingTaskWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private isStarted()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->pendingTaskWorker:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_6

    .line 122
    :cond_5
    :goto_5
    return v0

    .line 121
    :cond_6
    sget-object v1, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TaskScheduler (isShutDown and isTerminated) : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->pendingTaskWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->pendingTaskWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->pendingTaskWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public start()V
    .registers 4

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->isStarted()Z

    move-result v0

    if-nez v0, :cond_c

    .line 67
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->pendingTaskWorker:Ljava/util/concurrent/ExecutorService;

    .line 70
    :cond_c
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 71
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TaskScheduler (isDone?) : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 73
    sget-object v1, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_37
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->pendingTaskWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 75
    iget-object v0, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->pendingTaskWorker:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->scheduleRunnable:Lcom/lge/cic/eden/service/task/manager/TaskScheduler$ScheduleRunnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 76
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "TaskScheduler is started!! "

    invoke-virtual {v0, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 73
    :cond_4d
    monitor-exit v1

    .line 83
    :goto_4e
    return-void

    .line 73
    :catchall_4f
    move-exception v0

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_37 .. :try_end_51} :catchall_4f

    throw v0

    .line 80
    :cond_52
    sget-object v0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "TaskScheduler has been already started!! "

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    goto :goto_4e
.end method

.method public stop()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 87
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    invoke-direct {p0}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 90
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 91
    :try_start_f
    iget-object v3, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->pendingTaskWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 90
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_50

    .line 93
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TaskScheduler will be stopped!! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v4, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->pendingTaskWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 95
    iget-object v4, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->pendingTaskWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 97
    :try_start_3f
    iget-object v2, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->pendingTaskWorker:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v4, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 98
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "TaskScheduler is stopped!! "

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_4f} :catch_53

    .line 113
    :goto_4f
    return v1

    .line 90
    :catchall_50
    move-exception v1

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v1

    .line 99
    :catch_53
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "TaskScheduler is not finished!! "

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 101
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 102
    :try_start_5e
    iget-object v1, p0, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->pendingTaskWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 101
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_6d

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 106
    const/4 v1, 0x0

    goto :goto_4f

    .line 101
    :catchall_6d
    move-exception v1

    :try_start_6e
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v1

    .line 109
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_70
    sget-object v2, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "TaskScheduler has been already stopped!! "

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    goto :goto_4f
.end method
