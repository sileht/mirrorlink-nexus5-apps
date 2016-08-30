.class public Lcom/lge/cic/eden/clustering/logic/ActivityClustering;
.super Ljava/lang/Object;
.source "ActivityClustering.java"


# instance fields
.field private final PARTITIONING_BOUNDARY:F

.field private cId:I

.field private calculator:Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;

.field private currentTimePos:I

.field logger:Lcom/lge/cic/eden/utils/Logger;

.field private mediaInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 17
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->PARTITIONING_BOUNDARY:F

    .line 26
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "ActivityClustering create"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    .line 28
    iput v2, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->currentTimePos:I

    .line 29
    new-instance v0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;

    invoke-direct {v0, v3, v3, v2}, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;-><init>(Ljava/lang/String;Landroid/location/Location;I)V

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->calculator:Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;

    .line 30
    return-void
.end method

.method private removeCurrentTimeFromMediaList()V
    .registers 3

    .prologue
    .line 105
    iget v0, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->currentTimePos:I

    if-ltz v0, :cond_b

    .line 106
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->currentTimePos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 107
    :cond_b
    return-void
.end method

.method private setCurrentTimeToMediaList()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 89
    new-instance v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    invoke-direct {v0}, Lcom/lge/cic/eden/db/type/MediaInfo;-><init>()V

    .line 90
    .local v0, "currentTime":Lcom/lge/cic/eden/db/type/MediaInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    .line 92
    iget-object v1, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_39

    iget-object v1, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v2, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    iget-object v1, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v4, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_39

    .line 93
    iget-object v1, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 96
    :cond_39
    iget-object v1, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v2, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_51

    .line 97
    iget-object v1, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 98
    iput v6, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->currentTimePos:I

    .line 102
    :goto_50
    return-void

    .line 100
    :cond_51
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->currentTimePos:I

    goto :goto_50
.end method


# virtual methods
.method public makeCluster(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p1, "mInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    const/4 v13, -0x1

    .line 40
    iget-object v10, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v11, "makeCluster()"

    invoke-virtual {v10, v11}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    .line 44
    invoke-direct {p0}, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->setCurrentTimeToMediaList()V

    .line 45
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 47
    .local v1, "acvitityIdMappingTable":Landroid/util/SparseIntArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_13
    iget-object v10, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-lt v6, v10, :cond_54

    .line 74
    invoke-direct {p0}, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->removeCurrentTimeFromMediaList()V

    .line 76
    const/4 v6, 0x0

    :goto_21
    iget-object v10, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v6, v10, :cond_c7

    .line 81
    iget-object v10, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v10, v10, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    if-ne v10, v13, :cond_51

    .line 82
    iget-object v10, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v11, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->cId:I

    iput v11, v10, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    .line 85
    :cond_51
    iget-object v10, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    return-object v10

    .line 48
    :cond_54
    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Ljava/lang/Thread;->sleep(JI)V

    .line 50
    iget-object v10, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 51
    .local v9, "srcMediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    new-instance v8, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;

    invoke-direct {v8, v9}, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;-><init>(Lcom/lge/cic/eden/db/type/MediaInfo;)V

    .line 53
    .local v8, "srcInfo":Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;
    iget v10, v9, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    if-ne v10, v13, :cond_81

    .line 54
    iget-object v10, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v11, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->cId:I

    iput v11, v10, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    .line 55
    iget v10, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->cId:I

    iput v10, v9, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    .line 56
    iget v10, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->cId:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->cId:I

    .line 59
    :cond_81
    add-int/lit8 v7, v6, 0x1

    .local v7, "j":I
    :goto_83
    iget-object v10, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v7, v10, :cond_9e

    .line 72
    :cond_8b
    iget-object v10, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v10, v10, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    iget v11, v9, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_13

    .line 60
    :cond_9e
    iget-object v10, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 61
    .local v5, "dstMediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    new-instance v4, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;

    invoke-direct {v4, v5}, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;-><init>(Lcom/lge/cic/eden/db/type/MediaInfo;)V

    .line 63
    .local v4, "dstInfo":Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;
    iget-object v10, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->calculator:Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;

    invoke-virtual {v10, v8, v4}, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->calcSimilarity(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)D

    move-result-wide v2

    .line 65
    .local v2, "calculatedValue":D
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpl-double v10, v2, v10

    if-eqz v10, :cond_8b

    .line 68
    const-wide v10, 0x3fe6666660000000L    # 0.699999988079071

    cmpg-double v10, v2, v10

    if-gez v10, :cond_c4

    .line 69
    iget v10, v9, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    iput v10, v5, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    .line 59
    :cond_c4
    add-int/lit8 v7, v7, 0x1

    goto :goto_83

    .line 77
    .end local v2    # "calculatedValue":D
    .end local v4    # "dstInfo":Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;
    .end local v5    # "dstMediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    .end local v7    # "j":I
    .end local v8    # "srcInfo":Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;
    .end local v9    # "srcMediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    :cond_c7
    iget-object v10, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v10, v10, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    invoke-virtual {v1, v10, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 78
    .local v0, "activityId":I
    iget-object v10, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->mediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/cic/eden/db/type/MediaInfo;

    iput v0, v10, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    .line 76
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_21
.end method

.method public setMaxActivityId(I)V
    .registers 5
    .param p1, "maxClusterId"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "setMaxActivityId()"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 34
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->cId:I

    .line 35
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MaxActivityId() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->cId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 36
    return-void
.end method
