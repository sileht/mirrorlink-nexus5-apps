.class final Lcom/lge/android/atservice/NativeDaemonConnector;
.super Ljava/lang/Thread;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/android/atservice/NativeDaemonConnector$ResponseCode;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z


# instance fields
.field private final BUFFER_SIZE:I

.field private TAG:Ljava/lang/String;

.field private mCallbacks:Lcom/lge/android/atservice/INativeDaemonConnectorCallbacks;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mResponseQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRun:Z

.field mSocket:Landroid/net/LocalSocket;

.field private mSocketName:Ljava/lang/String;

.field public mStopped:Z


# direct methods
.method constructor <init>(Lcom/lge/android/atservice/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "callbacks"    # Lcom/lge/android/atservice/INativeDaemonConnectorCallbacks;
    .param p2, "socketname"    # Ljava/lang/String;
    .param p3, "responseQueueSize"    # I
    .param p4, "logTag"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 47
    const-string/jumbo v0, "NativeDaemonConnector"

    iput-object v0, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->TAG:Ljava/lang/String;

    .line 51
    const/16 v0, 0x4000

    iput v0, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->BUFFER_SIZE:I

    .line 75
    iput-object p1, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->mCallbacks:Lcom/lge/android/atservice/INativeDaemonConnectorCallbacks;

    .line 76
    if-eqz p4, :cond_12

    .line 77
    iput-object p4, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->TAG:Ljava/lang/String;

    .line 79
    :cond_12
    iput-object p2, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->mSocketName:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->mStopped:Z

    .line 74
    return-void
.end method

.method private listenToSocket()V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    new-instance v17, Landroid/net/LocalSocket;

    invoke-direct/range {v17 .. v17}, Landroid/net/LocalSocket;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/atservice/NativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    .line 99
    new-instance v2, Landroid/net/LocalSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->mSocketName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 100
    sget-object v18, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 99
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 102
    .local v2, "address":Landroid/net/LocalSocketAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v17, v0

    const/16 v18, 0x4000

    invoke-virtual/range {v17 .. v18}, Landroid/net/LocalSocket;->setSendBufferSize(I)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->mCallbacks:Lcom/lge/android/atservice/INativeDaemonConnectorCallbacks;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/lge/android/atservice/INativeDaemonConnectorCallbacks;->onDaemonConnected()V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 107
    .local v12, "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/atservice/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 109
    const/16 v17, 0x4000

    move/from16 v0, v17

    new-array v3, v0, [B

    .line 110
    .local v3, "buffer":[B
    const/4 v15, 0x0

    .line 113
    .local v15, "start":I
    :goto_5c
    rsub-int v0, v15, 0x4000

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v3, v15, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_65} :catch_138
    .catchall {:try_start_0 .. :try_end_65} :catchall_14a

    move-result v5

    .line 114
    .local v5, "count":I
    if-gez v5, :cond_95

    .line 163
    monitor-enter p0

    .line 164
    :try_start_69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_1af

    if-eqz v17, :cond_82

    .line 166
    :try_start_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7a} :catch_19c
    .catchall {:try_start_71 .. :try_end_7a} :catchall_1af

    .line 170
    :goto_7a
    const/16 v17, 0x0

    :try_start_7c
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/atservice/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_1af

    :cond_82
    monitor-exit p0

    .line 175
    :try_start_83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v17, v0

    if-eqz v17, :cond_94

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LocalSocket;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_94} :catch_1b2

    .line 95
    :cond_94
    :goto_94
    return-void

    .line 118
    :cond_95
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_96
    if-ge v11, v5, :cond_18b

    .line 119
    :try_start_98
    aget-byte v17, v3, v11

    if-nez v17, :cond_f5

    .line 120
    new-instance v7, Ljava/lang/String;

    sub-int v17, v11, v15

    move/from16 v0, v17

    invoke-direct {v7, v3, v15, v0}, Ljava/lang/String;-><init>([BII)V

    .line 125
    .local v7, "event":Ljava/lang/String;
    const-string/jumbo v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_ad} :catch_138
    .catchall {:try_start_98 .. :try_end_ad} :catchall_14a

    move-result-object v16

    .line 127
    .local v16, "tokens":[Ljava/lang/String;
    const/16 v17, 0x0

    :try_start_b0
    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b5
    .catch Ljava/lang/NumberFormatException; {:try_start_b0 .. :try_end_b5} :catch_11a
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b5} :catch_138
    .catchall {:try_start_b0 .. :try_end_b5} :catchall_14a

    move-result v4

    .line 129
    .local v4, "code":I
    const/16 v17, 0x258

    move/from16 v0, v17

    if-lt v4, v0, :cond_e8

    .line 131
    :try_start_bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->mCallbacks:Lcom/lge/android/atservice/INativeDaemonConnectorCallbacks;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v4, v7, v1}, Lcom/lge/android/atservice/INativeDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_e8

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 133
    const-string/jumbo v18, "Unhandled event (%s)"

    .line 132
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    .line 133
    const/16 v20, 0x0

    aput-object v7, v19, v20

    .line 132
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_e8} :catch_f8
    .catch Ljava/lang/NumberFormatException; {:try_start_bc .. :try_end_e8} :catch_11a
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_e8} :catch_138
    .catchall {:try_start_bc .. :try_end_e8} :catchall_14a

    .line 141
    :cond_e8
    :goto_e8
    :try_start_e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_f3
    .catch Ljava/lang/InterruptedException; {:try_start_e8 .. :try_end_f3} :catch_178
    .catch Ljava/lang/NumberFormatException; {:try_start_e8 .. :try_end_f3} :catch_11a
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_f3} :catch_138
    .catchall {:try_start_e8 .. :try_end_f3} :catchall_14a

    .line 148
    .end local v4    # "code":I
    :goto_f3
    add-int/lit8 v15, v11, 0x1

    .line 118
    .end local v7    # "event":Ljava/lang/String;
    .end local v16    # "tokens":[Ljava/lang/String;
    :cond_f5
    add-int/lit8 v11, v11, 0x1

    goto :goto_96

    .line 135
    .restart local v4    # "code":I
    .restart local v7    # "event":Ljava/lang/String;
    .restart local v16    # "tokens":[Ljava/lang/String;
    :catch_f8
    move-exception v9

    .line 136
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 137
    const-string/jumbo v18, "Error handling \'%s\'"

    .line 136
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    .line 137
    const/16 v20, 0x0

    aput-object v7, v19, v20

    .line 136
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_119
    .catch Ljava/lang/NumberFormatException; {:try_start_f9 .. :try_end_119} :catch_11a
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_119} :catch_138
    .catchall {:try_start_f9 .. :try_end_119} :catchall_14a

    goto :goto_e8

    .line 145
    .end local v4    # "code":I
    .end local v9    # "ex":Ljava/lang/Exception;
    :catch_11a
    move-exception v13

    .line 146
    .local v13, "nfe":Ljava/lang/NumberFormatException;
    :try_start_11b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "Bad msg (%s)"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v7, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_137} :catch_138
    .catchall {:try_start_11b .. :try_end_137} :catchall_14a

    goto :goto_f3

    .line 159
    .end local v2    # "address":Landroid/net/LocalSocketAddress;
    .end local v3    # "buffer":[B
    .end local v5    # "count":I
    .end local v7    # "event":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "inputStream":Ljava/io/InputStream;
    .end local v13    # "nfe":Ljava/lang/NumberFormatException;
    .end local v15    # "start":I
    .end local v16    # "tokens":[Ljava/lang/String;
    :catch_138
    move-exception v8

    .line 160
    .local v8, "ex":Ljava/io/IOException;
    :try_start_139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "Communications error"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    throw v8
    :try_end_14a
    .catchall {:try_start_139 .. :try_end_14a} :catchall_14a

    .line 162
    .end local v8    # "ex":Ljava/io/IOException;
    :catchall_14a
    move-exception v17

    .line 163
    monitor-enter p0

    .line 164
    :try_start_14c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0
    :try_end_152
    .catchall {:try_start_14c .. :try_end_152} :catchall_1d7

    if-eqz v18, :cond_165

    .line 166
    :try_start_154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_15d
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_15d} :catch_1c5
    .catchall {:try_start_154 .. :try_end_15d} :catchall_1d7

    .line 170
    :goto_15d
    const/16 v18, 0x0

    :try_start_15f
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/atservice/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_165
    .catchall {:try_start_15f .. :try_end_165} :catchall_1d7

    :cond_165
    monitor-exit p0

    .line 175
    :try_start_166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v18, v0

    if-eqz v18, :cond_177

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/LocalSocket;->close()V
    :try_end_177
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_177} :catch_1da

    .line 162
    :cond_177
    :goto_177
    throw v17

    .line 142
    .restart local v2    # "address":Landroid/net/LocalSocketAddress;
    .restart local v3    # "buffer":[B
    .restart local v4    # "code":I
    .restart local v5    # "count":I
    .restart local v7    # "event":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v12    # "inputStream":Ljava/io/InputStream;
    .restart local v15    # "start":I
    .restart local v16    # "tokens":[Ljava/lang/String;
    :catch_178
    move-exception v10

    .line 143
    .local v10, "ex":Ljava/lang/InterruptedException;
    :try_start_179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "Failed to put response onto queue"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_189
    .catch Ljava/lang/NumberFormatException; {:try_start_179 .. :try_end_189} :catch_11a
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_189} :catch_138
    .catchall {:try_start_179 .. :try_end_189} :catchall_14a

    goto/16 :goto_f3

    .line 151
    .end local v4    # "code":I
    .end local v7    # "event":Ljava/lang/String;
    .end local v10    # "ex":Ljava/lang/InterruptedException;
    .end local v16    # "tokens":[Ljava/lang/String;
    :cond_18b
    if-eq v15, v5, :cond_199

    .line 152
    rsub-int v14, v15, 0x4000

    .line 153
    .local v14, "remaining":I
    const/16 v17, 0x0

    :try_start_191
    move/from16 v0, v17

    invoke-static {v3, v15, v3, v0, v14}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_196
    .catch Ljava/io/IOException; {:try_start_191 .. :try_end_196} :catch_138
    .catchall {:try_start_191 .. :try_end_196} :catchall_14a

    .line 154
    move v15, v14

    goto/16 :goto_5c

    .line 156
    .end local v14    # "remaining":I
    :cond_199
    const/4 v15, 0x0

    goto/16 :goto_5c

    .line 167
    .end local v11    # "i":I
    :catch_19c
    move-exception v6

    .line 168
    .local v6, "e":Ljava/io/IOException;
    :try_start_19d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "Failed closing output stream"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1ad
    .catchall {:try_start_19d .. :try_end_1ad} :catchall_1af

    goto/16 :goto_7a

    .line 163
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1af
    move-exception v17

    monitor-exit p0

    throw v17

    .line 178
    :catch_1b2
    move-exception v8

    .line 179
    .restart local v8    # "ex":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "Failed closing socket"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_94

    .line 167
    .end local v2    # "address":Landroid/net/LocalSocketAddress;
    .end local v3    # "buffer":[B
    .end local v5    # "count":I
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v12    # "inputStream":Ljava/io/InputStream;
    .end local v15    # "start":I
    :catch_1c5
    move-exception v6

    .line 168
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_1c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Failed closing output stream"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d6
    .catchall {:try_start_1c6 .. :try_end_1d6} :catchall_1d7

    goto :goto_15d

    .line 163
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1d7
    move-exception v17

    monitor-exit p0

    throw v17

    .line 178
    :catch_1da
    move-exception v8

    .line 179
    .restart local v8    # "ex":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Failed closing socket"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_177
