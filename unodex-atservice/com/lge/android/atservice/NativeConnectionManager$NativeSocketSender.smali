.class final Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;
.super Ljava/lang/Thread;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/NativeConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NativeSocketSender"
.end annotation


# instance fields
.field private mOutputtStream:Ljava/io/OutputStream;

.field mRun:Z

.field final synthetic this$0:Lcom/lge/android/atservice/NativeConnectionManager;


# direct methods
.method constructor <init>(Lcom/lge/android/atservice/NativeConnectionManager;Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/android/atservice/NativeConnectionManager;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 593
    iput-object p2, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->mOutputtStream:Ljava/io/OutputStream;

    .line 592
    return-void
.end method

.method private sendCommand(Ljava/lang/String;)V
    .registers 11
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 636
    iget-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v2}, Lcom/lge/android/atservice/NativeConnectionManager;->-get0(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Thread-%d, SND -> {%s}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v2}, Lcom/lge/android/atservice/NativeConnectionManager;->-get3(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/io/OutputStream;

    move-result-object v2

    if-nez v2, :cond_3f

    .line 639
    iget-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v2}, Lcom/lge/android/atservice/NativeConnectionManager;->-get0(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "No connection to daemon"

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 634
    :goto_3e
    return-void

    .line 641
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 642
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 645
    :try_start_47
    iget-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v2}, Lcom/lge/android/atservice/NativeConnectionManager;->-get3(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_58} :catch_59

    goto :goto_3e

    .line 646
    :catch_59
    move-exception v1

    .line 647
    .local v1, "ex":Ljava/io/IOException;
    iget-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v2}, Lcom/lge/android/atservice/NativeConnectionManager;->-get0(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "IOException in sendCommand"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e
.end method

.method private sendToSocket()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    const/4 v1, 0x0

    .line 609
    .local v1, "complete":Z
    const/4 v0, -0x1

    .line 611
    .local v0, "code":I
    :goto_2
    if-nez v1, :cond_2f

    .line 613
    :try_start_4
    iget-object v4, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v4}, Lcom/lge/android/atservice/NativeConnectionManager;->-get4(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 615
    .local v3, "line":Ljava/lang/String;
    const-string/jumbo v4, "StopSender"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 616
    iget-object v4, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v4}, Lcom/lge/android/atservice/NativeConnectionManager;->-get0(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "complete = true"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v1, 0x1

    .line 618
    iget-object v4, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v4}, Lcom/lge/android/atservice/NativeConnectionManager;->-get4(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_2f} :catch_6d

    .line 631
    .end local v3    # "line":Ljava/lang/String;
    :cond_2f
    iget-object v4, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v4}, Lcom/lge/android/atservice/NativeConnectionManager;->-get4(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 607
    return-void

    .line 623
    .restart local v3    # "line":Ljava/lang/String;
    :cond_39
    :try_start_39
    iget-object v4, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v4}, Lcom/lge/android/atservice/NativeConnectionManager;->-get0(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Thread-%d, RSP <- {%d:%s}"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-direct {p0, v3}, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->sendCommand(Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_6c} :catch_6d

    goto :goto_2

    .line 627
    .end local v3    # "line":Ljava/lang/String;
    :catch_6d
    move-exception v2

    .line 628
    .local v2, "ex":Ljava/lang/InterruptedException;
    iget-object v4, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v4}, Lcom/lge/android/atservice/NativeConnectionManager;->-get0(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Failed to process response"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method public Stop()V
    .registers 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    iget-boolean v0, v0, Lcom/lge/android/atservice/NativeConnectionManager;->mStarted:Z

    if-nez v0, :cond_9

    .line 654
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->mRun:Z

    .line 656
    :cond_9
    iget-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-virtual {v0}, Lcom/lge/android/atservice/NativeConnectionManager;->cancelSenderWaiting()V

    .line 652
    return-void
.end method

.method public run()V
    .registers 5

    .prologue
    .line 596
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->mRun:Z

    .line 597
    :goto_3
    iget-boolean v1, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->mRun:Z

    if-eqz v1, :cond_1e

    .line 599
    :try_start_7
    invoke-direct {p0}, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->sendToSocket()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_3

    .line 600
    :catch_b
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v1}, Lcom/lge/android/atservice/NativeConnectionManager;->-get0(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Error in NativeSocketReceiver"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_3

    .line 595
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    return-void
.end method
