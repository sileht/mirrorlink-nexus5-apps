.class public Lcom/lge/wfds/session/UdpDataReceiver;
.super Ljava/lang/Object;
.source "UdpDataReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WfdsSession:RECEIVE"


# instance fields
.field private bThreadRunning:Z

.field private mSessionList:Lcom/lge/wfds/session/AspSessionList;

.field private mSessionProtoOpcode:Lcom/lge/wfds/session/AspSessionProtoOpcode;

.field private mSocket:Ljava/net/DatagramSocket;

.field private mWfdsStateMachine:Lcom/android/internal/util/StateMachine;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/StateMachine;Lcom/lge/wfds/session/AspSessionList;Lcom/lge/wfds/session/AspSessionProtoOpcode;)V
    .registers 7
    .param p1, "sm"    # Lcom/android/internal/util/StateMachine;
    .param p2, "sessionList"    # Lcom/lge/wfds/session/AspSessionList;
    .param p3, "sessionOp"    # Lcom/lge/wfds/session/AspSessionProtoOpcode;

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v2, p0, Lcom/lge/wfds/session/UdpDataReceiver;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    .line 26
    iput-object v2, p0, Lcom/lge/wfds/session/UdpDataReceiver;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    .line 27
    iput-object v2, p0, Lcom/lge/wfds/session/UdpDataReceiver;->mSessionProtoOpcode:Lcom/lge/wfds/session/AspSessionProtoOpcode;

    .line 33
    const-string v0, "WfdsSession:RECEIVE"

    const-string v1, "UdpDataReceiver Created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iput-object p1, p0, Lcom/lge/wfds/session/UdpDataReceiver;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    .line 36
    iput-object p2, p0, Lcom/lge/wfds/session/UdpDataReceiver;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    .line 37
    iput-object p3, p0, Lcom/lge/wfds/session/UdpDataReceiver;->mSessionProtoOpcode:Lcom/lge/wfds/session/AspSessionProtoOpcode;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/wfds/session/UdpDataReceiver;->bThreadRunning:Z

    .line 40
    iput-object v2, p0, Lcom/lge/wfds/session/UdpDataReceiver;->mSocket:Ljava/net/DatagramSocket;

    .line 41
    return-void
.end method

