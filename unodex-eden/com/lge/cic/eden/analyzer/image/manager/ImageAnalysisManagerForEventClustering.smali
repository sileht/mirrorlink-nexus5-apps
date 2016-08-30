.class public Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;
.super Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;
.source "ImageAnalysisManagerForEventClustering.java"


# static fields
.field static BLUR_MEASURE:I = 0x0

.field static COVER_IMAGE_DETECTION:I = 0x0

.field private static final DEBUG:Z = true

.field private static final DEBUG_NICENESS:Z

.field static IMAGE_SIMILARITY_MEASURE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field engines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/analyzer/image/IImageAnalysisEngine",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->BLUR_MEASURE:I

    .line 31
    const/4 v0, 0x1

    sput v0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->IMAGE_SIMILARITY_MEASURE:I

    .line 32
    const/4 v0, 0x2

    sput v0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->COVER_IMAGE_DETECTION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;-><init>(Landroid/content/Context;)V

    .line 25
    sget-object v1, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 33
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->engines:Ljava/util/ArrayList;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->engines:Ljava/util/ArrayList;

    .line 39
    iget-object v1, p0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->engines:Ljava/util/ArrayList;

    new-instance v2, Lcom/lge/cic/eden/analyzer/image/engine/BlurMeasureEngine;

    invoke-direct {v2}, Lcom/lge/cic/eden/analyzer/image/engine/BlurMeasureEngine;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v1, p0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->engines:Ljava/util/ArrayList;

    new-instance v2, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;

    invoke-direct {v2}, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v1, p0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->engines:Ljava/util/ArrayList;

    new-instance v2, Lcom/lge/cic/eden/analyzer/image/engine/CoverImageDetectionEngine;

    invoke-direct {v2}, Lcom/lge/cic/eden/analyzer/image/engine/CoverImageDetectionEngine;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v1, p0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->engines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_40

    .line 46
    return-void

    .line 43
    :cond_40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/analyzer/image/IImageAnalysisEngine;

    .line 44
    .local v0, "engine":Lcom/lge/cic/eden/analyzer/image/IImageAnalysisEngine;, "Lcom/lge/cic/eden/analyzer/image/IImageAnalysisEngine<**>;"
    invoke-interface {v0}, Lcom/lge/cic/eden/analyzer/image/IImageAnalysisEngine;->create()Z

    goto :goto_39
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->engines:Ljava/util/ArrayList;

    sget v1, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->IMAGE_SIMILARITY_MEASURE:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;

    invoke-virtual {v0}, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->reset()Z

    .line 56
    return-void
.end method

.method public destroy()V
    .registers 4

    .prologue
    .line 133
    iget-object v1, p0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "destroy()"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->engines:Ljava/util/ArrayList;

    if-eqz v1, :cond_1a

    .line 135
    iget-object v1, p0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->engines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->engines:Ljava/util/ArrayList;

    .line 140
    :cond_1a
    return-void

    .line 135
    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/analyzer/image/IImageAnalysisEngine;

    .line 136
    .local v0, "engine":Lcom/lge/cic/eden/analyzer/image/IImageAnalysisEngine;, "Lcom/lge/cic/eden/analyzer/image/IImageAnalysisEngine<**>;"
    invoke-interface {v0}, Lcom/lge/cic/eden/analyzer/image/IImageAnalysisEngine;->destroy()Z

    goto :goto_11
.end method

.method public getRequestSize()I
    .registers 2

    .prologue
    .line 50
    const/16 v0, 0x200

    return v0
.end method

