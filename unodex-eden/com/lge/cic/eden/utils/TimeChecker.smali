.class public Lcom/lge/cic/eden/utils/TimeChecker;
.super Ljava/lang/Object;
.source "TimeChecker.java"


# instance fields
.field private checkCount:I

.field private isStarted:Z

.field private lastStartTime:J

.field private totalTimeElapsed:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide v2, p0, Lcom/lge/cic/eden/utils/TimeChecker;->totalTimeElapsed:J

    .line 14
    iput v0, p0, Lcom/lge/cic/eden/utils/TimeChecker;->checkCount:I

    .line 15
    iput-wide v2, p0, Lcom/lge/cic/eden/utils/TimeChecker;->lastStartTime:J

    .line 16
    iput-boolean v0, p0, Lcom/lge/cic/eden/utils/TimeChecker;->isStarted:Z

    .line 17
    return-void
.end method


# virtual methods
.method public getAverageElapsedTime()J
    .registers 5

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/lge/cic/eden/utils/TimeChecker;->totalTimeElapsed:J

    iget v2, p0, Lcom/lge/cic/eden/utils/TimeChecker;->checkCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalCheckCount()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/lge/cic/eden/utils/TimeChecker;->checkCount:I

    return v0
.end method

.method public getTotalElapsedTime()J
    .registers 3

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/lge/cic/eden/utils/TimeChecker;->totalTimeElapsed:J

    return-wide v0
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    .line 19
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/lge/cic/eden/utils/TimeChecker;->isStarted:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-eqz v0, :cond_7

    .line 24
    :goto_5
    monitor-exit p0

    return-void

    .line 22
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/lge/cic/eden/utils/TimeChecker;->isStarted:Z

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/cic/eden/utils/TimeChecker;->lastStartTime:J
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_11

    goto :goto_5

    .line 19
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 7

    .prologue
    .line 27
    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Lcom/lge/cic/eden/utils/TimeChecker;->isStarted:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    if-nez v2, :cond_7

    .line 34
    :goto_5
    monitor-exit p0

    return-void

    .line 30
    :cond_7
    const/4 v2, 0x0

    :try_start_8
    iput-boolean v2, p0, Lcom/lge/cic/eden/utils/TimeChecker;->isStarted:Z

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lge/cic/eden/utils/TimeChecker;->lastStartTime:J

    sub-long v0, v2, v4

    .line 32
    .local v0, "elapsedTime":J
    iget-wide v2, p0, Lcom/lge/cic/eden/utils/TimeChecker;->totalTimeElapsed:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/lge/cic/eden/utils/TimeChecker;->totalTimeElapsed:J

    .line 33
    iget v2, p0, Lcom/lge/cic/eden/utils/TimeChecker;->checkCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/cic/eden/utils/TimeChecker;->checkCount:I
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1e

    goto :goto_5

    .line 27
    .end local v0    # "elapsedTime":J
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method
