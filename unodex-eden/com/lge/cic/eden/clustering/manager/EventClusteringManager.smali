.class public Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;
.super Ljava/lang/Object;
.source "EventClusteringManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$ActivityMapper;,
        Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;
    }
.end annotation


# static fields
.field private static final ACTIVITY_DECISION_IMAGE_NUM:I = 0x1

.field private static final DEBUG_MANUAL_ADDR:Z = false

.field protected static final EVENT_DECISION_IMAGE_NUM:I = 0xa

.field private static EVENT_DECISION_TIMEBOUNDARY:I


# instance fields
.field ac:Lcom/lge/cic/eden/clustering/logic/ActivityClustering;

.field context:Landroid/content/Context;

.field private databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

.field private dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

.field ec:Lcom/lge/cic/eden/clustering/logic/EventClustering;

.field homeAddress:Ljava/lang/String;

.field homeLoc:Landroid/location/Location;

.field private isChinaFlag:Z

.field locManager:Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;

.field locationManager:Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;

.field logger:Lcom/lge/cic/eden/utils/Logger;

.field sEventTypeDecider:Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const v0, 0x5265c00

    sput v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->EVENT_DECISION_TIMEBOUNDARY:I

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isChinaFlag"    # Z

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-class v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 61
    iput-object v2, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->locManager:Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;

    .line 62
    iput-object v2, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->locationManager:Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;

    .line 63
    iput-object v2, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->sEventTypeDecider:Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;

    .line 65
    iput-object v2, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->homeLoc:Landroid/location/Location;

    .line 66
    iput-object v2, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->homeAddress:Ljava/lang/String;

    .line 68
    iput-object v2, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->ac:Lcom/lge/cic/eden/clustering/logic/ActivityClustering;

    .line 69
    iput-object v2, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->ec:Lcom/lge/cic/eden/clustering/logic/EventClustering;

    .line 73
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 74
    new-instance v0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    iget-object v1, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-direct {v0, v1}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;-><init>(Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->isChinaFlag:Z

    .line 79
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "EventClusteringManager create"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->context:Landroid/content/Context;

    .line 83
    new-instance v0, Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;

    invoke-direct {v0, p1}, Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->locationManager:Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;

    .line 84
    new-instance v0, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;

    invoke-direct {v0, p1}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->locManager:Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;

    .line 86
    iput-object v2, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->homeAddress:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->locManager:Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;

    const-string v1, "HOME"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->getLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->homeLoc:Landroid/location/Location;

    .line 102
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->homeLoc:Landroid/location/Location;

    if-eqz v0, :cond_5f

    .line 103
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->locManager:Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;

    invoke-virtual {v0}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->getCountryName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->homeAddress:Ljava/lang/String;

    .line 106
    :cond_5f
    new-instance v0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;

    iget-object v1, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->homeLoc:Landroid/location/Location;

    iget-object v2, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->homeAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->locManager:Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;

    const-string v4, "HOME"

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->getGeoData(Ljava/lang/String;)Lcom/lge/cic/eden/db/type/GeoData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;-><init>(Landroid/location/Location;Ljava/lang/String;Lcom/lge/cic/eden/db/type/GeoData;)V

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->sEventTypeDecider:Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;

    .line 108
    new-instance v0, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;

    invoke-direct {v0}, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->ac:Lcom/lge/cic/eden/clustering/logic/ActivityClustering;

    .line 110
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->homeAddress:Ljava/lang/String;

    if-nez v0, :cond_87

    .line 111
    new-instance v0, Lcom/lge/cic/eden/clustering/logic/EventClustering;

    invoke-direct {v0}, Lcom/lge/cic/eden/clustering/logic/EventClustering;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->ec:Lcom/lge/cic/eden/clustering/logic/EventClustering;

    .line 117
    :goto_84
    iput-boolean p2, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->isChinaFlag:Z

    .line 118
    return-void

    .line 113
    :cond_87
    new-instance v0, Lcom/lge/cic/eden/clustering/logic/EventClustering;

    invoke-direct {v0}, Lcom/lge/cic/eden/clustering/logic/EventClustering;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->ec:Lcom/lge/cic/eden/clustering/logic/EventClustering;

    goto :goto_84
.end method

.method private buildActivityInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/clustering/manager/ActivityContainer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 858
    .local p1, "mediaInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .local v5, "activityInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 863
    .local v6, "activityMediaMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_31

    .line 876
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_15
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-lt v9, v15, :cond_85

    .line 892
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->updateGeoLocationInfoUsingList(Ljava/util/ArrayList;Landroid/util/SparseArray;)Z

    move-result v8

    .line 898
    .local v8, "geocodingSuccess":Z
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 900
    .local v14, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/ActivityContainer;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_c5

    .line 905
    return-object v14

    .line 863
    .end local v8    # "geocodingSuccess":Z
    .end local v9    # "i":I
    .end local v14    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/ActivityContainer;>;"
    :cond_31
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 864
    .local v11, "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    iget v0, v11, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;

    .line 865
    .local v12, "mediaList":Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "media id - "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", activity id - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v11, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 866
    if-nez v12, :cond_81

    .line 867
    new-instance v12, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;

    .end local v12    # "mediaList":Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;
    invoke-direct {v12}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;-><init>()V

    .line 868
    .restart local v12    # "mediaList":Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;
    invoke-virtual {v12, v11}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->add(Lcom/lge/cic/eden/db/type/MediaInfo;)Z

    .line 869
    iget v0, v11, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v6, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_e

    .line 871
    :cond_81
    invoke-virtual {v12, v11}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->add(Lcom/lge/cic/eden/db/type/MediaInfo;)Z

    goto :goto_e

    .line 877
    .end local v11    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    .end local v12    # "mediaList":Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;
    .restart local v9    # "i":I
    :cond_85
    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 878
    .local v3, "activityId":I
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;

    .line 879
    .local v13, "mediaListInActivity":Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->makeActivityInfo(ILcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;)Lcom/lge/cic/eden/db/type/ActivityInfo;

    move-result-object v4

    .line 880
    .local v4, "activityInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    invoke-virtual {v13}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->size()I

    move-result v15

    invoke-virtual {v4, v15}, Lcom/lge/cic/eden/db/type/ActivityInfo;->setActivityEntryCnt(I)V

    .line 881
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    iget v15, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;->visibility:I

    const/16 v16, 0x63

    move/from16 v0, v16

    if-ne v15, v0, :cond_b4

    .line 884
    invoke-virtual {v13}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_ab
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_b8

    .line 887
    invoke-virtual {v6, v3, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 876
    :cond_b4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_15

    .line 884
    :cond_b8
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 885
    .local v10, "mInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    const/16 v16, 0x63

    move/from16 v0, v16

    iput v0, v10, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    goto :goto_ab

    .line 900
    .end local v3    # "activityId":I
    .end local v4    # "activityInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    .end local v10    # "mInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    .end local v13    # "mediaListInActivity":Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;
    .restart local v8    # "geocodingSuccess":Z
    .restart local v14    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/ActivityContainer;>;"
    :cond_c5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 901
    .local v2, "aInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    new-instance v7, Lcom/lge/cic/eden/clustering/manager/ActivityContainer;

    iget v15, v2, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    invoke-virtual {v6, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;

    invoke-direct {v7, v2, v15}, Lcom/lge/cic/eden/clustering/manager/ActivityContainer;-><init>(Lcom/lge/cic/eden/db/type/ActivityInfo;Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;)V

    .line 902
    .local v7, "container":Lcom/lge/cic/eden/clustering/manager/ActivityContainer;
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2a
.end method

.method private buildActivityInfoForChina(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/clustering/manager/ActivityContainer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 910
    .local p1, "mediaInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v16, v0

    const-string v17, "buildActivityInfoForChina()"

    invoke-virtual/range {v16 .. v17}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 911
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 913
    .local v7, "activityInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 916
    .local v8, "activityMediaMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_19
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_38

    .line 929
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_20
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v16

    move/from16 v0, v16

    if-lt v10, v0, :cond_90

    .line 944
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 946
    .local v15, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/ActivityContainer;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_31
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_d6

    .line 951
    return-object v15

    .line 916
    .end local v10    # "i":I
    .end local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/ActivityContainer;>;"
    :cond_38
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 917
    .local v12, "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    iget v0, v12, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;

    .line 918
    .local v13, "mediaList":Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "media id - "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, v12, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", activity id - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 919
    if-nez v13, :cond_8c

    .line 920
    new-instance v13, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;

    .end local v13    # "mediaList":Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;
    invoke-direct {v13}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;-><init>()V

    .line 921
    .restart local v13    # "mediaList":Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;
    invoke-virtual {v13, v12}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->add(Lcom/lge/cic/eden/db/type/MediaInfo;)Z

    .line 922
    iget v0, v12, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_19

    .line 924
    :cond_8c
    invoke-virtual {v13, v12}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->add(Lcom/lge/cic/eden/db/type/MediaInfo;)Z

    goto :goto_19

    .line 930
    .end local v12    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    .end local v13    # "mediaList":Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;
    .restart local v10    # "i":I
    :cond_90
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 931
    .local v5, "activityId":I
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;

    .line 932
    .local v14, "mediaListInActivity":Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->makeActivityInfo(ILcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;)Lcom/lge/cic/eden/db/type/ActivityInfo;

    move-result-object v6

    .line 933
    .local v6, "activityInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    invoke-virtual {v14}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/lge/cic/eden/db/type/ActivityInfo;->setActivityEntryCnt(I)V

    .line 934
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    iget v0, v6, Lcom/lge/cic/eden/db/type/ActivityInfo;->visibility:I

    move/from16 v16, v0

    const/16 v17, 0x63

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c5

    .line 937
    invoke-virtual {v14}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_bc
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_c9

    .line 940
    invoke-virtual {v8, v5, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 929
    :cond_c5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_20

    .line 937
    :cond_c9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 938
    .local v11, "mInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    const/16 v17, 0x63

    move/from16 v0, v17

    iput v0, v11, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    goto :goto_bc

    .line 946
    .end local v5    # "activityId":I
    .end local v6    # "activityInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    .end local v11    # "mInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    .end local v14    # "mediaListInActivity":Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;
    .restart local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/ActivityContainer;>;"
    :cond_d6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 947
    .local v4, "aInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    new-instance v9, Lcom/lge/cic/eden/clustering/manager/ActivityContainer;

    iget v0, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;

    move-object/from16 v0, v16

    invoke-direct {v9, v4, v0}, Lcom/lge/cic/eden/clustering/manager/ActivityContainer;-><init>(Lcom/lge/cic/eden/db/type/ActivityInfo;Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;)V

    .line 948
    .local v9, "container":Lcom/lge/cic/eden/clustering/manager/ActivityContainer;
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_31
.end method

.method private calculateGeoData(Ljava/util/ArrayList;)Lcom/lge/cic/eden/db/type/GeoData;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/ActivityInfo;",
            ">;)",
            "Lcom/lge/cic/eden/db/type/GeoData;"
        }
    .end annotation

    .prologue
    .line 688
    .local p1, "activityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    new-instance v6, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$1;

    invoke-direct {v6, p0}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$1;-><init>(Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;)V

    invoke-direct {p0, p1, v6}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->getMaxCount(Ljava/util/ArrayList;Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$ActivityMapper;)Landroid/util/Pair;

    move-result-object v3

    .line 696
    .local v3, "maxLocale":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v6, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$2;

    invoke-direct {v6, p0}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$2;-><init>(Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;)V

    invoke-direct {p0, p1, v6}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->getMaxCount(Ljava/util/ArrayList;Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$ActivityMapper;)Landroid/util/Pair;

    move-result-object v2

    .line 705
    .local v2, "maxCountry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v6, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$3;

    invoke-direct {v6, p0, v2}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$3;-><init>(Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;Landroid/util/Pair;)V

    invoke-direct {p0, p1, v6}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->getMaxCount(Ljava/util/ArrayList;Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$ActivityMapper;)Landroid/util/Pair;

    move-result-object v1

    .line 716
    .local v1, "maxAdminArea":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v6, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$4;

    invoke-direct {v6, p0, v2, v1}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$4;-><init>(Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;Landroid/util/Pair;Landroid/util/Pair;)V

    invoke-direct {p0, p1, v6}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->getMaxCount(Ljava/util/ArrayList;Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$ActivityMapper;)Landroid/util/Pair;

    move-result-object v4

    .line 728
    .local v4, "maxLocality":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v6, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$5;

    invoke-direct {v6, p0, v2, v1, v4}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$5;-><init>(Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;Landroid/util/Pair;Landroid/util/Pair;Landroid/util/Pair;)V

    invoke-direct {p0, p1, v6}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->getMaxCount(Ljava/util/ArrayList;Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$ActivityMapper;)Landroid/util/Pair;

    move-result-object v5

    .line 740
    .local v5, "maxThoroughfare":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Lcom/lge/cic/eden/db/type/GeoData;

    invoke-direct {v0}, Lcom/lge/cic/eden/db/type/GeoData;-><init>()V

    .line 741
    .local v0, "geoData":Lcom/lge/cic/eden/db/type/GeoData;
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iput-object v6, v0, Lcom/lge/cic/eden/db/type/GeoData;->geoLocale:Ljava/lang/String;

    .line 742
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lcom/lge/cic/eden/db/type/GeoData;->geoLocaleFreq:I

    .line 743
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iput-object v6, v0, Lcom/lge/cic/eden/db/type/GeoData;->countryName:Ljava/lang/String;

    .line 744
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lcom/lge/cic/eden/db/type/GeoData;->countryNameFreq:I

    .line 745
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iput-object v6, v0, Lcom/lge/cic/eden/db/type/GeoData;->adminArea:Ljava/lang/String;

    .line 746
    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lcom/lge/cic/eden/db/type/GeoData;->adminAreaFreq:I

    .line 747
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iput-object v6, v0, Lcom/lge/cic/eden/db/type/GeoData;->locality:Ljava/lang/String;

    .line 748
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lcom/lge/cic/eden/db/type/GeoData;->localityFreq:I

    .line 749
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iput-object v6, v0, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfare:Ljava/lang/String;

    .line 750
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfareFreq:I

    .line 752
    return-object v0
.end method

.method private getEndLocation(Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;)Landroid/location/Location;
    .registers 12
    .param p1, "mediaInfoList"    # Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;

    .prologue
    const-wide v8, -0x3f70c80000000000L    # -999.0

    .line 1098
    invoke-virtual {p1}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_b
    if-gez v0, :cond_1c

    .line 1110
    new-instance v3, Landroid/location/Location;

    const-string v4, ""

    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1111
    .local v3, "notFound":Landroid/location/Location;
    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 1112
    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    move-object v1, v3

    .line 1114
    .end local v3    # "notFound":Landroid/location/Location;
    :goto_1b
    return-object v1

    .line 1099
    :cond_1c
    invoke-virtual {p1, v0}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 1100
    .local v2, "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    iget-wide v4, v2, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_6c

    iget-wide v4, v2, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_6c

    .line 1101
    iget-wide v4, v2, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_6c

    iget-wide v4, v2, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_6c

    .line 1102
    iget-wide v4, v2, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    cmpl-double v4, v4, v8

    if-eqz v4, :cond_6c

    iget-wide v4, v2, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    cmpl-double v4, v4, v8

    if-eqz v4, :cond_6c

    .line 1103
    new-instance v1, Landroid/location/Location;

    const-string v4, ""

    invoke-direct {v1, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v1, "loc":Landroid/location/Location;
    iget-wide v4, v2, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 1105
    iget-wide v4, v2, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    goto :goto_1b

    .line 1098
    .end local v1    # "loc":Landroid/location/Location;
    :cond_6c
    add-int/lit8 v0, v0, -0x1

    goto :goto_b
.end method

.method private getMaxCount(Ljava/util/ArrayList;Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$ActivityMapper;)Landroid/util/Pair;
    .registers 14
    .param p2, "mapper"    # Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$ActivityMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/ActivityInfo;",
            ">;",
            "Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$ActivityMapper;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 652
    .local p1, "activityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 655
    .local v2, "countMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2a

    .line 667
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 669
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 670
    .local v6, "maxCount":I
    const-string v7, ""

    .line 672
    .local v7, "maxCountKey":Ljava/lang/String;
    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5b

    .line 682
    new-instance v8, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8

    .line 655
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "maxCount":I
    .end local v7    # "maxCountKey":Ljava/lang/String;
    :cond_2a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 656
    .local v0, "activityInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    invoke-interface {p2, v0}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$ActivityMapper;->getItem(Lcom/lge/cic/eden/db/type/ActivityInfo;)Ljava/lang/String;

    move-result-object v4

    .line 657
    .local v4, "item":Ljava/lang/String;
    if-eqz v4, :cond_9

    .line 658
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_51

    .line 659
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 660
    .local v1, "count":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v10, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityEntryCnt:I

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 662
    .end local v1    # "count":Ljava/lang/Integer;
    :cond_51
    iget v9, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityEntryCnt:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 673
    .end local v0    # "activityInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    .end local v4    # "item":Ljava/lang/String;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v6    # "maxCount":I
    .restart local v7    # "maxCountKey":Ljava/lang/String;
    :cond_5b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 674
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 675
    .local v1, "count":I
    iget-object v8, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 676
    if-le v1, v6, :cond_1a

    .line 677
    move-object v7, v5

    .line 678
    move v6, v1

    goto :goto_1a
.end method

.method private getStartLocation(Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;)Landroid/location/Location;
    .registers 12
    .param p1, "mediaInfoList"    # Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;

    .prologue
    const-wide v8, -0x3f70c80000000000L    # -999.0

    .line 1120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-virtual {p1}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->size()I

    move-result v4

    if-lt v0, v4, :cond_1b

    .line 1132
    new-instance v3, Landroid/location/Location;

    const-string v4, ""

    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1133
    .local v3, "notFound":Landroid/location/Location;
    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 1134
    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    move-object v1, v3

    .line 1136
    .end local v3    # "notFound":Landroid/location/Location;
    :goto_1a
    return-object v1

    .line 1121
    :cond_1b
    invoke-virtual {p1, v0}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 1122
    .local v2, "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    iget-wide v4, v2, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_6b

    iget-wide v4, v2, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_6b

    .line 1123
    iget-wide v4, v2, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_6b

    iget-wide v4, v2, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_6b

    .line 1124
    iget-wide v4, v2, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    cmpl-double v4, v4, v8

    if-eqz v4, :cond_6b

    iget-wide v4, v2, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    cmpl-double v4, v4, v8

    if-eqz v4, :cond_6b

    .line 1125
    new-instance v1, Landroid/location/Location;

    const-string v4, ""

    invoke-direct {v1, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1126
    .local v1, "loc":Landroid/location/Location;
    iget-wide v4, v2, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 1127
    iget-wide v4, v2, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    goto :goto_1a

    .line 1120
    .end local v1    # "loc":Landroid/location/Location;
    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private makeActivityInfo(ILcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;)Lcom/lge/cic/eden/db/type/ActivityInfo;
    .registers 15
    .param p1, "activityId"    # I
    .param p2, "mediaList"    # Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;

    .prologue
    const/4 v11, 0x0

    .line 954
    invoke-direct {p0, p2}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->getStartLocation(Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;)Landroid/location/Location;

    move-result-object v6

    .line 955
    .local v6, "startLocation":Landroid/location/Location;
    invoke-direct {p0, p2}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->getEndLocation(Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;)Landroid/location/Location;

    move-result-object v7

    .line 957
    .local v7, "endLocation":Landroid/location/Location;
    invoke-virtual {p2}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_69

    move v9, v11

    .line 959
    .local v9, "visibility":I
    :goto_11
    new-instance v0, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 961
    invoke-virtual {p2, v11}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v2, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    .line 962
    invoke-virtual {p2}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v4, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    .line 965
    const/4 v8, 0x0

    .line 967
    invoke-virtual {p2}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->size()I

    move-result v10

    move v1, p1

    .line 959
    invoke-direct/range {v0 .. v11}, Lcom/lge/cic/eden/db/type/ActivityInfo;-><init>(IJJLandroid/location/Location;Landroid/location/Location;Lcom/lge/cic/eden/db/type/GeoData;III)V

    .line 970
    .local v0, "activityInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    iget-object v1, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create activityinfo - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 971
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startTime:J

    invoke-static {v4, v5}, Lcom/lge/cic/eden/utils/UTC2StringConverter;->toFullTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 972
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endTime:J

    invoke-static {v4, v5}, Lcom/lge/cic/eden/utils/UTC2StringConverter;->toFullTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 970
    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 974
    return-object v0

    .line 957
    .end local v0    # "activityInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    .end local v9    # "visibility":I
    :cond_69
    const/16 v9, 0x63

    goto :goto_11
.end method

.method private makeClusterInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/clustering/manager/ActivityContainer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/clustering/types/ClusterInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 757
    .local p1, "activityContainerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/ActivityContainer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v2, "clusterInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/types/ClusterInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_18

    .line 788
    new-instance v6, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$6;

    invoke-direct {v6, p0}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$6;-><init>(Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;)V

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 802
    return-object v2

    .line 759
    :cond_18
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/cic/eden/clustering/manager/ActivityContainer;

    .line 760
    .local v3, "container":Lcom/lge/cic/eden/clustering/manager/ActivityContainer;
    new-instance v1, Lcom/lge/cic/eden/clustering/types/ClusterInfo;

    invoke-direct {v1}, Lcom/lge/cic/eden/clustering/types/ClusterInfo;-><init>()V

    .line 761
    .local v1, "clusterEntry":Lcom/lge/cic/eden/clustering/types/ClusterInfo;
    iget-object v0, v3, Lcom/lge/cic/eden/clustering/manager/ActivityContainer;->activityInfo:Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 763
    .local v0, "activityInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    if-eqz v0, :cond_9

    .line 764
    iget-object v7, v1, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterEntry:Ljava/util/ArrayList;

    iget-object v8, v3, Lcom/lge/cic/eden/clustering/manager/ActivityContainer;->mediaList:Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 765
    iget v7, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    iput v7, v1, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterId:I

    .line 767
    iput-object v0, v1, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->activityInfo:Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 768
    iget-object v7, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoCountryName:Ljava/lang/String;

    if-eqz v7, :cond_6e

    iget-object v7, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoCountryName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6e

    .line 769
    iget-object v7, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoCountryName:Ljava/lang/String;

    iput-object v7, v1, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->countryName:Ljava/lang/String;

    .line 774
    :goto_44
    new-instance v5, Landroid/location/Location;

    const-string v7, ""

    invoke-direct {v5, v7}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 775
    .local v5, "startLocation":Landroid/location/Location;
    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLatitude:D

    invoke-virtual {v5, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 776
    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLongitude:D

    invoke-virtual {v5, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 777
    iput-object v5, v1, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->startLoc:Landroid/location/Location;

    .line 779
    new-instance v4, Landroid/location/Location;

    const-string v7, ""

    invoke-direct {v4, v7}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 780
    .local v4, "endLocation":Landroid/location/Location;
    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLatitude:D

    invoke-virtual {v4, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 781
    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLongitude:D

    invoke-virtual {v4, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 782
    iput-object v4, v1, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->endLoc:Landroid/location/Location;

    .line 784
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 771
    .end local v4    # "endLocation":Landroid/location/Location;
    .end local v5    # "startLocation":Landroid/location/Location;
    :cond_6e
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->countryName:Ljava/lang/String;

    goto :goto_44
.end method

.method private updateGeoLocationInfo(Ljava/util/ArrayList;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/ActivityInfo;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 979
    .local p1, "activityInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v12, "updateGeoLocationInfo()"

    invoke-virtual {v11, v12}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 981
    if-nez p1, :cond_16

    .line 982
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v12, "activityInfoList is null."

    invoke-virtual {v11, v12}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 983
    const/4 v11, 0x1

    .line 1027
    :goto_15
    return v11

    .line 986
    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 987
    .local v5, "activityCnt":I
    const/4 v8, 0x0

    .line 988
    .local v8, "failCnt":I
    const/4 v6, 0x0

    .line 989
    .local v6, "currentIdx":I
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 991
    .local v2, "GEOCODING_FAIL_BOUNDARY":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "  num activityInfoList = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 993
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_44

    .line 1027
    const/4 v11, 0x1

    goto :goto_15

    .line 993
    :cond_44
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 994
    .local v4, "aInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Ljava/lang/Thread;->sleep(JI)V

    .line 995
    add-int/lit8 v6, v6, 0x1

    .line 996
    const/4 v9, 0x0

    .line 997
    .local v9, "geoData":Lcom/lge/cic/eden/db/type/GeoData;
    const-string v10, ""

    .line 998
    .local v10, "reason":Ljava/lang/String;
    iget-wide v12, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLatitude:D

    const-wide v14, -0x3f70c80000000000L    # -999.0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_b8

    iget-wide v12, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLongitude:D

    const-wide v14, -0x3f70c80000000000L    # -999.0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_b8

    .line 1000
    :try_start_6b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->locationManager:Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;

    iget-wide v14, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLatitude:D

    iget-wide v0, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLongitude:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0, v1}, Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;->getGeoData(DD)Lcom/lge/cic/eden/db/type/GeoData;
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_7a} :catch_b3

    move-result-object v9

    .line 1009
    :goto_7b
    if-nez v9, :cond_bb

    .line 1010
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "  aId = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", getting geocode is failed. reason = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 1011
    add-int/lit8 v8, v8, 0x1

    .line 1013
    int-to-double v12, v8

    int-to-double v14, v5

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    cmpl-double v12, v12, v14

    if-gtz v12, :cond_b0

    const/4 v12, 0x5

    if-ne v6, v12, :cond_d9

    const/4 v12, 0x5

    if-ne v8, v12, :cond_d9

    .line 1014
    :cond_b0
    const/4 v11, 0x0

    goto/16 :goto_15

    .line 1001
    :catch_b3
    move-exception v7

    .line 1002
    .local v7, "e":Ljava/io/IOException;
    const/4 v9, 0x0

    .line 1003
    const-string v10, "geocoder is not working"

    .line 1005
    goto :goto_7b

    .line 1006
    .end local v7    # "e":Ljava/io/IOException;
    :cond_b8
    const-string v10, "lat or lng is -999"

    goto :goto_7b

    .line 1017
    :cond_bb
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "  aId = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", getting geocode is success."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 1020
    :cond_d9
    invoke-virtual {v4, v9}, Lcom/lge/cic/eden/db/type/ActivityInfo;->setGeoData(Lcom/lge/cic/eden/db/type/GeoData;)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "save activityinfo - "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1024
    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;->startTime:J

    invoke-static {v14, v15}, Lcom/lge/cic/eden/utils/UTC2StringConverter;->toFullTime(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1025
    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;->endTime:J

    invoke-static {v14, v15}, Lcom/lge/cic/eden/utils/UTC2StringConverter;->toFullTime(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1023
    invoke-virtual {v12, v13}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    goto/16 :goto_3c
.end method

.method private updateGeoLocationInfoUsingList(Ljava/util/ArrayList;Landroid/util/SparseArray;)Z
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/ActivityInfo;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1032
    .local p1, "activityInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    .local p2, "activityMediaMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v14, "updateGeoLocationInfoUsingList()"

    invoke-virtual {v13, v14}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 1034
    if-nez p1, :cond_16

    .line 1035
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v14, "activityInfoList is null."

    invoke-virtual {v13, v14}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 1036
    const/4 v13, 0x1

    .line 1093
    :goto_15
    return v13

    .line 1039
    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1040
    .local v5, "activityCnt":I
    const/4 v7, 0x0

    .line 1041
    .local v7, "failCnt":I
    const-wide v2, 0x3fc999999999999aL    # 0.2

    .line 1043
    .local v2, "GEOCODING_FAIL_BOUNDARY":D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "  num activityInfoList = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 1045
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_46

    .line 1093
    const/4 v13, 0x1

    goto :goto_15

    .line 1045
    :cond_46
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 1046
    .local v4, "aInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    const-wide/16 v16, 0x0

    const/4 v13, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v13}, Ljava/lang/Thread;->sleep(JI)V

    .line 1047
    const/4 v8, 0x0

    .line 1048
    .local v8, "geoData":Lcom/lge/cic/eden/db/type/GeoData;
    const-string v12, ""

    .line 1050
    .local v12, "reason":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1052
    .local v10, "locationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    iget v13, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;

    invoke-virtual {v13}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_bd

    .line 1067
    :goto_70
    :try_start_70
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->locationManager:Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;

    invoke-virtual {v13, v10}, Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;->getGeoDataUsingList(Ljava/util/ArrayList;)Lcom/lge/cic/eden/db/type/GeoData;
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_77} :catch_141

    move-result-object v8

    .line 1073
    :goto_78
    if-nez v8, :cond_147

    .line 1074
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "  aId = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", getting geocode is failed. reason = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 1075
    add-int/lit8 v7, v7, 0x1

    .line 1076
    iget v13, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;->retryCnt:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;->retryCnt:I

    .line 1077
    int-to-double v0, v7

    move-wide/from16 v16, v0

    int-to-double v0, v5

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    const-wide v18, 0x3fc999999999999aL    # 0.2

    cmpl-double v13, v16, v18

    if-gtz v13, :cond_ba

    const/4 v13, 0x5

    if-ne v7, v13, :cond_16c

    .line 1078
    :cond_ba
    const/4 v13, 0x0

    goto/16 :goto_15

    .line 1052
    :cond_bd
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 1053
    .local v11, "mInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    iget-wide v0, v11, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    move-wide/from16 v16, v0

    const-wide v18, -0x3fa9800000000000L    # -90.0

    cmpl-double v15, v16, v18

    if-ltz v15, :cond_6a

    iget-wide v0, v11, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    move-wide/from16 v16, v0

    const-wide v18, 0x4056800000000000L    # 90.0

    cmpg-double v15, v16, v18

    if-gtz v15, :cond_6a

    .line 1054
    iget-wide v0, v11, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    move-wide/from16 v16, v0

    const-wide v18, -0x3f99800000000000L    # -180.0

    cmpl-double v15, v16, v18

    if-ltz v15, :cond_6a

    iget-wide v0, v11, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    move-wide/from16 v16, v0

    const-wide v18, 0x4066800000000000L    # 180.0

    cmpg-double v15, v16, v18

    if-gtz v15, :cond_6a

    .line 1055
    iget-wide v0, v11, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    move-wide/from16 v16, v0

    const-wide v18, -0x3f70c80000000000L    # -999.0

    cmpl-double v15, v16, v18

    if-eqz v15, :cond_6a

    iget-wide v0, v11, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    move-wide/from16 v16, v0

    const-wide v18, -0x3f70c80000000000L    # -999.0

    cmpl-double v15, v16, v18

    if-eqz v15, :cond_6a

    .line 1056
    new-instance v9, Landroid/location/Location;

    const-string v15, ""

    invoke-direct {v9, v15}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1057
    .local v9, "loc":Landroid/location/Location;
    iget-wide v0, v11, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 1058
    iget-wide v0, v11, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 1060
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->locationManager:Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;->getMaxTry()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_6a

    goto/16 :goto_70

    .line 1068
    .end local v9    # "loc":Landroid/location/Location;
    .end local v11    # "mInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    :catch_141
    move-exception v6

    .line 1069
    .local v6, "e":Ljava/io/IOException;
    const/4 v8, 0x0

    .line 1070
    const-string v12, "geocoder is not working"

    goto/16 :goto_78

    .line 1081
    .end local v6    # "e":Ljava/io/IOException;
    :cond_147
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "  aId = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", getting geocode is success."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 1082
    const/4 v7, 0x0

    .line 1083
    const/16 v13, 0x63

    iput v13, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;->retryCnt:I

    .line 1086
    :cond_16c
    invoke-virtual {v4, v8}, Lcom/lge/cic/eden/db/type/ActivityInfo;->setGeoData(Lcom/lge/cic/eden/db/type/GeoData;)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "save activityinfo - "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1090
    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-wide v0, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;->startTime:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lcom/lge/cic/eden/utils/UTC2StringConverter;->toFullTime(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1091
    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-wide v0, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;->endTime:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lcom/lge/cic/eden/utils/UTC2StringConverter;->toFullTime(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1089
    invoke-virtual {v13, v15}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    goto/16 :goto_3e
.end method


# virtual methods
.method public buildActivityInfoUsingGeoCodingFailedList(I)Ljava/util/ArrayList;
    .registers 16
    .param p1, "clusteringTarget"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/clustering/manager/ActivityContainer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 807
    iget-object v10, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v11, "buildActivityInfoUsingGeoCodingFailedList()"

    invoke-virtual {v10, v11}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 808
    iget-object v10, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-virtual {v10}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->getGeoCodingFailedActivityList()Ljava/util/ArrayList;

    move-result-object v1

    .line 810
    .local v1, "activityIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 811
    .local v2, "activityIdRetryCntMap":Landroid/util/SparseIntArray;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_17
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_26

    .line 816
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_4a

    .line 853
    :cond_25
    return-object v9

    .line 811
    :cond_26
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 812
    .local v0, "aInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    iget v11, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    iget v12, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->retryCnt:I

    invoke-virtual {v2, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 813
    iget-object v11, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "aInfo.retryCnt : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->retryCnt:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    goto :goto_17

    .line 819
    .end local v0    # "aInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    :cond_4a
    iget-object v10, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-virtual {v10, v1, p1}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->getMediaInfoInActivityList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v7

    .line 821
    .local v7, "mediaInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    if-eqz v7, :cond_25

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_25

    .line 824
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 825
    .local v4, "activityMediaMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;>;"
    iget-object v10, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mediaInfoList in buildActivityInfoUsingGeoCodingFailedList : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 826
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v3, "activityInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_ad

    .line 843
    invoke-direct {p0, v3, v4}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->updateGeoLocationInfoUsingList(Ljava/util/ArrayList;Landroid/util/SparseArray;)Z

    .line 846
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 848
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/ActivityContainer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_90
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 849
    .restart local v0    # "aInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    new-instance v5, Lcom/lge/cic/eden/clustering/manager/ActivityContainer;

    iget v10, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;

    invoke-direct {v5, v0, v10}, Lcom/lge/cic/eden/clustering/manager/ActivityContainer;-><init>(Lcom/lge/cic/eden/db/type/ActivityInfo;Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;)V

    .line 850
    .local v5, "container":Lcom/lge/cic/eden/clustering/manager/ActivityContainer;
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_90

    .line 828
    .end local v0    # "aInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    .end local v5    # "container":Lcom/lge/cic/eden/clustering/manager/ActivityContainer;
    .end local v9    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/ActivityContainer;>;"
    :cond_ad
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 829
    .local v6, "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    iget v11, v6, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;

    .line 830
    .local v8, "mediaList":Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;
    if-nez v8, :cond_df

    .line 831
    new-instance v8, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;

    .end local v8    # "mediaList":Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;
    invoke-direct {v8}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;-><init>()V

    .line 832
    .restart local v8    # "mediaList":Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;
    invoke-virtual {v8, v6}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->add(Lcom/lge/cic/eden/db/type/MediaInfo;)Z

    .line 833
    new-instance v0, Lcom/lge/cic/eden/db/type/ActivityInfo;

    invoke-direct {v0}, Lcom/lge/cic/eden/db/type/ActivityInfo;-><init>()V

    .line 834
    .restart local v0    # "aInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    iget v11, v6, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    iput v11, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    .line 835
    iget v11, v6, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    invoke-virtual {v2, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    iput v11, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->retryCnt:I

    .line 836
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    iget v11, v6, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    invoke-virtual {v4, v11, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7e

    .line 839
    .end local v0    # "aInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    :cond_df
    invoke-virtual {v8, v6}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->add(Lcom/lge/cic/eden/db/type/MediaInfo;)Z

    goto :goto_7e
.end method

.method public buildEventInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/clustering/types/ClusterInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/clustering/manager/EventContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    .local p1, "clusterInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/types/ClusterInfo;>;"
    .local p2, "activityEventMappingInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 471
    .local v6, "clusterInfoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/lge/cic/eden/clustering/types/ClusterInfo;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 474
    .local v4, "activityListMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_2b

    .line 479
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_18
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_37

    .line 497
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v8, "eventContainerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/EventContainer;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_24
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-lt v11, v12, :cond_69

    .line 511
    return-object v8

    .line 474
    .end local v8    # "eventContainerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/EventContainer;>;"
    .end local v11    # "i":I
    :cond_2b
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/cic/eden/clustering/types/ClusterInfo;

    .line 475
    .local v5, "clusterInfo":Lcom/lge/cic/eden/clustering/types/ClusterInfo;
    iget v13, v5, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterId:I

    invoke-virtual {v6, v13, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_e

    .line 479
    .end local v5    # "clusterInfo":Lcom/lge/cic/eden/clustering/types/ClusterInfo;
    :cond_37
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    .line 480
    .local v0, "activityEventMappingInfo":Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;
    iget v9, v0, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->eventId:I

    .line 481
    .local v9, "eventId":I
    iget v1, v0, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->activityId:I

    .line 482
    .local v1, "activityId":I
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;

    .line 484
    .local v3, "activityList":Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;
    if-nez v3, :cond_5d

    .line 485
    new-instance v3, Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;

    .end local v3    # "activityList":Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;
    invoke-direct {v3}, Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;-><init>()V

    .line 486
    .restart local v3    # "activityList":Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lge/cic/eden/clustering/types/ClusterInfo;

    iget-object v2, v12, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->activityInfo:Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 487
    .local v2, "activityInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    invoke-virtual {v3, v2}, Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;->add(Lcom/lge/cic/eden/db/type/ActivityInfo;)Z

    .line 488
    invoke-virtual {v4, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_18

    .line 490
    .end local v2    # "activityInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    :cond_5d
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lge/cic/eden/clustering/types/ClusterInfo;

    iget-object v2, v12, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->activityInfo:Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 491
    .restart local v2    # "activityInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    invoke-virtual {v3, v2}, Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;->add(Lcom/lge/cic/eden/db/type/ActivityInfo;)Z

    goto :goto_18

    .line 499
    .end local v0    # "activityEventMappingInfo":Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;
    .end local v1    # "activityId":I
    .end local v2    # "activityInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    .end local v3    # "activityList":Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;
    .end local v9    # "eventId":I
    .restart local v8    # "eventContainerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/EventContainer;>;"
    .restart local v11    # "i":I
    :cond_69
    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 500
    .local v7, "eid":I
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;

    .line 501
    .restart local v3    # "activityList":Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;
    const/4 v10, 0x0

    .line 503
    .local v10, "eventInfo":Lcom/lge/cic/eden/db/type/EventInfo;
    iget-boolean v12, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->isChinaFlag:Z

    if-eqz v12, :cond_87

    .line 504
    invoke-virtual {p0, v7, v3}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->makeEventInfoForChina(ILcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;)Lcom/lge/cic/eden/db/type/EventInfo;

    move-result-object v10

    .line 508
    :goto_7c
    new-instance v12, Lcom/lge/cic/eden/clustering/manager/EventContainer;

    invoke-direct {v12, v10, v3}, Lcom/lge/cic/eden/clustering/manager/EventContainer;-><init>(Lcom/lge/cic/eden/db/type/EventInfo;Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    add-int/lit8 v11, v11, 0x1

    goto :goto_24

    .line 506
    :cond_87
    invoke-virtual {p0, v7, v3}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->makeEventInfo(ILcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;)Lcom/lge/cic/eden/db/type/EventInfo;

    move-result-object v10

    goto :goto_7c
.end method

.method public decideEventVisibility(ILjava/util/Map;)I
    .registers 11
    .param p1, "eventId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 448
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    const/4 v0, 0x0

    .line 450
    .local v0, "cnt":I
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 451
    .local v1, "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_39

    .line 459
    iget-object v5, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "decideEventVisibility - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " media"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 461
    const/16 v5, 0xa

    if-lt v0, v5, :cond_54

    .line 462
    const/4 v5, 0x0

    .line 464
    :goto_38
    return v5

    .line 451
    :cond_39
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 452
    .local v2, "id":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    .line 454
    .local v4, "mappingInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    iget v5, v4, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->visibilityFlag:I

    if-nez v5, :cond_9

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 464
    .end local v2    # "id":J
    .end local v4    # "mappingInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    :cond_54
    const/16 v5, 0x63

    goto :goto_38
.end method

.method public getStartEndStoryTime()Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v10, 0xb

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1220
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1221
    .local v0, "current":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1222
    .local v4, "start":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1224
    .local v2, "end":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 1225
    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 1226
    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 1228
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1229
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1231
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_4a

    .line 1232
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5, v10, v7}, Ljava/util/Calendar;->set(III)V

    .line 1233
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-virtual {v2, v5, v10, v6}, Ljava/util/Calendar;->set(III)V

    .line 1239
    :goto_3e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1241
    .local v3, "returnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Calendar;>;"
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    return-object v3

    .line 1235
    .end local v3    # "returnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Calendar;>;"
    :cond_4a
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    .line 1236
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    goto :goto_3e
.end method

.method public makeActivityCluster(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/clustering/manager/ActivityContainer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "mediaInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    iget-object v3, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "makeActivityCluster()"

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->getEdenPropertyInfo()Lcom/lge/cic/eden/db/type/EdenPropertyInfo;

    move-result-object v0

    .line 138
    .local v0, "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    iget-object v3, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->ac:Lcom/lge/cic/eden/clustering/logic/ActivityClustering;

    iget v4, v0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->maxActivityId:I

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->setMaxActivityId(I)V

    .line 140
    iget-object v3, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mediaInfoList size : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->ac:Lcom/lge/cic/eden/clustering/logic/ActivityClustering;

    invoke-virtual {v3, p1}, Lcom/lge/cic/eden/clustering/logic/ActivityClustering;->makeCluster(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 143
    .local v2, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    iget-object v3, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "resultList size - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 145
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    invoke-static {v4, v5, v3}, Ljava/lang/Thread;->sleep(JI)V

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/ActivityContainer;>;"
    iget-boolean v3, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->isChinaFlag:Z

    if-eqz v3, :cond_74

    .line 149
    invoke-direct {p0, v2}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->buildActivityInfoForChina(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 155
    :goto_5b
    iget-object v3, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "activityInfo list size : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 156
    return-object v1

    .line 152
    :cond_74
    invoke-direct {p0, v2}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->buildActivityInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_5b
.end method

.method public makeEventCluster(Ljava/util/HashMap;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/clustering/manager/ActivityContainer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/clustering/manager/EventContainer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "publishInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;>;"
    .local p2, "activityContainerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/ActivityContainer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v23, v0

    const-string v26, "makeEventCluster()"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->getEdenPropertyInfo()Lcom/lge/cic/eden/db/type/EdenPropertyInfo;

    move-result-object v17

    .line 184
    .local v17, "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    const/16 v16, 0x0

    .line 186
    .local v16, "nextEventId":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->maxEventId:I

    move/from16 v23, v0

    const/16 v26, 0x1

    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_b7

    .line 187
    const/16 v16, 0x1

    .line 191
    :goto_25
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 192
    .local v4, "EVENTTHRESHOLD":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v23, v0

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "nextEventId: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->makeClusterInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    .line 195
    .local v9, "clusterInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/types/ClusterInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v23, v0

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "activityContainerList : "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->ec:Lcom/lge/cic/eden/clustering/logic/EventClustering;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/lge/cic/eden/clustering/logic/EventClustering;->makeCluster(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v22

    .line 198
    .local v22, "similarityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/types/SimilarityInfo;>;>;"
    if-eqz v22, :cond_9d

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v23, v0

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "similarityMap : "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 201
    :cond_9d
    if-eqz v22, :cond_a5

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v23

    if-gtz v23, :cond_c1

    .line 202
    :cond_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v23, v0

    const-string v26, "makeEventCluster() return false"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 203
    const/16 v19, 0x0

    .line 307
    :cond_b6
    return-object v19

    .line 189
    .end local v4    # "EVENTTHRESHOLD":D
    .end local v9    # "clusterInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/types/ClusterInfo;>;"
    .end local v22    # "similarityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/types/SimilarityInfo;>;>;"
    :cond_b7
    move-object/from16 v0, v17

    iget v0, v0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->maxEventId:I

    move/from16 v23, v0

    add-int/lit8 v16, v23, 0x1

    goto/16 :goto_25

    .line 206
    .restart local v4    # "EVENTTHRESHOLD":D
    .restart local v9    # "clusterInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/types/ClusterInfo;>;"
    .restart local v22    # "similarityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/types/SimilarityInfo;>;>;"
    :cond_c1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v11, "eventSetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v19, 0x0

    .line 209
    .local v19, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/EventContainer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v7, "activityEventMappingInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;>;"
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 211
    .local v6, "activityEventMap":Landroid/util/SparseIntArray;
    const/16 v23, -0x63

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_20c

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v23, v0

    const-string v26, "similarityMap containsKey -99"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 213
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/cic/eden/clustering/types/ClusterInfo;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterEntry:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_1fc

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/cic/eden/clustering/types/ClusterInfo;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterEntry:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/cic/eden/clustering/types/ClusterInfo;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterEntry:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/cic/eden/db/type/MediaInfo;

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    move-wide/from16 v28, v0

    sub-long v24, v26, v28

    .line 215
    .local v24, "timeGap":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v23, v0

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "timeGap : "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 217
    sget v23, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->EVENT_DECISION_TIMEBOUNDARY:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v23, v24, v26

    if-lez v23, :cond_197

    .line 218
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/cic/eden/clustering/types/ClusterInfo;

    move-object/from16 v0, v23

    iget v8, v0, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterId:I

    .line 220
    .local v8, "aid":I
    new-instance v23, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-direct {v0, v8, v1}, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;-><init>(II)V

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    const-wide/16 v26, 0x0

    const/16 v23, 0x1

    move-wide/from16 v0, v26

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V

    .line 223
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v7}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->buildEventInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v19

    .line 291
    .end local v8    # "aid":I
    .end local v24    # "timeGap":J
    :cond_197
    :goto_197
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_19b
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_b6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    .line 292
    .local v14, "mappingInfo":Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;
    const-wide/16 v26, 0x0

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Ljava/lang/Thread;->sleep(JI)V

    .line 294
    iget v0, v14, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->eventId:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;

    .line 296
    .local v18, "publishInfo":Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;
    if-nez v18, :cond_3fa

    .line 297
    new-instance v15, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;

    invoke-direct {v15}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;-><init>()V

    .line 298
    .local v15, "newPublishInfo":Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;
    iget-object v0, v15, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->data:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget v0, v14, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->eventId:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "  publishInfoMap - put: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v14, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->eventId:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    goto :goto_19b

    .line 226
    .end local v14    # "mappingInfo":Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;
    .end local v15    # "newPublishInfo":Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;
    .end local v18    # "publishInfo":Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;
    :cond_1fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v23, v0

    const-string v26, "ClusterEntry size is 0"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_197

    .line 229
    :cond_20c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v23, v0

    const-string v26, "similarityMap does not containsKey -99"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v23, v0

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "  size of clusterInfoList = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 232
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_23c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-lt v12, v0, :cond_257

    .line 287
    const-wide/16 v26, 0x0

    const/16 v23, 0x1

    move-wide/from16 v0, v26

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V

    .line 288
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v7}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->buildEventInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v19

    goto/16 :goto_197

    .line 233
    :cond_257
    const-wide/16 v26, 0x0

    const/16 v23, 0x1

    move-wide/from16 v0, v26

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v23, "  clusterId : "

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/cic/eden/clustering/types/ClusterInfo;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterId:I

    move/from16 v23, v0

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/cic/eden/clustering/types/ClusterInfo;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterId:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    .line 238
    .local v21, "similarityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/types/SimilarityInfo;>;"
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/cic/eden/clustering/types/ClusterInfo;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterId:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    if-eqz v21, :cond_2c9

    .line 241
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_2c3
    :goto_2c3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_36e

    .line 249
    :cond_2c9
    const/4 v10, -0x1

    .line 250
    .local v10, "eid":I
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/cic/eden/clustering/types/ClusterInfo;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterId:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    .line 251
    .local v13, "mapValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v23, v0

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "  activityEventMap : "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v23, v0

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "  mapValue - "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_31e
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_391

    .line 262
    :goto_324
    if-nez v13, :cond_3ac

    .line 263
    move/from16 v10, v16

    .line 264
    add-int/lit8 v16, v16, 0x1

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v23, v0

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "  new event has been made..."

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 272
    :goto_348
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_35d

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v23, v0

    const-string v26, "something wrong... eid is -1"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 276
    :cond_35d
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_361
    :goto_361
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_3d9

    .line 284
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 232
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_23c

    .line 241
    .end local v10    # "eid":I
    .end local v13    # "mapValue":I
    :cond_36e
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/lge/cic/eden/clustering/types/SimilarityInfo;

    .line 243
    .local v20, "sInfo":Lcom/lge/cic/eden/clustering/types/SimilarityInfo;
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/lge/cic/eden/clustering/types/SimilarityInfo;->similarity:D

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpg-double v26, v26, v28

    if-gez v26, :cond_2c3

    .line 244
    move-object/from16 v0, v20

    iget v0, v0, Lcom/lge/cic/eden/clustering/types/SimilarityInfo;->targetId:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2c3

    .line 253
    .end local v20    # "sInfo":Lcom/lge/cic/eden/clustering/types/SimilarityInfo;
    .restart local v10    # "eid":I
    .restart local v13    # "mapValue":I
    :cond_391
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 254
    .restart local v8    # "aid":I
    if-nez v13, :cond_3a8

    invoke-virtual {v6, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v23

    if-eqz v23, :cond_3a8

    .line 255
    invoke-virtual {v6, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    .line 256
    move v13, v10

    .line 258
    :cond_3a8
    if-eqz v13, :cond_31e

    goto/16 :goto_324

    .line 268
    .end local v8    # "aid":I
    :cond_3ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v23, v0

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "  mapValue - "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", eid - "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 269
    move v10, v13

    goto/16 :goto_348

    .line 276
    :cond_3d9
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 277
    .restart local v8    # "aid":I
    invoke-virtual {v6, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v23

    if-nez v23, :cond_361

    .line 279
    invoke-virtual {v6, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 280
    new-instance v23, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    move-object/from16 v0, v23

    invoke-direct {v0, v8, v10}, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;-><init>(II)V

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_361

    .line 303
    .end local v8    # "aid":I
    .end local v10    # "eid":I
    .end local v12    # "i":I
    .end local v13    # "mapValue":I
    .end local v21    # "similarityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/types/SimilarityInfo;>;"
    .restart local v14    # "mappingInfo":Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;
    .restart local v18    # "publishInfo":Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;
    :cond_3fa
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->data:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19b
.end method

.method protected makeEventInfo(ILcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;)Lcom/lge/cic/eden/db/type/EventInfo;
    .registers 22
    .param p1, "eventId"    # I
    .param p2, "activityList"    # Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;

    .prologue
    .line 515
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->calculateGeoData(Ljava/util/ArrayList;)Lcom/lge/cic/eden/db/type/GeoData;

    move-result-object v12

    .line 517
    .local v12, "geoData":Lcom/lge/cic/eden/db/type/GeoData;
    const-wide v6, 0x7fffffffffffffffL

    .line 518
    .local v6, "startTime":J
    const-wide/16 v8, 0x0

    .line 519
    .local v8, "endTime":J
    new-instance v10, Landroid/location/Location;

    const-string v3, "startLocation"

    invoke-direct {v10, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 520
    .local v10, "startLoc":Landroid/location/Location;
    const-wide v4, -0x3f70c80000000000L    # -999.0

    invoke-virtual {v10, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 521
    const-wide v4, -0x3f70c80000000000L    # -999.0

    invoke-virtual {v10, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 523
    new-instance v11, Landroid/location/Location;

    const-string v3, "endLocation"

    invoke-direct {v11, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 524
    .local v11, "endLoc":Landroid/location/Location;
    const-wide v4, -0x3f70c80000000000L    # -999.0

    invoke-virtual {v11, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 525
    const-wide v4, -0x3f70c80000000000L    # -999.0

    invoke-virtual {v11, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 527
    invoke-virtual/range {p2 .. p2}, Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_41
    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_f0

    .line 542
    invoke-virtual/range {p2 .. p2}, Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;->size()I

    move-result v3

    add-int/lit8 v17, v3, -0x1

    .local v17, "i":I
    :goto_4d
    if-gez v17, :cond_186

    .line 557
    new-instance v2, Lcom/lge/cic/eden/db/type/EventInfo;

    const/4 v4, -0x1

    const-string v5, ""

    const/16 v13, 0x63

    const/4 v14, -0x1

    const/4 v15, 0x1

    move/from16 v3, p1

    invoke-direct/range {v2 .. v15}, Lcom/lge/cic/eden/db/type/EventInfo;-><init>(IILjava/lang/String;JJLandroid/location/Location;Landroid/location/Location;Lcom/lge/cic/eden/db/type/GeoData;III)V

    .line 559
    .local v2, "eventInfo":Lcom/lge/cic/eden/db/type/EventInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->sEventTypeDecider:Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;

    invoke-virtual {v3, v2}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->decideType(Lcom/lge/cic/eden/db/type/EventInfo;)I

    move-result v3

    iput v3, v2, Lcom/lge/cic/eden/db/type/EventInfo;->eventType:I

    .line 561
    const/16 v3, 0x62

    iput v3, v2, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    .line 562
    const/4 v3, -0x1

    iput v3, v2, Lcom/lge/cic/eden/db/type/EventInfo;->eventState:I

    .line 565
    new-instance v18, Lcom/lge/cic/eden/namingrule/EventTitleMaker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->context:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/lge/cic/eden/namingrule/EventTitleMaker;-><init>(Landroid/content/Context;)V

    .line 566
    .local v18, "titleMaker":Lcom/lge/cic/eden/namingrule/EventTitleMaker;
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->makeEventTitleUsingToken(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    .line 568
    iget-object v3, v2, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    if-eqz v3, :cond_8d

    iget-object v3, v2, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_91

    .line 569
    :cond_8d
    const/16 v3, 0x63

    iput v3, v2, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    .line 571
    :cond_91
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "event id : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 572
    const-string v5, " type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/lge/cic/eden/db/type/EventInfo;->eventType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 573
    const-string v5, " visibility : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 574
    const-string v5, " activity count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 575
    const-string v5, " start time - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v14, v2, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    invoke-static {v14, v15}, Lcom/lge/cic/eden/utils/UTC2StringConverter;->toFullTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 576
    const-string v5, " end time - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v14, v2, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    invoke-static {v14, v15}, Lcom/lge/cic/eden/utils/UTC2StringConverter;->toFullTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 571
    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 578
    return-object v2

    .line 527
    .end local v2    # "eventInfo":Lcom/lge/cic/eden/db/type/EventInfo;
    .end local v17    # "i":I
    .end local v18    # "titleMaker":Lcom/lge/cic/eden/namingrule/EventTitleMaker;
    :cond_f0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 528
    .local v16, "activityInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    move-object/from16 v0, v16

    iget v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->visibility:I

    if-nez v4, :cond_108

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startTime:J

    cmp-long v4, v6, v4

    if-lez v4, :cond_108

    .line 529
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startTime:J

    .line 532
    :cond_108
    move-object/from16 v0, v16

    iget v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->visibility:I

    if-nez v4, :cond_41

    .line 533
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLatitude:D

    const-wide v14, -0x3fa9800000000000L    # -90.0

    cmpl-double v4, v4, v14

    if-ltz v4, :cond_41

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLatitude:D

    const-wide v14, 0x4056800000000000L    # 90.0

    cmpg-double v4, v4, v14

    if-gtz v4, :cond_41

    .line 534
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLongitude:D

    const-wide v14, -0x3f99800000000000L    # -180.0

    cmpl-double v4, v4, v14

    if-ltz v4, :cond_41

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLongitude:D

    const-wide v14, 0x4066800000000000L    # 180.0

    cmpg-double v4, v4, v14

    if-gtz v4, :cond_41

    .line 535
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLatitude:D

    const-wide v14, -0x3f70c80000000000L    # -999.0

    cmpl-double v4, v4, v14

    if-eqz v4, :cond_41

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLongitude:D

    const-wide v14, -0x3f70c80000000000L    # -999.0

    cmpl-double v4, v4, v14

    if-eqz v4, :cond_41

    .line 536
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    const-wide v14, -0x3f70c80000000000L    # -999.0

    cmpl-double v4, v4, v14

    if-nez v4, :cond_41

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const-wide v14, -0x3f70c80000000000L    # -999.0

    cmpl-double v4, v4, v14

    if-nez v4, :cond_41

    .line 537
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLatitude:D

    invoke-virtual {v10, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 538
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLongitude:D

    invoke-virtual {v10, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    goto/16 :goto_41

    .line 543
    .end local v16    # "activityInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    .restart local v17    # "i":I
    :cond_186
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 544
    .restart local v16    # "activityInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    move-object/from16 v0, v16

    iget v3, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->visibility:I

    if-nez v3, :cond_1a2

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endTime:J

    cmp-long v3, v8, v4

    if-gez v3, :cond_1a2

    .line 545
    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endTime:J

    .line 548
    :cond_1a2
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLatitude:D

    const-wide v14, -0x3fa9800000000000L    # -90.0

    cmpl-double v3, v4, v14

    if-ltz v3, :cond_218

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLatitude:D

    const-wide v14, 0x4056800000000000L    # 90.0

    cmpg-double v3, v4, v14

    if-gtz v3, :cond_218

    .line 549
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLongitude:D

    const-wide v14, -0x3f99800000000000L    # -180.0

    cmpl-double v3, v4, v14

    if-ltz v3, :cond_218

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLongitude:D

    const-wide v14, 0x4066800000000000L    # 180.0

    cmpg-double v3, v4, v14

    if-gtz v3, :cond_218

    .line 550
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLatitude:D

    const-wide v14, -0x3f70c80000000000L    # -999.0

    cmpl-double v3, v4, v14

    if-eqz v3, :cond_218

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLongitude:D

    const-wide v14, -0x3f70c80000000000L    # -999.0

    cmpl-double v3, v4, v14

    if-eqz v3, :cond_218

    .line 551
    invoke-virtual {v11}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    const-wide v14, -0x3f70c80000000000L    # -999.0

    cmpl-double v3, v4, v14

    if-nez v3, :cond_218

    invoke-virtual {v11}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const-wide v14, -0x3f70c80000000000L    # -999.0

    cmpl-double v3, v4, v14

    if-nez v3, :cond_218

    .line 552
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLatitude:D

    invoke-virtual {v11, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 553
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLongitude:D

    invoke-virtual {v11, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 542
    :cond_218
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_4d
.end method

.method protected makeEventInfoForChina(ILcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;)Lcom/lge/cic/eden/db/type/EventInfo;
    .registers 22
    .param p1, "eventId"    # I
    .param p2, "activityList"    # Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;

    .prologue
    .line 583
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "makeEventInfoForChina()"

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 584
    const-wide v6, 0x7fffffffffffffffL

    .line 585
    .local v6, "startTime":J
    const-wide/16 v8, 0x0

    .line 586
    .local v8, "endTime":J
    new-instance v10, Landroid/location/Location;

    const-string v3, "startLocation"

    invoke-direct {v10, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 587
    .local v10, "startLoc":Landroid/location/Location;
    const-wide v4, -0x3f70c80000000000L    # -999.0

    invoke-virtual {v10, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 588
    const-wide v4, -0x3f70c80000000000L    # -999.0

    invoke-virtual {v10, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 590
    new-instance v11, Landroid/location/Location;

    const-string v3, "endLocation"

    invoke-direct {v11, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 591
    .local v11, "endLoc":Landroid/location/Location;
    const-wide v4, -0x3f70c80000000000L    # -999.0

    invoke-virtual {v11, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 592
    const-wide v4, -0x3f70c80000000000L    # -999.0

    invoke-virtual {v11, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 594
    invoke-virtual/range {p2 .. p2}, Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_42
    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_f2

    .line 608
    invoke-virtual/range {p2 .. p2}, Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;->size()I

    move-result v3

    add-int/lit8 v17, v3, -0x1

    .local v17, "i":I
    :goto_4e
    if-gez v17, :cond_17c

    .line 623
    new-instance v2, Lcom/lge/cic/eden/db/type/EventInfo;

    const/4 v4, -0x1

    const-string v5, ""

    const/4 v12, 0x0

    const/16 v13, 0x63

    const/4 v14, -0x1

    const/4 v15, 0x2

    move/from16 v3, p1

    invoke-direct/range {v2 .. v15}, Lcom/lge/cic/eden/db/type/EventInfo;-><init>(IILjava/lang/String;JJLandroid/location/Location;Landroid/location/Location;Lcom/lge/cic/eden/db/type/GeoData;III)V

    .line 625
    .local v2, "eventInfo":Lcom/lge/cic/eden/db/type/EventInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->sEventTypeDecider:Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;

    invoke-virtual {v3, v2}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->decideType(Lcom/lge/cic/eden/db/type/EventInfo;)I

    move-result v3

    iput v3, v2, Lcom/lge/cic/eden/db/type/EventInfo;->eventType:I

    .line 627
    const/16 v3, 0x62

    iput v3, v2, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    .line 628
    const/4 v3, -0x1

    iput v3, v2, Lcom/lge/cic/eden/db/type/EventInfo;->eventState:I

    .line 631
    new-instance v18, Lcom/lge/cic/eden/namingrule/EventTitleMakerForChina;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->context:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/lge/cic/eden/namingrule/EventTitleMakerForChina;-><init>(Landroid/content/Context;)V

    .line 632
    .local v18, "titleMaker":Lcom/lge/cic/eden/namingrule/EventTitleMakerForChina;
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/lge/cic/eden/namingrule/EventTitleMakerForChina;->makeEventTitle(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    .line 634
    iget-object v3, v2, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    if-eqz v3, :cond_8f

    iget-object v3, v2, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_93

    .line 635
    :cond_8f
    const/16 v3, 0x63

    iput v3, v2, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    .line 637
    :cond_93
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "event id : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 638
    const-string v5, " type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/lge/cic/eden/db/type/EventInfo;->eventType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 639
    const-string v5, " visibility : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 640
    const-string v5, " activity count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 641
    const-string v5, " start time - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v12, v2, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    invoke-static {v12, v13}, Lcom/lge/cic/eden/utils/UTC2StringConverter;->toFullTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 642
    const-string v5, " end time - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v12, v2, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    invoke-static {v12, v13}, Lcom/lge/cic/eden/utils/UTC2StringConverter;->toFullTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 637
    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 644
    return-object v2

    .line 594
    .end local v2    # "eventInfo":Lcom/lge/cic/eden/db/type/EventInfo;
    .end local v17    # "i":I
    .end local v18    # "titleMaker":Lcom/lge/cic/eden/namingrule/EventTitleMakerForChina;
    :cond_f2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 595
    .local v16, "activityInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startTime:J

    cmp-long v4, v6, v4

    if-lez v4, :cond_104

    .line 596
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startTime:J

    .line 599
    :cond_104
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLatitude:D

    const-wide v12, -0x3f70c80000000000L    # -999.0

    cmpl-double v4, v4, v12

    if-eqz v4, :cond_42

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLongitude:D

    const-wide v12, -0x3f70c80000000000L    # -999.0

    cmpl-double v4, v4, v12

    if-eqz v4, :cond_42

    .line 600
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLatitude:D

    const-wide v12, -0x3fa9800000000000L    # -90.0

    cmpl-double v4, v4, v12

    if-ltz v4, :cond_42

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLatitude:D

    const-wide v12, 0x4056800000000000L    # 90.0

    cmpg-double v4, v4, v12

    if-gtz v4, :cond_42

    .line 601
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLongitude:D

    const-wide v12, -0x3f99800000000000L    # -180.0

    cmpl-double v4, v4, v12

    if-ltz v4, :cond_42

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLongitude:D

    const-wide v12, 0x4066800000000000L    # 180.0

    cmpg-double v4, v4, v12

    if-gtz v4, :cond_42

    .line 602
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    const-wide v12, -0x3f70c80000000000L    # -999.0

    cmpl-double v4, v4, v12

    if-nez v4, :cond_42

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const-wide v12, -0x3f70c80000000000L    # -999.0

    cmpl-double v4, v4, v12

    if-nez v4, :cond_42

    .line 603
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLatitude:D

    invoke-virtual {v10, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 604
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLongitude:D

    invoke-virtual {v10, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    goto/16 :goto_42

    .line 609
    .end local v16    # "activityInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    .restart local v17    # "i":I
    :cond_17c
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 610
    .restart local v16    # "activityInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endTime:J

    cmp-long v3, v8, v4

    if-gez v3, :cond_192

    .line 611
    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endTime:J

    .line 614
    :cond_192
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLatitude:D

    const-wide v12, -0x3f70c80000000000L    # -999.0

    cmpl-double v3, v4, v12

    if-eqz v3, :cond_208

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLongitude:D

    const-wide v12, -0x3f70c80000000000L    # -999.0

    cmpl-double v3, v4, v12

    if-eqz v3, :cond_208

    .line 615
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLatitude:D

    const-wide v12, -0x3fa9800000000000L    # -90.0

    cmpl-double v3, v4, v12

    if-ltz v3, :cond_208

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLatitude:D

    const-wide v12, 0x4056800000000000L    # 90.0

    cmpg-double v3, v4, v12

    if-gtz v3, :cond_208

    .line 616
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLongitude:D

    const-wide v12, -0x3f99800000000000L    # -180.0

    cmpl-double v3, v4, v12

    if-ltz v3, :cond_208

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLongitude:D

    const-wide v12, 0x4066800000000000L    # 180.0

    cmpg-double v3, v4, v12

    if-gtz v3, :cond_208

    .line 617
    invoke-virtual {v11}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    const-wide v12, -0x3f70c80000000000L    # -999.0

    cmpl-double v3, v4, v12

    if-nez v3, :cond_208

    invoke-virtual {v11}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const-wide v12, -0x3f70c80000000000L    # -999.0

    cmpl-double v3, v4, v12

    if-nez v3, :cond_208

    .line 618
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLatitude:D

    invoke-virtual {v11, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 619
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLongitude:D

    invoke-virtual {v11, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 608
    :cond_208
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_4e
.end method

.method public makeStoryCluster(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/clustering/manager/EventContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1140
    .local p1, "publishInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    .local v23, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/EventContainer;>;"
    invoke-static {}, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->getEdenPropertyInfo()Lcom/lge/cic/eden/db/type/EdenPropertyInfo;

    move-result-object v22

    .line 1148
    .local v22, "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    const/16 v21, 0x0

    .line 1150
    .local v21, "nextEventId":I
    move-object/from16 v0, v22

    iget v2, v0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->maxEventId:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_3e

    .line 1151
    const/16 v21, 0x1

    .line 1156
    :goto_14
    const/4 v15, 0x0

    .line 1157
    .local v15, "lastMonth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Calendar;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->getStartEndStoryTime()Ljava/util/ArrayList;

    move-result-object v15

    .line 1158
    if-nez v15, :cond_20

    .line 1159
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "lastMonth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Calendar;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1163
    .restart local v15    # "lastMonth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Calendar;>;"
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-virtual {v2, v15}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->getLastMonthEventIdsInEventInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v16

    .line 1164
    .local v16, "lastMonthEventIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_45

    .line 1165
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "lastMonthEventIDs null!!!!"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 1216
    :cond_3d
    :goto_3d
    return-object v23

    .line 1153
    .end local v15    # "lastMonth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Calendar;>;"
    .end local v16    # "lastMonthEventIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3e
    move-object/from16 v0, v22

    iget v2, v0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->maxEventId:I

    add-int/lit8 v21, v2, 0x1

    goto :goto_14

    .line 1178
    .restart local v15    # "lastMonth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Calendar;>;"
    .restart local v16    # "lastMonthEventIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v3, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v19

    .line 1180
    .local v19, "mappingInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;>;"
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 1182
    .local v13, "eventIdMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_c8

    .line 1186
    new-instance v20, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;

    invoke-direct/range {v20 .. v20}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;-><init>()V

    .line 1188
    .local v20, "newPublishInfo":Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;
    new-instance v10, Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;

    invoke-direct {v10}, Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;-><init>()V

    .line 1190
    .local v10, "activityList":Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_74
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_db

    .line 1204
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3d

    .line 1205
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    new-instance v14, Lcom/lge/cic/eden/db/type/EventInfo;

    invoke-direct {v14}, Lcom/lge/cic/eden/db/type/EventInfo;-><init>()V

    .line 1207
    .local v14, "eventInfo":Lcom/lge/cic/eden/db/type/EventInfo;
    move/from16 v0, v21

    iput v0, v14, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    .line 1208
    const/16 v2, 0xd

    iput v2, v14, Lcom/lge/cic/eden/db/type/EventInfo;->eventType:I

    .line 1209
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v14, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    .line 1210
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v14, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    .line 1211
    invoke-static {v14}, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->makeEventTitle(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    .line 1213
    new-instance v2, Lcom/lge/cic/eden/clustering/manager/EventContainer;

    invoke-direct {v2, v14, v10}, Lcom/lge/cic/eden/clustering/manager/EventContainer;-><init>(Lcom/lge/cic/eden/db/type/EventInfo;Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3d

    .line 1182
    .end local v10    # "activityList":Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;
    .end local v14    # "eventInfo":Lcom/lge/cic/eden/db/type/EventInfo;
    .end local v20    # "newPublishInfo":Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;
    :cond_c8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1183
    .local v11, "eid":I
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_60

    .line 1190
    .end local v11    # "eid":I
    .restart local v10    # "activityList":Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;
    .restart local v20    # "newPublishInfo":Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;
    :cond_db
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    .line 1191
    .local v18, "mappingInfo":Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->eventId:I

    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_74

    .line 1192
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1193
    .local v12, "eventEntry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->data:Ljava/util/ArrayList;

    new-instance v3, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    move-object/from16 v0, v18

    iget v4, v0, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->activityId:I

    move/from16 v0, v21

    invoke-direct {v3, v4, v0}, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mappingInfo : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget v4, v0, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->activityId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->activityId:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->getMediaInfoInActivity(IZ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v3, Lcom/lge/cic/eden/db/type/ActivityInfo;

    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ACTIVITY_ID = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget v7, v0, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->activityId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;->addAll(Ljava/util/Collection;)Z

    .line 1198
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_169
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 1199
    .local v17, "mInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->entry:Ljava/util/Map;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    new-instance v3, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    move-object/from16 v0, v17

    iget v7, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    move-object/from16 v0, v18

    iget v8, v0, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->activityId:I

    move-object/from16 v0, v17

    iget v9, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->storageId:I

    move/from16 v6, v21

    invoke-direct/range {v3 .. v9}, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;-><init>(JIIII)V

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_169
.end method

.method public publish(Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;I)V
    .registers 34
    .param p1, "publishInfo"    # Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;
    .param p2, "visibilityFlag"    # I

    .prologue
    .line 311
    const/16 v16, -0x1

    .line 313
    .local v16, "eventId":I
    :try_start_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->data:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    iget v0, v2, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->eventId:I

    move/from16 v16, v0
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_11} :catch_6e

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "publish() event: "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->data:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    iget v2, v2, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->eventId:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v3, Lcom/lge/cic/eden/db/type/EventInfo;

    invoke-static {}, Lcom/lge/cic/eden/db/table/EventInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v4

    .line 321
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "EVENT_ID"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "EVENT_TITLE"

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "EVENT_ID = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 320
    invoke-virtual/range {v2 .. v7}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 323
    .local v15, "eInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    if-eqz v15, :cond_6d

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_79

    .line 444
    .end local v15    # "eInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    :cond_6d
    :goto_6d
    return-void

    .line 314
    :catch_6e
    move-exception v13

    .line 315
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "publishInfo\'s data is empty"

    invoke-virtual {v2, v3, v13}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_6d

    .line 327
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v15    # "eInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    :cond_79
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->isChinaFlag:Z

    if-nez v2, :cond_c0

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->getGeoCodingFailedActivityListUsingMappingInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    .line 330
    .local v11, "aInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    if-eqz v11, :cond_c0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c0

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Event "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has GeoCoding failed Activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    new-instance v3, Lcom/lge/cic/eden/db/type/EventInfo;

    move/from16 v0, v16

    invoke-direct {v3, v0}, Lcom/lge/cic/eden/db/type/EventInfo;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->delete(Lcom/lge/cic/eden/db/type/ColumnInfo;)I

    goto :goto_6d

    .line 337
    .end local v11    # "aInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    :cond_c0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->bulkInsert(Ljava/util/ArrayList;)I

    .line 339
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/cic/eden/db/type/EventInfo;

    .line 341
    .local v14, "eInfo":Lcom/lge/cic/eden/db/type/EventInfo;
    iget-object v2, v14, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    if-eqz v2, :cond_de

    iget-object v2, v14, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_31c

    .line 342
    :cond_de
    const/16 v2, 0x63

    iput v2, v14, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    .line 347
    :goto_e2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "E_VISIBILITY"

    aput-object v4, v2, v3

    invoke-virtual {v14, v2}, Lcom/lge/cic/eden/db/type/EventInfo;->save([Ljava/lang/String;)Z

    .line 349
    iget v2, v14, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    const/16 v3, 0x63

    if-ne v2, v3, :cond_105

    .line 350
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->entry:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 351
    .local v21, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    :goto_ff
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_322

    .line 357
    .end local v21    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    :cond_105
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 359
    .local v26, "mediaInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_112
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_330

    .line 370
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->entry:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 371
    .restart local v21    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v24, "mappingInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    :goto_129
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_376

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->bulkInsert(Ljava/util/ArrayList;)I

    .line 382
    new-instance v28, Landroid/util/SparseIntArray;

    invoke-direct/range {v28 .. v28}, Landroid/util/SparseIntArray;-><init>()V

    .line 383
    .local v28, "visibleActivity":Landroid/util/SparseIntArray;
    new-instance v29, Landroid/util/SparseIntArray;

    invoke-direct/range {v29 .. v29}, Landroid/util/SparseIntArray;-><init>()V

    .line 385
    .local v29, "visiblityCntList":Landroid/util/SparseIntArray;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 386
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 387
    const/16 v2, 0x63

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 388
    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 389
    const/4 v2, 0x4

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 390
    const/16 v2, 0x62

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 391
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 393
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_179
    :goto_179
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_39d

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VISIBLE : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 400
    const-string v4, "/ GONE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x63

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 401
    const-string v4, "/ JUNKPHOTO : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 402
    const-string v4, "/ DUPLICATED : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 404
    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1ea

    .line 405
    const/16 v2, 0x63

    iput v2, v14, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    .line 406
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "E_VISIBILITY"

    aput-object v4, v2, v3

    invoke-virtual {v14, v2}, Lcom/lge/cic/eden/db/type/EventInfo;->save([Ljava/lang/String;)Z

    .line 409
    :cond_1ea
    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_2c1

    .line 410
    new-instance v30, Ljava/lang/StringBuilder;

    const-string v2, "ACTIVITY_ID IN ("

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 411
    .local v30, "whereQuery":Ljava/lang/StringBuilder;
    const/16 v20, 0x0

    .local v20, "idx":I
    :goto_1fb
    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    move/from16 v0, v20

    if-lt v0, v2, :cond_3ca

    .line 414
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 415
    const-string v2, ")"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v3, Lcom/lge/cic/eden/db/type/ActivityInfo;

    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v4

    .line 418
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "A_START_TIME"

    aput-object v7, v5, v6

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "A_START_TIME ASC"

    const/4 v9, 0x0

    const-string v10, "1"

    .line 417
    invoke-virtual/range {v2 .. v10}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 420
    .local v19, "eventInfoListForStartTime":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    if-eqz v19, :cond_27d

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_27d

    .line 421
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/cic/eden/db/type/ActivityInfo;

    iget-wide v2, v2, Lcom/lge/cic/eden/db/type/ActivityInfo;->startTime:J

    iput-wide v2, v14, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    .line 422
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "E_START_TIME"

    aput-object v4, v2, v3

    invoke-virtual {v14, v2}, Lcom/lge/cic/eden/db/type/EventInfo;->save([Ljava/lang/String;)Z

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Eid : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v14, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / startTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v14, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 426
    :cond_27d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v3, Lcom/lge/cic/eden/db/type/ActivityInfo;

    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v4

    .line 427
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "A_END_TIME"

    aput-object v7, v5, v6

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "A_END_TIME DESC"

    const/4 v9, 0x0

    const-string v10, "1"

    .line 426
    invoke-virtual/range {v2 .. v10}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 429
    .local v18, "eventInfoListForEndTime":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    if-eqz v18, :cond_2c1

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2c1

    .line 430
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/cic/eden/db/type/ActivityInfo;

    iget-wide v2, v2, Lcom/lge/cic/eden/db/type/ActivityInfo;->endTime:J

    iput-wide v2, v14, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    .line 431
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "E_END_TIME"

    aput-object v4, v2, v3

    invoke-virtual {v14, v2}, Lcom/lge/cic/eden/db/type/EventInfo;->save([Ljava/lang/String;)Z

    .line 435
    .end local v18    # "eventInfoListForEndTime":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    .end local v19    # "eventInfoListForStartTime":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    .end local v20    # "idx":I
    .end local v30    # "whereQuery":Ljava/lang/StringBuilder;
    :cond_2c1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v3, Lcom/lge/cic/eden/db/type/EventInfo;

    invoke-static {}, Lcom/lge/cic/eden/db/table/EventInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "EVENT_ID"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "EVENT_ID DESC"

    const/4 v9, 0x0

    const-string v10, "1"

    invoke-virtual/range {v2 .. v10}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 436
    .local v17, "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    if-eqz v17, :cond_6d

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6d

    .line 437
    invoke-static {}, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->getEdenPropertyInfo()Lcom/lge/cic/eden/db/type/EdenPropertyInfo;

    move-result-object v27

    .line 438
    .local v27, "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/cic/eden/db/type/EventInfo;

    iget v2, v2, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    move-object/from16 v0, v27

    iput v2, v0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->maxEventId:I

    .line 439
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "MAX_EVENT_ID"

    aput-object v5, v3, v4

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v3}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->update(Lcom/lge/cic/eden/db/type/ColumnInfo;[Ljava/lang/String;)I

    move-result v12

    .line 440
    .local v12, "affectedRows":I
    if-nez v12, :cond_6d

    .line 441
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->insert(Lcom/lge/cic/eden/db/type/ColumnInfo;)Landroid/net/Uri;

    goto/16 :goto_6d

    .line 344
    .end local v12    # "affectedRows":I
    .end local v17    # "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    .end local v21    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    .end local v24    # "mappingInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    .end local v26    # "mediaInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .end local v27    # "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    .end local v28    # "visibleActivity":Landroid/util/SparseIntArray;
    .end local v29    # "visiblityCntList":Landroid/util/SparseIntArray;
    :cond_31c
    move/from16 v0, p2

    iput v0, v14, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    goto/16 :goto_e2

    .line 352
    .restart local v21    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    :cond_322
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    .line 353
    .local v23, "mappingInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    const/16 v2, 0x63

    move-object/from16 v0, v23

    iput v2, v0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->visibilityFlag:I

    goto/16 :goto_ff

    .line 359
    .end local v21    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    .end local v23    # "mappingInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    .restart local v26    # "mediaInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :cond_330
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    .line 360
    .local v23, "mappingInfo":Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    move-object/from16 v0, v23

    iget v4, v0, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->activityId:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 361
    const-string v9, "MEDIA_ID"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 362
    const-string v9, "REPRESENTATIVE_ID"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 363
    const-string v9, "VISIBILITY_TYPE"

    aput-object v9, v7, v8

    .line 360
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->getMediaInfoInActivity(IIZ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v25

    .line 365
    .local v25, "mediaInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_35a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_112

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 366
    .local v22, "mInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35a

    .line 374
    .end local v22    # "mInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    .end local v23    # "mappingInfo":Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;
    .end local v25    # "mediaInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .restart local v21    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    .restart local v24    # "mappingInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    :cond_376
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    .line 375
    .local v23, "mappingInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    move-object/from16 v0, v23

    iget-wide v2, v0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->mediaId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 376
    .restart local v22    # "mInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    move-object/from16 v0, v22

    iget v2, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    move-object/from16 v0, v23

    iput v2, v0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->visibilityFlag:I

    .line 377
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_129

    .line 393
    .end local v22    # "mInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    .end local v23    # "mappingInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    .restart local v28    # "visibleActivity":Landroid/util/SparseIntArray;
    .restart local v29    # "visiblityCntList":Landroid/util/SparseIntArray;
    :cond_39d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    .line 394
    .restart local v23    # "mappingInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    move-object/from16 v0, v23

    iget v3, v0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->visibilityFlag:I

    move-object/from16 v0, v23

    iget v4, v0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->visibilityFlag:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 395
    move-object/from16 v0, v23

    iget v3, v0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->visibilityFlag:I

    if-nez v3, :cond_179

    .line 396
    move-object/from16 v0, v23

    iget v3, v0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->activityId:I

    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_179

    .line 412
    .end local v23    # "mappingInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    .restart local v20    # "idx":I
    .restart local v30    # "whereQuery":Ljava/lang/StringBuilder;
    :cond_3ca
    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1fb
.end method

.method public updateClusteringManager()V
    .registers 6

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "updateClusteringManager()"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->homeAddress:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->locManager:Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;

    const-string v1, "HOME"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->getLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->homeLoc:Landroid/location/Location;

    .line 126
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->homeLoc:Landroid/location/Location;

    if-eqz v0, :cond_20

    .line 127
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->locManager:Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;

    invoke-virtual {v0}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->getCountryName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->homeAddress:Ljava/lang/String;

    .line 130
    :cond_20
    new-instance v0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;

    iget-object v1, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->homeLoc:Landroid/location/Location;

    iget-object v2, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->homeAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->locManager:Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;

    const-string v4, "HOME"

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->getGeoData(Ljava/lang/String;)Lcom/lge/cic/eden/db/type/GeoData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;-><init>(Landroid/location/Location;Ljava/lang/String;Lcom/lge/cic/eden/db/type/GeoData;)V

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->sEventTypeDecider:Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;

    .line 131
    return-void
.end method