.end method

.method private sendCommand(Ljava/lang/String;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/android/atservice/NativeDaemonConnector;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method private sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/String;

    .prologue
    .line 196
    monitor-enter p0

    .line 200
    :try_start_1
    iget-object v2, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v2, :cond_14

    .line 201
    iget-object v2, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No connection to daemon"

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_3a

    :goto_12
    monitor-exit p0

    .line 195
    return-void

    .line 203
    :cond_14
    :try_start_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1e

    .line 205
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_1e
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_3a

    .line 210
    :try_start_22
    iget-object v2, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2f} :catch_30
    .catchall {:try_start_22 .. :try_end_2f} :catchall_3a

    goto :goto_12

    .line 211
    :catch_30
    move-exception v1

    .line 212
    .local v1, "ex":Ljava/io/IOException;
    :try_start_31
    iget-object v2, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "IOException in sendCommand"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_3a

    goto :goto_12

    .line 196
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_3a
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public SendRequest(Ljava/lang/String;)V
    .registers 7
    .param p1, "req"    # Ljava/lang/String;

    .prologue
    .line 313
    iget-object v2, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v2, :cond_12

    .line 314
    iget-object v2, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No connection to daemon"

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    :goto_11
    return-void

    .line 316
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    :try_start_1b
    iget-object v2, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_28} :catch_29

    goto :goto_11

    .line 321
    :catch_29
    move-exception v1

    .line 322
    .local v1, "ex":Ljava/io/IOException;
    iget-object v2, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "IOException in SendRequest"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public cancelWaiting()V
    .registers 4

    .prologue
    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    const-string/jumbo v2, "200"

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_9

    .line 327
    :goto_8
    return-void

    .line 330
    :catch_9
    move-exception v0

    .line 331
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

