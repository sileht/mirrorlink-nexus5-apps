.class public Lcom/lge/media/LGMovie;
.super Ljava/lang/Object;
.source "LGMovie.java"


# instance fields
.field private final mLGNativeMovie:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private constructor <init>(J)V
    .registers 6
    .param p1, "LGnativeMovie"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_11

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "native LGMovie creation failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_11
    iput-wide p1, p0, Lcom/lge/media/LGMovie;->mLGNativeMovie:J

    .line 39
    return-void
.end method

.method public static native decodeByteArray([BII)Lcom/lge/media/LGMovie;
.end method

.method public static decodeFile(Ljava/lang/String;)Lcom/lge/media/LGMovie;
    .registers 3
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 115
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_5} :catch_a

    .line 120
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/lge/media/LGMovie;->decodeTempStream(Ljava/io/InputStream;)Lcom/lge/media/LGMovie;

    move-result-object v1

    .end local v0    # "is":Ljava/io/InputStream;
    :goto_9
    return-object v1

    .line 118
    :catch_a
    move-exception v1

    const/4 v1, 0x0

    goto :goto_9
.end method

.method public static decodeStream(Ljava/io/InputStream;)Lcom/lge/media/LGMovie;
    .registers 4
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 87
    if-nez p0, :cond_4

    .line 88
    const/4 v2, 0x0

    .line 95
    :goto_3
    return-object v2

    .line 90
    :cond_4
    instance-of v2, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v2, :cond_13

    .line 91
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0    # "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v0

    .line 92
    .local v0, "asset":J
    invoke-static {v0, v1}, Lcom/lge/media/LGMovie;->nativeDecodeAsset(J)Lcom/lge/media/LGMovie;

    move-result-object v2

    goto :goto_3

    .line 95
    .end local v0    # "asset":J
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_13
    invoke-static {p0}, Lcom/lge/media/LGMovie;->nativeDecodeStream(Ljava/io/InputStream;)Lcom/lge/media/LGMovie;

    move-result-object v2

    goto :goto_3
.end method

.method private static decodeTempStream(Ljava/io/InputStream;)Lcom/lge/media/LGMovie;
    .registers 3
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "moov":Lcom/lge/media/LGMovie;
    :try_start_1
    invoke-static {p0}, Lcom/lge/media/LGMovie;->decodeStream(Ljava/io/InputStream;)Lcom/lge/media/LGMovie;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_9

    .line 144
    :goto_8
    return-object v0

    :catch_9
    move-exception v1

    goto :goto_8
.end method

.method private native nDraw(JFFJ)V
.end method

.method private static native nativeDecodeAsset(J)Lcom/lge/media/LGMovie;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;)Lcom/lge/media/LGMovie;
.end method

.method private static native nativeDestructor(J)V
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FF)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/lge/media/LGMovie;->nDraw(JFFJ)V

    .line 81
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v2

    .line 73
    if-eqz p4, :cond_11

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_a
    move-object v1, p0

    move v4, p2

    move v5, p3

    .line 72
    invoke-direct/range {v1 .. v7}, Lcom/lge/media/LGMovie;->nDraw(JFFJ)V

    .line 74
    return-void

    .line 73
    :cond_11
    const-wide/16 v6, 0x0

    goto :goto_a
.end method

.method public native duration()I
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 126
    :try_start_0
    iget-wide v0, p0, Lcom/lge/media/LGMovie;->mLGNativeMovie:J

    invoke-static {v0, v1}, Lcom/lge/media/LGMovie;->nativeDestructor(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 128
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 130
    return-void

    .line 127
    :catchall_9
    move-exception v0

    .line 128
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 129
    throw v0
.end method

.method public native height()I
.end method

.method public native isOpaque()Z
.end method

.method public native setTime(I)Z
.end method

.method public native width()I
.end method
