.class public interface abstract Lcom/lge/cic/eden/service/task/Task;
.super Ljava/lang/Object;
.source "Task.java"


# virtual methods
.method public abstract onComplete()V
.end method

.method public abstract processing(Lcom/lge/cic/eden/db/type/TaskInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
