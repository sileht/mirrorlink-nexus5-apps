.class public Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;
.super Ljava/lang/Object;
.source "ImageSimilarityFeature.java"


# instance fields
.field public scoreCH:F

.field public scoreGMM:F

.field public scoreHIST:F

.field public timeDiff:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 10
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;-><init>(FFFF)V

    .line 11
    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5
    .param p1, "timeDiff"    # F
    .param p2, "scoreGMM"    # F
    .param p3, "scoreCH"    # F
    .param p4, "scoreHIST"    # F

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;->timeDiff:F

    .line 16
    iput p2, p0, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;->scoreGMM:F

    .line 17
    iput p3, p0, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;->scoreCH:F

    .line 18
    iput p4, p0, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;->scoreHIST:F

    .line 19
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .registers 3

    .prologue
    const v1, -0x40804189    # -0.999f

    .line 22
    iget v0, p0, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;->timeDiff:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1d

    iget v0, p0, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;->scoreGMM:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1d

    iget v0, p0, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;->scoreCH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1d

    iget v0, p0, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;->scoreHIST:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1d

    .line 23
    const/4 v0, 0x1

    .line 25
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;->timeDiff:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;->scoreGMM:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;->scoreCH:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/ia/task/vision/photoanalysis/similarity/ImageSimilarityFeature;->scoreHIST:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method
