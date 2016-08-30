.class public Lcom/lge/cic/eden/imageloader/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mLock:Ljava/lang/Object;


# instance fields
.field private executor:Ljava/util/concurrent/ExecutorService;

.field private invalidCnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final logger:Lcom/lge/cic/eden/utils/Logger;

.field private maxAwaitForOrdering:I

.field private maxQueue:I

.field private maxThreads:I

.field private final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private requestSize:I

.field private workingIdx:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/lge/cic/eden/imageloader/ImageLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lge/cic/eden/imageloader/ImageLoader;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1, "maxThreads"    # I
    .param p2, "maxQueue"    # I

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/lge/cic/eden/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 29
    iput-object v1, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->executor:Ljava/util/concurrent/ExecutorService;

    .line 44
    iput p1, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->maxThreads:I

    .line 45
    iput p2, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->maxQueue:I

    .line 47
    iput-object v1, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->executor:Ljava/util/concurrent/ExecutorService;

    .line 48
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 50
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/lge/cic/eden/imageloader/ImageLoader;->setRequestSize(I)V

    .line 51
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/lge/cic/eden/imageloader/ImageLoader;->setMaxAwaitForOrdering(I)V

    .line 52
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->workingIdx:Ljava/util/SortedSet;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->invalidCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/lge/cic/eden/imageloader/ImageLoader;)I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->requestSize:I

    return v0
.end method

.method static synthetic access$1(Lcom/lge/cic/eden/imageloader/ImageLoader;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->invalidCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/cic/eden/imageloader/ImageLoader;)Lcom/lge/cic/eden/utils/Logger;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->logger:Lcom/lge/cic/eden/utils/Logger;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/cic/eden/imageloader/ImageLoader;)Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/cic/eden/imageloader/ImageLoader;)I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->maxAwaitForOrdering:I

    return v0
.end method

.method static synthetic access$5(Lcom/lge/cic/eden/imageloader/ImageLoader;)Ljava/util/SortedSet;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->workingIdx:Ljava/util/SortedSet;

    return-object v0
.end method

.method private prepare()V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "prepare()"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 60
    iget v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->maxThreads:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->executor:Ljava/util/concurrent/ExecutorService;

    .line 61
    iget-object v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 62
    return-void
.end method

.method private prepareIfNeeded()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 66
    :cond_c
    invoke-direct {p0}, Lcom/lge/cic/eden/imageloader/ImageLoader;->prepare()V

    .line 68
    :cond_f
    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 9
    .param p1, "time"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 234
    iget-object v2, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_6

    .line 235
    const/4 v1, 0x1

    .line 246
    :goto_5
    return v1

    .line 238
    :cond_6
    const/4 v1, 0x0

    .line 240
    .local v1, "terminateFlag":Z
    :try_start_7
    iget-object v2, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    goto :goto_5

    .line 241
    :catch_e
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 243
    iget-object v2, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "InterruptedException at awaitTermination"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public getInvalidCnt()I
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->invalidCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 80
    :cond_c
    const/4 v0, 0x1

    .line 82
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public loadImages(Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "pathes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/lge/cic/eden/imageloader/ImageLoader;->prepareIfNeeded()V

    .line 210
    sget-object v6, Lcom/lge/cic/eden/imageloader/ImageLoader;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 211
    :try_start_6
    iget-object v5, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->workingIdx:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->clear()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_48

    .line 213
    const/4 v2, 0x0

    .line 215
    .local v2, "indexCnt":I
    :try_start_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_c .. :try_end_f} :catch_34
    .catchall {:try_start_c .. :try_end_f} :catchall_48

    move-result-object v5

    move v3, v2

    .end local v2    # "indexCnt":I
    .local v3, "indexCnt":I
    :goto_11
    :try_start_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_14
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_11 .. :try_end_14} :catch_4b
    .catchall {:try_start_11 .. :try_end_14} :catchall_48

    move-result v7

    if-nez v7, :cond_1f

    move v2, v3

    .line 225
    .end local v3    # "indexCnt":I
    .restart local v2    # "indexCnt":I
    :goto_18
    :try_start_18
    iget-object v5, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 210
    monitor-exit v6
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_48

    .line 227
    return-void

    .line 215
    .end local v2    # "indexCnt":I
    .restart local v3    # "indexCnt":I
    :cond_1f
    :try_start_1f
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_25
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1f .. :try_end_25} :catch_4b
    .catchall {:try_start_1f .. :try_end_25} :catchall_48

    .line 216
    .local v4, "path":Ljava/lang/String;
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "indexCnt":I
    .restart local v2    # "indexCnt":I
    move v1, v3

    .line 219
    .local v1, "index":I
    :try_start_28
    iget-object v7, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;

    invoke-direct {v8, p0, v4, v1}, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;-><init>(Lcom/lge/cic/eden/imageloader/ImageLoader;Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_32
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_28 .. :try_end_32} :catch_34
    .catchall {:try_start_28 .. :try_end_32} :catchall_48

    move v3, v2

    .end local v2    # "indexCnt":I
    .restart local v3    # "indexCnt":I
    goto :goto_11

    .line 221
    .end local v1    # "index":I
    .end local v3    # "indexCnt":I
    .end local v4    # "path":Ljava/lang/String;
    .restart local v2    # "indexCnt":I
    :catch_34
    move-exception v0

    .line 222
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_35
    :try_start_35
    iget-object v5, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_18

    .line 210
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    .end local v2    # "indexCnt":I
    :catchall_48
    move-exception v5

    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_35 .. :try_end_4a} :catchall_48

    throw v5

    .line 221
    .restart local v3    # "indexCnt":I
    :catch_4b
    move-exception v0

    move v2, v3

    .end local v3    # "indexCnt":I
    .restart local v2    # "indexCnt":I
    goto :goto_35
.end method

.method public setMaxAwaitForOrdering(I)V
    .registers 2
    .param p1, "maxAwaitForOrdering"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->maxAwaitForOrdering:I

    .line 76
    return-void
.end method

.method public setRequestSize(I)V
    .registers 2
    .param p1, "requestSize"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->requestSize:I

    .line 72
    return-void
.end method

.method public shutdownNow()V
    .registers 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "shutdownNow()"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1b

    .line 94
    sget-object v1, Lcom/lge/cic/eden/imageloader/ImageLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_e
    iget-object v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "  do shutdownNow"

    invoke-virtual {v0, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 94
    monitor-exit v1

    .line 99
    :cond_1b
    return-void

    .line 94
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public take()Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lge/cic/eden/imageloader/ImageLoader;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method
