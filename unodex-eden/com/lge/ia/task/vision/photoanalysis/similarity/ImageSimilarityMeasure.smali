.class public Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;
.super Ljava/lang/Object;
.source "ImageSimilarityMeasure.java"


# instance fields
.field private isCreate:Z

.field private final nativeObj:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-string v0, "ImageSimilarityMeasure"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;->nativeImageSimilarity()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;->nativeObj:J

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;->isCreate:Z

    .line 12
    return-void
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeExtractSequentially(JLjava/nio/ByteBuffer;IIJ)Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;
.end method

.method private static native nativeImageSimilarity()J
.end method

.method private static native nativeRelease(J)V
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;->nativeObj:J

    invoke-static {v0, v1}, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;->nativeClear(J)V

    .line 28
    return-void
.end method

.method public distance(Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;)F
    .registers 12
    .param p1, "src"    # Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;

    .prologue
    const v8, 0x3dcccccd    # 0.1f

    .line 35
    invoke-virtual {p1}, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 36
    const v4, -0x3b864000    # -999.0f

    .line 54
    :goto_c
    return v4

    .line 39
    :cond_d
    const/4 v4, 0x5

    new-array v2, v4, [F

    fill-array-data v2, :array_56

    .line 46
    .local v2, "sv":[F
    const/high16 v3, 0x3f400000    # 0.75f

    .line 48
    .local v3, "tau":F
    const/4 v4, 0x0

    aget v4, v2, v4

    iget v5, p1, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;->scoreHIST:F

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v2, v5

    iget v6, p1, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;->scoreCH:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, v2, v5

    iget v6, p1, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;->scoreGMM:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x3

    aget v5, v2, v5

    iget v6, p1, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;->timeDiff:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x4

    aget v5, v2, v5

    add-float v0, v4, v5

    .line 49
    .local v0, "dist":F
    iget v4, p1, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;->scoreCH:F

    float-to-double v4, v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v4, v6

    if-gez v4, :cond_52

    .line 50
    iget v4, p1, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;->scoreCH:F

    sub-float v4, v8, v4

    div-float v1, v4, v8

    .line 51
    .local v1, "star":F
    float-to-double v4, v0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v0, v4

    .line 54
    .end local v1    # "star":F
    :cond_52
    sub-float v4, v0, v3

    goto :goto_c

    .line 39
    nop

    :array_56
    .array-data 4
        -0x3e951eb8    # -14.68f
        -0x3f3e1ff3    # -6.0586f
        0x3e58201d    # 0.21106f
        -0x406eecc0    # -1.1334f
        0x40a46738    # 5.1376f
    .end array-data
.end method

.method public extractSequentially(Ljava/nio/ByteBuffer;IIJ)Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;
    .registers 14
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "takenTime"    # J

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;->nativeObj:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;->nativeExtractSequentially(JLjava/nio/ByteBuffer;IIJ)Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;->release()V

    .line 24
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;->isCreate:Z

    if-eqz v0, :cond_c

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;->isCreate:Z

    .line 17
    iget-wide v0, p0, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;->nativeObj:J

    invoke-static {v0, v1}, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;->nativeRelease(J)V

    .line 19
    :cond_c
    return-void
.end method
