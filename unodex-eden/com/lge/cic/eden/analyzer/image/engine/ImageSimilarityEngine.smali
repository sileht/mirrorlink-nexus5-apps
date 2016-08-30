.class public Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;
.super Ljava/lang/Object;
.source "ImageSimilarityEngine.java"

# interfaces
.implements Lcom/lge/cic/eden/analyzer/image/IImageAnalysisEngine;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lge/cic/eden/analyzer/image/IImageAnalysisEngine",
        "<",
        "Landroid/graphics/Bitmap;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field private static TAU_SIMILAR:F


# instance fields
.field private imageSimilarityMeasure:Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;

.field private prevHeight:I

.field private prevWidth:I

.field private representativeId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->TAG:Ljava/lang/String;

    .line 24
    const v0, 0x3f87ae14    # 1.06f

    sput v0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->TAU_SIMILAR:F

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->imageSimilarityMeasure:Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->representativeId:J

    .line 21
    iput v2, p0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->prevWidth:I

    .line 22
    iput v2, p0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->prevHeight:I

    .line 26
    return-void
.end method


# virtual methods
.method public clearDB()V
    .registers 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->reset()Z

    .line 55
    return-void
.end method

.method public create()Z
    .registers 2

    .prologue
    .line 30
    new-instance v0, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;

    invoke-direct {v0}, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->imageSimilarityMeasure:Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;

    .line 32
    invoke-virtual {p0}, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->reset()Z

    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public destroy()Z
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->imageSimilarityMeasure:Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public process(Lcom/lge/cic/eden/db/type/MediaInfo;Landroid/graphics/Bitmap;)Landroid/util/Pair;
    .registers 12
    .param p1, "mediaInfo"    # Lcom/lge/cic/eden/db/type/MediaInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;->ARGB2BGR:Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;

    invoke-static {p2, v0}, Lcom/lge/ia/task/vision/byteimage/ByteImageNative;->convertBitmap2ByteBuffer(Landroid/graphics/Bitmap;Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 60
    .local v1, "data":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->imageSimilarityMeasure:Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-wide v4, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    invoke-virtual/range {v0 .. v5}, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;->extractSequentially(Ljava/nio/ByteBuffer;IIJ)Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;

    move-result-object v8

    .line 63
    .local v8, "feature":Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/lge/ia/task/vision/photoanalysis/damagedetection/DamagedImageDetector;->detect(Ljava/nio/ByteBuffer;II)F

    move-result v6

    .line 65
    .local v6, "damageScore":F
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 67
    iget-object v0, p0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->imageSimilarityMeasure:Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;

    invoke-virtual {v0, v8}, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityMeasure;->distance(Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;)F

    move-result v7

    .line 68
    .local v7, "dist":F
    iget-wide v2, p0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->representativeId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_7a

    .line 69
    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    iput-wide v2, p0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->representativeId:J

    .line 80
    :cond_37
    :goto_37
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->prevWidth:I

    .line 81
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->prevHeight:I

    .line 83
    sget-object v0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "feature = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", white_bal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-wide v2, p0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->representativeId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 71
    :cond_7a
    sget v0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->TAU_SIMILAR:F

    cmpl-float v0, v7, v0

    if-ltz v0, :cond_b1

    .line 72
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->prevWidth:I

    if-ne v0, v2, :cond_90

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->prevHeight:I

    if-eq v0, v2, :cond_37

    .line 73
    :cond_90
    sget-object v0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": size is difference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    iput-wide v2, p0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->representativeId:J

    goto :goto_37

    .line 77
    :cond_b1
    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    iput-wide v2, p0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->representativeId:J

    goto :goto_37
.end method

.method public bridge synthetic process(Lcom/lge/cic/eden/db/type/MediaInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->process(Lcom/lge/cic/eden/db/type/MediaInfo;Landroid/graphics/Bitmap;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public reset()Z
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->representativeId:J

    .line 47
    iput v2, p0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->prevWidth:I

    .line 48
    iput v2, p0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->prevHeight:I

    .line 49
    const/4 v0, 0x1

    return v0
.end method
