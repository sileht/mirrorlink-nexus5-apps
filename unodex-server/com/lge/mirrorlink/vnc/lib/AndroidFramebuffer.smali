.class public Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;
.super Ljava/lang/Object;
.source "AndroidFramebuffer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_VNC"

.field public static redBlueSwitched:Z


# instance fields
.field private captureLock:Ljava/lang/Object;

.field mWidthHeightSwitched:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->redBlueSwitched:Z

    .line 28
    const-string/jumbo v0, "Capture"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4
    .param p1, "switched"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->captureLock:Ljava/lang/Object;

    .line 33
    const-string/jumbo v0, "MirrorLink_VNC"

    const-string/jumbo v1, "Initialize AndroidFramebuffer class."

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-boolean p1, p0, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->mWidthHeightSwitched:Z

    .line 31
    return-void
.end method

.method private static native cleanFramebufferSnapshot()V
.end method

.method public static native compareArrayNative([B[BI)Z
.end method

.method public static native detectChangedAreaNative([B[BIII)[I
.end method

.method private static native getRLEFramebufferSnapshotResized([BIIIZIIIIIII)Z
.end method

.method private static native getRawFramebufferSnapshotResized([BIIIZZIIIIIII)Z
.end method

.method private static native initFramebufferSnapshot()V
.end method


# virtual methods
.method public fbCapture(Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;[BIII)Z
    .registers 21
    .param p1, "pixelFormat"    # Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;
    .param p2, "raw"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "rotation"    # I

    .prologue
    .line 71
    const-string/jumbo v1, "MirrorLink_VNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fbCapture: width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " rotation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " switched:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->mWidthHeightSwitched:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v14, p0, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->captureLock:Ljava/lang/Object;

    monitor-enter v14

    .line 74
    :try_start_46
    iget-boolean v1, p0, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->mWidthHeightSwitched:Z

    if-eqz v1, :cond_7a

    .line 75
    sget-boolean v5, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->redBlueSwitched:Z

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bigEndian:Z

    .line 76
    move-object/from16 v0, p1

    iget v7, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bitsPerPixel:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redMax:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenMax:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueMax:I

    .line 77
    move-object/from16 v0, p1

    iget v11, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redShift:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenShift:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueShift:I

    move-object/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p3

    move/from16 v4, p5

    .line 75
    invoke-static/range {v1 .. v13}, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->getRawFramebufferSnapshotResized([BIIIZZIIIIIII)Z
    :try_end_77
    .catchall {:try_start_46 .. :try_end_77} :catchall_a8

    :goto_77
    monitor-exit v14

    .line 85
    const/4 v1, 0x1

    return v1

    .line 79
    :cond_7a
    :try_start_7a
    sget-boolean v5, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->redBlueSwitched:Z

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bigEndian:Z

    .line 80
    move-object/from16 v0, p1

    iget v7, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bitsPerPixel:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redMax:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenMax:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueMax:I

    .line 81
    move-object/from16 v0, p1

    iget v11, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redShift:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenShift:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueShift:I

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    .line 79
    invoke-static/range {v1 .. v13}, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->getRawFramebufferSnapshotResized([BIIIZZIIIIIII)Z
    :try_end_a7
    .catchall {:try_start_7a .. :try_end_a7} :catchall_a8

    goto :goto_77

    .line 73
    :catchall_a8
    move-exception v1

    monitor-exit v14

    throw v1
.end method

.method public fbCaptureForRLE(Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;[BIII)Z
    .registers 20
    .param p1, "pixelFormat"    # Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;
    .param p2, "raw"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "rotation"    # I

    .prologue
    .line 105
    const-string/jumbo v1, "MirrorLink_VNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fbCaptureForRLE: width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " rotation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " switched:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->mWidthHeightSwitched:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v13, p0, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->captureLock:Ljava/lang/Object;

    monitor-enter v13

    .line 108
    :try_start_46
    iget-boolean v1, p0, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->mWidthHeightSwitched:Z

    if-eqz v1, :cond_68

    .line 109
    sget-boolean v5, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->redBlueSwitched:Z

    .line 110
    iget v6, p1, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bitsPerPixel:I

    iget v7, p1, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redMax:I

    iget v8, p1, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenMax:I

    iget v9, p1, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueMax:I

    .line 111
    iget v10, p1, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redShift:I

    iget v11, p1, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenShift:I

    iget v12, p1, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueShift:I

    move-object/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p3

    move/from16 v4, p5

    .line 109
    invoke-static/range {v1 .. v12}, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->getRLEFramebufferSnapshotResized([BIIIZIIIIIII)Z
    :try_end_65
    .catchall {:try_start_46 .. :try_end_65} :catchall_84

    :goto_65
    monitor-exit v13

    .line 119
    const/4 v1, 0x1

    return v1

    .line 113
    :cond_68
    :try_start_68
    sget-boolean v5, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->redBlueSwitched:Z

    .line 114
    iget v6, p1, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bitsPerPixel:I

    iget v7, p1, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redMax:I

    iget v8, p1, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenMax:I

    iget v9, p1, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueMax:I

    .line 115
    iget v10, p1, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redShift:I

    iget v11, p1, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenShift:I

    iget v12, p1, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueShift:I

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    .line 113
    invoke-static/range {v1 .. v12}, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->getRLEFramebufferSnapshotResized([BIIIZIIIIIII)Z
    :try_end_83
    .catchall {:try_start_68 .. :try_end_83} :catchall_84

    goto :goto_65

    .line 107
    :catchall_84
    move-exception v1

    monitor-exit v13

    throw v1
.end method

.method public fbClean()V
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->captureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_3
    invoke-static {}, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->cleanFramebufferSnapshot()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 50
    return-void

    .line 52
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public fbInit()V
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->captureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_3
    invoke-static {}, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->initFramebufferSnapshot()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 40
    return-void

    .line 42
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method
