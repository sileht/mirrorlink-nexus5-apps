.class public Lcom/lge/media/CamcorderProfileEx;
.super Ljava/lang/Object;
.source "CamcorderProfileEx.java"


# static fields
.field public static final QUALITY_1080P:I = 0x6

.field public static final QUALITY_2160P:I = 0x8

.field public static final QUALITY_480P:I = 0x4

.field public static final QUALITY_4kDCI:I = 0xd

.field public static final QUALITY_4kUHD:I = 0x8

.field public static final QUALITY_720P:I = 0x5

.field public static final QUALITY_CIF:I = 0x3

.field public static final QUALITY_FWVGA:I = 0xc

.field public static final QUALITY_HEVC1080P:I = 0xf

.field public static final QUALITY_HEVC4kDCI:I = 0x11

.field public static final QUALITY_HEVC4kUHD:I = 0x10

.field public static final QUALITY_HEVC720P:I = 0xe

.field public static final QUALITY_HFR720P:I = 0x7d3

.field public static final QUALITY_HIGH:I = 0x1

.field public static final QUALITY_HIGH_SPEED_1080P:I = 0x7d4

.field public static final QUALITY_HIGH_SPEED_480P:I = 0x7d2

.field public static final QUALITY_HIGH_SPEED_720P:I = 0x7d3

.field public static final QUALITY_HIGH_SPEED_HIGH:I = 0x7d1

.field private static final QUALITY_HIGH_SPEED_LIST_END:I = 0x7d4

.field private static final QUALITY_HIGH_SPEED_LIST_START:I = 0x7d0

.field public static final QUALITY_HIGH_SPEED_LOW:I = 0x7d0

.field private static final QUALITY_LIST_END:I = 0x11

.field private static final QUALITY_LIST_START:I = 0x0

.field public static final QUALITY_LOW:I = 0x0

.field public static final QUALITY_QCIF:I = 0x2

.field public static final QUALITY_QVGA:I = 0x7

.field public static final QUALITY_TIME_LAPSE_1080P:I = 0x3ee

.field public static final QUALITY_TIME_LAPSE_2160P:I = 0x3f0

.field public static final QUALITY_TIME_LAPSE_480P:I = 0x3ec

.field public static final QUALITY_TIME_LAPSE_720P:I = 0x3ed

.field public static final QUALITY_TIME_LAPSE_CIF:I = 0x3eb

.field public static final QUALITY_TIME_LAPSE_FWVGA:I = 0x3f1

.field public static final QUALITY_TIME_LAPSE_HIGH:I = 0x3e9

.field private static final QUALITY_TIME_LAPSE_LIST_END:I = 0x3f4

.field private static final QUALITY_TIME_LAPSE_LIST_START:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_LOW:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_QCIF:I = 0x3ea

.field public static final QUALITY_TIME_LAPSE_QVGA:I = 0x3ef

.field public static final QUALITY_TIME_LAPSE_VGA:I = 0x3f3

.field public static final QUALITY_TIME_LAPSE_WQVGA:I = 0x3f4

.field public static final QUALITY_TIME_LAPSE_WVGA:I = 0x3f2

.field public static final QUALITY_VGA:I = 0xa

.field public static final QUALITY_WQVGA:I = 0xb

.field public static final QUALITY_WVGA:I = 0x9


# instance fields
.field public audioBitRate:I

.field public audioChannels:I

.field public audioCodec:I

.field public audioSampleRate:I

.field public duration:I

.field public fileFormat:I

.field public quality:I

.field public videoBitRate:I

.field public videoCodec:I

.field public videoFrameHeight:I

.field public videoFrameRate:I

.field public videoFrameWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 456
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/lge/media/CamcorderProfileEx;->native_init()V

    .line 458
    return-void
.end method

