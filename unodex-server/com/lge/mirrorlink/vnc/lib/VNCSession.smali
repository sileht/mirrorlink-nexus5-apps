.class public Lcom/lge/mirrorlink/vnc/lib/VNCSession;
.super Ljava/lang/Thread;
.source "VNCSession.java"


# static fields
.field public static ORIENTATION_LANDSCAPE:I = 0x0

.field public static ORIENTATION_PORTRAIT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "MirrorLink_VNC"


# instance fields
.field private eventConf_Bundle:Landroid/os/Bundle;

.field fbUpdateCounter:I

.field private fbUpdateRequestCounter:I

.field framebufferUpdateBuffer:[B

.field private framebufferUpdateRequestBuffer:[B

.field private inputStream:Ljava/io/InputStream;

.field private intBuf:[B

.field private logCount:I

.field private mAverageNum:I

.field private mConfigDownscaling:Z

.field protected mConfigOrientationSwitch:Z

.field private mConfigRotation:Z

.field private mConfigTextMsg:Z

.field private mConfigUpscaling:Z

.field private mContentAttestation:Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private majorVersion:I

.field private minorVersion:I

.field private outputStream:Ljava/io/OutputStream;

.field pointerBuf:[B

.field rectNames:Ljava/lang/StringBuilder;

.field private server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

.field private shortBuf:[B

.field private socket:Ljava/net/Socket;

.field private tmInitSent:Z

.field private writeIntBuf:[B

.field private writeLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/lge/mirrorlink/vnc/lib/VNCSession;)Ljava/net/Socket;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const/4 v0, 0x1

    sput v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->ORIENTATION_LANDSCAPE:I

    .line 67
    const/4 v0, 0x2

    sput v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->ORIENTATION_PORTRAIT:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/net/Socket;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "socket"    # Ljava/net/Socket;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeLock:Ljava/lang/Object;

    .line 50
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mAverageNum:I

    .line 51
    iput v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->logCount:I

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->eventConf_Bundle:Landroid/os/Bundle;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mContentAttestation:Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;

    .line 59
    iput-boolean v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mConfigOrientationSwitch:Z

    .line 60
    iput-boolean v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mConfigRotation:Z

    .line 61
    iput-boolean v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mConfigUpscaling:Z

    .line 62
    iput-boolean v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mConfigDownscaling:Z

    .line 63
    iput-boolean v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mConfigTextMsg:Z

    .line 68
    sget v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->ORIENTATION_LANDSCAPE:I

    iput v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mCurrentOrientation:I

    .line 375
    iput-boolean v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->tmInitSent:Z

    .line 429
    iput v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->fbUpdateRequestCounter:I

    .line 430
    const/16 v0, 0x9

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->framebufferUpdateRequestBuffer:[B

    .line 461
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->framebufferUpdateBuffer:[B

    .line 462
    iput v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->fbUpdateCounter:I

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->rectNames:Ljava/lang/StringBuilder;

    .line 529
    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->pointerBuf:[B

    .line 1269
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->shortBuf:[B

    .line 1281
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->intBuf:[B

    .line 1325
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeIntBuf:[B

    .line 72
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->socket:Ljava/net/Socket;

    .line 75
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->openIOStream()Z

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VNC-socket:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/Socket;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->setName(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->setPriority(I)V

    .line 70
    return-void
.end method

.method public static isConfigurationBitSet(SI)Z
    .registers 6
    .param p0, "data"    # S
    .param p1, "bit"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 734
    shl-int v3, v1, p1

    int-to-short v0, v3

    .line 735
    .local v0, "bitMask":S
    and-int v3, p0, v0

    if-lez v3, :cond_a

    :goto_9
    return v1

    :cond_a
    move v1, v2

    goto :goto_9
.end method

.method private openIOStream()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1443
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->inputStream:Ljava/io/InputStream;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_1f

    .line 1450
    :try_start_e
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->outputStream:Ljava/io/OutputStream;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1d} :catch_24

    .line 1455
    const/4 v1, 0x1

    return v1

    .line 1444
    :catch_1f
    move-exception v0

    .line 1445
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/Exception;)V

    .line 1446
    return v4

    .line 1451
    .end local v0    # "e":Ljava/io/IOException;
    :catch_24
    move-exception v0

    .line 1452
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/Exception;)V

    .line 1453
    return v4
.end method

.method private processClientCutText()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    const/4 v3, 0x3

    new-array v3, v3, [B

    invoke-virtual {p0, v3}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->read([B)V

    .line 565
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readInt()I

    move-result v1

    .line 566
    .local v1, "length":I
    new-array v0, v1, [B

    .line 567
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->read([B)V

    .line 568
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 570
    .local v2, "text":Ljava/lang/String;
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(C->S) Client Cut Text: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method private processClientInit()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readByte()B

    move-result v0

    .line 280
    .local v0, "read":B
    const/4 v2, 0x1

    if-ne v0, v2, :cond_28

    const/4 v1, 0x1

    .line 281
    .local v1, "shared":Z
    :goto_8
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(C->S) Client initialization: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_2a

    const-string/jumbo v2, "shared"

    :goto_1c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void

    .line 280
    .end local v1    # "shared":Z
    :cond_28
    const/4 v1, 0x0

    .restart local v1    # "shared":Z
    goto :goto_8

    .line 281
    :cond_2a
    const-string/jumbo v2, "not shared"

    goto :goto_1c
.end method

.method private processFixColourMapEntries()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    const/4 v1, 0x0

    .line 367
    .local v1, "colours":I
    const-string/jumbo v2, "MirrorLink_VNC"

    const-string/jumbo v3, "(C->S) Read fix colour map entries."

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readByte()B

    .line 369
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readShort()S

    .line 370
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readShort()S

    move-result v1

    .line 371
    mul-int/lit8 v2, v1, 0x6

    new-array v0, v2, [B

    .line 372
    .local v0, "buffer":[B
    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->read([B)V

    .line 364
    return-void
.end method

.method private processFramebufferUpdateRequest()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 441
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->framebufferUpdateRequestBuffer:[B

    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->read([B)V

    .line 443
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->framebufferUpdateRequestBuffer:[B

    aget-byte v0, v0, v9

    if-ne v0, v10, :cond_9a

    const/4 v1, 0x1

    .line 444
    .local v1, "incremental":Z
    :goto_10
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->framebufferUpdateRequestBuffer:[B

    invoke-static {v0, v10, v11}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 445
    .local v6, "datawrapper":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 446
    .local v2, "x":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 447
    .local v3, "y":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 448
    .local v4, "w":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 450
    .local v5, "h":I
    const-string/jumbo v7, "MirrorLink_VNC"

    const/16 v0, 0xd

    new-array v8, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "(C->S) Frame Buffer Update Request ("

    aput-object v0, v8, v9

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->fbUpdateRequestCounter:I

    add-int/lit8 v9, v0, 0x1

    iput v9, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->fbUpdateRequestCounter:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v10

    const-string/jumbo v0, "): "

    const/4 v9, 0x2

    aput-object v0, v8, v9

    .line 451
    if-eqz v1, :cond_9d

    const-string/jumbo v0, "incremental "

    :goto_49
    const/4 v9, 0x3

    aput-object v0, v8, v9

    const-string/jumbo v0, "("

    const/4 v9, 0x4

    aput-object v0, v8, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v9, 0x5

    aput-object v0, v8, v9

    const-string/jumbo v0, ", "

    const/4 v9, 0x6

    aput-object v0, v8, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v9, 0x7

    aput-object v0, v8, v9

    const-string/jumbo v0, ", "

    aput-object v0, v8, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v9, 0x9

    aput-object v0, v8, v9

    const-string/jumbo v0, ", "

    const/16 v9, 0xa

    aput-object v0, v8, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v9, 0xb

    aput-object v0, v8, v9

    const-string/jumbo v0, ")"

    const/16 v9, 0xc

    aput-object v0, v8, v9

    .line 450
    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    if-nez v0, :cond_a1

    .line 455
    const-string/jumbo v0, "MirrorLink_VNC"

    const-string/jumbo v7, "processFramebufferUpdateRequest: Error VNCServer is null"

    invoke-static {v0, v7}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    return-void

    .line 443
    .end local v1    # "incremental":Z
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "w":I
    .end local v5    # "h":I
    .end local v6    # "datawrapper":Ljava/nio/ByteBuffer;
    :cond_9a
    const/4 v1, 0x0

    .restart local v1    # "incremental":Z
    goto/16 :goto_10

    .line 451
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "w":I
    .restart local v5    # "h":I
    .restart local v6    # "datawrapper":Ljava/nio/ByteBuffer;
    :cond_9d
    const-string/jumbo v0, "full "

    goto :goto_49

    .line 458
    :cond_a1
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual/range {v0 .. v5}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->framebufferUpdateRequest(ZIIII)V

    .line 436
    return-void
.end method

.method private processKeyEvent()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readByte()B

    move-result v0

    .line 514
    .local v0, "down":I
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readShort()S

    .line 515
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readInt()I

    move-result v1

    .line 518
    .local v1, "key":I
    const-string/jumbo v2, "MirrorLink_VNC"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "(C->S) Key Event down: "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, " key: 0x"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    if-nez v2, :cond_3c

    .line 522
    const-string/jumbo v2, "MirrorLink_VNC"

    const-string/jumbo v3, "processKeyEvent: Error VNCServer is null"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    return-void

    .line 526
    :cond_3c
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v2, v0, v1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->injectKeyEvent(II)V

    .line 509
    return-void
.end method

.method private processPointerEvent()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    iget-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->pointerBuf:[B

    invoke-virtual {p0, v5}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->read([B)V

    .line 538
    iget-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->pointerBuf:[B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 539
    .local v1, "pointerBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 540
    .local v0, "buttonMask":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 541
    .local v3, "x":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 543
    .local v4, "y":I
    iget-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    if-nez v5, :cond_25

    .line 544
    const-string/jumbo v5, "MirrorLink_VNC"

    const-string/jumbo v6, "processPointerEvent: Error VNCServer is null"

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    return-void

    .line 547
    :cond_25
    iget-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v5, v3, v4}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->calculateRealXY(II)Landroid/graphics/PointF;

    move-result-object v2

    .line 549
    .local v2, "realPoint":Landroid/graphics/PointF;
    const-string/jumbo v5, "MirrorLink_VNC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(C->S) Pointer Event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") mask:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    iget v6, v2, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v0, v6, v7}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->injectPointerEvent(IFF)V

    .line 534
    return-void
.end method

.method private processProtocolVersion()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lge/mirrorlink/vnc/lib/VNC$RFBException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x7

    .line 201
    const-string/jumbo v5, "RFB 003.008\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->write([B)I

    .line 202
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->flush()V

    .line 205
    const/16 v5, 0xc

    new-array v0, v5, [B

    .line 206
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->read([B)V

    .line 207
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 208
    .local v2, "clientVersionMessage":Ljava/lang/String;
    const-string/jumbo v5, "MirrorLink_VNC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(C->S) Requested protocol version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v5, 0x4

    const/4 v6, 0x7

    :try_start_36
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->majorVersion:I

    .line 212
    const/16 v5, 0x8

    const/16 v6, 0xb

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->minorVersion:I

    .line 215
    iget v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->majorVersion:I

    const/4 v6, 0x3

    if-lt v5, v6, :cond_57

    iget v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->minorVersion:I

    if-ge v5, v8, :cond_bf

    .line 216
    :cond_57
    const-string/jumbo v5, "MirrorLink_VNC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Not supported version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->majorVersion:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->minorVersion:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/16 v5, 0x22

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 219
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 220
    const-string/jumbo v4, "Not supported VNC version."

    .line 221
    .local v4, "failmsg":Ljava/lang/String;
    const/16 v5, 0x1a

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 222
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 223
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->write([B)I

    .line 224
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->flush()V

    .line 226
    new-instance v5, Lcom/lge/mirrorlink/vnc/lib/VNC$RFBException;

    const-string/jumbo v6, "Not supported VNC version."

    invoke-direct {v5, v6}, Lcom/lge/mirrorlink/vnc/lib/VNC$RFBException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_ac
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_ac} :catch_ac

    .line 228
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v4    # "failmsg":Ljava/lang/String;
    :catch_ac
    move-exception v3

    .line 229
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "MirrorLink_VNC"

    const-string/jumbo v6, "Client protocol version is invalid."

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v5, Lcom/lge/mirrorlink/vnc/lib/VNC$RFBException;

    const-string/jumbo v6, "Client protocol is invalid."

    invoke-direct {v5, v6}, Lcom/lge/mirrorlink/vnc/lib/VNC$RFBException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 198
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_bf
    return-void
.end method

.method private processSecurityType()Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 241
    new-array v2, v9, [B

    .line 242
    .local v2, "data":[B
    aput-byte v7, v2, v8

    .line 243
    aput-byte v7, v2, v7

    .line 244
    invoke-virtual {p0, v2}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->write([B)I

    .line 245
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->flush()V

    .line 246
    const-string/jumbo v4, "MirrorLink_VNC"

    const-string/jumbo v5, "(S->C) Write authenticate message: support none."

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-array v1, v7, [B

    .line 248
    .local v1, "clientResponse":[B
    invoke-virtual {p0, v1}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->read([B)V

    .line 249
    const-string/jumbo v4, "MirrorLink_VNC"

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "(C->S) Client security: "

    aput-object v6, v5, v8

    aget-byte v6, v1, v8

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    aget-byte v4, v1, v8

    if-ne v4, v7, :cond_46

    .line 251
    invoke-virtual {p0, v8}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->write(I)I

    .line 252
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->flush()V

    .line 253
    const-string/jumbo v4, "MirrorLink_VNC"

    const-string/jumbo v5, "(S->C) authentication complete."

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return v7

    .line 256
    :cond_46
    invoke-virtual {p0, v7}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->write(I)I

    .line 257
    iget v4, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->minorVersion:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_8c

    .line 258
    const-string/jumbo v4, "Client requested unsupported security type."

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 259
    .local v3, "errormsg":[B
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 260
    .local v0, "buf":Ljava/nio/ByteBuffer;
    array-length v4, v3

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 261
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->write([B)I

    .line 262
    invoke-virtual {p0, v3}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->write([B)I

    .line 263
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->flush()V

    .line 264
    const-string/jumbo v4, "MirrorLink_VNC"

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "(S->C) "

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->close()V

    .line 266
    const-string/jumbo v4, "MirrorLink_VNC"

    const-string/jumbo v5, "VNC session closed."

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "errormsg":[B
    :cond_8c
    return v8
.end method

.method private processServerInit()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v4, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 292
    :try_start_3
    const-string/jumbo v3, "MirrorLink_VNC"

    const-string/jumbo v5, "(S->C) Write server initialization message"

    invoke-static {v3, v5}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    if-nez v3, :cond_1b

    .line 295
    const-string/jumbo v3, "MirrorLink_VNC"

    const-string/jumbo v5, "processServerInit: Error VNCServer is null"

    invoke-static {v3, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_cd

    monitor-exit v4

    .line 296
    return-void

    .line 300
    :cond_1b
    const/4 v3, 0x4

    :try_start_1c
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 301
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getSystemDisplayWidth()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 302
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getSystemDisplayHeight()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 303
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->write([B)I

    .line 306
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getPixelFormat()Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->write([B)I

    .line 308
    const/4 v3, 0x3

    new-array v3, v3, [B

    fill-array-data v3, :array_d0

    invoke-virtual {p0, v3}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->write([B)I

    .line 310
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerName()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "desktopName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 312
    .local v2, "desktopNameBytes":[B
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 313
    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 314
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->write([B)I

    .line 315
    invoke-virtual {p0, v2}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->write([B)I

    .line 316
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->flush()V

    .line 318
    const-string/jumbo v3, "MirrorLink_VNC"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "FramebufferWidth: "

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v6}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getSystemDisplayWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    const-string/jumbo v3, "MirrorLink_VNC"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "FramebufferHeight: "

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v6}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getSystemDisplayHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    const-string/jumbo v3, "MirrorLink_VNC"

    iget-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getPixelFormat()Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string/jumbo v3, "MirrorLink_VNC"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "DesktopName: "

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v3, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_cb
    .catchall {:try_start_1c .. :try_end_cb} :catchall_cd

    monitor-exit v4

    .line 289
    return-void

    .line 291
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "desktopName":Ljava/lang/String;
    .end local v2    # "desktopNameBytes":[B
    :catchall_cd
    move-exception v3

    monitor-exit v4

    throw v3

    .line 308
    :array_d0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private processSetEncodings()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 382
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 383
    .local v3, "encodings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readByte()B

    .line 384
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readShort()S

    move-result v5

    .line 385
    .local v5, "nEncodings":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .local v2, "encodingNames":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v5, :cond_38

    .line 387
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readInt()I

    move-result v0

    .line 388
    .local v0, "encoding":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 389
    const-string/jumbo v6, "  "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->getEncodingName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 386
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 391
    .end local v0    # "encoding":I
    :cond_38
    const-string/jumbo v6, "MirrorLink_VNC"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "(C->S) Set encodings ("

    aput-object v8, v7, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const-string/jumbo v8, ")"

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    const-string/jumbo v6, "MirrorLink_VNC"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v11

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "encoding$iterator":Ljava/util/Iterator;
    :cond_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 395
    .restart local v0    # "encoding":I
    const/16 v6, -0x20b

    if-ne v0, v6, :cond_60

    iget-boolean v6, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->tmInitSent:Z

    if-nez v6, :cond_60

    .line 396
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeDisplayConfiguration()V

    .line 397
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeEventConfiguration()V

    .line 398
    iput-boolean v10, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->tmInitSent:Z

    .line 403
    .end local v0    # "encoding":I
    :cond_80
    iget-object v6, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    if-nez v6, :cond_8e

    .line 404
    const-string/jumbo v6, "MirrorLink_VNC"

    const-string/jumbo v7, "processSetEncodings: Error VNCServer is null"

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void

    .line 407
    :cond_8e
    iget-object v6, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v6, v3}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->setEncoding(Ljava/util/Set;)V

    .line 380
    return-void
.end method

.method private processSetPixelFormat()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x1

    .line 331
    const-string/jumbo v11, "MirrorLink_VNC"

    const-string/jumbo v12, "(C->S) Read set pixel format."

    invoke-static {v11, v12}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-array v11, v14, [B

    invoke-virtual {p0, v11}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->read([B)V

    .line 334
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readByte()B

    move-result v1

    .line 335
    .local v1, "bitsPerPixel":B
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readByte()B

    move-result v2

    .line 336
    .local v2, "depth":B
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readByte()B

    move-result v11

    if-ne v11, v13, :cond_60

    const/4 v3, 0x1

    .line 337
    .local v3, "bigEndian":Z
    :goto_1f
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readByte()B

    move-result v11

    if-ne v11, v13, :cond_62

    const/4 v4, 0x1

    .line 338
    .local v4, "trueColour":Z
    :goto_26
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readShort()S

    move-result v5

    .line 339
    .local v5, "redMax":S
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readShort()S

    move-result v6

    .line 340
    .local v6, "greenMax":S
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readShort()S

    move-result v7

    .line 341
    .local v7, "blueMax":S
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readByte()B

    move-result v8

    .line 342
    .local v8, "redShift":B
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readByte()B

    move-result v9

    .line 343
    .local v9, "greenShift":B
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readByte()B

    move-result v10

    .line 344
    .local v10, "blueShift":B
    new-instance v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;

    invoke-direct/range {v0 .. v10}, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;-><init>(IIZZIIIIII)V

    .line 347
    .local v0, "pixelFormat":Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;
    new-array v11, v14, [B

    invoke-virtual {p0, v11}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->read([B)V

    .line 348
    const-string/jumbo v11, "MirrorLink_VNC"

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v11, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    if-nez v11, :cond_64

    .line 351
    const-string/jumbo v11, "MirrorLink_VNC"

    const-string/jumbo v12, "processSetPixelFormat: Error VNCServer is null"

    invoke-static {v11, v12}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void

    .line 336
    .end local v0    # "pixelFormat":Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;
    .end local v3    # "bigEndian":Z
    .end local v4    # "trueColour":Z
    .end local v5    # "redMax":S
    .end local v6    # "greenMax":S
    .end local v7    # "blueMax":S
    .end local v8    # "redShift":B
    .end local v9    # "greenShift":B
    .end local v10    # "blueShift":B
    :cond_60
    const/4 v3, 0x0

    .restart local v3    # "bigEndian":Z
    goto :goto_1f

    .line 337
    :cond_62
    const/4 v4, 0x0

    .restart local v4    # "trueColour":Z
    goto :goto_26

    .line 356
    .restart local v0    # "pixelFormat":Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;
    .restart local v5    # "redMax":S
    .restart local v6    # "greenMax":S
    .restart local v7    # "blueMax":S
    .restart local v8    # "redShift":B
    .restart local v9    # "greenShift":B
    .restart local v10    # "blueShift":B
    :cond_64
    iget-object v11, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v11, v0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->setPixelFormat(Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;)V

    .line 329
    return-void
.end method

.method private processTerminalModeMessage()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readByte()B

    move-result v0

    .line 581
    .local v0, "extType":I
    packed-switch v0, :pswitch_data_6a

    .line 621
    :pswitch_7
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readShort()S

    move-result v1

    .line 622
    .local v1, "payloadLength":S
    new-array v2, v1, [B

    invoke-virtual {p0, v2}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->read([B)V

    .line 623
    const-string/jumbo v2, "MirrorLink_VNC"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Unknown message("

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, ") is received. Payload length is "

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string/jumbo v4, "."

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    .end local v1    # "payloadLength":S
    :goto_39
    return-void

    .line 583
    :pswitch_3a
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readByeBye()V

    goto :goto_39

    .line 586
    :pswitch_3e
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readClientDisplayConfiguration()V

    goto :goto_39

    .line 589
    :pswitch_42
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readClientEventConfiguration()V

    goto :goto_39

    .line 592
    :pswitch_46
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readEventMappingRequest()V

    goto :goto_39

    .line 595
    :pswitch_4a
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readKeyEventListingRequest()V

    goto :goto_39

    .line 598
    :pswitch_4e
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readVirtualKeyboardTriggerRequest()V

    goto :goto_39

    .line 601
    :pswitch_52
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readDeviceStatusRequest()V

    goto :goto_39

    .line 604
    :pswitch_56
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readContentAttestationRequest()V

    goto :goto_39

    .line 607
    :pswitch_5a
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readFramebufferBlockingNotification()V

    goto :goto_39

    .line 610
    :pswitch_5e
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readAudioBlockingNotification()V

    goto :goto_39

    .line 613
    :pswitch_62
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readTouchEvent()V

    goto :goto_39

    .line 616
    :pswitch_66
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readFramebufferAlternativeTextRequest()V

    goto :goto_39

    .line 581
    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_7
        :pswitch_3e
        :pswitch_7
        :pswitch_42
        :pswitch_7
        :pswitch_46
        :pswitch_7
        :pswitch_4a
        :pswitch_7
        :pswitch_4e
        :pswitch_7
        :pswitch_52
        :pswitch_7
        :pswitch_56
        :pswitch_7
        :pswitch_5a
        :pswitch_7
        :pswitch_5e
        :pswitch_7
        :pswitch_62
        :pswitch_7
        :pswitch_66
    .end packed-switch
.end method

.method private readAndAllocateByteBuffer(I)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 646
    new-array v0, p1, [B

    .line 647
    .local v0, "databuf":[B
    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->read([B)V

    .line 648
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 649
    .local v1, "wrap":Ljava/nio/ByteBuffer;
    return-object v1
.end method

.method private readAudioBlockingNotification()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 898
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readPayloadLength()S

    move-result v2

    .line 899
    .local v2, "payloadLength":S
    invoke-direct {p0, v2}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readAndAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 900
    .local v4, "wrap":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 901
    .local v0, "appid":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 903
    .local v3, "reason":S
    const-string/jumbo v5, "MirrorLink_VNC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(C->S) Audio Blocking Notification \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 904
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    const/16 v8, 0x12

    invoke-static {v8, v7}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeTmProtocol(I[B)Ljava/lang/String;

    move-result-object v7

    .line 903
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v1

    .line 907
    .local v1, "commonAPI":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    if-eqz v1, :cond_3e

    .line 908
    invoke-virtual {v1, v3}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->onAudioBlocked(I)V

    .line 911
    :cond_3e
    if-eqz v3, :cond_45

    .line 912
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/lge/mirrorlink/rtp/RTPWriter;->setBlocking(Z)V

    .line 896
    :goto_44
    return-void

    .line 914
    :cond_45
    invoke-static {v9}, Lcom/lge/mirrorlink/rtp/RTPWriter;->setBlocking(Z)V

    goto :goto_44
.end method

.method private readByeBye()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 658
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readPayloadLength()S

    move-result v1

    .line 659
    .local v1, "payloadLength":S
    if-eqz v1, :cond_14

    .line 660
    const-string/jumbo v2, "MirrorLink_VNC"

    const-string/jumbo v3, "payload length of ByeBye message is not 0."

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    new-array v0, v1, [B

    .line 662
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->read([B)V

    .line 665
    .end local v0    # "buf":[B
    :cond_14
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeByeBye()V

    .line 667
    new-instance v2, Lcom/lge/mirrorlink/vnc/lib/VNCSession$1;

    invoke-direct {v2, p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession$1;-><init>(Lcom/lge/mirrorlink/vnc/lib/VNCSession;)V

    invoke-virtual {v2}, Lcom/lge/mirrorlink/vnc/lib/VNCSession$1;->start()V

    .line 656
    return-void
.end method

.method private readClientDisplayConfiguration()V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    invoke-direct/range {p0 .. p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readPayloadLength()S

    move-result v12

    .line 690
    .local v12, "payloadLength":S
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readAndAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 692
    .local v15, "wrap":Ljava/nio/ByteBuffer;
    :try_start_a
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 693
    .local v3, "clientMajorVersion":B
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 694
    .local v4, "clientMinorVersion":B
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    .line 695
    .local v11, "configuration":S
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 696
    .local v5, "widthPixel":S
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 697
    .local v6, "heightPixel":S
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    .line 698
    .local v7, "widthMM":S
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 699
    .local v8, "heightMM":S
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    .line 702
    .local v9, "distanceUserClient":S
    const/4 v2, 0x1

    if-lt v3, v2, :cond_3c

    const/4 v2, 0x1

    if-lt v4, v2, :cond_3c

    const/16 v2, 0x16

    if-lt v12, v2, :cond_3c

    .line 703
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    .line 704
    .local v13, "pixelFormatSupport":I
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    .line 707
    .end local v13    # "pixelFormatSupport":I
    :cond_3c
    const-string/jumbo v2, "MirrorLink_VNC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "(C->S) Client Display Configuration \n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 708
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeTmProtocol(I[B)Ljava/lang/String;

    move-result-object v17

    .line 707
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const/4 v2, 0x0

    invoke-static {v11, v2}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->isConfigurationBitSet(SI)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mConfigOrientationSwitch:Z

    .line 711
    const/4 v2, 0x1

    invoke-static {v11, v2}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->isConfigurationBitSet(SI)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mConfigRotation:Z

    .line 712
    const/4 v2, 0x2

    invoke-static {v11, v2}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->isConfigurationBitSet(SI)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mConfigUpscaling:Z

    .line 713
    const/4 v2, 0x3

    invoke-static {v11, v2}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->isConfigurationBitSet(SI)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mConfigDownscaling:Z

    .line 714
    const/4 v2, 0x5

    invoke-static {v11, v2}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->isConfigurationBitSet(SI)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mConfigTextMsg:Z

    .line 715
    const-string/jumbo v2, "MirrorLink_VNC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Client Configuration configOrientationSwitch:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mConfigOrientationSwitch:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " configRotation:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mConfigRotation:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 716
    const-string/jumbo v17, " configUpscaling:"

    .line 715
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 716
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mConfigUpscaling:Z

    move/from16 v17, v0

    .line 715
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 716
    const-string/jumbo v17, " configDownscaling:"

    .line 715
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 716
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mConfigDownscaling:Z

    move/from16 v17, v0

    .line 715
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 716
    const-string/jumbo v17, " configTextMsg:"

    .line 715
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 716
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mConfigTextMsg:Z

    move/from16 v17, v0

    .line 715
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string/jumbo v2, "MirrorLink_VNC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Client Disp Conf:w:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", h:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    if-nez v2, :cond_157

    .line 722
    const-string/jumbo v2, "MirrorLink_VNC"

    const-string/jumbo v16, "readClientDisplayConfiguration: Error VNCServer is null"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    return-void

    .line 725
    :cond_157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual/range {v2 .. v9}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->handleDisplayConfiguration(IIIIIII)V
    :try_end_15e
    .catch Ljava/nio/BufferUnderflowException; {:try_start_a .. :try_end_15e} :catch_15f

    .line 687
    return-void

    .line 727
    .end local v3    # "clientMajorVersion":B
    .end local v4    # "clientMinorVersion":B
    .end local v5    # "widthPixel":S
    .end local v6    # "heightPixel":S
    .end local v7    # "widthMM":S
    .end local v8    # "heightMM":S
    .end local v9    # "distanceUserClient":S
    .end local v11    # "configuration":S
    :catch_15f
    move-exception v10

    .line 728
    .local v10, "bue":Ljava/nio/BufferUnderflowException;
    const-string/jumbo v2, "MirrorLink_VNC"

    const-string/jumbo v16, "readClientDisplayConfiguration : BufferUnderflowException:"

    move-object/from16 v0, v16

    invoke-static {v2, v0, v10}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 729
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v10}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readClientEventConfiguration()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readPayloadLength()S

    move-result v10

    .line 745
    .local v10, "payloadLength":S
    invoke-direct {p0, v10}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readAndAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 746
    .local v11, "wrap":Ljava/nio/ByteBuffer;
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 747
    .local v1, "kbdLanguage":S
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 748
    .local v2, "kbdCountry":S
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 749
    .local v3, "uiLanguage":S
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 750
    .local v4, "uiCountry":S
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 751
    .local v5, "knobKey":I
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 752
    .local v6, "deviceKey":I
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 753
    .local v7, "multimediaKey":I
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 754
    .local v8, "keyRelated":I
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 756
    .local v9, "pointerRelated":I
    const-string/jumbo v0, "MirrorLink_VNC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "(C->S) Client Event Configuration \n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 757
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    const/4 v14, 0x4

    invoke-static {v14, v13}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeTmProtocol(I[B)Ljava/lang/String;

    move-result-object v13

    .line 756
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    if-nez v0, :cond_5d

    .line 761
    const-string/jumbo v0, "MirrorLink_VNC"

    const-string/jumbo v12, "readClientEventConfiguration: Error VNCServer is null"

    invoke-static {v0, v12}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    return-void

    .line 764
    :cond_5d
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getEventInjectorThread()Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    move-result-object v0

    invoke-virtual/range {v0 .. v9}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->handleEventConfiguration(SSSSIIIII)V

    .line 765
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getEventInjectorThread()Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->writeAllMapping()V

    .line 742
    return-void
.end method

.method private readContentAttestationRequest()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 850
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readPayloadLength()S

    move-result v1

    .line 851
    .local v1, "payloadLength":S
    new-array v0, v1, [B

    .line 852
    .local v0, "payload":[B
    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->read([B)V

    .line 853
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mContentAttestation:Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;

    if-eqz v2, :cond_10

    .line 854
    iput-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mContentAttestation:Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;

    .line 856
    :cond_10
    new-instance v2, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;

    invoke-direct {v2}, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;-><init>()V

    iput-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mContentAttestation:Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;

    .line 857
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mContentAttestation:Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;

    invoke-virtual {v2, v0}, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->parsePayload([B)Z

    .line 859
    const-string/jumbo v2, "MirrorLink_VNC"

    const-string/jumbo v3, "(C->S) Content Attestation Request\n"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    return-void
.end method

.method private readDeviceStatusRequest()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 828
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readPayloadLength()S

    move-result v0

    .line 829
    .local v0, "payloadLength":S
    invoke-direct {p0, v0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readAndAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 830
    .local v2, "wrap":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 832
    .local v1, "status":I
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(C->S) Device Status Request \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 833
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/16 v6, 0xc

    invoke-static {v6, v5}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeTmProtocol(I[B)Ljava/lang/String;

    move-result-object v5

    .line 832
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    if-nez v3, :cond_3e

    .line 837
    const-string/jumbo v3, "MirrorLink_VNC"

    const-string/jumbo v4, "readDeviceStatusRequest: Error VNCServer is null"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    return-void

    .line 840
    :cond_3e
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v3, v1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->handleDeviceStatusRequest(I)V

    .line 826
    return-void
.end method

.method private readEventMappingRequest()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readPayloadLength()S

    move-result v1

    .line 775
    .local v1, "payloadLength":S
    invoke-direct {p0, v1}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readAndAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 776
    .local v3, "wrap":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 777
    .local v0, "clientKeySymValue":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 779
    .local v2, "serverKeySymValue":I
    const-string/jumbo v4, "MirrorLink_VNC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(C->S) Event Mapping Request \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 780
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/4 v7, 0x6

    invoke-static {v7, v6}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeTmProtocol(I[B)Ljava/lang/String;

    move-result-object v6

    .line 779
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v4, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    if-nez v4, :cond_41

    .line 784
    const-string/jumbo v4, "MirrorLink_VNC"

    const-string/jumbo v5, "readEventMappingRequest: Error VNCServer is null"

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    return-void

    .line 787
    :cond_41
    iget-object v4, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v4}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getEventInjectorThread()Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->handleEventMappingRequest(II)V

    .line 788
    iget-object v4, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v4}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getEventInjectorThread()Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->getEventMappingKey(I)I

    move-result v2

    .line 789
    invoke-virtual {p0, v0, v2}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeEventMapping(II)V

    .line 772
    return-void
.end method

.method private readFramebufferAlternativeTextRequest()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 963
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readPayloadLength()S

    move-result v1

    .line 964
    .local v1, "payloadLength":S
    invoke-direct {p0, v1}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readAndAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 965
    .local v2, "wrap":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 967
    .local v0, "maxLength":S
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(C->S) Framebuffer Alternative Text Request \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 968
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/16 v6, 0x16

    invoke-static {v6, v5}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeTmProtocol(I[B)Ljava/lang/String;

    move-result-object v5

    .line 967
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    return-void
.end method

.method private readFramebufferBlockingNotification()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readPayloadLength()S

    move-result v13

    .line 869
    .local v13, "payloadLength":S
    invoke-direct {p0, v13}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readAndAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 870
    .local v14, "wrap":Ljava/nio/ByteBuffer;
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 871
    .local v2, "rectX":S
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 872
    .local v3, "rectY":S
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 873
    .local v4, "rectW":S
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 874
    .local v5, "rectH":S
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 875
    .local v11, "appid":I
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 877
    .local v1, "reason":S
    const-string/jumbo v6, "MirrorLink_VNC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(C->S) Framebuffer Blocking Notification \n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 878
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v9, v8}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeTmProtocol(I[B)Ljava/lang/String;

    move-result-object v8

    .line 877
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    iget-object v6, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    if-nez v6, :cond_52

    .line 881
    const-string/jumbo v6, "MirrorLink_VNC"

    const-string/jumbo v7, "readFramebufferBlockingNotification: Error VNCServer is null"

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    return-void

    .line 884
    :cond_52
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v0

    .line 885
    .local v0, "commonAPI":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    if-eqz v0, :cond_5b

    .line 886
    invoke-virtual/range {v0 .. v5}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->onFramebufferBlocked(ISSSS)V

    .line 889
    :cond_5b
    iget-object v6, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    move v12, v1

    invoke-virtual/range {v6 .. v12}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->handleFramebufferBlockingNotification(SSSSIS)V

    .line 866
    return-void
.end method

.method private readKeyEventListingRequest()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 799
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readPayloadLength()S

    move-result v1

    .line 800
    .local v1, "payloadLength":S
    invoke-direct {p0, v1}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readAndAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 801
    .local v2, "wrap":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 803
    .local v0, "configuration":I
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(C->S) Key Event Listing Request \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 804
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v6, v5}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeTmProtocol(I[B)Ljava/lang/String;

    move-result-object v5

    .line 803
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method private readPayloadLength()S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readShort()S

    move-result v0

    return v0
.end method

.method private readTouchEvent()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 925
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readPayloadLength()S

    move-result v3

    .line 926
    .local v3, "payloadLength":S
    invoke-direct {p0, v3}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readAndAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 929
    .local v5, "wrap":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 931
    .local v2, "nEvents":B
    iget-object v8, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    if-nez v8, :cond_1a

    .line 932
    const-string/jumbo v8, "MirrorLink_VNC"

    const-string/jumbo v9, "readTouchEvent: Error VNCServer is null"

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    return-void

    .line 936
    :cond_1a
    new-array v0, v2, [Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;

    .line 937
    .local v0, "data":[Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    if-ge v1, v2, :cond_b9

    .line 938
    new-instance v8, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;

    invoke-direct {v8}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;-><init>()V

    aput-object v8, v0, v1

    .line 939
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 940
    .local v6, "x":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    .line 941
    .local v7, "y":I
    iget-object v8, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v8, v6, v7}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->calculateRealXY(II)Landroid/graphics/PointF;

    move-result-object v4

    .line 942
    .local v4, "realPoint":Landroid/graphics/PointF;
    aget-object v8, v0, v1

    iget v9, v4, Landroid/graphics/PointF;->x:F

    iput v9, v8, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;->x:F

    .line 943
    aget-object v8, v0, v1

    iget v9, v4, Landroid/graphics/PointF;->y:F

    iput v9, v8, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;->y:F

    .line 944
    aget-object v8, v0, v1

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    iput v9, v8, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;->pointerId:I

    .line 945
    aget-object v8, v0, v1

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    iput v9, v8, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;->pressure:I

    .line 947
    const-string/jumbo v8, "MirrorLink_VNC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "(C->S) Touch Event:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v1

    iget v10, v10, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;->x:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v1

    iget v10, v10, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;->y:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v1

    iget v10, v10, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;->pointerId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " pressure:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v1

    iget v10, v10, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;->pressure:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1d

    .line 952
    .end local v4    # "realPoint":Landroid/graphics/PointF;
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_b9
    iget-object v8, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v8, v0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->injectTouchEvent([Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;)V

    .line 923
    return-void
.end method

.method private readVirtualKeyboardTriggerRequest()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readPayloadLength()S

    move-result v1

    .line 815
    .local v1, "payloadLength":S
    invoke-direct {p0, v1}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readAndAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 816
    .local v2, "wrap":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 818
    .local v0, "configuration":I
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(C->S) Virtual Keyboard Trigger Request \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 819
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {v6, v5}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeTmProtocol(I[B)Ljava/lang/String;

    move-result-object v5

    .line 818
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    return-void
.end method

.method private setupConnection()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 168
    :try_start_1
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->processProtocolVersion()V

    .line 171
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->processSecurityType()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 172
    new-instance v2, Lcom/lge/mirrorlink/vnc/lib/VNC$RFBException;

    const-string/jumbo v3, "Cannot authenticate client."

    invoke-direct {v2, v3}, Lcom/lge/mirrorlink/vnc/lib/VNC$RFBException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_13} :catch_13
    .catch Lcom/lge/mirrorlink/vnc/lib/VNC$RFBException; {:try_start_1 .. :try_end_13} :catch_2f

    .line 181
    :catch_13
    move-exception v1

    .line 182
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "MirrorLink_VNC"

    const-string/jumbo v3, "IOException in setupConnection:"

    invoke-static {v2, v3, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    return v4

    .line 176
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1e
    :try_start_1e
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->processClientInit()V

    .line 179
    new-instance v2, Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;-><init>(Landroid/content/Context;Lcom/lge/mirrorlink/vnc/lib/VNCSession;)V

    iput-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    .line 180
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->processServerInit()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2d} :catch_13
    .catch Lcom/lge/mirrorlink/vnc/lib/VNC$RFBException; {:try_start_1e .. :try_end_2d} :catch_2f

    .line 188
    const/4 v2, 0x1

    return v2

    .line 184
    :catch_2f
    move-exception v0

    .line 185
    .local v0, "e":Lcom/lge/mirrorlink/vnc/lib/VNC$RFBException;
    const-string/jumbo v2, "MirrorLink_VNC"

    const-string/jumbo v3, "RFBException in setupConnection:"

    invoke-static {v2, v3, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    return v4
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 4

    .prologue
    monitor-enter p0

    .line 1372
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->interrupt()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_33

    .line 1374
    :try_start_4
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->socket:Ljava/net/Socket;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1377
    :cond_10
    :goto_10
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    if-eqz v2, :cond_1c

    .line 1378
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v2}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->close()V

    .line 1379
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1c} :catch_2e
    .catchall {:try_start_4 .. :try_end_1c} :catchall_33

    .line 1400
    :cond_1c
    :goto_1c
    :try_start_1c
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v0

    .line 1401
    .local v0, "commonAPI":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    if-eqz v0, :cond_26

    .line 1402
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->onRemoteDisplayConnectionChanged(I)V
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_33

    :cond_26
    monitor-exit p0

    .line 1370
    return-void

    .line 1375
    .end local v0    # "commonAPI":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    :cond_28
    :try_start_28
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_2e
    .catchall {:try_start_28 .. :try_end_2d} :catchall_33

    goto :goto_10

    .line 1381
    :catch_2e
    move-exception v1

    .line 1382
    .local v1, "e":Ljava/io/IOException;
    :try_start_2f
    invoke-static {v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/Exception;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_1c

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_33
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public finishEncoding()V
    .registers 1

    .prologue
    .line 424
    return-void
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1362
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1363
    :try_start_3
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 1360
    return-void

    .line 1362
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentOrientation()I
    .registers 2

    .prologue
    .line 1425
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mCurrentOrientation:I

    return v0
.end method

.method public getEventConfiguration()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->eventConf_Bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method public getServer()Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    return-object v0
.end method

.method public read([B)V
    .registers 6
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1300
    const/4 v0, 0x0

    .line 1301
    .local v0, "read":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_17

    .line 1302
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->inputStream:Ljava/io/InputStream;

    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-virtual {v2, p1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 1303
    .local v1, "readBytes":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    .line 1304
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1306
    :cond_15
    add-int/2addr v0, v1

    goto :goto_1

    .line 1298
    .end local v1    # "readBytes":I
    :cond_17
    return-void
.end method

.method public readByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1262
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1263
    .local v0, "read":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 1264
    new-instance v1, Ljava/io/EOFException;

    const-string/jumbo v2, "connection closed"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1266
    :cond_12
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    return v1
.end method

.method public readInt()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->intBuf:[B

    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->read([B)V

    .line 1290
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->intBuf:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->shortBuf:[B

    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->read([B)V

    .line 1278
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->shortBuf:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public run()V
    .registers 9

    .prologue
    .line 97
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "com.lge.mirrorlink.vnc.connected"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v3, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->setupConnection()Z

    move-result v4

    .line 101
    .local v4, "setupSuccess":Z
    if-nez v4, :cond_20

    .line 102
    const-string/jumbo v5, "MirrorLink_VNC"

    const-string/jumbo v6, "VNCSession: cannot setup connection."

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->close()V

    .line 104
    return-void

    .line 107
    :cond_20
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v1

    .line 108
    .local v1, "commonAPI":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    if-eqz v1, :cond_2a

    .line 109
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->onRemoteDisplayConnectionChanged(I)V

    .line 114
    :cond_2a
    :goto_2a
    :try_start_2a
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readByte()B

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 115
    .local v0, "b":I
    sparse-switch v0, :sswitch_data_94

    .line 141
    const-string/jumbo v5, "MirrorLink_VNC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readClientMessage unknown: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_4d} :catch_4e

    goto :goto_2a

    .line 143
    .end local v0    # "b":I
    :catch_4e
    move-exception v2

    .line 144
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v5, "MirrorLink_VNC"

    const-string/jumbo v6, "VNCSession IOException:"

    invoke-static {v5, v6, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->close()V

    .line 151
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_65

    .line 153
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->onRemoteDisplayConnectionChanged(I)V

    .line 156
    :cond_65
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.lge.mirrorlink.vnc.disconnected"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    return-void

    .line 117
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "b":I
    :sswitch_73
    :try_start_73
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->processSetPixelFormat()V

    goto :goto_2a

    .line 120
    :sswitch_77
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->processFixColourMapEntries()V

    goto :goto_2a

    .line 123
    :sswitch_7b
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->processSetEncodings()V

    goto :goto_2a

    .line 126
    :sswitch_7f
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->processFramebufferUpdateRequest()V

    goto :goto_2a

    .line 129
    :sswitch_83
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->processKeyEvent()V

    goto :goto_2a

    .line 132
    :sswitch_87
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->processPointerEvent()V

    goto :goto_2a

    .line 135
    :sswitch_8b
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->processClientCutText()V

    goto :goto_2a

    .line 138
    :sswitch_8f
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->processTerminalModeMessage()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_92} :catch_4e

    goto :goto_2a

    .line 115
    nop

    :sswitch_data_94
    .sparse-switch
        0x0 -> :sswitch_73
        0x1 -> :sswitch_77
        0x2 -> :sswitch_7b
        0x3 -> :sswitch_7f
        0x4 -> :sswitch_83
        0x5 -> :sswitch_87
        0x6 -> :sswitch_8b
        0x80 -> :sswitch_8f
    .end sparse-switch
.end method

.method public setCurrentOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 1429
    iput p1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mCurrentOrientation:I

    .line 1428
    return-void
.end method

.method public startEncoding()V
    .registers 2

    .prologue
    .line 415
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->logCount:I

    if-nez v0, :cond_4

    .line 413
    :cond_4
    return-void
.end method

.method public write(B)I
    .registers 4
    .param p1, "data"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1319
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1320
    :try_start_3
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    .line 1321
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 1319
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public write(I)I
    .registers 6
    .param p1, "integer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1334
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1335
    :try_start_3
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeIntBuf:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1336
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1337
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_18

    .line 1338
    const/4 v1, 0x4

    monitor-exit v2

    return v1

    .line 1334
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public write([B)I
    .registers 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1350
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1351
    :try_start_3
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 1352
    array-length v0, p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    return v0

    .line 1350
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public writeByeBye()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 978
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 979
    :try_start_3
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->outputStream:Ljava/io/OutputStream;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/lge/mirrorlink/vnc/lib/TM;->writeTMHeader(Ljava/io/OutputStream;II)V

    .line 980
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->flush()V

    .line 982
    const-string/jumbo v0, "MirrorLink_VNC"

    const-string/jumbo v2, "(S->C) ByeBye"

    invoke-static {v0, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v1

    .line 975
    return-void

    .line 978
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public writeContentAttestationResponse(Ljava/util/List;[B)V
    .registers 11
    .param p2, "frameBuffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mirrorlink/vnc/lib/ContextInformation;",
            ">;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "ctxInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/vnc/lib/ContextInformation;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1227
    iget-object v4, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mContentAttestation:Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;

    if-nez v4, :cond_7

    .line 1228
    return-void

    .line 1230
    :cond_7
    iget-object v4, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mContentAttestation:Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;

    invoke-virtual {v4}, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->needToSendResponse()Z

    move-result v4

    if-nez v4, :cond_12

    .line 1231
    iput-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mContentAttestation:Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;

    .line 1232
    return-void

    .line 1235
    :cond_12
    const/4 v1, 0x0

    .line 1236
    .local v1, "ctxInfoBytes":[B
    const/4 v0, 0x0

    .line 1237
    .local v0, "ctxInfo":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    const/4 v3, 0x0

    .line 1238
    .local v3, "pixelNumber":I
    if-eqz p1, :cond_2d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2d

    .line 1239
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ctxInfo":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    check-cast v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    .line 1240
    .local v0, "ctxInfo":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->getBytesWithoutHeader()[B

    move-result-object v1

    .line 1241
    .local v1, "ctxInfoBytes":[B
    iget v4, v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->w:I

    iget v5, v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->h:I

    mul-int v3, v4, v5

    .line 1244
    .end local v0    # "ctxInfo":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    .end local v1    # "ctxInfoBytes":[B
    :cond_2d
    iget-object v4, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->mContentAttestation:Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;

    invoke-virtual {v4, v1, p2, v3}, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->getResponsePayload([B[BI)[B

    move-result-object v2

    .line 1245
    .local v2, "payload":[B
    iget-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1246
    :try_start_36
    iget-object v4, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->outputStream:Ljava/io/OutputStream;

    array-length v6, v2

    const/16 v7, 0xd

    invoke-static {v4, v7, v6}, Lcom/lge/mirrorlink/vnc/lib/TM;->writeTMHeader(Ljava/io/OutputStream;II)V

    .line 1247
    invoke-virtual {p0, v2}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->write([B)I

    .line 1248
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->flush()V

    .line 1249
    const-string/jumbo v4, "MirrorLink_VNC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(S->C) Content Attestation Response"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1250
    const/16 v7, 0xd

    invoke-static {v7, v2}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeTmProtocol(I[B)Ljava/lang/String;

    move-result-object v7

    .line 1249
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_36 .. :try_end_64} :catchall_66

    monitor-exit v5

    .line 1225
    return-void

    .line 1245
    :catchall_66
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public writeDeviceStatus(I)V
    .registers 8
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 1208
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1209
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1211
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1212
    :try_start_b
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->outputStream:Ljava/io/OutputStream;

    const/4 v3, 0x4

    const/16 v4, 0xb

    invoke-static {v1, v4, v3}, Lcom/lge/mirrorlink/vnc/lib/TM;->writeTMHeader(Ljava/io/OutputStream;II)V

    .line 1213
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->write([B)I

    .line 1214
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->flush()V

    .line 1215
    const-string/jumbo v1, "MirrorLink_VNC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(S->C) Device Status\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1216
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/16 v5, 0xb

    invoke-static {v5, v4}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeTmProtocol(I[B)Ljava/lang/String;

    move-result-object v4

    .line 1215
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_b .. :try_end_41} :catchall_43

    monitor-exit v2

    .line 1205
    return-void

    .line 1211
    :catchall_43
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public writeDisplayConfiguration()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x1

    .line 999
    const/4 v1, 0x0

    .line 1000
    .local v1, "configuration":S
    const/4 v4, 0x0

    .line 1001
    .local v4, "pixelWidth":S
    const/4 v3, 0x0

    .line 1002
    .local v3, "pixelHeight":S
    const/4 v2, 0x0

    .line 1007
    .local v2, "pixelFormatSupport":I
    const/4 v5, 0x3

    invoke-static {v1, v5}, Lcom/lge/mirrorlink/common/Utility;->setBit(SI)S

    move-result v1

    .line 1011
    .local v1, "configuration":S
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/lge/mirrorlink/common/Utility;->setBit(II)I

    move-result v2

    .line 1012
    const/16 v5, 0x10

    invoke-static {v2, v5}, Lcom/lge/mirrorlink/common/Utility;->setBit(II)I

    move-result v2

    .line 1014
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1015
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1016
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1017
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1018
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1019
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1020
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1021
    iget-object v6, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1022
    :try_start_30
    iget-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->outputStream:Ljava/io/OutputStream;

    const/16 v7, 0xc

    const/4 v8, 0x1

    invoke-static {v5, v8, v7}, Lcom/lge/mirrorlink/vnc/lib/TM;->writeTMHeader(Ljava/io/OutputStream;II)V

    .line 1023
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->write([B)I

    .line 1024
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->flush()V

    .line 1026
    const-string/jumbo v5, "MirrorLink_VNC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(S->C) Server Display Configuration \n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1027
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9, v8}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeTmProtocol(I[B)Ljava/lang/String;

    move-result-object v8

    .line 1026
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_30 .. :try_end_65} :catchall_67

    monitor-exit v6

    .line 996
    return-void

    .line 1021
    :catchall_67
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public writeEventConfiguration()V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1045
    const/4 v8, 0x0

    .line 1046
    .local v8, "kbdLanguage":S
    const/4 v7, 0x0

    .line 1047
    .local v7, "kbdCountry":S
    const/16 v17, 0x0

    .line 1048
    .local v17, "uiLanguage":S
    const/16 v16, 0x0

    .line 1049
    .local v16, "uiCountry":S
    const/4 v10, 0x0

    .line 1050
    .local v10, "knobKey":I
    const/4 v6, 0x0

    .line 1051
    .local v6, "deviceKey":I
    const/4 v14, 0x0

    .line 1052
    .local v14, "multimediaKey":I
    const/4 v9, 0x0

    .line 1053
    .local v9, "keyRelated":I
    const/4 v15, 0x0

    .line 1055
    .local v15, "pointerRelated":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    .line 1056
    .local v13, "locale":Ljava/util/Locale;
    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 1057
    .local v4, "country":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    .line 1058
    .local v11, "language":Ljava/lang/String;
    if-eqz v4, :cond_25

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_28

    .line 1059
    :cond_25
    const-string/jumbo v4, "US"

    .line 1061
    :cond_28
    if-eqz v11, :cond_36

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_39

    .line 1062
    :cond_36
    const-string/jumbo v11, "en"

    .line 1064
    :cond_39
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 1065
    .local v5, "countryCode":[B
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 1067
    .local v12, "languageCode":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    move-object/from16 v18, v0

    if-nez v18, :cond_53

    .line 1068
    const-string/jumbo v18, "MirrorLink_VNC"

    const-string/jumbo v19, "writeEventConfiguration: Error VNCServer is null"

    invoke-static/range {v18 .. v19}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    return-void

    .line 1072
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getEventInjectorThread()Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->getSupportedDeviceKeyMask()I

    move-result v6

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getEventInjectorThread()Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->getSupportedMultimediaKeyMask()I

    move-result v14

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getEventInjectorThread()Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->getSupportedKnobKeyMask()I

    move-result v10

    .line 1076
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-static {v9, v0}, Lcom/lge/mirrorlink/common/Utility;->setBit(II)I

    move-result v9

    .line 1078
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/lge/mirrorlink/common/Utility;->setBit(II)I

    move-result v15

    .line 1079
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/lge/mirrorlink/common/Utility;->setBit(II)I

    move-result v15

    .line 1081
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/lge/mirrorlink/common/Utility;->setBit(II)I

    move-result v15

    .line 1082
    const/16 v18, 0x2

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Lcom/lge/mirrorlink/common/Utility;->setByte(IIB)I

    move-result v15

    .line 1083
    const/16 v18, 0x3

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Lcom/lge/mirrorlink/common/Utility;->setByte(IIB)I

    move-result v15

    .line 1086
    const/16 v18, 0x1c

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1087
    .local v3, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1088
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1089
    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1090
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1091
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1092
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1093
    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1094
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1095
    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1098
    :try_start_dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    const/16 v20, 0x1c

    const/16 v21, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/lge/mirrorlink/vnc/lib/TM;->writeTMHeader(Ljava/io/OutputStream;II)V

    .line 1099
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->write([B)I

    .line 1100
    invoke-virtual/range {p0 .. p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->flush()V

    .line 1101
    const-string/jumbo v18, "MirrorLink_VNC"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "(S->C) Server Event Configuration \n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v21

    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeTmProtocol(I[B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12a
    .catchall {:try_start_dd .. :try_end_12a} :catchall_12c

    monitor-exit v19

    .line 1042
    return-void

    .line 1097
    :catchall_12c
    move-exception v18

    monitor-exit v19

    throw v18
.end method

.method public writeEventMapping(II)V
    .registers 9
    .param p1, "clientKeySym"    # I
    .param p2, "serverKeySym"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 1114
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1115
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1116
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1118
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1119
    :try_start_f
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->outputStream:Ljava/io/OutputStream;

    const/16 v3, 0x8

    const/4 v4, 0x5

    invoke-static {v1, v4, v3}, Lcom/lge/mirrorlink/vnc/lib/TM;->writeTMHeader(Ljava/io/OutputStream;II)V

    .line 1120
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->write([B)I

    .line 1121
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->flush()V

    .line 1122
    const-string/jumbo v1, "MirrorLink_VNC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(S->C) Event Mapping\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5, v4}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeTmProtocol(I[B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_f .. :try_end_44} :catchall_46

    monitor-exit v2

    .line 1111
    return-void

    .line 1118
    :catchall_46
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public writeFramebufferUpdate(Ljava/util/List;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mirrorlink/vnc/lib/Rectangle;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    .local p1, "rectList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/vnc/lib/Rectangle;>;"
    iget-object v6, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeLock:Ljava/lang/Object;

    monitor-enter v6

    .line 474
    :try_start_3
    iget v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->logCount:I

    if-nez v5, :cond_7

    .line 481
    :cond_7
    iget-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->framebufferUpdateBuffer:[B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 482
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 483
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 486
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 487
    .local v1, "count":I
    int-to-short v5, v1

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 489
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->write([B)I

    move-result v4

    .line 491
    .local v4, "written":I
    iget-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->rectNames:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 492
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "r$iterator":Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mirrorlink/vnc/lib/Rectangle;

    .line 493
    .local v2, "r":Lcom/lge/mirrorlink/vnc/lib/Rectangle;
    iget-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2, v5}, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->writeToStream(Ljava/io/OutputStream;)I

    move-result v5

    add-int/2addr v4, v5

    .line 494
    iget-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->rectNames:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->getEncodingName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_53

    goto :goto_2f

    .line 472
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "count":I
    .end local v2    # "r":Lcom/lge/mirrorlink/vnc/lib/Rectangle;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    .end local v4    # "written":I
    :catchall_53
    move-exception v5

    monitor-exit v6

    throw v5

    .line 496
    .restart local v0    # "buf":Ljava/nio/ByteBuffer;
    .restart local v1    # "count":I
    .restart local v3    # "r$iterator":Ljava/util/Iterator;
    .restart local v4    # "written":I
    :cond_56
    :try_start_56
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->flush()V

    .line 497
    const-string/jumbo v5, "MirrorLink_VNC"

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "(S->C) Frame Buffer Update "

    const/4 v9, 0x0

    aput-object v8, v7, v9

    div-int/lit16 v8, v4, 0x400

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-string/jumbo v8, "Kb ("

    const/4 v9, 0x2

    aput-object v8, v7, v9

    iget v8, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->fbUpdateCounter:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->fbUpdateCounter:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 498
    const-string/jumbo v8, ") ("

    const/4 v9, 0x4

    aput-object v8, v7, v9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    const-string/jumbo v8, ": "

    const/4 v9, 0x6

    aput-object v8, v7, v9

    .line 499
    iget-object v8, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->rectNames:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    aput-object v8, v7, v9

    const-string/jumbo v8, ")"

    const/16 v9, 0x8

    aput-object v8, v7, v9

    .line 497
    invoke-static {v5, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ac
    .catchall {:try_start_56 .. :try_end_ac} :catchall_53

    monitor-exit v6

    .line 501
    return v4
.end method

.method public writeKeyEventListing()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 1133
    const/4 v5, 0x0

    .line 1134
    .local v5, "n":I
    int-to-short v7, v9

    .line 1135
    .local v7, "payloadLength":S
    const/4 v1, 0x0

    .line 1136
    .local v1, "configuration":B
    const/4 v6, 0x0

    .line 1137
    .local v6, "nKeyEvents":B
    const/4 v2, 0x0

    .line 1138
    .local v2, "keyEventCounter":S
    new-array v3, v5, [I

    .line 1140
    .local v3, "keySymValue":[I
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1141
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1142
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1143
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1144
    array-length v9, v3

    :goto_17
    if-ge v8, v9, :cond_21

    aget v4, v3, v8

    .line 1145
    .local v4, "keysym":I
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1144
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    .line 1148
    .end local v4    # "keysym":I
    :cond_21
    iget-object v9, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1149
    :try_start_24
    iget-object v8, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->outputStream:Ljava/io/OutputStream;

    const/4 v10, 0x7

    invoke-static {v8, v10, v7}, Lcom/lge/mirrorlink/vnc/lib/TM;->writeTMHeader(Ljava/io/OutputStream;II)V

    .line 1150
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->write([B)I

    .line 1151
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->flush()V

    .line 1152
    const-string/jumbo v8, "MirrorLink_VNC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "(S->C) Key Event Listing"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1153
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    const/4 v12, 0x7

    invoke-static {v12, v11}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeTmProtocol(I[B)Ljava/lang/String;

    move-result-object v11

    .line 1152
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_24 .. :try_end_57} :catchall_59

    monitor-exit v9

    .line 1131
    return-void

    .line 1148
    :catchall_59
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public writeVirtualKeyboardTrigger()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x10

    .line 1165
    const/4 v5, 0x0

    .line 1166
    .local v5, "configuration":I
    const/4 v6, 0x0

    .line 1167
    .local v6, "cursorX":S
    const/4 v7, 0x0

    .line 1168
    .local v7, "cursorY":S
    const/4 v2, 0x0

    .line 1169
    .local v2, "areaX":S
    const/4 v3, 0x0

    .line 1170
    .local v3, "areaY":S
    const/4 v1, 0x0

    .line 1171
    .local v1, "areaW":S
    const/4 v0, 0x0

    .line 1173
    .local v0, "areaH":S
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1174
    .local v4, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1175
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1176
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1177
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1178
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1179
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1180
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1182
    iget-object v9, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1183
    :try_start_25
    iget-object v8, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->outputStream:Ljava/io/OutputStream;

    const/16 v10, 0x10

    const/16 v11, 0x9

    invoke-static {v8, v11, v10}, Lcom/lge/mirrorlink/vnc/lib/TM;->writeTMHeader(Ljava/io/OutputStream;II)V

    .line 1184
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->write([B)I

    .line 1185
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->flush()V

    .line 1186
    const-string/jumbo v8, "MirrorLink_VNC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "(S->C) Virtual Keyboard Trigger"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1187
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    const/16 v12, 0x9

    invoke-static {v12, v11}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeTmProtocol(I[B)Ljava/lang/String;

    move-result-object v11

    .line 1186
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_25 .. :try_end_5c} :catchall_5e

    monitor-exit v9

    .line 1162
    return-void

    .line 1182
    :catchall_5e
    move-exception v8

    monitor-exit v9

    throw v8
.end method
