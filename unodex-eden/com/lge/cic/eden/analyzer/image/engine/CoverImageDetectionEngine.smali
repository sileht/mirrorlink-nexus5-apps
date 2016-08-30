.class public Lcom/lge/cic/eden/analyzer/image/engine/CoverImageDetectionEngine;
.super Ljava/lang/Object;
.source "CoverImageDetectionEngine.java"

# interfaces
.implements Lcom/lge/cic/eden/analyzer/image/IImageAnalysisEngine;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lge/cic/eden/analyzer/image/IImageAnalysisEngine",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private coverImageDetector:Lcom/lge/ia/task/vision/photoanalysis/coverdetection/CoverImageDetector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/cic/eden/analyzer/image/engine/CoverImageDetectionEngine;->coverImageDetector:Lcom/lge/ia/task/vision/photoanalysis/coverdetection/CoverImageDetector;

    .line 12
    return-void
.end method


# virtual methods
.method public clearDB()V
    .registers 1

    .prologue
    .line 33
    return-void
.end method

.method public create()Z
    .registers 2

    .prologue
    .line 17
    new-instance v0, Lcom/lge/ia/task/vision/photoanalysis/coverdetection/CoverImageDetector;

    invoke-direct {v0}, Lcom/lge/ia/task/vision/photoanalysis/coverdetection/CoverImageDetector;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/analyzer/image/engine/CoverImageDetectionEngine;->coverImageDetector:Lcom/lge/ia/task/vision/photoanalysis/coverdetection/CoverImageDetector;

    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public destroy()Z
    .registers 2

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/cic/eden/analyzer/image/engine/CoverImageDetectionEngine;->coverImageDetector:Lcom/lge/ia/task/vision/photoanalysis/coverdetection/CoverImageDetector;

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public process(Lcom/lge/cic/eden/db/type/MediaInfo;Landroid/graphics/Bitmap;)Ljava/lang/Float;
    .registers 8
    .param p1, "mediaInfo"    # Lcom/lge/cic/eden/db/type/MediaInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 37
    sget-object v2, Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;->ARGB2BGR:Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;

    invoke-static {p2, v2}, Lcom/lge/ia/task/vision/byteimage/ByteImageNative;->convertBitmap2ByteBuffer(Landroid/graphics/Bitmap;Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 38
    .local v0, "data":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/lge/cic/eden/analyzer/image/engine/CoverImageDetectionEngine;->coverImageDetector:Lcom/lge/ia/task/vision/photoanalysis/coverdetection/CoverImageDetector;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/lge/ia/task/vision/photoanalysis/coverdetection/CoverImageDetector;->calcEntropy(Ljava/nio/ByteBuffer;II)F

    move-result v1

    .line 39
    .local v1, "score":F
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 41
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic process(Lcom/lge/cic/eden/db/type/MediaInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/lge/cic/eden/analyzer/image/engine/CoverImageDetectionEngine;->process(Lcom/lge/cic/eden/db/type/MediaInfo;Landroid/graphics/Bitmap;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public reset()Z
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method
