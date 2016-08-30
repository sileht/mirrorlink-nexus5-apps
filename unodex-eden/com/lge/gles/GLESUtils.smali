.class public Lcom/lge/gles/GLESUtils;
.super Ljava/lang/Object;
.source "GLESUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final NUM_OF_FRAME:I = 0x10

.field private static final TAG:Ljava/lang/String; = "quilt GLESUtils"

.field private static sDpiConvertUnit:F

.field private static sFrameCount:I

.field private static sHeightPixels:F

.field private static sStartTick:J

.field private static sTotalTime:J

.field private static sWidthPixels:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/lge/gles/GLESUtils;->sFrameCount:I

    .line 29
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/lge/gles/GLESUtils;->sStartTick:J

    .line 30
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lge/gles/GLESUtils;->sTotalTime:J

    .line 32
    sput v2, Lcom/lge/gles/GLESUtils;->sDpiConvertUnit:F

    .line 33
    sput v2, Lcom/lge/gles/GLESUtils;->sWidthPixels:F

    .line 34
    sput v2, Lcom/lge/gles/GLESUtils;->sHeightPixels:F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndReplaceBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v2, 0x10

    .line 105
    if-nez p0, :cond_12

    .line 106
    const-string v0, "quilt GLESUtils"

    const-string v1, "checkAndReplaceBitmap() Bitmap is null. Replace with transparent bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-static {v2, v2, v0, v1}, Lcom/lge/gles/GLESUtils;->makeBitmap(IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 110
    :cond_12
    return-object p0
.end method

.method public static checkFPS()V
    .registers 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, "fps":F
    const-wide/16 v0, 0x0

    .line 54
    .local v0, "currentTick":J
    sget-wide v4, Lcom/lge/gles/GLESUtils;->sStartTick:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_15

    .line 55
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sput-wide v4, Lcom/lge/gles/GLESUtils;->sStartTick:J

    .line 56
    sput v6, Lcom/lge/gles/GLESUtils;->sFrameCount:I

    .line 72
    :cond_14
    :goto_14
    return-void

    .line 58
    :cond_15
    sget v3, Lcom/lge/gles/GLESUtils;->sFrameCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/lge/gles/GLESUtils;->sFrameCount:I

    .line 60
    sget v3, Lcom/lge/gles/GLESUtils;->sFrameCount:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_14

    .line 61
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 62
    sget-wide v4, Lcom/lge/gles/GLESUtils;->sStartTick:J

    sub-long v4, v0, v4

    sput-wide v4, Lcom/lge/gles/GLESUtils;->sTotalTime:J

    .line 63
    sget v3, Lcom/lge/gles/GLESUtils;->sFrameCount:I

    int-to-float v3, v3

    const v4, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v3, v4

    sget-wide v4, Lcom/lge/gles/GLESUtils;->sTotalTime:J

    long-to-float v4, v4

    div-float v2, v3, v4

    .line 65
    const-string v3, "quilt GLESUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkFPS() fps="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sput v6, Lcom/lge/gles/GLESUtils;->sFrameCount:I

    .line 68
    sput-wide v0, Lcom/lge/gles/GLESUtils;->sStartTick:J

    .line 69
    sput-wide v8, Lcom/lge/gles/GLESUtils;->sTotalTime:J

    goto :goto_14
.end method

.method public static checkFileExists(Ljava/lang/String;)Z
    .registers 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 189
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_32.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_64.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, "file64":Ljava/io/File;
    if-eqz v0, :cond_35

    if-nez v1, :cond_3d

    .line 193
    :cond_35
    const-string v3, "quilt GLESUtils"

    const-string v4, "checkFileExists() file instance is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_3c
    return v2

    .line 197
    :cond_3d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4a

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4a

    .line 207
    .local v2, "fileExist":Z
    :goto_49
    goto :goto_3c

    .line 197
    .end local v2    # "fileExist":Z
    :cond_4a
    const/4 v2, 0x1

    goto :goto_49
.end method

.method public static checkGLError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "op"    # Ljava/lang/String;

    .prologue
    .line 344
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-nez v0, :cond_7

    .line 347
    return-void

    .line 345
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static clamp(FFF)F
    .registers 4
    .param p0, "min"    # F
    .param p1, "max"    # F
    .param p2, "current"    # F

    .prologue
    .line 301
    cmpg-float v0, p2, p0

    if-gez v0, :cond_5

    .line 302
    move p2, p0

    .line 305
    :cond_5
    cmpl-float v0, p2, p1

    if-lez v0, :cond_a

    .line 306
    move p2, p1

    .line 309
    :cond_a
    return p2
.end method