.method public declared-synchronized doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
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

    .line 226
    :try_start_1
    invoke-direct {p0, p1}, Lcom/lge/android/atservice/NativeDaemonConnector;->sendCommand(Ljava/lang/String;)V

    .line 228
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_3a

    .line 229
    .local v5, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 230
    .local v1, "complete":Z
    const/4 v0, -0x1

    .line 232
    .local v0, "code":I
    :goto_b
    if-nez v1, :cond_51

    .line 234
    :try_start_d
    iget-object v7, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 238
    .local v3, "line":Ljava/lang/String;
    const-string/jumbo v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_1b} :catch_30
    .catchall {:try_start_d .. :try_end_1b} :catchall_3a

    move-result-object v6

    .line 240
    .local v6, "tokens":[Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_1d
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_22} :catch_3d
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_22} :catch_30
    .catchall {:try_start_1d .. :try_end_22} :catchall_3a

    move-result v0

    .line 246
    const/16 v7, 0xc8

    if-lt v0, v7, :cond_2c

    const/16 v7, 0x258

    if-ge v0, v7, :cond_2c

    .line 247
    const/4 v1, 0x1

    .line 249
    :cond_2c
    :try_start_2c
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_30
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3a

    goto :goto_b

    .line 250
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "tokens":[Ljava/lang/String;
    :catch_30
    move-exception v2

    .line 251
    .local v2, "ex":Ljava/lang/InterruptedException;
    :try_start_31
    iget-object v7, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Failed to process response"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_3a

    goto :goto_b

    .end local v0    # "code":I
    .end local v1    # "complete":Z
    .end local v2    # "ex":Ljava/lang/InterruptedException;
    .end local v5    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_3a
    move-exception v7

    monitor-exit p0

    throw v7

    .line 241
    .restart local v0    # "code":I
    .restart local v1    # "complete":Z
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "tokens":[Ljava/lang/String;
    :catch_3d
    move-exception v4

    .line 242
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    :try_start_3e
    new-instance v7, Lcom/lge/android/atservice/NativeDaemonConnectorException;

    .line 243
    const-string/jumbo v8, "Invalid response from daemon (%s)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 242
    invoke-direct {v7, v8}, Lcom/lge/android/atservice/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_51} :catch_30
    .catchall {:try_start_3e .. :try_end_51} :catchall_3a

    .line 255
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    .end local v6    # "tokens":[Ljava/lang/String;
    :cond_51
    const/16 v7, 0x190

    if-lt v0, v7, :cond_70

    .line 256
    const/16 v7, 0x257

    if-gt v0, v7, :cond_70

    .line 261
    :try_start_59
    new-instance v8, Lcom/lge/android/atservice/NativeDaemonConnectorException;

    .line 262
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 261
    invoke-direct {v8, v0, p1, v7}, Lcom/lge/android/atservice/NativeDaemonConnectorException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v8
    :try_end_70
    .catchall {:try_start_59 .. :try_end_70} :catchall_3a

    :cond_70
    monitor-exit p0

    .line 264
    return-object v5
.end method

.method public doListCommand(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 20
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "expectedResponseCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/android/atservice/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual/range {p0 .. p1}, Lcom/lge/android/atservice/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 274
    .local v10, "rsp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    new-array v9, v12, [Ljava/lang/String;

    .line 275
    .local v9, "rdata":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 277
    .local v3, "idx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_bf

    .line 278
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 280
    .local v7, "line":Ljava/lang/String;
    :try_start_1a
    const-string/jumbo v12, " "

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 281
    .local v11, "tok":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_27} :catch_ab

    move-result v1

    .line 282
    .local v1, "code":I
    move/from16 v0, p2

    if-ne v1, v0, :cond_41

    .line 283
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .local v4, "idx":I
    const/4 v12, 0x0

    :try_start_2f
    aget-object v12, v11, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v3
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_3d} :catch_c8

    .line 277
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    goto :goto_e

    .line 284
    :cond_41
    const/16 v12, 0xc8

    if-ne v1, v12, :cond_8b

    .line 288
    :try_start_45
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .line 289
    .local v6, "last":I
    if-eq v2, v6, :cond_8a

    .line 290
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Recv\'d %d lines after end of list {%s}"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    sub-int v15, v6, v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x1

    aput-object p1, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    move v5, v2

    .local v5, "j":I
    :goto_6c
    if-gt v5, v6, :cond_8a

    .line 292
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/android/atservice/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "ExtraData <%s>"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    add-int/lit8 v5, v5, 0x1

    goto :goto_6c

    .line 295
    .end local v5    # "j":I
    :cond_8a
    return-object v9

    .line 297
    .end local v6    # "last":I
    :cond_8b
    new-instance v12, Lcom/lge/android/atservice/NativeDaemonConnectorException;

    .line 298
    const-string/jumbo v13, "Expected list response %d, but got %d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    .line 299
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    .line 298
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 297
    invoke-direct {v12, v13}, Lcom/lge/android/atservice/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_ab
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_ab} :catch_ab

    .line 301
    .end local v1    # "code":I
    .end local v11    # "tok":[Ljava/lang/String;
    :catch_ab
    move-exception v8

    .line 302
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    :goto_ac
    new-instance v12, Lcom/lge/android/atservice/NativeDaemonConnectorException;

    .line 303
    const-string/jumbo v13, "Error reading code \'%s\'"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 302
    invoke-direct {v12, v13}, Lcom/lge/android/atservice/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 306
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    :cond_bf
    new-instance v12, Lcom/lge/android/atservice/NativeDaemonConnectorException;

    const-string/jumbo v13, "Got an empty response"

    invoke-direct {v12, v13}, Lcom/lge/android/atservice/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 301
    .end local v3    # "idx":I
    .restart local v1    # "code":I
    .restart local v4    # "idx":I
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v11    # "tok":[Ljava/lang/String;
    :catch_c8
    move-exception v8

    .restart local v8    # "nfe":Ljava/lang/NumberFormatException;
    move v3, v4

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    goto :goto_ac
.end method

.method public interrupt()V
    .registers 4

    .prologue
    .line 336
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 338
    :try_start_3
    iget-boolean v1, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->mStopped:Z

    if-eqz v1, :cond_a

    .line 339
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->mRun:Z

    .line 341
    :cond_a
    iget-object v1, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_13

    .line 342
    iget-object v1, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->shutdownInput()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_13} :catch_14

    .line 335
    :cond_13
    :goto_13
    return-void

    .line 344
    :catch_14
    move-exception v0

    .line 345
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Enter interrupt exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public run()V
    .registers 5

    .prologue
    .line 84
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->mRun:Z

    .line 85
    :goto_3
    iget-boolean v1, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->mRun:Z

    if-eqz v1, :cond_1a

    .line 87
    :try_start_7
    invoke-direct {p0}, Lcom/lge/android/atservice/NativeDaemonConnector;->listenToSocket()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_3

    .line 88
    :catch_b
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/lge/android/atservice/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error in NativeDaemonConnector"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_3

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1a
    return-void
.end method
