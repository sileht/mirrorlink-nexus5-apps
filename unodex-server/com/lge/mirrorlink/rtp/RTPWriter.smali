.class public Lcom/lge/mirrorlink/rtp/RTPWriter;
.super Ljava/lang/Object;
.source "RTPWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/rtp/RTPWriter$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_RTP"

.field private static mBlocking:Z

.field private static mCurrentAudioCategory:I

.field private static mLastPacket:Z

.field private static mPastAudioCategory:I


# instance fields
.field private mAddr:Ljava/net/InetAddress;

.field private mIP:Ljava/lang/String;

.field private mIsAudioActive:Z

.field private mPort:I

.field private mRTPServer:Lcom/lge/mirrorlink/rtp/TmRTPServer;

.field private mRTPTimeBase:I

.field private mRand:Ljava/util/Random;

.field private mRunning:Z

.field private mSeqNo:I

.field private mSource:Lcom/lge/mirrorlink/rtp/LiveCapture;

.field private mSourceID:I

.field private mUdpSocket:Ljava/net/DatagramSocket;

.field private mWAVDataWriter:Ljava/lang/Runnable;

.field protected totalSentBytes:J


# direct methods
.method static synthetic -get0(Lcom/lge/mirrorlink/rtp/RTPWriter;)Ljava/net/InetAddress;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mAddr:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic -get1()I
    .registers 1

    sget v0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mCurrentAudioCategory:I

    return v0
.end method

.method static synthetic -get10(Lcom/lge/mirrorlink/rtp/RTPWriter;)Lcom/lge/mirrorlink/rtp/LiveCapture;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mSource:Lcom/lge/mirrorlink/rtp/LiveCapture;

    return-object v0
.end method

.method static synthetic -get11(Lcom/lge/mirrorlink/rtp/RTPWriter;)I
    .registers 2

    iget v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mSourceID:I

    return v0
.end method

