.class public Lcom/lge/cic/eden/analyzer/image/engine/BlurMeasureEngine;
.super Ljava/lang/Object;
.source "BlurMeasureEngine.java"

# interfaces
.implements Lcom/lge/cic/eden/analyzer/image/IImageAnalysisEngine;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lge/cic/eden/analyzer/image/IImageAnalysisEngine",
        "<",
        "Landroid/graphics/Bitmap;",
        "Lcom/lge/cic/eden/clustering/types/BlurInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDB()V
    .registers 1

    .prologue
    .line 32
    return-void
.end method

.method public create()Z
    .registers 2

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public destroy()Z
    .registers 2

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public process(Lcom/lge/cic/eden/db/type/MediaInfo;Landroid/graphics/Bitmap;)Lcom/lge/cic/eden/clustering/types/BlurInfo;
    .registers 11
    .param p1, "mediaInfo"    # Lcom/lge/cic/eden/db/type/MediaInfo;
    .param p2, "data"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x2

    .line 36
    const/4 v0, 0x4

    new-array v3, v0, [I

    .line 37
    .local v3, "pnPosition":[I
    const/4 v0, 0x3

    new-array v2, v0, [F

    .line 39
    .local v2, "fBlurScore":[F
    invoke-static {}, Lcom/lg/visualsearch/JniBlurMeasure;->getInstance()Lcom/lg/visualsearch/JniBlurMeasure;

    move-result-object v0

    const/4 v4, 0x1

    const v6, 0x3e4ccccd    # 0.2f

    const/16 v7, 0x10

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/lg/visualsearch/JniBlurMeasure;->BlurMeasure(Landroid/graphics/Bitmap;[F[IIIFI)I

    .line 41
    new-instance v0, Lcom/lge/cic/eden/clustering/types/BlurInfo;

    aget v1, v2, v5

    invoke-direct {v0, v1}, Lcom/lge/cic/eden/clustering/types/BlurInfo;-><init>(F)V

    return-object v0
.end method

.method public bridge synthetic process(Lcom/lge/cic/eden/db/type/MediaInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/lge/cic/eden/analyzer/image/engine/BlurMeasureEngine;->process(Lcom/lge/cic/eden/db/type/MediaInfo;Landroid/graphics/Bitmap;)Lcom/lge/cic/eden/clustering/types/BlurInfo;

    move-result-object v0

    return-object v0
.end method

.method public reset()Z
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method
