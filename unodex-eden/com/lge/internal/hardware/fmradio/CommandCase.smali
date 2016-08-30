.class public abstract Lcom/lge/internal/hardware/fmradio/CommandCase;
.super Ljava/lang/Object;
.source "CommandCase.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final T:Ljava/lang/String; = "FMFRW_CommandCase"


# instance fields
.field final parameters:[Ljava/lang/Object;

.field final policy:Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;

.field resultsQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field

.field private revoked:Z

.field thread:Ljava/lang/Thread;

.field private timeout:J


# direct methods
.method public constructor <init>(Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;[Ljava/lang/Object;J)V
    .registers 8
    .param p1, "policy"    # Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;
    .param p2, "parameters"    # [Ljava/lang/Object;
    .param p3, "timeout"    # J

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->resultsQueue:Ljava/util/concurrent/BlockingQueue;

    .line 49
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->timeout:J

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->revoked:Z

    .line 63
    iput-object p1, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->policy:Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;

    .line 64
    iput-object p2, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->parameters:[Ljava/lang/Object;

    .line 65
    iput-wide p3, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->timeout:J

    .line 66
    return-void
.end method


# virtual methods
.method final defeatedBy(Lcom/lge/internal/hardware/fmradio/CommandCase;)Z
    .registers 3
    .param p1, "runningCase"    # Lcom/lge/internal/hardware/fmradio/CommandCase;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->policy:Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->policy:Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;

    invoke-interface {v0, p0, p1}, Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;->fights(Lcom/lge/internal/hardware/fmradio/CommandCase;Lcom/lge/internal/hardware/fmradio/CommandCase;)I

    move-result v0

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method final defeats(Lcom/lge/internal/hardware/fmradio/CommandCase;)Z
    .registers 3
    .param p1, "runningCase"    # Lcom/lge/internal/hardware/fmradio/CommandCase;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->policy:Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->policy:Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;

    invoke-interface {v0, p0, p1}, Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;->fights(Lcom/lge/internal/hardware/fmradio/CommandCase;Lcom/lge/internal/hardware/fmradio/CommandCase;)I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method final declared-synchronized isRevoked()Z
    .registers 2

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->revoked:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final varargs notifyCallback(Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 4
    .param p2, "results"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lge/internal/hardware/fmradio/CommandCase;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/internal/hardware/fmradio/CommandNotInProgressException;
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "resultCommandCaseClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lge/internal/hardware/fmradio/CommandCase;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 179
    :cond_8
    new-instance v0, Lcom/lge/internal/hardware/fmradio/CommandNotInProgressException;

    invoke-direct {v0}, Lcom/lge/internal/hardware/fmradio/CommandNotInProgressException;-><init>()V

    throw v0

    .line 181
    :cond_e
    invoke-virtual {p0, p2}, Lcom/lge/internal/hardware/fmradio/CommandCase;->notifyCallback([Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method protected final varargs notifyCallback([Ljava/lang/Object;)V
    .registers 5
    .param p1, "results"    # [Ljava/lang/Object;

    .prologue
    .line 185
    const-string v0, "FMFRW_CommandCase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gets notified of a result."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-nez p1, :cond_1d

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/Object;

    .line 187
    :cond_1d
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->resultsQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method final declared-synchronized revoke()V
    .registers 4

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    const-string v0, "FMFRW_CommandCase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Revoked: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    monitor-enter p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_44

    .line 89
    const/4 v0, 0x1

    :try_start_17
    iput-boolean v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->revoked:Z

    .line 90
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 88
    :goto_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_41

    .line 96
    monitor-exit p0

    return-void

    .line 92
    :cond_25
    :try_start_25
    const-string v0, "FMFRW_CommandCase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is revoked before running."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/CommandCase;->runRevokePrematurely()V

    goto :goto_22

    .line 88
    :catchall_41
    move-exception v0

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_25 .. :try_end_43} :catchall_41

    :try_start_43
    throw v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    .line 87
    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .registers 7

    .prologue
    .line 139
    monitor-enter p0

    .line 140
    :try_start_1
    iget-boolean v2, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->revoked:Z

    if-eqz v2, :cond_7

    monitor-exit p0

    .line 174
    :cond_6
    :goto_6
    return-void

    .line 141
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->thread:Ljava/lang/Thread;

    .line 139
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_47

    .line 144
    const-string v2, "FMFRW_CommandCase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is started."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->parameters:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/lge/internal/hardware/fmradio/CommandCase;->runCommand([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 146
    const-string v2, "FMFRW_CommandCase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has refused to wait for result."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 139
    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v2

    .line 150
    :cond_4a
    const/4 v1, 0x0

    .line 151
    .local v1, "completed":Z
    :goto_4b
    if-nez v1, :cond_6

    .line 153
    :try_start_4d
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->resultsQueue:Ljava/util/concurrent/BlockingQueue;

    iget-wide v4, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->timeout:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 154
    .local v0, "callbackResults":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v0, :cond_c0

    .line 155
    const-string v2, "FMFRW_CommandCase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is notified."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/internal/hardware/fmradio/CommandCase;->runResult([Ljava/lang/Object;)Z

    move-result v1

    .line 157
    const-string v3, "FMFRW_CommandCase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " result decided: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_bd

    const-string v2, "finish"

    :goto_90
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_9b} :catch_9c

    goto :goto_4b

    .line 165
    .end local v0    # "callbackResults":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_9c
    move-exception v2

    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/CommandCase;->runRevoke()Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 166
    const-string v2, "FMFRW_CommandCase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is revoked and terminated."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 157
    .restart local v0    # "callbackResults":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_bd
    :try_start_bd
    const-string v2, "continue"

    goto :goto_90

    .line 159
    :cond_c0
    const-string v2, "FMFRW_CommandCase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has timed out."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/CommandCase;->runTimeout()V
    :try_end_db
    .catch Ljava/lang/InterruptedException; {:try_start_bd .. :try_end_db} :catch_9c

    goto/16 :goto_6

    .line 169
    .end local v0    # "callbackResults":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_dd
    const-string v2, "FMFRW_CommandCase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be terminated and be waited until done."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b
.end method

.method protected abstract runCommand([Ljava/lang/Object;)Z
.end method

.method protected varargs abstract runResult([Ljava/lang/Object;)Z
.end method

.method protected runRevoke()Z
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method protected runRevokePrematurely()V
    .registers 1

    .prologue
    .line 116
    return-void
.end method

.method protected runTimeout()V
    .registers 1

    .prologue
    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->revoked:Z

    if-eqz v0, :cond_20

    const-string v0, "(R)"

    :goto_8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    const-string v0, ""

    goto :goto_8
.end method
