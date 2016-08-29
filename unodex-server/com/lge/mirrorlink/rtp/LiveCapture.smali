.class public Lcom/lge/mirrorlink/rtp/LiveCapture;
.super Ljava/lang/Object;
.source "LiveCapture.java"


# static fields
.field private static final AC_STATUS_IDLE:I = 0x0

.field private static final AC_STATUS_SETUP:I = 0x1

.field private static final AC_STATUS_STARTED:I = 0x2

.field private static final AUD_MAX_SIZE:I = 0x2800

.field private static final EV_AUDIO_DATA:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "MirrorLink_RTP"

.field static data:[B

.field static datalength:I

.field private static queueByteArray:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field static sChanged:Z

.field static sPrevDataLength:I


# instance fields
.field protected indexFirst:[I

.field protected indexSecond:[I

.field indexTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mAudioCaptureStatus:I

.field protected mBitsPerSample:I

.field protected mChannels:I

.field protected mFrequency:I

.field protected mInput:Ljava/io/InputStream;

.field protected mInputBlockSize:I

.field protected mInputData:[B

.field protected mOffset:I

.field protected mOutputBlockSize:I

.field protected mOutputData:[B

.field protected mSrcBps:I

.field protected mSrcChannels:I

.field protected mSrcFreq:I

.field protected mSrcSampleSize:I

.field protected mWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

.field protected writer:Lcom/lge/mirrorlink/rtp/RTPWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->queueByteArray:Ljava/util/concurrent/BlockingQueue;

    .line 31
    const/16 v0, 0x2800

    new-array v0, v0, [B

    sput-object v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->data:[B

    .line 32
    sput v1, Lcom/lge/mirrorlink/rtp/LiveCapture;->datalength:I

    .line 33
    sput v1, Lcom/lge/mirrorlink/rtp/LiveCapture;->sPrevDataLength:I

    .line 34
    sput-boolean v1, Lcom/lge/mirrorlink/rtp/LiveCapture;->sChanged:Z

    .line 38
    const-string/jumbo v0, "Capture"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    .line 42
    iput-object v0, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputData:[B

    .line 43
    iput v1, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputBlockSize:I

    .line 46
    iput-object v0, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOutputData:[B

    .line 47
    iput v1, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOutputBlockSize:I

    .line 49
    iput v1, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mBitsPerSample:I

    .line 50
    iput v1, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mFrequency:I

    .line 51
    iput v1, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mChannels:I

    .line 52
    iput v1, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOffset:I

    .line 53
    iput-object v0, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInput:Ljava/io/InputStream;

    .line 58
    iput v1, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mAudioCaptureStatus:I

    .line 136
    iput-object v0, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->writer:Lcom/lge/mirrorlink/rtp/RTPWriter;

    .line 351
    iput-object v0, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->indexTable:Ljava/util/ArrayList;

    .line 352
    iput-object v0, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->indexFirst:[I

    .line 353
    iput-object v0, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->indexSecond:[I

    .line 62
    invoke-direct {p0}, Lcom/lge/mirrorlink/rtp/LiveCapture;->setup()V

    .line 60
    return-void
.end method

.method public constructor <init>(III)V
    .registers 4
    .param p1, "freq"    # I
    .param p2, "channels"    # I
    .param p3, "bps"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/lge/mirrorlink/rtp/LiveCapture;-><init>()V

    .line 68
    iput p1, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mFrequency:I

    .line 69
    iput p2, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mChannels:I

    .line 70
    iput p3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mBitsPerSample:I

    .line 65
    return-void
.end method

.method public static native AudioCaptureGetSampleRate()I
.end method

.method public static native AudioCaptureGetSampleSize()I
.end method

.method public static native AudioCaptureRelease()I
.end method

.method public static native AudioCaptureSetup()I
.end method

.method public static native AudioCaptureStart()I
.end method

.method public static native AudioCaptureStop()I
.end method

.method public static MLAudioCaptureCb([BI)V
    .registers 7
    .param p0, "array"    # [B
    .param p1, "arraysize"    # I

    .prologue
    const/16 v4, 0x2800

    const/4 v3, 0x0

    .line 173
    sget v2, Lcom/lge/mirrorlink/rtp/LiveCapture;->sPrevDataLength:I

    if-eq v2, p1, :cond_a

    .line 174
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lge/mirrorlink/rtp/LiveCapture;->sChanged:Z

    .line 176
    :cond_a
    sput p1, Lcom/lge/mirrorlink/rtp/LiveCapture;->datalength:I

    .line 177
    sget v2, Lcom/lge/mirrorlink/rtp/LiveCapture;->datalength:I

    if-le v2, v4, :cond_12

    .line 178
    sput v4, Lcom/lge/mirrorlink/rtp/LiveCapture;->datalength:I

    .line 180
    :cond_12
    new-array v0, p1, [B

    .line 181
    .local v0, "cbData":[B
    sget v2, Lcom/lge/mirrorlink/rtp/LiveCapture;->datalength:I

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 182
    const-string/jumbo v2, "MirrorLink_RTP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "LiveCapture : MLAudioCaptureCb -> datalength : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lge/mirrorlink/rtp/LiveCapture;->datalength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sput p1, Lcom/lge/mirrorlink/rtp/LiveCapture;->sPrevDataLength:I

    .line 186
    :try_start_37
    sget-object v2, Lcom/lge/mirrorlink/rtp/LiveCapture;->queueByteArray:Ljava/util/concurrent/BlockingQueue;

    if-nez v2, :cond_45

    .line 187
    const-string/jumbo v2, "MirrorLink_RTP"

    const-string/jumbo v3, "LiveCapture : MLAudioCaptureCb -> queuedInt == null"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void

    .line 190
    :cond_45
    const-string/jumbo v2, "MirrorLink_RTP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MLAudioCaptureCb() push queue cbData size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-object v2, Lcom/lge/mirrorlink/rtp/LiveCapture;->queueByteArray:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_65
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_65} :catch_66

    .line 171
    :goto_65
    return-void

    .line 192
    :catch_66
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "MirrorLink_RTP"

    const-string/jumbo v3, "queuedInt.put Error"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65
.end method

.method public static native downsampleNative([B[B[I[I)V
.end method

.method private resetSample()V
    .registers 6

    .prologue
    const v4, 0xac44

    const v3, 0xbb80

    .line 463
    const v0, 0xbb80

    .line 464
    .local v0, "tSampleRate":I
    const/16 v1, 0x1000

    .line 466
    .local v1, "tSampleSize":I
    iput v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcFreq:I

    .line 467
    const/4 v2, 0x2

    iput v2, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcChannels:I

    .line 468
    const/16 v2, 0x10

    iput v2, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcBps:I

    .line 469
    const/16 v2, 0x1000

    iput v2, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcSampleSize:I

    .line 471
    invoke-static {}, Lcom/lge/mirrorlink/rtp/LiveCapture;->AudioCaptureGetSampleRate()I

    move-result v0

    .line 472
    invoke-static {}, Lcom/lge/mirrorlink/rtp/LiveCapture;->AudioCaptureGetSampleSize()I

    move-result v1

    .line 474
    if-ne v0, v3, :cond_56

    .line 475
    iput v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcFreq:I

    .line 480
    :cond_24
    :goto_24
    if-lez v1, :cond_2c

    iget v2, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcSampleSize:I

    if-eq v1, v2, :cond_2c

    .line 481
    iput v1, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcSampleSize:I

    .line 483
    :cond_2c
    const-string/jumbo v2, "MirrorLink_RTP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "LiveCapture -> SrcFreq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcFreq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", SampleSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcSampleSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    return-void

    .line 476
    :cond_56
    if-ne v0, v4, :cond_24

    .line 477
    iput v4, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcFreq:I

    goto :goto_24
.end method

.method private setup()V
    .registers 8

    .prologue
    const v6, 0xac44

    const v5, 0xbb80

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "mRst":I
    const v1, 0xbb80

    .line 428
    .local v1, "tSampleRate":I
    const/16 v2, 0x1000

    .line 430
    .local v2, "tSampleSize":I
    iput v5, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcFreq:I

    .line 431
    const/4 v3, 0x2

    iput v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcChannels:I

    .line 432
    const/16 v3, 0x10

    iput v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcBps:I

    .line 433
    const/16 v3, 0x1000

    iput v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcSampleSize:I

    .line 435
    sget-object v3, Lcom/lge/mirrorlink/rtp/LiveCapture;->queueByteArray:Ljava/util/concurrent/BlockingQueue;

    if-nez v3, :cond_24

    .line 436
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v3, Lcom/lge/mirrorlink/rtp/LiveCapture;->queueByteArray:Ljava/util/concurrent/BlockingQueue;

    .line 439
    :cond_24
    invoke-static {}, Lcom/lge/mirrorlink/rtp/LiveCapture;->AudioCaptureSetup()I

    move-result v0

    .line 440
    if-nez v0, :cond_74

    .line 441
    const-string/jumbo v3, "MirrorLink_RTP"

    const-string/jumbo v4, "LiveCapture -> AudioCaptureSetup success"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/lge/mirrorlink/rtp/LiveCapture;->AudioCaptureGetSampleRate()I

    move-result v1

    .line 443
    invoke-static {}, Lcom/lge/mirrorlink/rtp/LiveCapture;->AudioCaptureGetSampleSize()I

    move-result v2

    .line 448
    :goto_3b
    if-ne v1, v5, :cond_7e

    .line 449
    iput v5, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcFreq:I

    .line 454
    :cond_3f
    :goto_3f
    if-lez v2, :cond_47

    iget v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcSampleSize:I

    if-eq v2, v3, :cond_47

    .line 455
    iput v2, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcSampleSize:I

    .line 457
    :cond_47
    const-string/jumbo v3, "MirrorLink_RTP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LiveCapture -> SrcFreq: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcFreq:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", SampleSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcSampleSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const/4 v3, 0x1

    iput v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mAudioCaptureStatus:I

    .line 425
    return-void

    .line 445
    :cond_74
    const-string/jumbo v3, "MirrorLink_RTP"

    const-string/jumbo v4, "LiveCapture -> AudioCaptureSetup failure"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 450
    :cond_7e
    if-ne v1, v6, :cond_3f

    .line 451
    iput v6, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcFreq:I

    goto :goto_3f
.end method

.method private swap16bits([B)V
    .registers 5
    .param p1, "data"    # [B

    .prologue
    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_13

    .line 288
    aget-byte v1, p1, v0

    .line 289
    .local v1, "tmp":B
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, p1, v0

    .line 290
    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v2

    .line 287
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 284
    .end local v1    # "tmp":B
    :cond_13
    return-void
.end method

.method public static native swap16bitsNative([B)V
.end method

.method public static native upsampleNative([B[B[I[IZ)V
.end method


# virtual methods
.method protected buildSampleTable([B[BZZ)V
    .registers 18
    .param p1, "src"    # [B
    .param p2, "dst"    # [B
    .param p3, "upsample"    # Z
    .param p4, "mono"    # Z

    .prologue
    .line 303
    if-eqz p4, :cond_62

    .line 304
    if-eqz p3, :cond_33

    .line 305
    array-length v9, p2

    div-int/lit8 v1, v9, 0x2

    .line 306
    .local v1, "dstSamples":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->indexTable:Ljava/util/ArrayList;

    .line 307
    array-length v7, p1

    .line 308
    .local v7, "srclen":I
    array-length v2, p2

    .line 309
    .local v2, "dstlen":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v1, :cond_8e

    .line 310
    iget v9, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcChannels:I

    div-int v9, v7, v9

    mul-int/2addr v9, v3

    div-int v6, v9, v2

    .line 311
    .local v6, "srcSample":I
    mul-int/lit8 v5, v6, 0x4

    .line 312
    .local v5, "srcOffset":I
    mul-int/lit8 v0, v3, 0x2

    .line 313
    .local v0, "dstOffset":I
    iget-object v9, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->indexTable:Ljava/util/ArrayList;

    new-instance v10, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 316
    .end local v0    # "dstOffset":I
    .end local v1    # "dstSamples":I
    .end local v2    # "dstlen":I
    .end local v3    # "i":I
    .end local v5    # "srcOffset":I
    .end local v6    # "srcSample":I
    .end local v7    # "srclen":I
    :cond_33
    array-length v1, p2

    .line 317
    .restart local v1    # "dstSamples":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->indexTable:Ljava/util/ArrayList;

    .line 318
    array-length v7, p1

    .line 319
    .restart local v7    # "srclen":I
    array-length v2, p2

    .line 320
    .restart local v2    # "dstlen":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3e
    if-ge v3, v1, :cond_8e

    .line 321
    iget v9, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcChannels:I

    iget v10, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcBps:I

    mul-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x8

    div-int v9, v7, v9

    mul-int/2addr v9, v3

    div-int v6, v9, v2

    .line 322
    .restart local v6    # "srcSample":I
    move v0, v3

    .line 323
    .restart local v0    # "dstOffset":I
    iget-object v9, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->indexTable:Ljava/util/ArrayList;

    new-instance v10, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 327
    .end local v0    # "dstOffset":I
    .end local v1    # "dstSamples":I
    .end local v2    # "dstlen":I
    .end local v3    # "i":I
    .end local v6    # "srcSample":I
    .end local v7    # "srclen":I
    :cond_62
    array-length v9, p2

    div-int/lit8 v1, v9, 0x4

    .line 328
    .restart local v1    # "dstSamples":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->indexTable:Ljava/util/ArrayList;

    .line 329
    array-length v7, p1

    .line 330
    .restart local v7    # "srclen":I
    array-length v2, p2

    .line 331
    .restart local v2    # "dstlen":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6f
    if-ge v3, v1, :cond_8e

    .line 332
    mul-int v9, v3, v7

    div-int v6, v9, v2

    .line 333
    .restart local v6    # "srcSample":I
    mul-int/lit8 v5, v6, 0x4

    .line 334
    .restart local v5    # "srcOffset":I
    mul-int/lit8 v0, v3, 0x4

    .line 335
    .restart local v0    # "dstOffset":I
    iget-object v9, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->indexTable:Ljava/util/ArrayList;

    new-instance v10, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 339
    .end local v0    # "dstOffset":I
    .end local v5    # "srcOffset":I
    .end local v6    # "srcSample":I
    :cond_8e
    iget-object v9, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->indexTable:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 340
    .local v8, "tableLength":I
    new-array v9, v8, [I

    iput-object v9, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->indexFirst:[I

    .line 341
    new-array v9, v8, [I

    iput-object v9, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->indexSecond:[I

    .line 342
    const/4 v3, 0x0

    :goto_9d
    if-ge v3, v8, :cond_c2

    .line 343
    iget-object v9, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->indexTable:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 344
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->indexFirst:[I

    iget-object v9, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v10, v3

    .line 345
    iget-object v10, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->indexSecond:[I

    iget-object v9, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v10, v3

    .line 342
    add-int/lit8 v3, v3, 0x1

    goto :goto_9d

    .line 301
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_c2
    return-void
.end method

.method public cleanup()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-static {}, Lcom/lge/mirrorlink/rtp/LiveCapture;->AudioCaptureRelease()I

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mAudioCaptureStatus:I

    .line 78
    sget-object v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->queueByteArray:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_12

    .line 79
    sget-object v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->queueByteArray:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 80
    sput-object v1, Lcom/lge/mirrorlink/rtp/LiveCapture;->queueByteArray:Ljava/util/concurrent/BlockingQueue;

    .line 82
    :cond_12
    iput-object v1, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    .line 73
    return-void
.end method

.method public disableAudioCapture()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 402
    iget v0, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mAudioCaptureStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    .line 403
    const-string/jumbo v0, "MirrorLink_RTP"

    const-string/jumbo v1, "LiveCapture : disableAudioCapture -> false (invalid status)"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return v2

    .line 407
    :cond_11
    invoke-static {}, Lcom/lge/mirrorlink/rtp/LiveCapture;->AudioCaptureStop()I

    move-result v0

    if-eqz v0, :cond_21

    .line 408
    const-string/jumbo v0, "MirrorLink_RTP"

    const-string/jumbo v1, "LiveCapture : disableAudioCapture -> false (audiohook failure)"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return v2

    .line 412
    :cond_21
    iput v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mAudioCaptureStatus:I

    .line 413
    const-string/jumbo v0, "MirrorLink_RTP"

    const-string/jumbo v1, "LiveCapture : disableAudioCapture -> true"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    return v3
.end method

.method public enableAudioCapture()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 385
    iget v0, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mAudioCaptureStatus:I

    if-eq v0, v3, :cond_10

    .line 386
    const-string/jumbo v0, "MirrorLink_RTP"

    const-string/jumbo v1, "LiveCapture : enableAudioCapture -> false (invalid status)"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return v2

    .line 390
    :cond_10
    invoke-static {}, Lcom/lge/mirrorlink/rtp/LiveCapture;->AudioCaptureStart()I

    move-result v0

    if-eqz v0, :cond_20

    .line 391
    const-string/jumbo v0, "MirrorLink_RTP"

    const-string/jumbo v1, "LiveCapture : enableAudioCapture -> false (audiohook failure)"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return v2

    .line 395
    :cond_20
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mAudioCaptureStatus:I

    .line 396
    const-string/jumbo v0, "MirrorLink_RTP"

    const-string/jumbo v1, "LiveCapture : enableAudioCapture -> true"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return v3
.end method

.method public getBitsPerSample()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mBitsPerSample:I

    return v0
.end method

.method public getChannels()I
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mChannels:I

    return v0
.end method

.method public getCurrentOffset()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOffset:I

    return v0
.end method

.method public getFrequency()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mFrequency:I

    return v0
.end method

.method public getPayloadType()I
    .registers 3

    .prologue
    .line 165
    iget v0, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mFrequency:I

    const/16 v1, 0x1f40

    if-ne v0, v1, :cond_8

    .line 166
    const/4 v0, 0x0

    return v0

    .line 168
    :cond_8
    const/16 v0, 0x63

    return v0
.end method

.method public getRTPTime(I)I
    .registers 3
    .param p1, "rtptimeBase"    # I

    .prologue
    .line 281
    iget v0, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOffset:I

    add-int/2addr v0, p1

    return v0
.end method

.method public isAudioCapturing()Z
    .registers 3

    .prologue
    .line 419
    iget v0, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mAudioCaptureStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 420
    const/4 v0, 0x1

    return v0

    .line 422
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public prepare(Lcom/lge/mirrorlink/rtp/RTPWriter;)V
    .registers 9
    .param p1, "writer"    # Lcom/lge/mirrorlink/rtp/RTPWriter;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 87
    iput-object p1, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    .line 89
    invoke-virtual {p0}, Lcom/lge/mirrorlink/rtp/LiveCapture;->getPayloadType()I

    move-result v0

    .line 91
    .local v0, "pt":I
    iget v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcFreq:I

    const v4, 0xac44

    if-ne v3, v4, :cond_7e

    .line 92
    iget v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcSampleSize:I

    iput v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputBlockSize:I

    .line 93
    sparse-switch v0, :sswitch_data_ae

    .line 106
    :goto_16
    iget v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputBlockSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputData:[B

    .line 107
    iget v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOutputBlockSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOutputData:[B

    .line 109
    if-nez v0, :cond_72

    .line 110
    iget-object v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputData:[B

    iget-object v4, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOutputData:[B

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/lge/mirrorlink/rtp/LiveCapture;->buildSampleTable([B[BZZ)V

    .line 133
    :cond_2b
    :goto_2b
    const-string/jumbo v3, "MirrorLink_RTP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LiveCapture : prepare -> inputSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputBlockSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", outSize : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOutputBlockSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void

    .line 95
    :sswitch_55
    iget v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputBlockSize:I

    mul-int/lit8 v3, v3, 0x50

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x2

    div-int/lit16 v3, v3, 0x1b9

    iput v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOutputBlockSize:I

    goto :goto_16

    .line 98
    :sswitch_62
    iget v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputBlockSize:I

    mul-int/lit16 v3, v3, 0x1e0

    div-int/lit16 v2, v3, 0x1b9

    .line 99
    .local v2, "tmp":I
    rem-int/lit8 v1, v2, 0x4

    .line 100
    .local v1, "remain":I
    if-lez v1, :cond_6f

    .line 101
    rsub-int/lit8 v3, v1, 0x4

    add-int/2addr v2, v3

    .line 103
    :cond_6f
    iput v2, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOutputBlockSize:I

    goto :goto_16

    .line 111
    .end local v1    # "remain":I
    .end local v2    # "tmp":I
    :cond_72
    const/16 v3, 0x63

    if-ne v0, v3, :cond_2b

    .line 112
    iget-object v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputData:[B

    iget-object v4, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOutputData:[B

    invoke-virtual {p0, v3, v4, v6, v5}, Lcom/lge/mirrorlink/rtp/LiveCapture;->buildSampleTable([B[BZZ)V

    goto :goto_2b

    .line 116
    :cond_7e
    iget v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcSampleSize:I

    iput v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputBlockSize:I

    .line 117
    sparse-switch v0, :sswitch_data_b8

    .line 125
    :goto_85
    iget v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputBlockSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputData:[B

    .line 126
    iget v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOutputBlockSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOutputData:[B

    .line 128
    if-nez v0, :cond_2b

    .line 129
    iget-object v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputData:[B

    iget-object v4, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOutputData:[B

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/lge/mirrorlink/rtp/LiveCapture;->buildSampleTable([B[BZZ)V

    goto :goto_2b

    .line 119
    :sswitch_9b
    iget v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputBlockSize:I

    mul-int/lit8 v3, v3, 0x50

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x2

    div-int/lit16 v3, v3, 0x1e0

    iput v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOutputBlockSize:I

    goto :goto_85

    .line 122
    :sswitch_a8
    iget v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputBlockSize:I

    iput v3, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOutputBlockSize:I

    goto :goto_85

    .line 93
    nop

    :sswitch_data_ae
    .sparse-switch
        0x0 -> :sswitch_55
        0x63 -> :sswitch_62
    .end sparse-switch

    .line 117
    :sswitch_data_b8
    .sparse-switch
        0x0 -> :sswitch_9b
        0x63 -> :sswitch_a8
    .end sparse-switch
.end method

.method public read()[B
    .registers 19

    .prologue
    .line 204
    sget-boolean v9, Lcom/lge/mirrorlink/rtp/LiveCapture;->sChanged:Z

    if-eqz v9, :cond_13

    .line 205
    const/4 v9, 0x0

    sput-boolean v9, Lcom/lge/mirrorlink/rtp/LiveCapture;->sChanged:Z

    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/lge/mirrorlink/rtp/LiveCapture;->resetSample()V

    .line 207
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/lge/mirrorlink/rtp/LiveCapture;->prepare(Lcom/lge/mirrorlink/rtp/RTPWriter;)V

    .line 210
    :cond_13
    const/4 v2, 0x0

    .line 212
    .local v2, "bufferCb":[B
    :try_start_14
    sget-object v9, Lcom/lge/mirrorlink/rtp/LiveCapture;->queueByteArray:Ljava/util/concurrent/BlockingQueue;

    if-nez v9, :cond_23

    .line 213
    const-string/jumbo v9, "MirrorLink_RTP"

    const-string/jumbo v14, "LiveCapture : fillBuffer --> queuedInt == null"

    invoke-static {v9, v14}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/4 v9, 0x0

    return-object v9

    .line 216
    :cond_23
    const-string/jumbo v9, "MirrorLink_RTP"

    const-string/jumbo v14, "read() wait"

    invoke-static {v9, v14}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v9, Lcom/lge/mirrorlink/rtp/LiveCapture;->queueByteArray:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v9}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [B

    move-object v2, v0

    .line 218
    .local v2, "bufferCb":[B
    const-string/jumbo v9, "MirrorLink_RTP"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "read() bufferCb size : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_51} :catch_56

    .line 225
    .end local v2    # "bufferCb":[B
    :goto_51
    :try_start_51
    array-length v3, v2
    :try_end_52
    .catch Ljava/lang/NullPointerException; {:try_start_51 .. :try_end_52} :catch_170

    .line 227
    .local v3, "copyLength":I
    if-gtz v3, :cond_61

    .line 228
    const/4 v9, 0x0

    return-object v9

    .line 219
    .end local v3    # "copyLength":I
    :catch_56
    move-exception v5

    .line 220
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v9, "MirrorLink_RTP"

    const-string/jumbo v14, "queuedInt.take Error"

    invoke-static {v9, v14}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 229
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "copyLength":I
    :cond_61
    :try_start_61
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputBlockSize:I

    if-eq v3, v9, :cond_9a

    .line 230
    const-string/jumbo v9, "MirrorLink_RTP"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "LiveCapture.read: mInputBlockSize : ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputBlockSize:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ") is different"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-direct/range {p0 .. p0}, Lcom/lge/mirrorlink/rtp/LiveCapture;->resetSample()V

    .line 233
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/lge/mirrorlink/rtp/LiveCapture;->prepare(Lcom/lge/mirrorlink/rtp/RTPWriter;)V

    .line 234
    const/4 v9, 0x0

    return-object v9

    .line 236
    :cond_9a
    const-string/jumbo v9, "MirrorLink_RTP"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "LiveCapture.read: copyLength: ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bb
    .catch Ljava/lang/NullPointerException; {:try_start_61 .. :try_end_bb} :catch_170

    .line 240
    :try_start_bb
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputData:[B

    const/4 v14, 0x0

    invoke-static {v9, v14}, Ljava/util/Arrays;->fill([BB)V

    .line 241
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputData:[B

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v2, v14, v9, v15, v3}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_cc
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_bb .. :try_end_cc} :catch_124
    .catch Ljava/lang/NullPointerException; {:try_start_bb .. :try_end_cc} :catch_170

    .line 247
    :try_start_cc
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputData:[B

    invoke-static {v9}, Lcom/lge/mirrorlink/rtp/LiveCapture;->swap16bitsNative([B)V

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/lge/mirrorlink/rtp/LiveCapture;->getPayloadType()I

    move-result v8

    .line 251
    .local v8, "pt":I
    const/4 v7, 0x0

    .line 252
    .local v7, "out":[B
    const/16 v9, 0x63

    if-ne v8, v9, :cond_14d

    .line 253
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mSrcFreq:I

    const v14, 0xac44

    if-ne v9, v14, :cond_148

    .line 254
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputData:[B

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOutputData:[B

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->indexFirst:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->indexSecond:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v9, v14, v15, v0, v1}, Lcom/lge/mirrorlink/rtp/LiveCapture;->upsampleNative([B[B[I[IZ)V

    .line 255
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOutputData:[B

    .line 267
    .local v7, "out":[B
    :goto_104
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mBitsPerSample:I

    div-int/lit8 v9, v9, 0x8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mChannels:I

    mul-int/2addr v9, v14

    int-to-double v10, v9

    .line 268
    .local v10, "sampleBytes":D
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOutputData:[B

    array-length v9, v9

    int-to-double v14, v9

    div-double v12, v14, v10

    .line 270
    .local v12, "sampleOffset":D
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOffset:I

    int-to-double v14, v9

    add-double/2addr v14, v12

    double-to-int v9, v14

    move-object/from16 v0, p0

    iput v9, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOffset:I

    .line 273
    return-object v7

    .line 242
    .end local v7    # "out":[B
    .end local v8    # "pt":I
    .end local v10    # "sampleBytes":D
    .end local v12    # "sampleOffset":D
    :catch_124
    move-exception v4

    .line 243
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v9, "RTPWriter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "arraycopy error copyLength("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v9, 0x0

    return-object v9

    .line 257
    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .local v7, "out":[B
    .restart local v8    # "pt":I
    :cond_148
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputData:[B

    .local v7, "out":[B
    goto :goto_104

    .line 259
    .local v7, "out":[B
    :cond_14d
    if-nez v8, :cond_16b

    .line 260
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputData:[B

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOutputData:[B

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->indexFirst:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->indexSecond:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v9, v14, v15, v0}, Lcom/lge/mirrorlink/rtp/LiveCapture;->downsampleNative([B[B[I[I)V

    .line 261
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mOutputData:[B

    .local v7, "out":[B
    goto :goto_104

    .line 263
    .local v7, "out":[B
    :cond_16b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/mirrorlink/rtp/LiveCapture;->mInputData:[B
    :try_end_16f
    .catch Ljava/lang/NullPointerException; {:try_start_cc .. :try_end_16f} :catch_170

    .local v7, "out":[B
    goto :goto_104

    .line 274
    .end local v3    # "copyLength":I
    .end local v7    # "out":[B
    .end local v8    # "pt":I
    :catch_170
    move-exception v6

    .line 275
    .local v6, "e":Ljava/lang/NullPointerException;
    const/4 v9, 0x0

    return-object v9
.end method

.method public setWriter(Lcom/lge/mirrorlink/rtp/RTPWriter;)V
    .registers 2
    .param p1, "writer"    # Lcom/lge/mirrorlink/rtp/RTPWriter;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/lge/mirrorlink/rtp/LiveCapture;->writer:Lcom/lge/mirrorlink/rtp/RTPWriter;

    .line 137
    return-void
.end method
