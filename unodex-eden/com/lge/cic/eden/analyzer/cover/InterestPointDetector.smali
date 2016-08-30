.class public Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;
.super Ljava/lang/Object;
.source "InterestPointDetector.java"


# static fields
.field private static final CENTER_ROI_POINT:Ljava/lang/String; = "0.5,0.5"

.field public static final DEFAULT_ROI_POINT:Ljava/lang/String; = "0.4999,0.4999"

.field public static USE_SMART_THUMBNAIL:Z

.field private static logger:Lcom/lge/cic/eden/utils/Logger;


# instance fields
.field private NUM_OF_PHOTO:I

.field private faceEngine:Lcom/lge/cic/engine/face/FaceEngine;

.field private weight:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->USE_SMART_THUMBNAIL:Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->NUM_OF_PHOTO:I

    .line 33
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->weight:F

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->faceEngine:Lcom/lge/cic/engine/face/FaceEngine;

    .line 37
    return-void
.end method

.method private calcROI(Landroid/graphics/Bitmap;)Landroid/util/Pair;
    .registers 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/PointF;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 172
    sget-object v3, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "calcROI"

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 174
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 175
    .local v2, "roi":Landroid/graphics/PointF;
    const/4 v1, 0x0

    .line 177
    .local v1, "faceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/engine/face/FaceInfo;>;"
    :try_start_10
    iget-object v3, p0, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->faceEngine:Lcom/lge/cic/engine/face/FaceEngine;

    invoke-virtual {v3, p1}, Lcom/lge/cic/engine/face/FaceEngine;->calcFaceInfo(Landroid/graphics/Bitmap;)Ljava/util/ArrayList;
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_15} :catch_29

    move-result-object v1

    .line 182
    if-nez v1, :cond_3b

    .line 183
    sget-object v3, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "faceInfos is null."

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 184
    new-instance v3, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    :goto_28
    return-object v3

    .line 178
    :catch_29
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v3, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "faceInfos is null."

    invoke-virtual {v3, v4, v0}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 180
    new-instance v3, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_28

    .line 187
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_3b
    sget-object v3, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    num of faceInfos: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_75

    .line 190
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/cic/engine/face/FaceInfo;

    iget-object v3, v3, Lcom/lge/cic/engine/face/FaceInfo;->faceRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 191
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/cic/engine/face/FaceInfo;

    iget-object v3, v3, Lcom/lge/cic/engine/face/FaceInfo;->faceRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 193
    :cond_75
    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_28
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v3, Lcom/lge/cic/eden/imageloader/MemorySafeBitmapFactory;

    invoke-direct {v3}, Lcom/lge/cic/eden/imageloader/MemorySafeBitmapFactory;-><init>()V

    .line 145
    .local v3, "memorySafeBitmapFactory":Lcom/lge/cic/eden/imageloader/MemorySafeBitmapFactory;
    const/16 v5, 0x200

    .line 147
    .local v5, "requestSize":I
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 148
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 149
    invoke-static {p1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 152
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 153
    .local v1, "decodedHeight":I
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 155
    .local v2, "decodedWidth":I
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 156
    if-lez v5, :cond_21

    .line 157
    invoke-virtual {v3, v2, v1, v5, v5}, Lcom/lge/cic/eden/imageloader/MemorySafeBitmapFactory;->calculateInSampleSize(IIII)I

    move-result v6

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 159
    :cond_21
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 161
    const/4 v0, 0x0

    .line 163
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_26
    invoke-virtual {v3, p1, v4}, Lcom/lge/cic/eden/imageloader/MemorySafeBitmapFactory;->decodeFileWithGravity(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_29
    .catch Ljava/lang/OutOfMemoryError; {:try_start_26 .. :try_end_29} :catch_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_29} :catch_2d

    move-result-object v0

    .line 168
    :goto_2a
    return-object v0

    .line 164
    :catch_2b
    move-exception v6

    goto :goto_2a

    .line 165
    :catch_2d
    move-exception v6

    goto :goto_2a
.end method

.method private getNicePhotos(Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;I)Ljava/util/ArrayList;
    .registers 16
    .param p1, "publishInfo"    # Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;
    .param p2, "nPhoto"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 120
    move v10, p2

    .line 122
    .local v10, "limit":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v12, "selection":Ljava/lang/StringBuilder;
    const/4 v9, 0x1

    .line 124
    .local v9, "isFirst":Z
    iget-object v0, p1, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_33

    .line 133
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 134
    invoke-static {}, Lcom/lge/cic/eden/db/table/MediaInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 136
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    const-string v6, "PHOTO_NICENESSSCORE DESC"

    .line 140
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v3

    move-object v7, v3

    .line 133
    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 124
    :cond_33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    .line 125
    .local v11, "mappingInfo":Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;
    if-eqz v9, :cond_4e

    .line 126
    const/4 v9, 0x0

    .line 130
    :goto_3c
    const-string v1, "ACTIVITY_ID"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v11, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->activityId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 128
    :cond_4e
    const-string v1, " OR "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c
.end method


# virtual methods
.method public create()V
    .registers 6

    .prologue
    .line 40
    sget-object v2, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "create()"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 41
    iget-object v2, p0, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->faceEngine:Lcom/lge/cic/engine/face/FaceEngine;

    if-nez v2, :cond_4c

    .line 42
    new-instance v2, Lcom/lge/cic/engine/face/FaceEngine;

    invoke-direct {v2}, Lcom/lge/cic/engine/face/FaceEngine;-><init>()V

    iput-object v2, p0, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->faceEngine:Lcom/lge/cic/engine/face/FaceEngine;

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lge/cic/eden/assets/AssetLoader;->getEnginePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "engineDataPath":Ljava/lang/String;
    sget-object v2, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load at "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 46
    iget-object v2, p0, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->faceEngine:Lcom/lge/cic/engine/face/FaceEngine;

    invoke-virtual {v2, v0}, Lcom/lge/cic/engine/face/FaceEngine;->create(Ljava/lang/String;)Z

    move-result v1

    .line 47
    .local v1, "state":Z
    if-eqz v1, :cond_4d

    .line 48
    sget-object v2, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "complete faceEngine initialization"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 56
    .end local v0    # "engineDataPath":Ljava/lang/String;
    .end local v1    # "state":Z
    :cond_4c
    :goto_4c
    return-void

    .line 50
    .restart local v0    # "engineDataPath":Ljava/lang/String;
    .restart local v1    # "state":Z
    :cond_4d
    sget-object v2, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "error occured by FaceEngine."

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V

    .line 53
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->faceEngine:Lcom/lge/cic/engine/face/FaceEngine;

    goto :goto_4c
.end method

.method public destroy()V
    .registers 3

    .prologue
    .line 59
    sget-object v0, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "release()"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->faceEngine:Lcom/lge/cic/engine/face/FaceEngine;

    if-eqz v0, :cond_13

    .line 62
    iget-object v0, p0, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->faceEngine:Lcom/lge/cic/engine/face/FaceEngine;

    invoke-virtual {v0}, Lcom/lge/cic/engine/face/FaceEngine;->release()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->faceEngine:Lcom/lge/cic/engine/face/FaceEngine;

    .line 65
    :cond_13
    return-void
.end method

.method public detect(Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;)V
    .registers 16
    .param p1, "publishInfo"    # Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 68
    iget-object v6, p0, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->faceEngine:Lcom/lge/cic/engine/face/FaceEngine;

    if-nez v6, :cond_e

    .line 69
    sget-object v6, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v7, "face engine does not created..."

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 117
    :cond_d
    :goto_d
    return-void

    .line 73
    :cond_e
    const/4 v2, -0x1

    .line 75
    .local v2, "eventId":I
    :try_start_f
    iget-object v6, p1, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->data:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    iget v2, v6, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->eventId:I
    :try_end_1a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_1a} :catch_42
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_4b

    .line 84
    sget-object v6, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "detect() eventId: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 86
    iget v6, p0, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->NUM_OF_PHOTO:I

    invoke-direct {p0, p1, v6}, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->getNicePhotos(Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 87
    .local v4, "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_54

    .line 88
    sget-object v6, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v7, "mediaInfo is null"

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_d

    .line 76
    .end local v4    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :catch_42
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    sget-object v6, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v7, "publishInfo\'s data is empty"

    invoke-virtual {v6, v7, v1}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_d

    .line 79
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_4b
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v7, "publishInfo\'s data is broken"

    invoke-virtual {v6, v7, v1}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_d

    .line 91
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :cond_54
    sget-object v6, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "    # of images: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_70
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 94
    .local v3, "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    const-string v6, "0.4999,0.4999"

    iget-object v8, v3, Lcom/lge/cic/eden/db/type/MediaInfo;->roiPos:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a3

    .line 95
    sget-object v6, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "may be error occurred at ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v3, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_70

    .line 99
    :cond_a3
    const-string v6, "0.5,0.5"

    iput-object v6, v3, Lcom/lge/cic/eden/db/type/MediaInfo;->roiPos:Ljava/lang/String;

    .line 100
    new-array v6, v13, [Ljava/lang/String;

    const-string v8, "ROI_POINT"

    aput-object v8, v6, v12

    invoke-virtual {v3, v6}, Lcom/lge/cic/eden/db/type/MediaInfo;->save([Ljava/lang/String;)Z

    .line 102
    iget-object v6, v3, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_129

    .line 104
    invoke-direct {p0, v0}, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->calcROI(Landroid/graphics/Bitmap;)Landroid/util/Pair;

    move-result-object v5

    .line 106
    .local v5, "result":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/PointF;Ljava/lang/Integer;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/lge/cic/eden/db/type/MediaInfo;->roiPos:Ljava/lang/String;

    .line 109
    iget v8, v3, Lcom/lge/cic/eden/db/type/MediaInfo;->photoNicenessScore:F

    iget v9, p0, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->weight:F

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v6, v10

    mul-float/2addr v6, v9

    add-float/2addr v6, v8

    iput v6, v3, Lcom/lge/cic/eden/db/type/MediaInfo;->photoNicenessScore:F

    .line 111
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string v8, "ROI_POINT"

    aput-object v8, v6, v12

    const-string v8, "PHOTO_NICENESSSCORE"

    aput-object v8, v6, v13

    invoke-virtual {v3, v6}, Lcom/lge/cic/eden/db/type/MediaInfo;->save([Ljava/lang/String;)Z

    .line 112
    sget-object v6, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "      n: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ROI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    goto/16 :goto_70

    .line 114
    .end local v5    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/PointF;Ljava/lang/Integer;>;"
    :cond_129
    sget-object v6, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bitmap for ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v3, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] is null."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_70
.end method
