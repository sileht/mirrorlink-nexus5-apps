.class public Lcom/lge/mirrorlink/vnc/lib/VNCHost;
.super Ljava/lang/Object;
.source "VNCHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "VNCService"

.field private static mInstance:Lcom/lge/mirrorlink/vnc/lib/VNCHost;


# instance fields
.field private clientSession:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

.field private context:Landroid/content/Context;

.field private isListening:Z

.field private listeningPort:I

.field private listeningThread:Ljava/lang/Thread;

.field private serverSocket:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->mInstance:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listeningPort"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->context:Landroid/content/Context;

    .line 47
    iput p2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->listeningPort:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->isListening:Z

    .line 49
    sput-object p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->mInstance:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    .line 44
    return-void
.end method

.method private declared-synchronized cleanupLastClientSession()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 128
    :try_start_1
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->clientSession:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->clientSession:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 129
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->clientSession:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->close()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    .line 126
    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized cleanupServerSocket()V
    .registers 4

    .prologue
    monitor-enter p0

    .line 135
    :try_start_1
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 136
    const-string/jumbo v1, "VNCService"

    const-string/jumbo v2, "VNCHost: server socket is already closed."

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_29

    monitor-exit p0

    .line 137
    return-void

    .line 140
    :cond_14
    :try_start_14
    const-string/jumbo v1, "VNCService"

    const-string/jumbo v2, "VNCHost: cleanup server socket."

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_22} :catch_24
    .catchall {:try_start_14 .. :try_end_22} :catchall_29

    :goto_22
    monitor-exit p0

    .line 133
    return-void

    .line 142
    :catch_24
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/IOException;
    :try_start_25
    invoke-static {v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/Exception;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_22

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static getInstance()Lcom/lge/mirrorlink/vnc/lib/VNCHost;
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 36
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->mInstance:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    if-eqz v0, :cond_e

    .line 37
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->mInstance:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    iget-boolean v0, v0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->isListening:Z

    if-eqz v0, :cond_e

    .line 38
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->mInstance:Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    return-object v0

    .line 41
    :cond_e
    return-object v1
.end method

.method private startNewClientSession(Ljava/net/Socket;)V
    .registers 6
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 120
    const-string/jumbo v0, "VNCService"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "VNCHost: start new client thread - "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 121
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 120
    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    new-instance v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;-><init>(Landroid/content/Context;Ljava/net/Socket;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->clientSession:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    .line 123
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->clientSession:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->start()V

    .line 118
    return-void
.end method


# virtual methods
.method public getClient()Lcom/lge/mirrorlink/vnc/lib/VNCSession;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->clientSession:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    return-object v0
.end method

.method public getListeningPort()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->listeningPort:I

    return v0
.end method

.method public isListening()Z
    .registers 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->isListening:Z

    return v0
.end method

.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 150
    iput-boolean v8, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->isListening:Z

    .line 151
    :goto_5
    iget-boolean v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->isListening:Z

    if-eqz v3, :cond_1a

    .line 153
    :try_start_9
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 154
    const-string/jumbo v3, "VNCService"

    const-string/jumbo v4, "VNCHost: server socket is closed."

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_1a} :catch_5e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_6f

    .line 173
    :cond_1a
    :goto_1a
    iput-boolean v7, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->isListening:Z

    .line 176
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->cleanupServerSocket()V

    .line 177
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->cleanupLastClientSession()V

    .line 148
    return-void

    .line 157
    :cond_23
    :try_start_23
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 158
    .local v2, "s":Ljava/net/Socket;
    const-string/jumbo v3, "VNCService"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "VNCHost: accept new client - "

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 159
    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/16 v5, 0x3a

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 158
    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->cleanupLastClientSession()V

    .line 164
    invoke-direct {p0, v2}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->startNewClientSession(Ljava/net/Socket;)V
    :try_end_5d
    .catch Ljava/net/SocketTimeoutException; {:try_start_23 .. :try_end_5d} :catch_5e
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_5d} :catch_6f

    goto :goto_5

    .line 165
    .end local v2    # "s":Ljava/net/Socket;
    :catch_5e
    move-exception v1

    .line 166
    .local v1, "e":Ljava/net/SocketTimeoutException;
    const-string/jumbo v3, "VNCService"

    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "SocketTimeoutException in VNCHost:"

    aput-object v5, v4, v7

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 167
    .end local v1    # "e":Ljava/net/SocketTimeoutException;
    :catch_6f
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "VNCService"

    const-string/jumbo v4, "IOException in VNCHost:"

    invoke-static {v3, v4, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method public declared-synchronized startListen()V
    .registers 5

    .prologue
    monitor-enter p0

    .line 73
    :try_start_1
    iget-boolean v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->isListening:Z

    if-eqz v1, :cond_23

    .line 74
    const-string/jumbo v1, "VNCService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VNCHost: already listening from port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->listeningPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_8b

    monitor-exit p0

    .line 75
    return-void

    .line 79
    :cond_23
    :try_start_23
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1}, Ljava/net/ServerSocket;-><init>()V

    iput-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->serverSocket:Ljava/net/ServerSocket;

    .line 80
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->serverSocket:Ljava/net/ServerSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 81
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->serverSocket:Ljava/net/ServerSocket;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 82
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->serverSocket:Ljava/net/ServerSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->listeningPort:I

    invoke-direct {v2, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_43} :catch_86
    .catchall {:try_start_23 .. :try_end_43} :catchall_8b

    .line 86
    :goto_43
    const/4 v1, 0x1

    :try_start_44
    iput-boolean v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->isListening:Z

    .line 88
    const-string/jumbo v1, "VNCService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VNCHost: start listening from port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->listeningPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VNC-listen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->listeningPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->listeningThread:Ljava/lang/Thread;

    .line 90
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->listeningThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_84
    .catchall {:try_start_44 .. :try_end_84} :catchall_8b

    monitor-exit p0

    .line 71
    return-void

    .line 83
    :catch_86
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    :try_start_87
    invoke-static {v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/Exception;)V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8b

    goto :goto_43

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_8b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopListen()V
    .registers 7

    .prologue
    monitor-enter p0

    .line 95
    :try_start_1
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->listeningThread:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_41

    if-nez v2, :cond_7

    monitor-exit p0

    .line 96
    return-void

    .line 99
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->cleanupLastClientSession()V

    .line 101
    const-string/jumbo v2, "VNCService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VNCHost: stop listening from port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->listeningPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->isListening:Z
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_41

    .line 104
    :try_start_29
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_3c
    .catchall {:try_start_29 .. :try_end_2e} :catchall_41

    .line 109
    :goto_2e
    :try_start_2e
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->listeningThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_41

    .line 111
    :try_start_33
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->listeningThread:Ljava/lang/Thread;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_3a} :catch_44
    .catchall {:try_start_33 .. :try_end_3a} :catchall_41

    :goto_3a
    monitor-exit p0

    .line 93
    return-void

    .line 105
    :catch_3c
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    :try_start_3d
    invoke-static {v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/Exception;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_2e

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_41
    move-exception v2

    monitor-exit p0

    throw v2

    .line 112
    :catch_44
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_45
    invoke-static {v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/Exception;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_41

    goto :goto_3a
.end method