.method private byteArrayToAddress([B)Ljava/lang/String;
    .registers 9
    .param p1, "bytes"    # [B

    .prologue
    .line 56
    const-string v1, ""

    .line 57
    .local v1, "mac":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v2, p1

    if-lt v0, v2, :cond_7

    .line 63
    return-object v1

    .line 58
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, p1, v0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_42

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private closeSocket()V
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataReceiver;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_c

    .line 68
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataReceiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wfds/session/UdpDataReceiver;->mSocket:Ljava/net/DatagramSocket;

    .line 71
    :cond_c
    return-void
.end method

.method private notifyReceivedAck(I)V
    .registers 6
    .param p1, "seq"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 390
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataReceiver;->mSessionProtoOpcode:Lcom/lge/wfds/session/AspSessionProtoOpcode;

    invoke-virtual {v0, p1}, Lcom/lge/wfds/session/AspSessionProtoOpcode;->getRequestedType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 391
    const v0, 0x901063

    invoke-direct {p0, v0, v2, v2, v3}, Lcom/lge/wfds/session/UdpDataReceiver;->sendMessageToStateMachine(IIILcom/lge/wfds/session/AspSession;)V

    .line 397
    :goto_11
    return-void

    .line 392
    :cond_12
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataReceiver;->mSessionProtoOpcode:Lcom/lge/wfds/session/AspSessionProtoOpcode;

    invoke-virtual {v0, p1}, Lcom/lge/wfds/session/AspSessionProtoOpcode;->getRequestedType(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_22

    .line 393
    const v0, 0x901064

    invoke-direct {p0, v0, v2, v2, v3}, Lcom/lge/wfds/session/UdpDataReceiver;->sendMessageToStateMachine(IIILcom/lge/wfds/session/AspSession;)V

    goto :goto_11

    .line 395
    :cond_22
    const v0, 0x901065

    invoke-direct {p0, v0, v2, v2, v3}, Lcom/lge/wfds/session/UdpDataReceiver;->sendMessageToStateMachine(IIILcom/lge/wfds/session/AspSession;)V

    goto :goto_11
.end method

.method private notifyReceivedData(IILcom/lge/wfds/session/AspSession;Ljava/lang/String;)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "seq"    # I
    .param p3, "session"    # Lcom/lge/wfds/session/AspSession;
    .param p4, "hostIpAddress"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 360
    const-string v0, "WfdsSession:RECEIVE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyReceivedData : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/lge/wfds/session/AspSessionProtoOpcode;->getReqTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Seq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", From:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v0, 0x5

    if-ne v0, p1, :cond_37

    .line 363
    const v0, 0x90105c

    invoke-direct {p0, v0, v3, v3, p3}, Lcom/lge/wfds/session/UdpDataReceiver;->sendMessageToStateMachine(IIILcom/lge/wfds/session/AspSession;)V

    .line 387
    :cond_36
    :goto_36
    return-void

    .line 364
    :cond_37
    const/16 v0, 0xfe

    if-ne v0, p1, :cond_63

    .line 365
    const-string v0, "WfdsSession:RECEIVE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received :ACK ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/wfds/session/UdpDataReceiver;->mSessionProtoOpcode:Lcom/lge/wfds/session/AspSessionProtoOpcode;

    invoke-virtual {v2, p2}, Lcom/lge/wfds/session/AspSessionProtoOpcode;->getRequestedType(I)I

    move-result v2

    invoke-static {v2}, Lcom/lge/wfds/session/AspSessionProtoOpcode;->getReqTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-direct {p0, p2}, Lcom/lge/wfds/session/UdpDataReceiver;->notifyReceivedAck(I)V

    goto :goto_36

    .line 368
    :cond_63
    if-eqz p3, :cond_36

    .line 369
    packed-switch p1, :pswitch_data_82

    :pswitch_68
    goto :goto_36

    .line 373
    :pswitch_69
    invoke-direct {p0, p1, p3}, Lcom/lge/wfds/session/UdpDataReceiver;->notifyReceivedDataTo(ILcom/lge/wfds/session/AspSession;)V

    goto :goto_36

    .line 376
    :pswitch_6d
    const v0, 0x901060

    invoke-direct {p0, v0, v3, v3, p3}, Lcom/lge/wfds/session/UdpDataReceiver;->sendMessageToStateMachine(IIILcom/lge/wfds/session/AspSession;)V

    goto :goto_36

    .line 380
    :pswitch_74
    const v0, 0x901061

    invoke-direct {p0, v0, v3, v3, p3}, Lcom/lge/wfds/session/UdpDataReceiver;->sendMessageToStateMachine(IIILcom/lge/wfds/session/AspSession;)V

    goto :goto_36

    .line 383
    :pswitch_7b
    const v0, 0x901062

    invoke-direct {p0, v0, v3, v3, p3}, Lcom/lge/wfds/session/UdpDataReceiver;->sendMessageToStateMachine(IIILcom/lge/wfds/session/AspSession;)V

    goto :goto_36

    .line 369
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_6d
        :pswitch_74
        :pswitch_68
        :pswitch_7b
    .end packed-switch
.end method

.method private notifyReceivedDataTo(ILcom/lge/wfds/session/AspSession;)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "session"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    const/4 v5, 0x0

    .line 400
    const/4 v1, 0x0

    .line 401
    .local v1, "s":Lcom/lge/wfds/session/AspSession;
    const/4 v0, 0x0

    .line 403
    .local v0, "bSeeker":Z
    iget-object v2, p0, Lcom/lge/wfds/session/UdpDataReceiver;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    iget-object v3, p2, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v4, p2, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    .line 404
    if-eqz v1, :cond_2d

    iget-object v2, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    if-eqz v2, :cond_2d

    iget-object v2, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 405
    const-string v2, "WfdsSession:RECEIVE"

    const-string v3, "notifyReceivedDataTo : I\'m a Seeker"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v0, 0x1

    .line 412
    :goto_29
    packed-switch p1, :pswitch_data_52

    .line 432
    :cond_2c
    :goto_2c
    return-void

    .line 408
    :cond_2d
    const-string v2, "WfdsSession:RECEIVE"

    const-string v3, "notifyReceivedDataTo : I\'m an Advertiser"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v0, 0x0

    goto :goto_29

    .line 414
    :pswitch_36
    if-nez v0, :cond_2c

    .line 417
    const v2, 0x90105d

    invoke-direct {p0, v2, v5, v5, p2}, Lcom/lge/wfds/session/UdpDataReceiver;->sendMessageToStateMachine(IIILcom/lge/wfds/session/AspSession;)V

    goto :goto_2c

    .line 420
    :pswitch_3f
    if-eqz v0, :cond_2c

    .line 423
    const v2, 0x90105e

    invoke-direct {p0, v2, v5, v5, p2}, Lcom/lge/wfds/session/UdpDataReceiver;->sendMessageToStateMachine(IIILcom/lge/wfds/session/AspSession;)V

    goto :goto_2c

    .line 426
    :pswitch_48
    if-eqz v0, :cond_2c

    .line 429
    const v2, 0x90105f

    invoke-direct {p0, v2, v5, v5, p2}, Lcom/lge/wfds/session/UdpDataReceiver;->sendMessageToStateMachine(IIILcom/lge/wfds/session/AspSession;)V

    goto :goto_2c

    .line 412
    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_36
        :pswitch_3f
        :pswitch_48
    .end packed-switch
.end method

.method private processAddedRejectedSession(Ljava/net/DatagramPacket;Ljava/nio/ByteBuffer;)Lcom/lge/wfds/session/AspSession;
    .registers 8
    .param p1, "pack"    # Ljava/net/DatagramPacket;
    .param p2, "buff"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    const/4 v3, 0x6

    new-array v0, v3, [B

    .line 222
    .local v0, "mac":[B
    const/4 v2, 0x0

    .line 224
    .local v2, "session_id":I
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 225
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 228
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_1d

    .line 229
    :cond_14
    const-string v3, "WfdsSession:RECEIVE"

    const-string v4, "ADDED/REJECTED_SESSION failed because DatagramPacket is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v3, 0x0

    .line 235
    :goto_1c
    return-object v3

    .line 233
    :cond_1d
    new-instance v1, Lcom/lge/wfds/session/AspSession;

    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    invoke-direct {p0, v0}, Lcom/lge/wfds/session/UdpDataReceiver;->byteArrayToAddress([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v2, v4}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .restart local v1    # "session":Lcom/lge/wfds/session/AspSession;
    move-object v3, v1

    .line 235
    goto :goto_1c
.end method

.method private processAllowedPort(Ljava/net/DatagramPacket;Ljava/nio/ByteBuffer;)Lcom/lge/wfds/session/AspSession;
    .registers 10
    .param p1, "pack"    # Ljava/net/DatagramPacket;
    .param p2, "buff"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 264
    const/4 v3, 0x0

    .line 265
    .local v3, "session":Lcom/lge/wfds/session/AspSession;
    const/4 v5, 0x6

    new-array v0, v5, [B

    .line 266
    .local v0, "mac":[B
    const/4 v4, 0x0

    .line 267
    .local v4, "session_id":I
    const/4 v1, 0x0

    .line 268
    .local v1, "port":I
    const/4 v2, 0x0

    .line 272
    .local v2, "proto":I
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 273
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 274
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v5

    const v6, 0xffff

    and-int v1, v5, v6

    .line 275
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v2, v5, 0xff

    .line 278
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    if-nez v5, :cond_2e

    .line 279
    :cond_25
    const-string v5, "WfdsSession:RECEIVE"

    const-string v6, "ALLOWED_SESSION failed because DatagramPacket is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v5, 0x0

    .line 287
    :goto_2d
    return-object v5

    .line 283
    :cond_2e
    new-instance v3, Lcom/lge/wfds/session/AspSession;

    .end local v3    # "session":Lcom/lge/wfds/session/AspSession;
    invoke-direct {p0, v0}, Lcom/lge/wfds/session/UdpDataReceiver;->byteArrayToAddress([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v4, v6}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 284
    .restart local v3    # "session":Lcom/lge/wfds/session/AspSession;
    invoke-virtual {v3, v1, v2}, Lcom/lge/wfds/session/AspSession;->addPort(II)V

    move-object v5, v3

    .line 287
    goto :goto_2d
.end method

.method private processDeferredSession(Ljava/net/DatagramPacket;Ljava/nio/ByteBuffer;)Lcom/lge/wfds/session/AspSession;
    .registers 12
    .param p1, "pack"    # Ljava/net/DatagramPacket;
    .param p2, "buff"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "session":Lcom/lge/wfds/session/AspSession;
    const/4 v1, 0x6

    new-array v8, v1, [B

    .line 293
    .local v8, "mac":[B
    const/4 v3, 0x0

    .line 294
    .local v3, "session_id":I
    const/4 v7, 0x0

    .line 295
    .local v7, "info_len":I
    const/4 v6, 0x0

    .line 296
    .local v6, "info":[B
    const/4 v4, 0x0

    .line 298
    .local v4, "adv_id":I
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_19

    .line 299
    :cond_10
    const-string v1, "WfdsSession:RECEIVE"

    const-string v2, "DEFERRED_SESSION fail because DatagramPacket is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v1, 0x0

    .line 319
    :goto_18
    return-object v1

    .line 303
    :cond_19
    invoke-virtual {p2, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 304
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 305
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v7, v1, 0xff

    .line 313
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v6, v1, [B

    .line 314
    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 315
    new-instance v0, Lcom/lge/wfds/session/AspSession;

    .end local v0    # "session":Lcom/lge/wfds/session/AspSession;
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v8}, Lcom/lge/wfds/session/UdpDataReceiver;->byteArrayToAddress([B)Ljava/lang/String;

    move-result-object v2

    .line 316
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 315
    invoke-direct/range {v0 .. v5}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .restart local v0    # "session":Lcom/lge/wfds/session/AspSession;
    move-object v1, v0

    .line 319
    goto :goto_18
.end method

.method private processNack(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "buff"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 337
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 342
    .local v0, "reason":B
    return-void
.end method

.method private processRemoveSession(Ljava/net/DatagramPacket;Ljava/nio/ByteBuffer;)Lcom/lge/wfds/session/AspSession;
    .registers 9
    .param p1, "pack"    # Ljava/net/DatagramPacket;
    .param p2, "buff"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 239
    const/4 v2, 0x0

    .line 240
    .local v2, "session":Lcom/lge/wfds/session/AspSession;
    const/4 v4, 0x6

    new-array v0, v4, [B

    .line 241
    .local v0, "mac":[B
    const/4 v3, 0x0

    .line 242
    .local v3, "session_id":I
    const/4 v1, 0x0

    .line 244
    .local v1, "reason":B
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 245
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 246
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 253
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-nez v4, :cond_22

    .line 254
    :cond_19
    const-string v4, "WfdsSession:RECEIVE"

    const-string v5, "REMOVE_SESSION failed because DatagramPacket is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v4, 0x0

    .line 260
    :goto_21
    return-object v4

    .line 258
    :cond_22
    new-instance v2, Lcom/lge/wfds/session/AspSession;

    .end local v2    # "session":Lcom/lge/wfds/session/AspSession;
    invoke-direct {p0, v0}, Lcom/lge/wfds/session/UdpDataReceiver;->byteArrayToAddress([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v3, v5}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .restart local v2    # "session":Lcom/lge/wfds/session/AspSession;
    move-object v4, v2

    .line 260
    goto :goto_21
.end method

.method private processRequestSession(Ljava/net/DatagramPacket;Ljava/nio/ByteBuffer;)Lcom/lge/wfds/session/AspSession;
    .registers 12
    .param p1, "pack"    # Ljava/net/DatagramPacket;
    .param p2, "buff"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v5, 0x0

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "session":Lcom/lge/wfds/session/AspSession;
    const/4 v1, 0x6

    new-array v8, v1, [B

    .line 186
    .local v8, "mac":[B
    const/4 v3, 0x0

    .line 187
    .local v3, "session_id":I
    const/4 v4, 0x0

    .line 188
    .local v4, "adv_id":I
    const/4 v7, 0x0

    .line 189
    .local v7, "info_len":I
    const/4 v6, 0x0

    .line 192
    .local v6, "info":[B
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_19

    .line 193
    :cond_11
    const-string v1, "WfdsSession:RECEIVE"

    const-string v2, "REQUEST_SESSION failed because DatagramPacket is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_18
    return-object v5

    .line 197
    :cond_19
    invoke-virtual {p2, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 198
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 199
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 200
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_5c

    .line 201
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v7, v1, 0xff

    .line 205
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v6, v1, [B

    .line 206
    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 207
    new-instance v0, Lcom/lge/wfds/session/AspSession;

    .end local v0    # "session":Lcom/lge/wfds/session/AspSession;
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-direct {p0, v8}, Lcom/lge/wfds/session/UdpDataReceiver;->byteArrayToAddress([B)Ljava/lang/String;

    move-result-object v2

    .line 209
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 207
    invoke-direct/range {v0 .. v5}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 214
    .restart local v0    # "session":Lcom/lge/wfds/session/AspSession;
    :goto_4f
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wfds/session/AspSession;->setIpAddress(Ljava/lang/String;)V

    move-object v5, v0

    .line 216
    goto :goto_18

    .line 211
    :cond_5c
    new-instance v0, Lcom/lge/wfds/session/AspSession;

    .end local v0    # "session":Lcom/lge/wfds/session/AspSession;
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-direct {p0, v8}, Lcom/lge/wfds/session/UdpDataReceiver;->byteArrayToAddress([B)Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-direct/range {v0 .. v5}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .restart local v0    # "session":Lcom/lge/wfds/session/AspSession;
    goto :goto_4f
.end method

.method private processVersion(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "buff"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 323
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v2, v3, 0xff

    .line 324
    .local v2, "ver":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 330
    .local v0, "info_len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v1, v3, [B

    .line 331
    .local v1, "vendor_info":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 332
    return-void
.end method

.method private receiveUdpDatatPacket()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 74
    const-string v8, "WfdsSession:RECEIVE"

    const-string v9, "Wfds UdpDatatPacket Receiver Start"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput-boolean v10, p0, Lcom/lge/wfds/session/UdpDataReceiver;->bThreadRunning:Z

    .line 79
    :try_start_a
    new-instance v8, Ljava/net/DatagramSocket;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v8, p0, Lcom/lge/wfds/session/UdpDataReceiver;->mSocket:Ljava/net/DatagramSocket;

    .line 80
    iget-object v8, p0, Lcom/lge/wfds/session/UdpDataReceiver;->mSocket:Ljava/net/DatagramSocket;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 88
    iget-object v8, p0, Lcom/lge/wfds/session/UdpDataReceiver;->mSocket:Ljava/net/DatagramSocket;

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Ljava/net/DatagramSocket;->setTrafficClass(I)V

    .line 89
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v8, 0x1c43

    invoke-direct {v0, v8}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 90
    .local v0, "addr":Ljava/net/InetSocketAddress;
    iget-object v8, p0, Lcom/lge/wfds/session/UdpDataReceiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v8, v0}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 92
    const/16 v8, 0x200

    new-array v3, v8, [B

    .line 93
    .local v3, "msg":[B
    const/16 v8, 0x200

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 94
    .local v1, "buff":Ljava/nio/ByteBuffer;
    new-instance v4, Ljava/net/DatagramPacket;

    array-length v8, v3

    invoke-direct {v4, v3, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 96
    .local v4, "pack":Ljava/net/DatagramPacket;
    :cond_3b
    :goto_3b
    iget-boolean v8, p0, Lcom/lge/wfds/session/UdpDataReceiver;->bThreadRunning:Z

    if-nez v8, :cond_54

    .line 164
    const-string v8, "WfdsSession:RECEIVE"

    const-string v9, "Close Socket"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0}, Lcom/lge/wfds/session/UdpDataReceiver;->closeSocket()V
    :try_end_49
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_49} :catch_c4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_49} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_49} :catch_fc
    .catchall {:try_start_a .. :try_end_49} :catchall_114

    .line 178
    const-string v8, "WfdsSession:RECEIVE"

    const-string v9, "Close Socket - stopReceiver called"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Lcom/lge/wfds/session/UdpDataReceiver;->closeSocket()V

    .line 181
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v1    # "buff":Ljava/nio/ByteBuffer;
    .end local v3    # "msg":[B
    .end local v4    # "pack":Ljava/net/DatagramPacket;
    :goto_53
    return-void

    .line 97
    .restart local v0    # "addr":Ljava/net/InetSocketAddress;
    .restart local v1    # "buff":Ljava/nio/ByteBuffer;
    .restart local v3    # "msg":[B
    .restart local v4    # "pack":Ljava/net/DatagramPacket;
    :cond_54
    :try_start_54
    iget-object v8, p0, Lcom/lge/wfds/session/UdpDataReceiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v8, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 99
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 100
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v10

    invoke-virtual {v1, v8, v9, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 103
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v5, v8, 0xff

    .line 104
    .local v5, "req_type":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v6, v8, 0xff

    .line 105
    .local v6, "seq":I
    const/4 v7, 0x0

    .line 107
    .local v7, "session":Lcom/lge/wfds/session/AspSession;
    const-string v8, "WfdsSession:RECEIVE"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Received :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/lge/wfds/session/AspSessionProtoOpcode;->getReqTypeString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sparse-switch v5, :sswitch_data_142

    .line 153
    const/16 v8, 0xfe

    if-eq v5, v8, :cond_b1

    .line 154
    const-string v8, "WfdsSession:RECEIVE"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unknown Request Type ["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_b1
    :goto_b1
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    if-eqz v8, :cond_3b

    .line 160
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/lge/wfds/session/UdpDataReceiver;->notifyReceivedData(IILcom/lge/wfds/session/AspSession;Ljava/lang/String;)V
    :try_end_c2
    .catch Ljava/net/SocketException; {:try_start_54 .. :try_end_c2} :catch_c4
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_c2} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_c2} :catch_fc
    .catchall {:try_start_54 .. :try_end_c2} :catchall_114

    goto/16 :goto_3b

    .line 167
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v1    # "buff":Ljava/nio/ByteBuffer;
    .end local v3    # "msg":[B
    .end local v4    # "pack":Ljava/net/DatagramPacket;
    .end local v5    # "req_type":I
    .end local v6    # "seq":I
    .end local v7    # "session":Lcom/lge/wfds/session/AspSession;
    :catch_c4
    move-exception v2

    .line 168
    .local v2, "e":Ljava/net/SocketException;
    :try_start_c5
    iget-boolean v8, p0, Lcom/lge/wfds/session/UdpDataReceiver;->bThreadRunning:Z

    if-nez v8, :cond_13d

    .line 169
    const-string v8, "WfdsSession:RECEIVE"

    const-string v9, "SocketException : Socket is Closed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catchall {:try_start_c5 .. :try_end_d0} :catchall_114

    .line 178
    :goto_d0
    const-string v8, "WfdsSession:RECEIVE"

    const-string v9, "Close Socket - stopReceiver called"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Lcom/lge/wfds/session/UdpDataReceiver;->closeSocket()V

    goto/16 :goto_53

    .line 111
    .end local v2    # "e":Ljava/net/SocketException;
    .restart local v0    # "addr":Ljava/net/InetSocketAddress;
    .restart local v1    # "buff":Ljava/nio/ByteBuffer;
    .restart local v3    # "msg":[B
    .restart local v4    # "pack":Ljava/net/DatagramPacket;
    .restart local v5    # "req_type":I
    .restart local v6    # "seq":I
    .restart local v7    # "session":Lcom/lge/wfds/session/AspSession;
    :sswitch_dc
    :try_start_dc
    invoke-direct {p0, v4, v1}, Lcom/lge/wfds/session/UdpDataReceiver;->processRequestSession(Ljava/net/DatagramPacket;Ljava/nio/ByteBuffer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v7

    .line 112
    invoke-direct {p0, v5, v4, v6}, Lcom/lge/wfds/session/UdpDataReceiver;->sendAckPacket(ILjava/net/DatagramPacket;I)V
    :try_end_e3
    .catch Ljava/net/SocketException; {:try_start_dc .. :try_end_e3} :catch_c4
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_e3} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_e3} :catch_fc
    .catchall {:try_start_dc .. :try_end_e3} :catchall_114

    goto :goto_b1

    .line 173
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v1    # "buff":Ljava/nio/ByteBuffer;
    .end local v3    # "msg":[B
    .end local v4    # "pack":Ljava/net/DatagramPacket;
    .end local v5    # "req_type":I
    .end local v6    # "seq":I
    .end local v7    # "session":Lcom/lge/wfds/session/AspSession;
    :catch_e4
    move-exception v2

    .line 174
    .local v2, "e":Ljava/io/IOException;
    :try_start_e5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e8
    .catchall {:try_start_e5 .. :try_end_e8} :catchall_114

    .line 178
    const-string v8, "WfdsSession:RECEIVE"

    const-string v9, "Close Socket - stopReceiver called"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Lcom/lge/wfds/session/UdpDataReceiver;->closeSocket()V

    goto/16 :goto_53

    .line 117
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "addr":Ljava/net/InetSocketAddress;
    .restart local v1    # "buff":Ljava/nio/ByteBuffer;
    .restart local v3    # "msg":[B
    .restart local v4    # "pack":Ljava/net/DatagramPacket;
    .restart local v5    # "req_type":I
    .restart local v6    # "seq":I
    .restart local v7    # "session":Lcom/lge/wfds/session/AspSession;
    :sswitch_f4
    :try_start_f4
    invoke-direct {p0, v4, v1}, Lcom/lge/wfds/session/UdpDataReceiver;->processAddedRejectedSession(Ljava/net/DatagramPacket;Ljava/nio/ByteBuffer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v7

    .line 118
    invoke-direct {p0, v5, v4, v6}, Lcom/lge/wfds/session/UdpDataReceiver;->sendAckPacket(ILjava/net/DatagramPacket;I)V
    :try_end_fb
    .catch Ljava/net/SocketException; {:try_start_f4 .. :try_end_fb} :catch_c4
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_fb} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_fb} :catch_fc
    .catchall {:try_start_f4 .. :try_end_fb} :catchall_114

    goto :goto_b1

    .line 175
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v1    # "buff":Ljava/nio/ByteBuffer;
    .end local v3    # "msg":[B
    .end local v4    # "pack":Ljava/net/DatagramPacket;
    .end local v5    # "req_type":I
    .end local v6    # "seq":I
    .end local v7    # "session":Lcom/lge/wfds/session/AspSession;
    :catch_fc
    move-exception v2

    .line 176
    .local v2, "e":Ljava/lang/Exception;
    :try_start_fd
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_100
    .catchall {:try_start_fd .. :try_end_100} :catchall_114

    .line 178
    const-string v8, "WfdsSession:RECEIVE"

    const-string v9, "Close Socket - stopReceiver called"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Lcom/lge/wfds/session/UdpDataReceiver;->closeSocket()V

    goto/16 :goto_53

    .line 122
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "addr":Ljava/net/InetSocketAddress;
    .restart local v1    # "buff":Ljava/nio/ByteBuffer;
    .restart local v3    # "msg":[B
    .restart local v4    # "pack":Ljava/net/DatagramPacket;
    .restart local v5    # "req_type":I
    .restart local v6    # "seq":I
    .restart local v7    # "session":Lcom/lge/wfds/session/AspSession;
    :sswitch_10c
    :try_start_10c
    invoke-direct {p0, v4, v1}, Lcom/lge/wfds/session/UdpDataReceiver;->processRemoveSession(Ljava/net/DatagramPacket;Ljava/nio/ByteBuffer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v7

    .line 123
    invoke-direct {p0, v5, v4, v6}, Lcom/lge/wfds/session/UdpDataReceiver;->sendAckPacket(ILjava/net/DatagramPacket;I)V
    :try_end_113
    .catch Ljava/net/SocketException; {:try_start_10c .. :try_end_113} :catch_c4
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_113} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_113} :catch_fc
    .catchall {:try_start_10c .. :try_end_113} :catchall_114

    goto :goto_b1

    .line 177
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v1    # "buff":Ljava/nio/ByteBuffer;
    .end local v3    # "msg":[B
    .end local v4    # "pack":Ljava/net/DatagramPacket;
    .end local v5    # "req_type":I
    .end local v6    # "seq":I
    .end local v7    # "session":Lcom/lge/wfds/session/AspSession;
    :catchall_114
    move-exception v8

    .line 178
    const-string v9, "WfdsSession:RECEIVE"

    const-string v10, "Close Socket - stopReceiver called"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Lcom/lge/wfds/session/UdpDataReceiver;->closeSocket()V

    .line 180
    throw v8

    .line 127
    .restart local v0    # "addr":Ljava/net/InetSocketAddress;
    .restart local v1    # "buff":Ljava/nio/ByteBuffer;
    .restart local v3    # "msg":[B
    .restart local v4    # "pack":Ljava/net/DatagramPacket;
    .restart local v5    # "req_type":I
    .restart local v6    # "seq":I
    .restart local v7    # "session":Lcom/lge/wfds/session/AspSession;
    :sswitch_120
    :try_start_120
    invoke-direct {p0, v4, v1}, Lcom/lge/wfds/session/UdpDataReceiver;->processAllowedPort(Ljava/net/DatagramPacket;Ljava/nio/ByteBuffer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v7

    .line 128
    invoke-direct {p0, v5, v4, v6}, Lcom/lge/wfds/session/UdpDataReceiver;->sendAckPacket(ILjava/net/DatagramPacket;I)V

    goto :goto_b1

    .line 132
    :sswitch_128
    invoke-direct {p0, v1}, Lcom/lge/wfds/session/UdpDataReceiver;->processVersion(Ljava/nio/ByteBuffer;)V

    .line 133
    invoke-direct {p0, v5, v4, v6}, Lcom/lge/wfds/session/UdpDataReceiver;->sendAckPacket(ILjava/net/DatagramPacket;I)V

    goto :goto_b1

    .line 137
    :sswitch_12f
    invoke-direct {p0, v4, v1}, Lcom/lge/wfds/session/UdpDataReceiver;->processDeferredSession(Ljava/net/DatagramPacket;Ljava/nio/ByteBuffer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v7

    .line 138
    invoke-direct {p0, v5, v4, v6}, Lcom/lge/wfds/session/UdpDataReceiver;->sendAckPacket(ILjava/net/DatagramPacket;I)V

    goto/16 :goto_b1

    .line 142
    :sswitch_138
    invoke-direct {p0, v1}, Lcom/lge/wfds/session/UdpDataReceiver;->processNack(Ljava/nio/ByteBuffer;)V
    :try_end_13b
    .catch Ljava/net/SocketException; {:try_start_120 .. :try_end_13b} :catch_c4
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_13b} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_13b} :catch_fc
    .catchall {:try_start_120 .. :try_end_13b} :catchall_114

    goto/16 :goto_b1

    .line 171
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v1    # "buff":Ljava/nio/ByteBuffer;
    .end local v3    # "msg":[B
    .end local v4    # "pack":Ljava/net/DatagramPacket;
    .end local v5    # "req_type":I
    .end local v6    # "seq":I
    .end local v7    # "session":Lcom/lge/wfds/session/AspSession;
    .local v2, "e":Ljava/net/SocketException;
    :cond_13d
    :try_start_13d
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_140
    .catchall {:try_start_13d .. :try_end_140} :catchall_114

    goto :goto_d0

    .line 109
    nop

    :sswitch_data_142
    .sparse-switch
        0x0 -> :sswitch_dc
        0x1 -> :sswitch_f4
        0x2 -> :sswitch_f4
        0x3 -> :sswitch_10c
        0x4 -> :sswitch_120
        0x5 -> :sswitch_128
        0x6 -> :sswitch_12f
        0xff -> :sswitch_138
    .end sparse-switch
.end method

.method private sendAckPacket(ILjava/net/DatagramPacket;I)V
    .registers 9
    .param p1, "req_type"    # I
    .param p2, "pack"    # Ljava/net/DatagramPacket;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    const/16 v2, 0xfe

    const/4 v3, 0x0

    invoke-static {v2, p3, v3}, Lcom/lge/wfds/session/UdpDataSender;->requestBuilderAck(III)[B

    move-result-object v0

    .line 353
    .local v0, "ack":[B
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    const/16 v4, 0x1c43

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 354
    .local v1, "p":Ljava/net/DatagramPacket;
    iget-object v2, p0, Lcom/lge/wfds/session/UdpDataReceiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 356
    const-string v2, "WfdsSession:RECEIVE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Send ACK of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/lge/wfds/session/AspSessionProtoOpcode;->getReqTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void
.end method

.method private sendMessageToStateMachine(IIILcom/lge/wfds/session/AspSession;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "session"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    .line 442
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 443
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 444
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 445
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 446
    if-eqz p4, :cond_14

    .line 447
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 449
    :cond_14
    iget-object v1, p0, Lcom/lge/wfds/session/UdpDataReceiver;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 450
    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lge/wfds/session/UdpDataReceiver;->receiveUdpDatatPacket()V

    .line 46
    return-void
.end method

.method public stopReceiver()V
    .registers 3

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wfds/session/UdpDataReceiver;->bThreadRunning:Z

    .line 51
    invoke-direct {p0}, Lcom/lge/wfds/session/UdpDataReceiver;->closeSocket()V

    .line 52
    const-string v0, "WfdsSession:RECEIVE"

    const-string v1, "Stop Receiver : Socket Closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method