.method static synthetic -get12(Lcom/lge/mirrorlink/rtp/RTPWriter;)Ljava/net/DatagramSocket;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mUdpSocket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method static synthetic -get2(Lcom/lge/mirrorlink/rtp/RTPWriter;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mIP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/lge/mirrorlink/rtp/RTPWriter;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mIsAudioActive:Z

    return v0
.end method

.method static synthetic -get4()Z
    .registers 1

    sget-boolean v0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mLastPacket:Z

    return v0
.end method

.method static synthetic -get5(Lcom/lge/mirrorlink/rtp/RTPWriter;)I
    .registers 2

    iget v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mPort:I

    return v0
.end method

.method static synthetic -get6(Lcom/lge/mirrorlink/rtp/RTPWriter;)Lcom/lge/mirrorlink/rtp/TmRTPServer;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mRTPServer:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    return-object v0
.end method

.method static synthetic -get7(Lcom/lge/mirrorlink/rtp/RTPWriter;)I
    .registers 2

    iget v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mRTPTimeBase:I

    return v0
.end method

.method static synthetic -get8(Lcom/lge/mirrorlink/rtp/RTPWriter;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mRunning:Z

    return v0
.end method

.method static synthetic -get9(Lcom/lge/mirrorlink/rtp/RTPWriter;)I
    .registers 2

    iget v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mSeqNo:I

    return v0
.end method

.method static synthetic -set0(Lcom/lge/mirrorlink/rtp/RTPWriter;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mIsAudioActive:Z

    return p1
.end method

.method static synthetic -set1(Z)Z
    .registers 1

    sput-boolean p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mLastPacket:Z

    return p0
.end method

.method static synthetic -set2(I)I
    .registers 1

    sput p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mPastAudioCategory:I

    return p0
.end method

.method static synthetic -set3(Lcom/lge/mirrorlink/rtp/RTPWriter;I)I
    .registers 2

    iput p1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mSeqNo:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/lge/mirrorlink/rtp/RTPWriter;[B)Z
    .registers 3
    .param p1, "data"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/rtp/RTPWriter;->checkAllzero([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1([BBIIIZ)I
    .registers 7
    .param p0, "data"    # [B
    .param p1, "payloadType"    # B
    .param p2, "seqNo"    # I
    .param p3, "time"    # I
    .param p4, "ssid"    # I
    .param p5, "last"    # Z

    .prologue
    invoke-static/range {p0 .. p5}, Lcom/lge/mirrorlink/rtp/RTPWriter;->fillPacket([BBIIIZ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2()V
    .registers 0

    invoke-static {}, Lcom/lge/mirrorlink/rtp/RTPWriter;->initAudioContext()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 49
    sput v0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mPastAudioCategory:I

    .line 50
    sput v0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mCurrentAudioCategory:I

    .line 386
    sput-boolean v0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mBlocking:Z

    .line 387
    sput-boolean v0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mLastPacket:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/lge/mirrorlink/rtp/TmRTPServer;)V
    .registers 5
    .param p1, "server"    # Lcom/lge/mirrorlink/rtp/TmRTPServer;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string/jumbo v0, "localhost"

    iput-object v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mIP:Ljava/lang/String;

    .line 39
    const/16 v0, 0x1388

    iput v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mPort:I

    .line 40
    iput-object v1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mAddr:Ljava/net/InetAddress;

    .line 41
    iput-object v1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mUdpSocket:Ljava/net/DatagramSocket;

    .line 47
    iput-boolean v2, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mRunning:Z

    .line 48
    iput-object v1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mRTPServer:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    .line 51
    iput-boolean v2, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mIsAudioActive:Z

    .line 178
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->totalSentBytes:J

    .line 180
    new-instance v0, Lcom/lge/mirrorlink/rtp/RTPWriter$1;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/rtp/RTPWriter$1;-><init>(Lcom/lge/mirrorlink/rtp/RTPWriter;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mWAVDataWriter:Ljava/lang/Runnable;

    .line 55
    iput-object p1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mRTPServer:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    .line 56
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mRand:Ljava/util/Random;

    .line 53
    return-void
.end method

.method private checkAllzero([B)Z
    .registers 5
    .param p1, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_d

    .line 147
    aget-byte v1, p1, v0

    if-eqz v1, :cond_a

    .line 148
    return v2

    .line 146
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 151
    :cond_d
    const/4 v1, 0x1

    return v1
.end method

.method private static fillPacket([BBIIIZ)I
    .registers 13
    .param p0, "data"    # [B
    .param p1, "payloadType"    # B
    .param p2, "seqNo"    # I
    .param p3, "time"    # I
    .param p4, "ssid"    # I
    .param p5, "last"    # Z

    .prologue
    .line 331
    const/4 v3, 0x0

    .line 332
    .local v3, "extensionLength":I
    const/4 v1, 0x0

    .line 333
    .local v1, "audioAppId":I
    const/4 v2, 0x0

    .line 334
    .local v2, "audioCategory":I
    array-length v4, p0

    const/16 v5, 0xc

    if-ge v4, v5, :cond_13

    .line 335
    const-string/jumbo v4, "MirrorLink_RTP"

    const-string/jumbo v5, "fillPacket: data length is too short."

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v4, 0x0

    return v4

    .line 338
    :cond_13
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v0

    .line 339
    .local v0, "appListMgr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-eqz v0, :cond_3d

    .line 340
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getAudioAppId()I

    move-result v1

    .line 341
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getAudioCategory()I

    move-result v2

    .line 342
    const-string/jumbo v4, "MirrorLink_RTP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAudioCategory() audioCategory : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    sput v2, Lcom/lge/mirrorlink/rtp/RTPWriter;->mCurrentAudioCategory:I

    .line 345
    :cond_3d
    const/16 v4, -0x70

    const/4 v5, 0x0

    aput-byte v4, p0, v5

    .line 346
    const/4 v4, 0x1

    aput-byte p1, p0, v4

    .line 347
    if-eqz p5, :cond_6f

    .line 349
    const/4 v4, 0x1

    aget-byte v5, p0, v4

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    .line 350
    sget v2, Lcom/lge/mirrorlink/rtp/RTPWriter;->mPastAudioCategory:I

    .line 351
    sget v4, Lcom/lge/mirrorlink/rtp/RTPWriter;->mPastAudioCategory:I

    sput v4, Lcom/lge/mirrorlink/rtp/RTPWriter;->mCurrentAudioCategory:I

    .line 352
    const-string/jumbo v4, "MirrorLink_RTP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Set last audioCategory at sending a marker bit audioCategory : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_6f
    shr-int/lit8 v4, p2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x2

    aput-byte v4, p0, v5

    .line 355
    and-int/lit16 v4, p2, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x3

    aput-byte v4, p0, v5

    .line 356
    shr-int/lit8 v4, p3, 0x18

    int-to-byte v4, v4

    const/4 v5, 0x4

    aput-byte v4, p0, v5

    .line 357
    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x5

    aput-byte v4, p0, v5

    .line 358
    shr-int/lit8 v4, p3, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x6

    aput-byte v4, p0, v5

    .line 359
    and-int/lit16 v4, p3, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x7

    aput-byte v4, p0, v5

    .line 360
    shr-int/lit8 v4, p4, 0x18

    int-to-byte v4, v4

    const/16 v5, 0x8

    aput-byte v4, p0, v5

    .line 361
    shr-int/lit8 v4, p4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/16 v5, 0x9

    aput-byte v4, p0, v5

    .line 362
    shr-int/lit8 v4, p4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/16 v5, 0xa

    aput-byte v4, p0, v5

    .line 363
    and-int/lit16 v4, p4, 0xff

    int-to-byte v4, v4

    const/16 v5, 0xb

    aput-byte v4, p0, v5

    .line 365
    const/16 v4, 0x38

    int-to-byte v4, v4

    const/16 v5, 0xc

    aput-byte v4, p0, v5

    .line 366
    const/16 v4, 0x8c

    int-to-byte v4, v4

    const/16 v5, 0xd

    aput-byte v4, p0, v5

    .line 370
    const/4 v4, 0x0

    int-to-byte v4, v4

    const/16 v5, 0xe

    aput-byte v4, p0, v5

    .line 371
    const/4 v4, 0x2

    int-to-byte v4, v4

    const/16 v5, 0xf

    aput-byte v4, p0, v5

    .line 373
    shr-int/lit8 v4, v1, 0x18

    int-to-byte v4, v4

    const/16 v5, 0x10

    aput-byte v4, p0, v5

    .line 374
    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/16 v5, 0x11

    aput-byte v4, p0, v5

    .line 375
    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/16 v5, 0x12

    aput-byte v4, p0, v5

    .line 376
    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    const/16 v5, 0x13

    aput-byte v4, p0, v5

    .line 378
    shr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    const/16 v5, 0x14

    aput-byte v4, p0, v5

    .line 379
    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/16 v5, 0x15

    aput-byte v4, p0, v5

    .line 380
    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/16 v5, 0x16

    aput-byte v4, p0, v5

    .line 381
    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    const/16 v5, 0x17

    aput-byte v4, p0, v5

    .line 383
    const/16 v4, 0x18

    return v4
.end method

.method public static declared-synchronized getBlocking()Z
    .registers 2

    .prologue
    const-class v0, Lcom/lge/mirrorlink/rtp/RTPWriter;

    monitor-enter v0

    .line 420
    :try_start_3
    sget-boolean v1, Lcom/lge/mirrorlink/rtp/RTPWriter;->mBlocking:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static initAudioContext()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 324
    sput v0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mPastAudioCategory:I

    .line 325
    sput v0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mCurrentAudioCategory:I

    .line 322
    return-void
.end method

.method public static declared-synchronized setBlocking(Z)V
    .registers 4
    .param p0, "flag"    # Z

    .prologue
    const-class v1, Lcom/lge/mirrorlink/rtp/RTPWriter;

    monitor-enter v1

    .line 396
    :try_start_3
    sget-boolean v0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mBlocking:Z

    if-nez v0, :cond_9

    if-eqz p0, :cond_23

    .line 398
    :cond_9
    sget-boolean v0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mBlocking:Z

    if-nez v0, :cond_30

    if-eqz p0, :cond_30

    .line 399
    const-string/jumbo v0, "VNCService"

    const-string/jumbo v2, "RTPWriter.setBlocking: stop"

    invoke-static {v0, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :goto_18
    sput-boolean p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mBlocking:Z

    .line 407
    sget-boolean v0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mBlocking:Z

    if-eqz v0, :cond_4a

    .line 408
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mLastPacket:Z
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_2d

    :goto_21
    monitor-exit v1

    .line 394
    return-void

    .line 397
    :cond_23
    :try_start_23
    const-string/jumbo v0, "VNCService"

    const-string/jumbo v2, "RTPWriter.setBlocking: false to false"

    invoke-static {v0, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_2d

    goto :goto_18

    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 400
    :cond_30
    :try_start_30
    sget-boolean v0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mBlocking:Z

    if-eqz v0, :cond_36

    if-eqz p0, :cond_40

    .line 403
    :cond_36
    const-string/jumbo v0, "VNCService"

    const-string/jumbo v2, "RTPWriter.setBlocking: true to true"

    invoke-static {v0, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 401
    :cond_40
    const-string/jumbo v0, "VNCService"

    const-string/jumbo v2, "RTPWriter.setBlocking: resume"

    invoke-static {v0, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 410
    :cond_4a
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mLastPacket:Z
    :try_end_4d
    .catchall {:try_start_30 .. :try_end_4d} :catchall_2d

    goto :goto_21
.end method


# virtual methods
.method public addSource(Lcom/lge/mirrorlink/rtp/LiveCapture;)I
    .registers 4
    .param p1, "source"    # Lcom/lge/mirrorlink/rtp/LiveCapture;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mSource:Lcom/lge/mirrorlink/rtp/LiveCapture;

    .line 63
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mSource:Lcom/lge/mirrorlink/rtp/LiveCapture;

    .line 64
    .local v0, "liveSource":Lcom/lge/mirrorlink/rtp/LiveCapture;
    invoke-virtual {v0, p0}, Lcom/lge/mirrorlink/rtp/LiveCapture;->setWriter(Lcom/lge/mirrorlink/rtp/RTPWriter;)V

    .line 65
    const/4 v1, 0x0

    return v1
.end method

.method public disableAudioCapture()Z
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mSource:Lcom/lge/mirrorlink/rtp/LiveCapture;

    if-eqz v0, :cond_b

    .line 129
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mSource:Lcom/lge/mirrorlink/rtp/LiveCapture;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/rtp/LiveCapture;->disableAudioCapture()Z

    move-result v0

    return v0

    .line 131
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public enableAudioCapture()Z
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mSource:Lcom/lge/mirrorlink/rtp/LiveCapture;

    if-eqz v0, :cond_b

    .line 120
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mSource:Lcom/lge/mirrorlink/rtp/LiveCapture;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/rtp/LiveCapture;->enableAudioCapture()Z

    move-result v0

    return v0

    .line 122
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getClientIP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mIP:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mPort:I

    return v0
.end method

.method public getSSID()I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mSourceID:I

    return v0
.end method

.method public isAudioCapturing()Z
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mSource:Lcom/lge/mirrorlink/rtp/LiveCapture;

    if-eqz v0, :cond_b

    .line 138
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mSource:Lcom/lge/mirrorlink/rtp/LiveCapture;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/rtp/LiveCapture;->isAudioCapturing()Z

    move-result v0

    return v0

    .line 140
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isStarted()Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mRunning:Z

    return v0
.end method

.method public pause()I
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public setClientIP(Ljava/lang/String;)I
    .registers 3
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mIP:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public setClientIPAddr(Ljava/net/InetAddress;)I
    .registers 3
    .param p1, "ipAddr"    # Ljava/net/InetAddress;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mAddr:Ljava/net/InetAddress;

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public setPort(I)I
    .registers 3
    .param p1, "port"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mPort:I

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public setSocket(Ljava/net/DatagramSocket;)I
    .registers 3
    .param p1, "socket"    # Ljava/net/DatagramSocket;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mUdpSocket:Ljava/net/DatagramSocket;

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public start()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 156
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mRand:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mSourceID:I

    .line 157
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mRand:Ljava/util/Random;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mSeqNo:I

    .line 158
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mRand:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mRTPTimeBase:I

    .line 159
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mRunning:Z

    .line 160
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mSource:Lcom/lge/mirrorlink/rtp/LiveCapture;

    invoke-virtual {v1, p0}, Lcom/lge/mirrorlink/rtp/LiveCapture;->prepare(Lcom/lge/mirrorlink/rtp/RTPWriter;)V

    .line 161
    invoke-static {v4}, Lcom/lge/mirrorlink/rtp/RTPWriter;->setBlocking(Z)V

    .line 163
    const-string/jumbo v1, "MirrorLink_RTP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ".RTPWriter: start streaming with ssid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mSourceID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mWAVDataWriter:Ljava/lang/Runnable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RTP writer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mIP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 165
    .local v0, "t":Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 166
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 167
    return v4
.end method

.method public stop()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 172
    const-string/jumbo v0, "MirrorLink_RTP"

    const-string/jumbo v1, "Stop RTPWriter."

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iput-boolean v2, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mRunning:Z

    .line 174
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/RTPWriter;->mSource:Lcom/lge/mirrorlink/rtp/LiveCapture;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/rtp/LiveCapture;->cleanup()V

    .line 175
    return v2
.end method
