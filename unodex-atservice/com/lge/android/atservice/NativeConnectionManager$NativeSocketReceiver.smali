.class final Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;
.super Ljava/lang/Thread;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/NativeConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NativeSocketReceiver"
.end annotation


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field mRun:Z

.field final synthetic this$0:Lcom/lge/android/atservice/NativeConnectionManager;


# direct methods
.method constructor <init>(Lcom/lge/android/atservice/NativeConnectionManager;Ljava/io/InputStream;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/android/atservice/NativeConnectionManager;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 498
    iput-object p2, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->mInputStream:Ljava/io/InputStream;

    .line 497
    return-void
.end method

.method private listenToSocket()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    const/16 v13, 0x4000

    :try_start_2
    new-array v1, v13, [B

    .line 515
    .local v1, "buffer":[B
    const/4 v11, 0x0

    .line 518
    .local v11, "start":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->mInputStream:Ljava/io/InputStream;

    rsub-int v14, v11, 0x4000

    invoke-virtual {v13, v1, v11, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 519
    .local v3, "count":I
    if-gez v3, :cond_12

    .line 512
    return-void

    .line 523
    :cond_12
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_13
    if-ge v8, v3, :cond_dc

    .line 524
    aget-byte v13, v1, v8

    if-nez v13, :cond_83

    .line 525
    new-instance v4, Ljava/lang/String;

    sub-int v13, v8, v11

    invoke-direct {v4, v1, v11, v13}, Ljava/lang/String;-><init>([BII)V

    .line 527
    .local v4, "event":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v13}, Lcom/lge/android/atservice/NativeConnectionManager;->-get0(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "RCV <- {%s}"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string/jumbo v13, " "

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_3f} :catch_bc

    move-result-object v12

    .line 532
    .local v12, "tokens":[Ljava/lang/String;
    const/4 v13, 0x0

    :try_start_41
    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_46} :catch_a1
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_46} :catch_bc

    move-result v2

    .line 534
    .local v2, "code":I
    const/16 v13, 0x258

    if-lt v2, v13, :cond_72

    .line 536
    :try_start_4b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v13}, Lcom/lge/android/atservice/NativeConnectionManager;->-get1(Lcom/lge/android/atservice/NativeConnectionManager;)Lcom/lge/android/atservice/INativeDaemonConnectorCallbacks;

    move-result-object v13

    invoke-interface {v13, v2, v4, v12}, Lcom/lge/android/atservice/INativeDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_72

    .line 537
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v13}, Lcom/lge/android/atservice/NativeConnectionManager;->-get0(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/lang/String;

    move-result-object v13

    .line 538
    const-string/jumbo v14, "Unhandled event (%s)"

    .line 537
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    .line 538
    const/16 v16, 0x0

    aput-object v4, v15, v16

    .line 537
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_72} :catch_86
    .catch Ljava/lang/NumberFormatException; {:try_start_4b .. :try_end_72} :catch_a1
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_72} :catch_bc

    .line 546
    :cond_72
    :goto_72
    const/16 v13, 0xd2

    if-ne v2, v13, :cond_81

    .line 547
    :try_start_76
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v13}, Lcom/lge/android/atservice/NativeConnectionManager;->-get2(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v13

    invoke-interface {v13, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_81
    .catch Ljava/lang/InterruptedException; {:try_start_76 .. :try_end_81} :catch_cc
    .catch Ljava/lang/NumberFormatException; {:try_start_76 .. :try_end_81} :catch_a1
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_81} :catch_bc

    .line 556
    .end local v2    # "code":I
    :cond_81
    :goto_81
    add-int/lit8 v11, v8, 0x1

    .line 523
    .end local v4    # "event":Ljava/lang/String;
    .end local v12    # "tokens":[Ljava/lang/String;
    :cond_83
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    .line 540
    .restart local v2    # "code":I
    .restart local v4    # "event":Ljava/lang/String;
    .restart local v12    # "tokens":[Ljava/lang/String;
    :catch_86
    move-exception v6

    .line 541
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_87
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v13}, Lcom/lge/android/atservice/NativeConnectionManager;->-get0(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/lang/String;

    move-result-object v13

    .line 542
    const-string/jumbo v14, "Error handling \'%s\'"

    .line 541
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    .line 542
    const/16 v16, 0x0

    aput-object v4, v15, v16

    .line 541
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_87 .. :try_end_a0} :catch_a1
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_a0} :catch_bc

    goto :goto_72

    .line 553
    .end local v2    # "code":I
    .end local v6    # "ex":Ljava/lang/Exception;
    :catch_a1
    move-exception v9

    .line 554
    .local v9, "nfe":Ljava/lang/NumberFormatException;
    :try_start_a2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v13}, Lcom/lge/android/atservice/NativeConnectionManager;->-get0(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "Bad msg (%s)"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_bb} :catch_bc

    goto :goto_81

    .line 567
    .end local v1    # "buffer":[B
    .end local v3    # "count":I
    .end local v4    # "event":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "nfe":Ljava/lang/NumberFormatException;
    .end local v11    # "start":I
    .end local v12    # "tokens":[Ljava/lang/String;
    :catch_bc
    move-exception v5

    .line 568
    .local v5, "ex":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v13}, Lcom/lge/android/atservice/NativeConnectionManager;->-get0(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "Communications error"

    invoke-static {v13, v14, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    throw v5

    .line 549
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v1    # "buffer":[B
    .restart local v2    # "code":I
    .restart local v3    # "count":I
    .restart local v4    # "event":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v11    # "start":I
    .restart local v12    # "tokens":[Ljava/lang/String;
    :catch_cc
    move-exception v7

    .line 550
    .local v7, "ex":Ljava/lang/InterruptedException;
    :try_start_cd
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v13}, Lcom/lge/android/atservice/NativeConnectionManager;->-get0(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "Failed to put response onto ExternalResponseQueue"

    invoke-static {v13, v14, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_db
    .catch Ljava/lang/NumberFormatException; {:try_start_cd .. :try_end_db} :catch_a1
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_db} :catch_bc

    goto :goto_81

    .line 559
    .end local v2    # "code":I
    .end local v4    # "event":Ljava/lang/String;
    .end local v7    # "ex":Ljava/lang/InterruptedException;
    .end local v12    # "tokens":[Ljava/lang/String;
    :cond_dc
    if-eq v11, v3, :cond_e7

    .line 560
    rsub-int v10, v11, 0x4000

    .line 561
    .local v10, "remaining":I
    const/4 v13, 0x0

    :try_start_e1
    invoke-static {v1, v11, v1, v13, v10}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_bc

    .line 562
    move v11, v10

    goto/16 :goto_5

    .line 564
    .end local v10    # "remaining":I
    :cond_e7
    const/4 v11, 0x0

    goto/16 :goto_5
.end method


# virtual methods
.method public interrupt()V
    .registers 4

    .prologue
    .line 574
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 576
    :try_start_3
    iget-object v1, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    iget-boolean v1, v1, Lcom/lge/android/atservice/NativeConnectionManager;->mStarted:Z

    if-nez v1, :cond_c

    .line 577
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->mRun:Z

    .line 579
    :cond_c
    iget-object v1, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v1}, Lcom/lge/android/atservice/NativeConnectionManager;->-get5(Lcom/lge/android/atservice/NativeConnectionManager;)Landroid/net/LocalSocket;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 580
    iget-object v1, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v1}, Lcom/lge/android/atservice/NativeConnectionManager;->-get5(Lcom/lge/android/atservice/NativeConnectionManager;)Landroid/net/LocalSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LocalSocket;->shutdownInput()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1d} :catch_1e

    .line 573
    :cond_1d
    :goto_1d
    return-void

    .line 582
    :catch_1e
    move-exception v0

    .line 583
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v1}, Lcom/lge/android/atservice/NativeConnectionManager;->-get0(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Enter interrupt exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public run()V
    .registers 5

    .prologue
    .line 501
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->mRun:Z

    .line 502
    :goto_3
    iget-boolean v1, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->mRun:Z

    if-eqz v1, :cond_1e

    .line 504
    :try_start_7
    invoke-direct {p0}, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->listenToSocket()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_3

    .line 505
    :catch_b
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-static {v1}, Lcom/lge/android/atservice/NativeConnectionManager;->-get0(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Error in NativeSocketReceiver"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_3

    .line 500
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    return-void
.end method