.method private constructor <init>(IIIIIIIIIIII)V
    .registers 13
    .param p1, "duration"    # I
    .param p2, "quality"    # I
    .param p3, "fileFormat"    # I
    .param p4, "videoCodec"    # I
    .param p5, "videoBitRate"    # I
    .param p6, "videoFrameRate"    # I
    .param p7, "videoWidth"    # I
    .param p8, "videoHeight"    # I
    .param p9, "audioCodec"    # I
    .param p10, "audioBitRate"    # I
    .param p11, "audioSampleRate"    # I
    .param p12, "audioChannels"    # I

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput p1, p0, Lcom/lge/media/CamcorderProfileEx;->duration:I

    .line 475
    iput p2, p0, Lcom/lge/media/CamcorderProfileEx;->quality:I

    .line 476
    iput p3, p0, Lcom/lge/media/CamcorderProfileEx;->fileFormat:I

    .line 477
    iput p4, p0, Lcom/lge/media/CamcorderProfileEx;->videoCodec:I

    .line 478
    iput p5, p0, Lcom/lge/media/CamcorderProfileEx;->videoBitRate:I

    .line 479
    iput p6, p0, Lcom/lge/media/CamcorderProfileEx;->videoFrameRate:I

    .line 480
    iput p7, p0, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    .line 481
    iput p8, p0, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    .line 482
    iput p9, p0, Lcom/lge/media/CamcorderProfileEx;->audioCodec:I

    .line 483
    iput p10, p0, Lcom/lge/media/CamcorderProfileEx;->audioBitRate:I

    .line 484
    iput p11, p0, Lcom/lge/media/CamcorderProfileEx;->audioSampleRate:I

    .line 485
    iput p12, p0, Lcom/lge/media/CamcorderProfileEx;->audioChannels:I

    .line 486
    return-void
.end method

.method public static get(I)Lcom/lge/media/CamcorderProfileEx;
    .registers 5
    .param p0, "quality"    # I

    .prologue
    .line 362
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 363
    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 364
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-lt v1, v2, :cond_e

    .line 370
    const/4 v3, 0x0

    :goto_d
    return-object v3

    .line 365
    :cond_e
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 366
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_1a

    .line 367
    invoke-static {v1, p0}, Lcom/lge/media/CamcorderProfileEx;->get(II)Lcom/lge/media/CamcorderProfileEx;

    move-result-object v3

    goto :goto_d

    .line 364
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public static get(II)Lcom/lge/media/CamcorderProfileEx;
    .registers 5
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    .prologue
    .line 414
    if-ltz p1, :cond_6

    .line 415
    const/16 v1, 0x11

    if-le p1, v1, :cond_2b

    .line 416
    :cond_6
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_e

    .line 417
    const/16 v1, 0x3f4

    if-le p1, v1, :cond_2b

    .line 418
    :cond_e
    const/16 v1, 0x7d0

    if-lt p1, v1, :cond_16

    .line 419
    const/16 v1, 0x7d4

    if-le p1, v1, :cond_2b

    .line 420
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported quality level: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "errMessage":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    .end local v0    # "errMessage":Ljava/lang/String;
    :cond_2b
    invoke-static {p0, p1}, Lcom/lge/media/CamcorderProfileEx;->native_get_camcorder_profile(II)Lcom/lge/media/CamcorderProfileEx;

    move-result-object v1

    return-object v1
.end method

.method public static hasProfile(I)Z
    .registers 5
    .param p0, "quality"    # I

    .prologue
    .line 433
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 434
    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 435
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-lt v1, v2, :cond_e

    .line 441
    const/4 v3, 0x0

    :goto_d
    return v3

    .line 436
    :cond_e
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 437
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_1a

    .line 438
    invoke-static {v1, p0}, Lcom/lge/media/CamcorderProfileEx;->hasProfile(II)Z

    move-result v3

    goto :goto_d

    .line 435
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public static hasProfile(II)Z
    .registers 3
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    .prologue
    .line 452
    invoke-static {p0, p1}, Lcom/lge/media/CamcorderProfileEx;->native_has_camcorder_profile(II)Z

    move-result v0

    return v0
.end method

.method private static final native native_get_camcorder_profile(II)Lcom/lge/media/CamcorderProfileEx;
.end method

.method private static final native native_has_camcorder_profile(II)Z
.end method

.method private static final native native_init()V
.end method