.method public static convertColorHexToFloat(Ljava/lang/String;)[F
    .registers 10
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    const/high16 v8, 0x437f0000    # 255.0f

    .line 313
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 314
    .local v2, "color":I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 315
    .local v5, "red":I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 316
    .local v4, "green":I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 317
    .local v1, "blue":I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 319
    .local v0, "alpha":I
    const/4 v6, 0x4

    new-array v3, v6, [F

    const/4 v6, 0x0

    int-to-float v7, v5

    div-float/2addr v7, v8

    aput v7, v3, v6

    const/4 v6, 0x1

    int-to-float v7, v4

    div-float/2addr v7, v8

    aput v7, v3, v6

    const/4 v6, 0x2

    int-to-float v7, v1

    div-float/2addr v7, v8

    aput v7, v3, v6

    const/4 v6, 0x3

    int-to-float v7, v0

    div-float/2addr v7, v8

    aput v7, v3, v6

    .line 321
    .local v3, "colorf":[F
    return-object v3
.end method

.method public static convertScreenToSpace(F)F
    .registers 2
    .param p0, "value"    # F

    .prologue
    .line 44
    const/high16 v0, 0x40800000    # 4.0f

    div-float v0, p0, v0

    return v0
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .registers 5
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 217
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_32.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 222
    :cond_21
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_64.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "file64":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 224
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 226
    :cond_42
    return-void
.end method

.method public static getDataPathName(Landroid/content/Context;)Ljava/lang/StringBuilder;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "path":Ljava/lang/StringBuilder;
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    return-object v0
.end method

.method public static getHeightPixels(Landroid/content/Context;)F
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    sget v1, Lcom/lge/gles/GLESUtils;->sHeightPixels:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1b

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 161
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    sput v1, Lcom/lge/gles/GLESUtils;->sWidthPixels:F

    .line 162
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    sput v1, Lcom/lge/gles/GLESUtils;->sHeightPixels:F

    .line 165
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    :cond_1b
    sget v1, Lcom/lge/gles/GLESUtils;->sHeightPixels:F

    return v1
.end method

.method public static getNormal(FFF)F
    .registers 5
    .param p0, "min"    # F
    .param p1, "max"    # F
    .param p2, "current"    # F

    .prologue
    .line 290
    cmpg-float v0, p2, p0

    if-gez v0, :cond_5

    .line 291
    move p2, p0

    .line 294
    :cond_5
    cmpl-float v0, p2, p1

    if-lez v0, :cond_a

    .line 295
    move p2, p1

    .line 297
    :cond_a
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method

.method public static getPixelFromDpi(Landroid/content/Context;F)F
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpiSize"    # F

    .prologue
    .line 123
    sget v1, Lcom/lge/gles/GLESUtils;->sDpiConvertUnit:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_19

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 126
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    sput v1, Lcom/lge/gles/GLESUtils;->sDpiConvertUnit:F

    .line 129
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    :cond_19
    sget v1, Lcom/lge/gles/GLESUtils;->sDpiConvertUnit:F

    mul-float/2addr v1, p1

    return v1
.end method

.method public static getPixelsFromPercentage(FF)F
    .registers 3
    .param p0, "percentage"    # F
    .param p1, "pixelSize"    # F

    .prologue
    .line 178
    const v0, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, p0

    mul-float/2addr v0, p1

    return v0
.end method

.method public static getWidthPixels(Landroid/content/Context;)F
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    sget v1, Lcom/lge/gles/GLESUtils;->sWidthPixels:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1b

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 143
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    sput v1, Lcom/lge/gles/GLESUtils;->sWidthPixels:F

    .line 144
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    sput v1, Lcom/lge/gles/GLESUtils;->sHeightPixels:F

    .line 147
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    :cond_1b
    sget v1, Lcom/lge/gles/GLESUtils;->sWidthPixels:F

    return v1
.end method

.method public static makeBitmap(IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "color"    # I

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 89
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 90
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 93
    return-object v0
.end method

.method public static makeFloatBuffer([F)Ljava/nio/FloatBuffer;
    .registers 4
    .param p0, "array"    # [F

    .prologue
    .line 325
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 326
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 328
    .local v0, "buffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 330
    return-object v0
.end method

.method public static makeLockScreenStringPath(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/StringBuilder;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 259
    const/4 v3, 0x0

    .line 260
    .local v3, "info":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    .line 261
    .local v1, "fileExtention":Ljava/lang/String;
    const/4 v2, 0x0

    .line 264
    .local v2, "filePath":Ljava/lang/String;
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_35} :catch_37

    move-result-object v2

    .line 276
    :goto_36
    return-object v2

    .line 272
    :catch_37
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "quilt GLESUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "makeLockScreenStringPath() Exception e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method public static makeShortBuffer([S)Ljava/nio/ShortBuffer;
    .registers 4
    .param p0, "array"    # [S

    .prologue
    .line 334
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 335
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 337
    .local v0, "buffer":Ljava/nio/ShortBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 339
    return-object v0
.end method

.method public static nextPowerOf2(I)I
    .registers 2
    .param p0, "n"    # I

    .prologue
    .line 280
    add-int/lit8 p0, p0, -0x1

    .line 281
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 282
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 283
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 284
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 285
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 286
    add-int/lit8 v0, p0, 0x1

    return v0
.end method
