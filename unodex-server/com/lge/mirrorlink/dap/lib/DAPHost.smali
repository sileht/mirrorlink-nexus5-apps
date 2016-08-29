.class public Lcom/lge/mirrorlink/dap/lib/DAPHost;
.super Ljava/lang/Object;
.source "DAPHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "DAPService"


# instance fields
.field acceptSocket:Ljava/net/Socket;

.field protected mContext:Landroid/content/Context;

.field protected mDAPServer:Lcom/lge/mirrorlink/dap/lib/DAPServer;

.field protected mDAPSocket:Lcom/lge/mirrorlink/dap/lib/DAPSocket;

.field protected mPort:I

.field protected mRunning:Z

.field protected mServerSocket:Ljava/net/ServerSocket;

.field protected mThreadHost:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/mirrorlink/dap/lib/DAPServer;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "server"    # Lcom/lge/mirrorlink/dap/lib/DAPServer;
    .param p3, "port"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mContext:Landroid/content/Context;

    .line 125
    iput v1, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mPort:I

    .line 126
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mDAPSocket:Lcom/lge/mirrorlink/dap/lib/DAPSocket;

    .line 127
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mServerSocket:Ljava/net/ServerSocket;

    .line 128
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mDAPServer:Lcom/lge/mirrorlink/dap/lib/DAPServer;

    .line 129
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mThreadHost:Ljava/lang/Thread;

    .line 130
    iput-boolean v1, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mRunning:Z

    .line 131
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->acceptSocket:Ljava/net/Socket;

    .line 28
    iput-object p1, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mContext:Landroid/content/Context;

    .line 29
    iput p3, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mPort:I

    .line 30
    iput-object p2, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mDAPServer:Lcom/lge/mirrorlink/dap/lib/DAPServer;

    .line 26
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 7

    .prologue
    monitor-enter p0

    .line 95
    :try_start_1
    iget-object v3, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mDAPSocket:Lcom/lge/mirrorlink/dap/lib/DAPSocket;

    if-eqz v3, :cond_a

    .line 96
    iget-object v3, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mDAPSocket:Lcom/lge/mirrorlink/dap/lib/DAPSocket;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->close()V

    .line 98
    :cond_a
    iget-object v3, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->acceptSocket:Ljava/net/Socket;

    if-eqz v3, :cond_13

    .line 99
    iget-object v3, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 101
    :cond_13
    iget-object v3, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v3, :cond_1c

    .line 102
    iget-object v3, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    .line 104
    :cond_1c
    iget-object v3, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mThreadHost:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_21} :catch_5e
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_21} :catch_42
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_21} :catch_23
    .catchall {:try_start_1 .. :try_end_21} :catchall_3f

    :goto_21
    monitor-exit p0

    .line 92
    return-void

    .line 109
    :catch_23
    move-exception v2

    .line 110
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_24
    const-string/jumbo v3, "DAPService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[DAPHost.close]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_24 .. :try_end_3e} :catchall_3f

    goto :goto_21

    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catchall_3f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 107
    :catch_42
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_43
    const-string/jumbo v3, "DAPService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[DAPHost.close]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 105
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_5e
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "DAPService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[DAPHost.close]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_43 .. :try_end_79} :catchall_3f

    goto :goto_21
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_b

    .line 83
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0

    .line 85
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isStarted()Z
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mThreadHost:Ljava/lang/Thread;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mThreadHost:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_10

    .line 117
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .registers 6

    .prologue
    .line 57
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mRunning:Z

    .line 58
    :goto_3
    iget-boolean v2, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mRunning:Z

    if-eqz v2, :cond_c9

    .line 60
    :try_start_7
    const-string/jumbo v2, "DAPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DAPHost:open listen socket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_3c
    const-string/jumbo v2, "DAPService"

    const-string/jumbo v3, "DAPHost: wait for client..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v2, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->acceptSocket:Ljava/net/Socket;

    .line 65
    iget-object v2, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mDAPSocket:Lcom/lge/mirrorlink/dap/lib/DAPSocket;

    if-eqz v2, :cond_5f

    .line 66
    const-string/jumbo v2, "DAPService"

    const-string/jumbo v3, "DAPHost: close previous session."

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mDAPSocket:Lcom/lge/mirrorlink/dap/lib/DAPSocket;

    invoke-virtual {v2}, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->close()V

    .line 69
    :cond_5f
    const-string/jumbo v2, "DAPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DAPHost: accept new client - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v2, Lcom/lge/mirrorlink/dap/lib/DAPSocket;

    iget-object v3, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->acceptSocket:Ljava/net/Socket;

    iget-object v4, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mDAPServer:Lcom/lge/mirrorlink/dap/lib/DAPServer;

    invoke-direct {v2, v3, v4, p0}, Lcom/lge/mirrorlink/dap/lib/DAPSocket;-><init>(Ljava/net/Socket;Lcom/lge/mirrorlink/dap/lib/DAPServer;Lcom/lge/mirrorlink/dap/lib/DAPHost;)V

    iput-object v2, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mDAPSocket:Lcom/lge/mirrorlink/dap/lib/DAPSocket;
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_8e} :catch_8f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_8e} :catch_ac

    goto :goto_3c

    .line 72
    :catch_8f
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "DAPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[DAPHost.run] IOException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 74
    .end local v0    # "e":Ljava/io/IOException;
    :catch_ac
    move-exception v1

    .line 75
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v2, "DAPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[DAPHost.run] XmlPullParserException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 55
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_c9
    return-void
.end method

.method public declared-synchronized startServer()V
    .registers 5

    .prologue
    monitor-enter p0

    .line 36
    :try_start_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DAPAttestator-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mThreadHost:Ljava/lang/Thread;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_4d

    .line 39
    :try_start_1e
    new-instance v1, Ljava/net/ServerSocket;

    iget v2, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mPort:I

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_27} :catch_31
    .catchall {:try_start_1e .. :try_end_27} :catchall_4d

    .line 45
    :goto_27
    const/4 v1, 0x1

    :try_start_28
    iput-boolean v1, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mRunning:Z

    .line 46
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mThreadHost:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_4d

    monitor-exit p0

    .line 34
    return-void

    .line 41
    :catch_31
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/IOException;
    :try_start_32
    const-string/jumbo v1, "DAPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[DAPHost.startServer] IOException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_32 .. :try_end_4c} :catchall_4d

    goto :goto_27

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_4d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopServer()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 51
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPHost;->mRunning:Z

    .line 52
    invoke-virtual {p0}, Lcom/lge/mirrorlink/dap/lib/DAPHost;->close()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 49
    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
