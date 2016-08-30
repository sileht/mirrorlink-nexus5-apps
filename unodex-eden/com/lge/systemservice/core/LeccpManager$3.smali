.class Lcom/lge/systemservice/core/LeccpManager$3;
.super Ljava/lang/Thread;
.source "LeccpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/LeccpManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/LeccpManager;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/LeccpManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpManager$3;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    .line 713
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 715
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 717
    iget-object v1, p0, Lcom/lge/systemservice/core/LeccpManager$3;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    new-instance v2, Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;-><init>(Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;)V

    invoke-static {v1, v2}, Lcom/lge/systemservice/core/LeccpManager;->access$2(Lcom/lge/systemservice/core/LeccpManager;Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;)V

    .line 719
    iget-object v1, p0, Lcom/lge/systemservice/core/LeccpManager$3;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    # getter for: Lcom/lge/systemservice/core/LeccpManager;->mMessageLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/lge/systemservice/core/LeccpManager;->access$3(Lcom/lge/systemservice/core/LeccpManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 720
    :goto_15
    :try_start_15
    iget-object v1, p0, Lcom/lge/systemservice/core/LeccpManager$3;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    # getter for: Lcom/lge/systemservice/core/LeccpManager;->mTempMessageQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/lge/systemservice/core/LeccpManager;->access$4(Lcom/lge/systemservice/core/LeccpManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 724
    iget-object v1, p0, Lcom/lge/systemservice/core/LeccpManager$3;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    # getter for: Lcom/lge/systemservice/core/LeccpManager;->mTempMessageQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/lge/systemservice/core/LeccpManager;->access$4(Lcom/lge/systemservice/core/LeccpManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 719
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_45

    .line 727
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 728
    return-void

    .line 721
    :cond_2f
    :try_start_2f
    iget-object v1, p0, Lcom/lge/systemservice/core/LeccpManager$3;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    # getter for: Lcom/lge/systemservice/core/LeccpManager;->mTempMessageQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/lge/systemservice/core/LeccpManager;->access$4(Lcom/lge/systemservice/core/LeccpManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 722
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/systemservice/core/LeccpManager$3;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    # getter for: Lcom/lge/systemservice/core/LeccpManager;->mHandler:Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;
    invoke-static {v1}, Lcom/lge/systemservice/core/LeccpManager;->access$5(Lcom/lge/systemservice/core/LeccpManager;)Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_15

    .line 719
    .end local v0    # "message":Landroid/os/Message;
    :catchall_45
    move-exception v1

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_2f .. :try_end_47} :catchall_45

    throw v1
.end method
