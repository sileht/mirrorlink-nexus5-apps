.class Lcom/lge/mirrorlink/rtp/RTPWriter$1;
.super Ljava/lang/Object;
.source "RTPWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/rtp/RTPWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field dSock:Ljava/net/DatagramSocket;

.field final synthetic this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/rtp/RTPWriter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/rtp/RTPWriter;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sendPacket(Ljava/net/DatagramPacket;)Z
    .registers 8
    .param p1, "packet"    # Ljava/net/DatagramPacket;

    .prologue
    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->dSock:Ljava/net/DatagramSocket;

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 187
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    iget-wide v2, v1, Lcom/lge/mirrorlink/rtp/RTPWriter;->totalSentBytes:J

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    add-int/lit8 v4, v4, -0xc

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/lge/mirrorlink/rtp/RTPWriter;->totalSentBytes:J
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_15

    .line 191
    :goto_13
    const/4 v1, 0x1

    return v1

    .line 188
    :catch_15
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "MirrorLink_RTP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 197
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->dSock:Ljava/net/DatagramSocket;

    .line 198
    const/16 v16, 0x0

    .line 199
    .local v16, "server":Ljava/net/InetAddress;
    const/4 v14, 0x0

    .line 200
    .local v14, "outPacket":Ljava/net/DatagramPacket;
    const/4 v9, 0x0

    .line 202
    .local v9, "getServerIp":Z
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get12(Lcom/lge/mirrorlink/rtp/RTPWriter;)Ljava/net/DatagramSocket;

    move-result-object v3

    if-eqz v3, :cond_4c

    .line 203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get12(Lcom/lge/mirrorlink/rtp/RTPWriter;)Ljava/net/DatagramSocket;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->dSock:Ljava/net/DatagramSocket;

    .line 208
    :goto_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get2(Lcom/lge/mirrorlink/rtp/RTPWriter;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2a
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_2a} :catch_56
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_2a} :catch_72

    move-result-object v16

    .line 209
    .local v16, "server":Ljava/net/InetAddress;
    if-eqz v16, :cond_2e

    .line 210
    const/4 v9, 0x1

    .line 223
    .end local v16    # "server":Ljava/net/InetAddress;
    :cond_2e
    :goto_2e
    if-nez v9, :cond_7e

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get0(Lcom/lge/mirrorlink/rtp/RTPWriter;)Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_75

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get12(Lcom/lge/mirrorlink/rtp/RTPWriter;)Ljava/net/DatagramSocket;

    move-result-object v3

    if-nez v3, :cond_4b

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->dSock:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 228
    :cond_4b
    return-void

    .line 205
    .local v16, "server":Ljava/net/InetAddress;
    :cond_4c
    :try_start_4c
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->dSock:Ljava/net/DatagramSocket;
    :try_end_55
    .catch Ljava/net/SocketException; {:try_start_4c .. :try_end_55} :catch_56
    .catch Ljava/net/UnknownHostException; {:try_start_4c .. :try_end_55} :catch_72

    goto :goto_1f

    .line 212
    :catch_56
    move-exception v7

    .line 213
    .local v7, "e":Ljava/net/SocketException;
    invoke-static {v7}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/Exception;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->dSock:Ljava/net/DatagramSocket;

    if-eqz v3, :cond_71

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get12(Lcom/lge/mirrorlink/rtp/RTPWriter;)Ljava/net/DatagramSocket;

    move-result-object v3

    if-nez v3, :cond_71

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->dSock:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 217
    :cond_71
    return-void

    .line 218
    .end local v7    # "e":Ljava/net/SocketException;
    :catch_72
    move-exception v8

    .line 219
    .local v8, "e":Ljava/net/UnknownHostException;
    const/4 v9, 0x0

    goto :goto_2e

    .line 231
    .end local v8    # "e":Ljava/net/UnknownHostException;
    .end local v16    # "server":Ljava/net/InetAddress;
    :cond_75
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get0(Lcom/lge/mirrorlink/rtp/RTPWriter;)Ljava/net/InetAddress;

    move-result-object v16

    .line 232
    .local v16, "server":Ljava/net/InetAddress;
    const/4 v9, 0x1

    .line 235
    .end local v16    # "server":Ljava/net/InetAddress;
    :cond_7e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get10(Lcom/lge/mirrorlink/rtp/RTPWriter;)Lcom/lge/mirrorlink/rtp/LiveCapture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/mirrorlink/rtp/LiveCapture;->getPayloadType()I

    move-result v3

    int-to-byte v2, v3

    .line 236
    .local v2, "PT":B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get7(Lcom/lge/mirrorlink/rtp/RTPWriter;)I

    move-result v4

    .line 237
    .local v4, "rtpTime":I
    const v3, 0x8000

    new-array v1, v3, [B

    .line 238
    .local v1, "data":[B
    new-instance v14, Ljava/net/DatagramPacket;

    .end local v14    # "outPacket":Ljava/net/DatagramPacket;
    array-length v3, v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v5}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get5(Lcom/lge/mirrorlink/rtp/RTPWriter;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-direct {v14, v1, v3, v0, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 240
    .local v14, "outPacket":Ljava/net/DatagramPacket;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get6(Lcom/lge/mirrorlink/rtp/RTPWriter;)Lcom/lge/mirrorlink/rtp/TmRTPServer;

    move-result-object v3

    if-eqz v3, :cond_bf

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get6(Lcom/lge/mirrorlink/rtp/RTPWriter;)Lcom/lge/mirrorlink/rtp/TmRTPServer;

    move-result-object v3

    sget-object v5, Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;->Accepted:Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;

    invoke-virtual {v3, v5}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->changeState(Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;)V

    .line 244
    :cond_bf
    :goto_bf
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get8(Lcom/lge/mirrorlink/rtp/RTPWriter;)Z

    move-result v3

    if-eqz v3, :cond_1e6

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get10(Lcom/lge/mirrorlink/rtp/RTPWriter;)Lcom/lge/mirrorlink/rtp/LiveCapture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/mirrorlink/rtp/LiveCapture;->read()[B

    move-result-object v15

    .line 247
    .local v15, "readData":[B
    if-eqz v15, :cond_bf

    array-length v3, v15

    if-eqz v3, :cond_bf

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get6(Lcom/lge/mirrorlink/rtp/RTPWriter;)Lcom/lge/mirrorlink/rtp/TmRTPServer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->isAudioActive()Z

    move-result v12

    .line 252
    .local v12, "isAudioActiveCurrent":Z
    const-string/jumbo v3, "MirrorLink_RTP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isAudioActive : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v6}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get6(Lcom/lge/mirrorlink/rtp/RTPWriter;)Lcom/lge/mirrorlink/rtp/TmRTPServer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->isAudioActive()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/16 v17, 0x0

    .line 256
    .local v17, "setMarketbit":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3, v15}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-wrap0(Lcom/lge/mirrorlink/rtp/RTPWriter;[B)Z

    move-result v11

    .line 257
    .local v11, "isAllzero":Z
    if-nez v12, :cond_198

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get3(Lcom/lge/mirrorlink/rtp/RTPWriter;)Z

    move-result v3

    if-eqz v3, :cond_198

    .line 259
    const/16 v17, 0x1

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3, v12}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-set0(Lcom/lge/mirrorlink/rtp/RTPWriter;Z)Z

    .line 261
    const-string/jumbo v3, "MirrorLink_RTP"

    const-string/jumbo v5, "isAudioActiveCurrent == false && mIsAudioActive == true set Markerbit to 1"

    invoke-static {v3, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get7(Lcom/lge/mirrorlink/rtp/RTPWriter;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v5}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get10(Lcom/lge/mirrorlink/rtp/RTPWriter;)Lcom/lge/mirrorlink/rtp/LiveCapture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/mirrorlink/rtp/LiveCapture;->getCurrentOffset()I

    move-result v5

    add-int v4, v3, v5

    .line 272
    if-nez v17, :cond_152

    invoke-static {}, Lcom/lge/mirrorlink/rtp/RTPWriter;->getBlocking()Z

    move-result v3

    if-eqz v3, :cond_1ac

    .line 273
    :cond_152
    const-string/jumbo v3, "MirrorLink_RTP"

    const-string/jumbo v5, "setMarketbit : set marker bit to 1"

    invoke-static {v3, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get9(Lcom/lge/mirrorlink/rtp/RTPWriter;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v5}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get11(Lcom/lge/mirrorlink/rtp/RTPWriter;)I

    move-result v5

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-wrap1([BBIIIZ)I

    move-result v10

    .line 275
    .local v10, "headerLength":I
    const/4 v3, 0x0

    invoke-virtual {v14, v1, v3, v10}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 276
    invoke-static {}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-wrap2()V

    .line 287
    :goto_177
    invoke-static {}, Lcom/lge/mirrorlink/rtp/RTPWriter;->getBlocking()Z

    move-result v3

    if-nez v3, :cond_1ce

    .line 288
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->sendPacket(Ljava/net/DatagramPacket;)Z

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get9(Lcom/lge/mirrorlink/rtp/RTPWriter;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3, v5}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-set3(Lcom/lge/mirrorlink/rtp/RTPWriter;I)I

    .line 299
    :cond_18f
    :goto_18f
    invoke-static {}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get1()I

    move-result v3

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-set2(I)I

    goto/16 :goto_bf

    .line 263
    .end local v10    # "headerLength":I
    :cond_198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3, v12}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-set0(Lcom/lge/mirrorlink/rtp/RTPWriter;Z)Z

    .line 264
    if-eqz v11, :cond_134

    .line 265
    const-string/jumbo v3, "MirrorLink_RTP"

    const-string/jumbo v5, "All audio data zero"

    invoke-static {v3, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_bf

    .line 280
    :cond_1ac
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get9(Lcom/lge/mirrorlink/rtp/RTPWriter;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v5}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get11(Lcom/lge/mirrorlink/rtp/RTPWriter;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-wrap1([BBIIIZ)I

    move-result v10

    .line 281
    .restart local v10    # "headerLength":I
    array-length v3, v15

    add-int v13, v3, v10

    .line 283
    .local v13, "length":I
    array-length v3, v15

    const/4 v5, 0x0

    invoke-static {v15, v5, v1, v10, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 284
    const/4 v3, 0x0

    invoke-virtual {v14, v1, v3, v13}, Ljava/net/DatagramPacket;->setData([BII)V

    goto :goto_177

    .line 291
    .end local v13    # "length":I
    :cond_1ce
    invoke-static {}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get4()Z

    move-result v3

    if-eqz v3, :cond_18f

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get9(Lcom/lge/mirrorlink/rtp/RTPWriter;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3, v5}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-set3(Lcom/lge/mirrorlink/rtp/RTPWriter;I)I

    .line 296
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-set1(Z)Z

    goto :goto_18f

    .line 302
    .end local v10    # "headerLength":I
    .end local v11    # "isAllzero":Z
    .end local v12    # "isAudioActiveCurrent":Z
    .end local v15    # "readData":[B
    .end local v17    # "setMarketbit":Z
    :cond_1e6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get9(Lcom/lge/mirrorlink/rtp/RTPWriter;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v5}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get11(Lcom/lge/mirrorlink/rtp/RTPWriter;)I

    move-result v5

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-wrap1([BBIIIZ)I

    move-result v10

    .line 305
    .restart local v10    # "headerLength":I
    const-string/jumbo v3, "MirrorLink_RTP"

    const-string/jumbo v5, "Send last packet and close socket."

    invoke-static {v3, v5}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v3, 0x0

    invoke-virtual {v14, v1, v3, v10}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 307
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->sendPacket(Ljava/net/DatagramPacket;)Z

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get12(Lcom/lge/mirrorlink/rtp/RTPWriter;)Ljava/net/DatagramSocket;

    move-result-object v3

    if-nez v3, :cond_21e

    .line 309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->dSock:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 312
    :cond_21e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get6(Lcom/lge/mirrorlink/rtp/RTPWriter;)Lcom/lge/mirrorlink/rtp/TmRTPServer;

    move-result-object v3

    if-eqz v3, :cond_233

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get6(Lcom/lge/mirrorlink/rtp/RTPWriter;)Lcom/lge/mirrorlink/rtp/TmRTPServer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->notifyClosed()V

    .line 316
    :cond_233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get10(Lcom/lge/mirrorlink/rtp/RTPWriter;)Lcom/lge/mirrorlink/rtp/LiveCapture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/mirrorlink/rtp/LiveCapture;->disableAudioCapture()Z

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;->this$0:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/RTPWriter;->-get10(Lcom/lge/mirrorlink/rtp/RTPWriter;)Lcom/lge/mirrorlink/rtp/LiveCapture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/mirrorlink/rtp/LiveCapture;->cleanup()V

    .line 194
    return-void
.end method