.method public parallelAnalysis(ILandroid/graphics/Bitmap;Lcom/lge/cic/eden/db/type/MediaInfo;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "mediaInfo"    # Lcom/lge/cic/eden/db/type/MediaInfo;

    .prologue
    .line 62
    return-void
.end method

.method public serialAnalysis(ILandroid/graphics/Bitmap;Lcom/lge/cic/eden/db/type/MediaInfo;)V
    .registers 26
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "mediaInfo"    # Lcom/lge/cic/eden/db/type/MediaInfo;

    .prologue
    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->engines:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    sget v18, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->BLUR_MEASURE:I

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lge/cic/eden/analyzer/image/engine/BlurMeasureEngine;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/lge/cic/eden/analyzer/image/engine/BlurMeasureEngine;->process(Lcom/lge/cic/eden/db/type/MediaInfo;Landroid/graphics/Bitmap;)Lcom/lge/cic/eden/clustering/types/BlurInfo;

    move-result-object v11

    .line 69
    .local v11, "blurInfo":Lcom/lge/cic/eden/clustering/types/BlurInfo;
    iget v0, v11, Lcom/lge/cic/eden/clustering/types/BlurInfo;->score:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p3

    iput v0, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->photoNicenessScore:F

    .line 73
    sget-boolean v17, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->USE_SMART_THUMBNAIL:Z

    if-eqz v17, :cond_8d

    .line 74
    const/high16 v13, 0x3f800000    # 1.0f

    .line 75
    .local v13, "w0":F
    const v14, 0x3f4ccccd    # 0.8f

    .line 76
    .local v14, "w1":F
    const v15, 0x3ecccccd    # 0.4f

    .line 77
    .local v15, "w2":F
    const v16, 0x3e99999a    # 0.3f

    .line 79
    .local v16, "w3":F
    const/4 v6, 0x0

    .line 80
    .local v6, "S0":F
    iget v0, v11, Lcom/lge/cic/eden/clustering/types/BlurInfo;->score:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 81
    .local v7, "S1":F
    const/4 v8, 0x0

    .line 82
    .local v8, "S2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->engines:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    sget v18, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->COVER_IMAGE_DETECTION:I

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lge/cic/eden/analyzer/image/engine/CoverImageDetectionEngine;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/lge/cic/eden/analyzer/image/engine/CoverImageDetectionEngine;->process(Lcom/lge/cic/eden/db/type/MediaInfo;Landroid/graphics/Bitmap;)Ljava/lang/Float;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 83
    .local v9, "S3":F
    const/4 v4, 0x0

    .line 84
    .local v4, "P0":F
    const/4 v5, 0x0

    .line 89
    .local v5, "P1":F
    invoke-virtual {v11}, Lcom/lge/cic/eden/clustering/types/BlurInfo;->isBlur()Z

    move-result v17

    if-eqz v17, :cond_63

    .line 90
    const/high16 v5, 0x3f000000    # 0.5f

    .line 93
    :cond_63
    sget-boolean v17, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->USE_SMART_THUMBNAIL:Z

    if-eqz v17, :cond_77

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_77

    .line 96
    const/high16 v8, 0x3f800000    # 1.0f

    .line 100
    :cond_77
    mul-float v17, v13, v6

    mul-float v18, v14, v7

    add-float v17, v17, v18

    mul-float v18, v15, v8

    add-float v17, v17, v18

    mul-float v18, v16, v9

    add-float v17, v17, v18

    add-float v18, v4, v5

    sub-float v12, v17, v18

    .line 101
    .local v12, "photoNicenessScore":F
    move-object/from16 v0, p3

    iput v12, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->photoNicenessScore:F

    .line 114
    .end local v4    # "P0":F
    .end local v5    # "P1":F
    .end local v6    # "S0":F
    .end local v7    # "S1":F
    .end local v8    # "S2":F
    .end local v9    # "S3":F
    .end local v12    # "photoNicenessScore":F
    .end local v13    # "w0":F
    .end local v14    # "w1":F
    .end local v15    # "w2":F
    .end local v16    # "w3":F
    :cond_8d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "        nth: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", w: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", h: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", blur_score: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v11, Lcom/lge/cic/eden/clustering/types/BlurInfo;->score:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v11}, Lcom/lge/cic/eden/clustering/types/BlurInfo;->isBlur()Z

    move-result v17

    if-eqz v17, :cond_e7

    .line 116
    move-object/from16 v0, p3

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->photoState:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p3

    iput v0, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->photoState:I

    .line 119
    :cond_e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->engines:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    sget v18, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->IMAGE_SIMILARITY_MEASURE:I

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/lge/cic/eden/analyzer/image/engine/ImageSimilarityEngine;->process(Lcom/lge/cic/eden/db/type/MediaInfo;Landroid/graphics/Bitmap;)Landroid/util/Pair;

    move-result-object v10

    .line 120
    .local v10, "analzedResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Float;>;"
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p3

    iput-wide v0, v2, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    .line 122
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    move-wide/from16 v20, v0

    cmp-long v17, v18, v20

    if-eqz v17, :cond_128

    .line 123
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p3

    iput v0, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    .line 129
    :cond_127
    :goto_127
    return-void

    .line 125
    :cond_128
    move-object/from16 v0, p3

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->photoState:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_143

    .line 126
    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    const v18, 0x3e4ccccd    # 0.2f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_127

    .line 127
    :cond_143
    const/16 v17, 0x3

    move/from16 v0, v17

    move-object/from16 v1, p3

    iput v0, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    goto :goto_127
