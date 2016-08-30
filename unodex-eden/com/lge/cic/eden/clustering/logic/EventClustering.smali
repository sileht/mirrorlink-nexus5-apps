.class public Lcom/lge/cic/eden/clustering/logic/EventClustering;
.super Ljava/lang/Object;
.source "EventClustering.java"


# instance fields
.field private activityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/clustering/types/ClusterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private calculator:Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;

.field private logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/lge/cic/eden/clustering/logic/EventClustering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/logic/EventClustering;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 24
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/logic/EventClustering;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "EventClustering create"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/logic/EventClustering;->activityList:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;-><init>(Ljava/lang/String;Landroid/location/Location;I)V

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/logic/EventClustering;->calculator:Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;Ljava/lang/String;)V
    .registers 5
    .param p1, "loc"    # Landroid/location/Location;
    .param p2, "home"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/lge/cic/eden/clustering/logic/EventClustering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/logic/EventClustering;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 30
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/logic/EventClustering;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "EventClustering create"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/logic/EventClustering;->activityList:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p1, v1}, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;-><init>(Ljava/lang/String;Landroid/location/Location;I)V

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/logic/EventClustering;->calculator:Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;

    .line 33
    return-void
.end method

.method private calculateStaticSimilarity()Ljava/util/HashMap;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/clustering/types/SimilarityInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v12, -0x1

    const/4 v11, 0x1

    .line 56
    iget-object v8, p0, Lcom/lge/cic/eden/clustering/logic/EventClustering;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v9, "calculateStaticSimilarity()"

    invoke-virtual {v8, v9}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 57
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v6, "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/types/SimilarityInfo;>;>;"
    iget-object v8, p0, Lcom/lge/cic/eden/clustering/logic/EventClustering;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v11, :cond_26

    .line 60
    const/16 v8, -0x63

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_25
    return-object v6

    .line 64
    :cond_26
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_27
    iget-object v8, p0, Lcom/lge/cic/eden/clustering/logic/EventClustering;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v3, v8, :cond_25

    .line 65
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v5, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/types/SimilarityInfo;>;"
    new-instance v7, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;

    iget-object v8, p0, Lcom/lge/cic/eden/clustering/logic/EventClustering;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lge/cic/eden/clustering/types/ClusterInfo;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;-><init>(Lcom/lge/cic/eden/clustering/types/ClusterInfo;I)V

    .line 69
    .local v7, "srcInfo":Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;
    add-int/lit8 v4, v3, 0x1

    .local v4, "j":I
    :goto_46
    iget-object v8, p0, Lcom/lge/cic/eden/clustering/logic/EventClustering;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v4, v8, :cond_5a

    .line 78
    iget v8, v7, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->activityId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 70
    :cond_5a
    new-instance v2, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;

    iget-object v8, p0, Lcom/lge/cic/eden/clustering/logic/EventClustering;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lge/cic/eden/clustering/types/ClusterInfo;

    invoke-direct {v2, v8, v11}, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;-><init>(Lcom/lge/cic/eden/clustering/types/ClusterInfo;I)V

    .line 72
    .local v2, "dstInfo":Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;
    iget-wide v8, v7, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->dateTaken:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_85

    iget-wide v8, v2, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->dateTaken:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_85

    .line 73
    iget-object v8, p0, Lcom/lge/cic/eden/clustering/logic/EventClustering;->calculator:Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;

    invoke-virtual {v8, v7, v2}, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->calcSimilarity(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)D

    move-result-wide v0

    .line 75
    .local v0, "calculatedValue":D
    new-instance v8, Lcom/lge/cic/eden/clustering/types/SimilarityInfo;

    iget v9, v7, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->activityId:I

    iget v10, v2, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->activityId:I

    invoke-direct {v8, v9, v10, v0, v1}, Lcom/lge/cic/eden/clustering/types/SimilarityInfo;-><init>(IID)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .end local v0    # "calculatedValue":D
    :cond_85
    add-int/lit8 v4, v4, 0x1

    goto :goto_46
.end method


# virtual methods
.method public makeCluster(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/clustering/types/ClusterInfo;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/clustering/types/SimilarityInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "acList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/types/ClusterInfo;>;"
    iget-object v1, p0, Lcom/lge/cic/eden/clustering/logic/EventClustering;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "makeCluster()"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 38
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_18

    .line 39
    :cond_f
    iget-object v1, p0, Lcom/lge/cic/eden/clustering/logic/EventClustering;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "Activity list is null."

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    .line 52
    :cond_17
    :goto_17
    return-object v0

    .line 43
    :cond_18
    iput-object p1, p0, Lcom/lge/cic/eden/clustering/logic/EventClustering;->activityList:Ljava/util/ArrayList;

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "similarityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/types/SimilarityInfo;>;>;"
    invoke-direct {p0}, Lcom/lge/cic/eden/clustering/logic/EventClustering;->calculateStaticSimilarity()Ljava/util/HashMap;

    move-result-object v0

    .line 48
    if-nez v0, :cond_17

    .line 49
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "similarityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/types/SimilarityInfo;>;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .restart local v0    # "similarityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/types/SimilarityInfo;>;>;"
    goto :goto_17
.end method
