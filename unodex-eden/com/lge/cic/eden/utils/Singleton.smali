.class public abstract Lcom/lge/cic/eden/utils/Singleton;
.super Ljava/lang/Object;
.source "Singleton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    .local p0, "this":Lcom/lge/cic/eden/utils/Singleton;, "Lcom/lge/cic/eden/utils/Singleton<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 7
    .local p0, "this":Lcom/lge/cic/eden/utils/Singleton;, "Lcom/lge/cic/eden/utils/Singleton<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/cic/eden/utils/Singleton;->instance:Ljava/lang/Object;

    if-nez v0, :cond_b

    .line 8
    invoke-virtual {p0}, Lcom/lge/cic/eden/utils/Singleton;->create()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/utils/Singleton;->instance:Ljava/lang/Object;

    .line 10
    :cond_b
    iget-object v0, p0, Lcom/lge/cic/eden/utils/Singleton;->instance:Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 7
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