.end method

.method public writeResultOnDB(ILjava/util/ArrayList;Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$ImageAnalysisListener;)I
    .registers 19
    .param p1, "index"    # I
    .param p3, "listener"    # Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$ImageAnalysisListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;",
            "Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$ImageAnalysisListener;",
            ")I"
        }
    .end annotation

    .prologue
    .line 145
    .local p2, "mediaInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    if-nez p1, :cond_5

    .line 146
    const/16 p1, -0x1

    .line 213
    .end local p1    # "index":I
    :cond_4
    :goto_4
    return p1

    .line 149
    .restart local p1    # "index":I
    :cond_5
    add-int/lit8 v12, p1, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v8, v12, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    .line 150
    .local v8, "prevRprId":J
    const-wide/16 v2, 0x0

    .line 151
    .local v2, "currRprId":J
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v12

    move/from16 v0, p1

    if-ge v0, v12, :cond_46

    .line 152
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v2, v12, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    .line 168
    :goto_27
    cmp-long v12, v8, v2

    if-eqz v12, :cond_43

    .line 169
    add-int/lit8 v11, p1, -0x1

    .line 170
    .local v11, "startIndex":I
    add-int/lit8 v4, p1, -0x2

    .local v4, "i":I
    :goto_2f
    if-gez v4, :cond_57

    .line 177
    :cond_31
    sub-int v12, p1, v11

    add-int/lit8 v10, v12, -0x1

    .line 180
    .local v10, "similarCount":I
    const/4 v7, 0x0

    .line 181
    .local v7, "needPublish":Z
    if-lez v10, :cond_69

    const/4 v12, 0x3

    if-ge v10, v12, :cond_69

    const/4 v5, 0x1

    .line 182
    .local v5, "isFewDuplicated":Z
    :goto_3c
    move v4, v11

    :goto_3d
    move/from16 v0, p1

    if-lt v4, v0, :cond_6b

    .line 208
    if-nez v7, :cond_4

    .line 213
    .end local v4    # "i":I
    .end local v5    # "isFewDuplicated":Z
    .end local v7    # "needPublish":Z
    .end local v10    # "similarCount":I
    .end local v11    # "startIndex":I
    :cond_43
    const/16 p1, -0x1

    goto :goto_4

    .line 154
    :cond_46
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v12

    move/from16 v0, p1

    if-ne v0, v12, :cond_51

    .line 156
    const-wide/16 v2, -0x1

    .line 158
    goto :goto_27

    .line 159
    :cond_51
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    .line 171
    .restart local v4    # "i":I
    .restart local v11    # "startIndex":I
    :cond_57
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v12, v12, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    cmp-long v12, v12, v8

    if-nez v12, :cond_31

    .line 174
    move v11, v4

    .line 170
    add-int/lit8 v4, v4, -0x1

    goto :goto_2f

    .line 181
    .restart local v7    # "needPublish":Z
    .restart local v10    # "similarCount":I
    :cond_69
    const/4 v5, 0x0

    goto :goto_3c

    .line 184
    .restart local v5    # "isFewDuplicated":Z
    :cond_6b
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 185
    .local v6, "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    iput v10, v6, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    .line 187
    iget v12, v6, Lcom/lge/cic/eden/db/type/MediaInfo;->photoState:I

    if-gez v12, :cond_7c

    .line 188
    const/4 v12, 0x0

    iput v12, v6, Lcom/lge/cic/eden/db/type/MediaInfo;->photoState:I

    .line 192
    :cond_7c
    if-eqz v5, :cond_86

    if-eq v4, v11, :cond_86

    .line 193
    const/4 v12, 0x5

    iput v12, v6, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    .line 194
    const/4 v12, 0x0

    iput v12, v6, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    .line 198
    :cond_86
    sget-boolean v12, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->USE_SMART_THUMBNAIL:Z

    if-eqz v12, :cond_8e

    .line 199
    const-string v12, "0.4999,0.4999"

    iput-object v12, v6, Lcom/lge/cic/eden/db/type/MediaInfo;->roiPos:Ljava/lang/String;

    .line 202
    :cond_8e
    iget-object v12, p0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "        nth: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", VT: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v6, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 203
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$ImageAnalysisListener;->onWrite(Lcom/lge/cic/eden/db/type/MediaInfo;)V

    .line 205
    const/4 v7, 0x1

    .line 182
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d
.end method
