.class final Lcom/lge/android/atservice/NativeConnectionManager;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/android/atservice/NativeConnectionManager$ResponseCode;,
        Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;,
        Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z = true


# instance fields
.field private final BUFFER_SIZE:I

.field private TAG:Ljava/lang/String;

.field private mCallbacks:Lcom/lge/android/atservice/INativeDaemonConnectorCallbacks;

.field private mExternalResponseQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mRequestQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSocket:Landroid/net/LocalSocket;

.field private mSocketName:Ljava/lang/String;

.field private mSocketReceiver:Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;

.field private mSocketSender:Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;

.field public mStarted:Z


# direct methods
.method static synthetic -get0(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/lge/android/atservice/NativeConnectionManager;)Lcom/lge/android/atservice/INativeDaemonConnectorCallbacks;
    .registers 2

    iget-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mCallbacks:Lcom/lge/android/atservice/INativeDaemonConnectorCallbacks;

    return-object v0
.end method

.method static synthetic -get2(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/util/concurrent/BlockingQueue;
    .registers 2

    iget-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mExternalResponseQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic -get3(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/io/OutputStream;
    .registers 2

    iget-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mOutputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic -get4(Lcom/lge/android/atservice/NativeConnectionManager;)Ljava/util/concurrent/BlockingQueue;
    .registers 2

    iget-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic -get5(Lcom/lge/android/atservice/NativeConnectionManager;)Landroid/net/LocalSocket;
    .registers 2

    iget-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method constructor <init>(Lcom/lge/android/atservice/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "callbacks"    # Lcom/lge/android/atservice/INativeDaemonConnectorCallbacks;
    .param p2, "socketname"    # Ljava/lang/String;
    .param p3, "responseQueueSize"    # I
    .param p4, "logTag"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    const/16 v0, 0x4000

    iput v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->BUFFER_SIZE:I

    .line 356
    const-string/jumbo v0, "NativeDaemonConnector"

    iput-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->TAG:Ljava/lang/String;

    .line 386
    iput-object p1, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mCallbacks:Lcom/lge/android/atservice/INativeDaemonConnectorCallbacks;

    .line 387
    if-eqz p4, :cond_12

    .line 388
    iput-object p4, p0, Lcom/lge/android/atservice/NativeConnectionManager;->TAG:Ljava/lang/String;

    .line 390
    :cond_12
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    .line 391
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mExternalResponseQueue:Ljava/util/concurrent/BlockingQueue;

    .line 392
    iput-object p2, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocketName:Ljava/lang/String;

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mStarted:Z

    .line 385
    return-void
.end method

.method private CloseSocket()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 413
    iget-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mInputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_c

    .line 415
    :try_start_5
    iget-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_21

    .line 419
    :goto_a
    iput-object v4, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mInputStream:Ljava/io/InputStream;

    .line 421
    :cond_c
    iget-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_17

    .line 423
    :try_start_10
    iget-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_2b

    .line 427
    :goto_15
    iput-object v4, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mOutputStream:Ljava/io/OutputStream;

    .line 431
    :cond_17
    :try_start_17
    iget-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_20

    .line 432
    iget-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_20} :catch_35

    .line 412
    :cond_20
    :goto_20
    return-void

    .line 416
    :catch_21
    move-exception v0

    .line 417
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed closing output stream"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 424
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2b
    move-exception v0

    .line 425
    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed closing output stream"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 434
    .end local v0    # "e":Ljava/io/IOException;
    :catch_35
    move-exception v1

    .line 435
    .local v1, "ex":Ljava/io/IOException;
    iget-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed closing socket"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20
.end method

.method private InitSocket()V
    .registers 5

    .prologue
    .line 398
    :try_start_0
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    iput-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocket:Landroid/net/LocalSocket;

    .line 399
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocketName:Ljava/lang/String;

    .line 400
    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 399
    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 402
    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 403
    iget-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocket:Landroid/net/LocalSocket;

    const/16 v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->setSendBufferSize(I)V

    .line 405
    iget-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mInputStream:Ljava/io/InputStream;

    .line 406
    iget-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mOutputStream:Ljava/io/OutputStream;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 396
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :goto_2c
    return-void

    .line 407
    :catch_2d
    move-exception v1

    .line 408
    .local v1, "ex":Ljava/io/IOException;
    iget-object v2, p0, Lcom/lge/android/atservice/NativeConnectionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed init socket"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method


# virtual methods
.method public SendToSocket(Ljava/lang/String;)V
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 477
    :goto_5
    return-void

    .line 480
    :catch_6
    move-exception v0

    .line 481
    .local v0, "ex":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelWaiting: Failed to putting response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public Start()V
    .registers 3

    .prologue
    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mStarted:Z

    .line 445
    invoke-direct {p0}, Lcom/lge/android/atservice/NativeConnectionManager;->InitSocket()V

    .line 446
    const-string/jumbo v0, "create NativeSocketReceiver"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 447
    new-instance v0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;

    iget-object v1, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mInputStream:Ljava/io/InputStream;

    invoke-direct {v0, p0, v1}, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;-><init>(Lcom/lge/android/atservice/NativeConnectionManager;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocketReceiver:Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;

    .line 448
    const-string/jumbo v0, "create NativeSocketSender"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 449
    new-instance v0, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;

    iget-object v1, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mOutputStream:Ljava/io/OutputStream;

    invoke-direct {v0, p0, v1}, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;-><init>(Lcom/lge/android/atservice/NativeConnectionManager;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocketSender:Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;

    .line 450
    iget-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocketReceiver:Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;

    invoke-virtual {v0}, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->start()V

    .line 451
    iget-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocketSender:Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;

    invoke-virtual {v0}, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->start()V

    .line 452
    const-string/jumbo v0, "atcommand initialize"

    invoke-virtual {p0, v0}, Lcom/lge/android/atservice/NativeConnectionManager;->SendToSocket(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public Stop()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mStarted:Z

    .line 458
    invoke-virtual {p0}, Lcom/lge/android/atservice/NativeConnectionManager;->cancelExternalWaiting()V

    .line 460
    iget-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocketSender:Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocketSender:Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;

    invoke-virtual {v0}, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSocketSender interrput, thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocketSender:Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;

    invoke-virtual {v1}, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocketSender:Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;

    invoke-virtual {v0}, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;->Stop()V

    .line 463
    iput-object v4, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocketSender:Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketSender;

    .line 466
    :cond_37
    iget-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocketReceiver:Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocketReceiver:Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;

    invoke-virtual {v0}, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSocketReceiver interrput, thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocketReceiver:Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;

    invoke-virtual {v1}, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocketReceiver:Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;

    invoke-virtual {v0}, Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;->interrupt()V

    .line 469
    iput-object v4, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mSocketReceiver:Lcom/lge/android/atservice/NativeConnectionManager$NativeSocketReceiver;

    .line 473
    :cond_67
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 474
    invoke-direct {p0}, Lcom/lge/android/atservice/NativeConnectionManager;->CloseSocket()V

    .line 455
    return-void
.end method

.method public cancelExternalWaiting()V
    .registers 4

    .prologue
    .line 721
    :try_start_0
    iget-object v1, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mExternalResponseQueue:Ljava/util/concurrent/BlockingQueue;

    const-string/jumbo v2, "210"

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_9

    .line 719
    :goto_8
    return-void

    .line 722
    :catch_9
    move-exception v0

    .line 723
    .local v0, "ex":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelExternalWaiting: Failed to putting response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public cancelSenderWaiting()V
    .registers 4

    .prologue
    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    const-string/jumbo v2, "StopSender"

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_9

    .line 485
    :goto_8
    return-void

    .line 488
    :catch_9
    move-exception v0

    .line 489
    .local v0, "ex":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelWaiting: Failed to putting response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public clearExternalResponseQueue()V
    .registers 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mExternalResponseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 715
    return-void
.end method

.method public declared-synchronized doExternalRequestCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 14
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/android/atservice/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 667
    :try_start_1
    iget-object v7, p0, Lcom/lge/android/atservice/NativeConnectionManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "doExternalRequestCommand="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",thread-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v7, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mExternalResponseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 670
    invoke-virtual {p0, p1}, Lcom/lge/android/atservice/NativeConnectionManager;->SendToSocket(Ljava/lang/String;)V

    .line 671
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_91

    .line 672
    .local v5, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 673
    .local v1, "complete":Z
    const/4 v0, -0x1

    .line 675
    .local v0, "code":I
    :goto_3c
    if-nez v1, :cond_a8

    .line 677
    :try_start_3e
    iget-object v7, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mExternalResponseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 679
    .local v3, "line":Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/android/atservice/NativeConnectionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Thread-%d, ExternalRequest RSP <- {%s}"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string/jumbo v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_6d} :catch_87
    .catchall {:try_start_3e .. :try_end_6d} :catchall_91

    move-result-object v6

    .line 683
    .local v6, "tokens":[Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_6f
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_74} :catch_94
    .catch Ljava/lang/InterruptedException; {:try_start_6f .. :try_end_74} :catch_87
    .catchall {:try_start_6f .. :try_end_74} :catchall_91

    move-result v0

    .line 689
    const/16 v7, 0xd2

    if-ne v0, v7, :cond_7a

    .line 690
    const/4 v1, 0x1

    .line 693
    :cond_7a
    :try_start_7a
    iget-boolean v7, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mStarted:Z

    if-nez v7, :cond_83

    .line 694
    iget-object v7, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mExternalResponseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 697
    :cond_83
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_86
    .catch Ljava/lang/InterruptedException; {:try_start_7a .. :try_end_86} :catch_87
    .catchall {:try_start_7a .. :try_end_86} :catchall_91

    goto :goto_3c

    .line 698
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "tokens":[Ljava/lang/String;
    :catch_87
    move-exception v2

    .line 699
    .local v2, "ex":Ljava/lang/InterruptedException;
    :try_start_88
    iget-object v7, p0, Lcom/lge/android/atservice/NativeConnectionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Failed to process response"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catchall {:try_start_88 .. :try_end_90} :catchall_91

    goto :goto_3c

    .end local v0    # "code":I
    .end local v1    # "complete":Z
    .end local v2    # "ex":Ljava/lang/InterruptedException;
    .end local v5    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_91
    move-exception v7

    monitor-exit p0

    throw v7

    .line 684
    .restart local v0    # "code":I
    .restart local v1    # "complete":Z
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "tokens":[Ljava/lang/String;
    :catch_94
    move-exception v4

    .line 685
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    :try_start_95
    new-instance v7, Lcom/lge/android/atservice/NativeDaemonConnectorException;

    .line 686
    const-string/jumbo v8, "Invalid response from daemon (%s)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 685
    invoke-direct {v7, v8}, Lcom/lge/android/atservice/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_a8
    .catch Ljava/lang/InterruptedException; {:try_start_95 .. :try_end_a8} :catch_87
    .catchall {:try_start_95 .. :try_end_a8} :catchall_91

    .line 703
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    .end local v6    # "tokens":[Ljava/lang/String;
    :cond_a8
    const/16 v7, 0x190

    if-lt v0, v7, :cond_c7

    .line 704
    const/16 v7, 0x257

    if-gt v0, v7, :cond_c7

    .line 709
    :try_start_b0
    new-instance v8, Lcom/lge/android/atservice/NativeDaemonConnectorException;

    .line 710
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 709
    invoke-direct {v8, v0, p1, v7}, Lcom/lge/android/atservice/NativeDaemonConnectorException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v8
    :try_end_c7
    .catchall {:try_start_b0 .. :try_end_c7} :catchall_91

    :cond_c7
    monitor-exit p0

    .line 712
    return-object v5
.end method

.method public isStarted()Z
    .registers 2

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/lge/android/atservice/NativeConnectionManager;->mStarted:Z

    return v0
.end method
