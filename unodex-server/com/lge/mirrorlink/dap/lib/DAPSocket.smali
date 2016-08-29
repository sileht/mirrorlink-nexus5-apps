.class public Lcom/lge/mirrorlink/dap/lib/DAPSocket;
.super Ljava/lang/Object;
.source "DAPSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final READ_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "DAPService"


# instance fields
.field protected input:Ljava/io/InputStream;

.field protected mHost:Lcom/lge/mirrorlink/dap/lib/DAPHost;

.field protected mServer:Lcom/lge/mirrorlink/dap/lib/DAPServer;

.field protected mThreadListening:Ljava/lang/Thread;

.field protected mThreadRunning:Z

.field protected output:Ljava/io/OutputStream;

.field protected readLock:Ljava/lang/Object;

.field protected socket:Ljava/net/Socket;

.field protected writeLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lcom/lge/mirrorlink/dap/lib/DAPServer;Lcom/lge/mirrorlink/dap/lib/DAPHost;)V
    .registers 8
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "server"    # Lcom/lge/mirrorlink/dap/lib/DAPServer;
    .param p3, "host"    # Lcom/lge/mirrorlink/dap/lib/DAPHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->mThreadRunning:Z

    .line 32
    iput-object v1, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->mThreadListening:Ljava/lang/Thread;

    .line 35
    iput-object v1, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->mServer:Lcom/lge/mirrorlink/dap/lib/DAPServer;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->readLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->writeLock:Ljava/lang/Object;

    .line 56
    iput-object p1, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->socket:Ljava/net/Socket;

    .line 58
    iput-object p3, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->mHost:Lcom/lge/mirrorlink/dap/lib/DAPHost;

    .line 60
    iput-object p2, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->mServer:Lcom/lge/mirrorlink/dap/lib/DAPServer;

    .line 62
    const-string/jumbo v1, "DAPService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DAPSocket: connected from : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->input:Ljava/io/InputStream;

    .line 66
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->output:Ljava/io/OutputStream;

    .line 72
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "DAP-listening"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->mThreadListening:Ljava/lang/Thread;

    .line 73
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->mThreadListening:Ljava/lang/Thread;

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 74
    iput-boolean v3, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->mThreadRunning:Z

    .line 75
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->mThreadListening:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 54
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 115
    :try_start_1
    iget-object v2, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_3c

    move-result v2

    if-nez v2, :cond_18

    .line 117
    :try_start_9
    iget-object v2, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->input:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_e} :catch_31
    .catchall {:try_start_9 .. :try_end_e} :catchall_3c

    .line 122
    :goto_e
    :try_start_e
    iget-object v2, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->output:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_13} :catch_3f
    .catchall {:try_start_e .. :try_end_13} :catchall_3c

    .line 127
    :goto_13
    :try_start_13
    iget-object v2, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_18
    .catch Ljava/net/SocketException; {:try_start_13 .. :try_end_18} :catch_4a
    .catchall {:try_start_13 .. :try_end_18} :catchall_3c

    .line 133
    :cond_18
    :goto_18
    const/4 v2, 0x0

    :try_start_19
    iput-boolean v2, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->mThreadRunning:Z

    .line 135
    iget-object v2, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->mThreadListening:Ljava/lang/Thread;
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_3c

    if-eqz v2, :cond_2f

    .line 137
    :try_start_1f
    const-string/jumbo v2, "DAPService"

    const-string/jumbo v3, "wait for stop listening thread (100msec)."

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->mThreadListening:Ljava/lang/Thread;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_2f} :catch_55
    .catchall {:try_start_1f .. :try_end_2f} :catchall_3c

    :cond_2f
    :goto_2f
    monitor-exit p0

    .line 113
    return-void

    .line 118
    :catch_31
    move-exception v1

    .line 119
    .local v1, "e":Ljava/net/SocketException;
    :try_start_32
    const-string/jumbo v2, "DAPService"

    const-string/jumbo v3, "DAPSocket: exception occured while closing input stream."

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_3c

    goto :goto_e

    .end local v1    # "e":Ljava/net/SocketException;
    :catchall_3c
    move-exception v2

    monitor-exit p0

    throw v2

    .line 123
    :catch_3f
    move-exception v1

    .line 124
    .restart local v1    # "e":Ljava/net/SocketException;
    :try_start_40
    const-string/jumbo v2, "DAPService"

    const-string/jumbo v3, "DAPSocket: exception occured while closing output stream."

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 128
    .end local v1    # "e":Ljava/net/SocketException;
    :catch_4a
    move-exception v1

    .line 129
    .restart local v1    # "e":Ljava/net/SocketException;
    const-string/jumbo v2, "DAPService"

    const-string/jumbo v3, "DAPSocket: exception occured while closing socket."

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 139
    .end local v1    # "e":Ljava/net/SocketException;
    :catch_55
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "DAPService"

    const-string/jumbo v3, "Interrupted exception occured."

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_40 .. :try_end_5f} :catchall_3c

    goto :goto_2f
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_3
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 99
    return-void

    .line 101
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public read([B)I
    .registers 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->readLock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_3
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->input:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    .line 108
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .registers 19

    .prologue
    .line 148
    const-string/jumbo v14, "DAPService"

    const-string/jumbo v15, "[START] DAPSocket Run()"

    invoke-static {v14, v15}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/16 v14, 0x2000

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 150
    .local v10, "readBuf":Ljava/nio/ByteBuffer;
    const/16 v14, 0x2000

    new-array v2, v14, [B

    .line 151
    .local v2, "bytesRead":[B
    const/4 v8, 0x0

    .line 152
    .local v8, "numBytesRead":I
    const/4 v9, 0x0

    .line 153
    .local v9, "numTotalBytesRead":I
    const-wide/16 v6, 0x0

    .line 154
    .local v6, "lastTime":J
    const-wide/16 v4, 0x0

    .line 156
    .local v4, "currentTime":J
    :cond_19
    :goto_19
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->mThreadRunning:Z

    if-eqz v14, :cond_e4

    .line 157
    const-string/jumbo v14, "DAPService"

    const-string/jumbo v15, "[START] DAPSocket Run() in while"

    invoke-static {v14, v15}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :try_start_28
    new-instance v14, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->input:Ljava/io/InputStream;

    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v14}, Lcom/lge/mirrorlink/dap/lib/DapXMLParser;->parseRequestMessage(Ljava/io/Reader;)Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;

    move-result-object v11

    .line 160
    .local v11, "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    if-eqz v11, :cond_d5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->mServer:Lcom/lge/mirrorlink/dap/lib/DAPServer;

    if-eqz v14, :cond_d5

    .line 161
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->mServer:Lcom/lge/mirrorlink/dap/lib/DAPServer;

    invoke-virtual {v14, v11}, Lcom/lge/mirrorlink/dap/lib/DAPServer;->handleRequest(Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;)Ljava/lang/String;

    move-result-object v12

    .line 162
    .local v12, "strRespMsg":Ljava/lang/String;
    if-eqz v12, :cond_a5

    .line 163
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->write([B)V

    .line 164
    const-string/jumbo v14, "DAPService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "finalstrRespMsg:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/lge/mirrorlink/common/ExtLog;->BytesToHexString([B)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string/jumbo v14, "DAPService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "write response len:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .end local v12    # "strRespMsg":Ljava/lang/String;
    :goto_90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 176
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-nez v14, :cond_9b

    .line 177
    move-wide v6, v4

    .line 179
    :cond_9b
    sub-long v14, v4, v6

    const-wide/16 v16, 0x3e8

    cmp-long v14, v14, v16

    if-lez v14, :cond_19

    goto/16 :goto_19

    .line 167
    .restart local v12    # "strRespMsg":Ljava/lang/String;
    :cond_a5
    const-string/jumbo v14, "DAPService"

    const-string/jumbo v15, "strRespMsg is null"

    invoke-static {v14, v15}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_ae} :catch_af

    goto :goto_90

    .line 183
    .end local v11    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .end local v12    # "strRespMsg":Ljava/lang/String;
    :catch_af
    move-exception v3

    .line 184
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v14, "DAPService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "DAPSocket.run:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->mThreadRunning:Z

    goto/16 :goto_19

    .line 170
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v11    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    :cond_d5
    :try_start_d5
    const-string/jumbo v14, "DAPService"

    const-string/jumbo v15, "request or DAPServer is null"

    invoke-static {v14, v15}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->mThreadRunning:Z
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_e3} :catch_af

    goto :goto_90

    .line 190
    .end local v11    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    :cond_e4
    :try_start_e4
    invoke-virtual/range {p0 .. p0}, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_e8

    .line 146
    :goto_e7
    return-void

    .line 191
    :catch_e8
    move-exception v13

    .local v13, "x":Ljava/io/IOException;
    goto :goto_e7
.end method

.method public write(I)V
    .registers 6
    .param p1, "integer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v2, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->writeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 84
    const/4 v1, 0x4

    :try_start_4
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 85
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 86
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 87
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1b

    monitor-exit v2

    .line 81
    return-void

    .line 83
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :catchall_1b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public write([B)V
    .registers 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_3
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 95
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPSocket;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v1

    .line 91
    return-void

    .line 93
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method
