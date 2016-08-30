.class public Lcom/lge/cic/eden/generator/EventPublishManager;
.super Ljava/lang/Object;
.source "EventPublishManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/eden/generator/EventPublishManager$PublishParams;,
        Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;
    }
.end annotation


# instance fields
.field private final MSG_PUBLISH:I

.field private final MSG_QUIT:I

.field private dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

.field private destroyFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private eventClusteringManager:Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;

.field private futurePublishCnt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private futurePublishList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private interestPointDetector:Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;

.field private logger:Lcom/lge/cic/eden/utils/Logger;

.field private msgHandler:Landroid/os/Handler;

.field private publishInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;",
            ">;"
        }
    .end annotation
.end field

.field private publisher:Ljava/lang/Thread;

.field private remainCnt:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventClusteringManager"    # Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-class v0, Lcom/lge/cic/eden/generator/EventPublishManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 32
    iput-object v1, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->interestPointDetector:Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;

    .line 35
    iput v2, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->MSG_PUBLISH:I

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->MSG_QUIT:I

    .line 50
    iput-object v1, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->futurePublishList:Ljava/util/HashMap;

    .line 51
    iput-object v1, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->futurePublishCnt:Ljava/util/HashMap;

    .line 52
    iput-object v1, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->publishInfoMap:Ljava/util/HashMap;

    .line 128
    iput-object v1, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->msgHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/cic/eden/generator/EventPublishManager$1;

    invoke-direct {v1, p0}, Lcom/lge/cic/eden/generator/EventPublishManager$1;-><init>(Lcom/lge/cic/eden/generator/EventPublishManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->publisher:Ljava/lang/Thread;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->futurePublishList:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->futurePublishCnt:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->publishInfoMap:Ljava/util/HashMap;

    .line 59
    new-instance v0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;-><init>(Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V

    iput-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    .line 60
    iput-object p2, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->eventClusteringManager:Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;

    .line 63
    sget-boolean v0, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->USE_SMART_THUMBNAIL:Z

    if-eqz v0, :cond_5e

    .line 64
    new-instance v0, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;

    invoke-direct {v0}, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->interestPointDetector:Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;

    .line 65
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->interestPointDetector:Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;

    invoke-virtual {v0}, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->create()V

    .line 69
    :cond_5e
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->destroyFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->destroyFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->remainCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    invoke-virtual {p0}, Lcom/lge/cic/eden/generator/EventPublishManager;->clear()V

    .line 75
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->publisher:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 76
    return-void
.end method

.method static synthetic access$0(Lcom/lge/cic/eden/generator/EventPublishManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->destroyFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/cic/eden/generator/EventPublishManager;Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;Lcom/lge/cic/eden/db/type/MediaInfo;Ljava/lang/Integer;)Z
    .registers 5

    .prologue
    .line 207
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/cic/eden/generator/EventPublishManager;->publishLocked(Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;Lcom/lge/cic/eden/db/type/MediaInfo;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/lge/cic/eden/generator/EventPublishManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->remainCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/cic/eden/generator/EventPublishManager;)Lcom/lge/cic/eden/utils/Logger;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/cic/eden/generator/EventPublishManager;Landroid/os/Handler;)V
    .registers 2

    .prologue
    .line 128
    iput-object p1, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->msgHandler:Landroid/os/Handler;

    return-void
.end method

.method private declared-synchronized publishLocked(Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;Lcom/lge/cic/eden/db/type/MediaInfo;Ljava/lang/Integer;)Z
    .registers 25
    .param p1, "type"    # Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;
    .param p2, "mediaInfo"    # Lcom/lge/cic/eden/db/type/MediaInfo;
    .param p3, "eventId"    # Ljava/lang/Integer;

    .prologue
    .line 209
    monitor-enter p0

    const/4 v15, 0x0

    .line 211
    .local v15, "publishInfo":Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;
    :try_start_2
    sget-object v3, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;->IMAGE_ANALYSIS:Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager;->futurePublishList:Ljava/util/HashMap;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 p3, v0

    .line 215
    if-eqz p3, :cond_ab

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager;->futurePublishCnt:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 218
    .local v2, "count":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager;->futurePublishCnt:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager;->publishInfoMap:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;

    .line 222
    .local v13, "pInfo":Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;
    if-nez v13, :cond_5c

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "PublishInfo is null."

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_2 .. :try_end_59} :catchall_196

    .line 224
    const/4 v3, 0x0

    .line 294
    .end local v2    # "count":Ljava/lang/Integer;
    .end local v13    # "pInfo":Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;
    :goto_5a
    monitor-exit p0

    return v3

    .line 226
    .restart local v2    # "count":Ljava/lang/Integer;
    .restart local v13    # "pInfo":Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;
    :cond_5c
    :try_start_5c
    iget-object v3, v13, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->entry:Ljava/util/Map;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    .line 227
    .local v10, "mInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    if-nez v10, :cond_79

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "EventMediaMappingInfo is null."

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 229
    const/4 v3, 0x0

    goto :goto_5a

    .line 231
    :cond_79
    move-object/from16 v0, p2

    iget v3, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    iput v3, v10, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->visibilityFlag:I

    .line 234
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_ab

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  count is 0 at eventId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager;->publishInfoMap:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;

    move-object v15, v0

    .line 276
    .end local v2    # "count":Ljava/lang/Integer;
    .end local v10    # "mInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    .end local v13    # "pInfo":Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;
    :cond_ab
    :goto_ab
    if-eqz v15, :cond_203

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager;->eventClusteringManager:Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v15, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->entry:Ljava/util/Map;

    invoke-virtual {v3, v4, v5}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->decideEventVisibility(ILjava/util/Map;)I

    move-result v16

    .line 280
    .local v16, "visibilityFlag":I
    sget-boolean v3, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->USE_SMART_THUMBNAIL:Z

    if-eqz v3, :cond_ce

    .line 281
    if-nez v16, :cond_ce

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager;->interestPointDetector:Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;

    if-eqz v3, :cond_1f8

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager;->interestPointDetector:Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;

    invoke-virtual {v3, v15}, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->detect(Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;)V

    .line 291
    :cond_ce
    :goto_ce
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager;->eventClusteringManager:Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->publish(Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;I)V

    .line 292
    const/4 v3, 0x1

    goto :goto_5a

    .line 240
    .end local v16    # "visibilityFlag":I
    :cond_d9
    sget-object v3, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;->EVENT_CLUSTERING:Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c6

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager;->publishInfoMap:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;

    .line 243
    .restart local v13    # "pInfo":Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;
    const/4 v14, 0x0

    .line 244
    .local v14, "publishCnt":I
    iget-object v3, v13, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_f6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_116

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "publishCnt : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 262
    if-nez v14, :cond_199

    .line 263
    move-object v15, v13

    .line 265
    goto :goto_ab

    .line 244
    :cond_116
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    .line 245
    .local v11, "mappingInfo":Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    iget v4, v11, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->activityId:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 246
    const-string v9, "MEDIA_ID"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 247
    const-string v9, "ACTIVITY_ID"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 248
    const-string v9, "PHOTO_STATE"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    .line 249
    const-string v9, "VISIBILITY_TYPE"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    .line 250
    const-string v9, "STORAGE_ID"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    .line 251
    const-string v9, "MEDIA_TYPE"

    aput-object v9, v7, v8

    .line 245
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->getMediaInfoInActivity(IIZ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 253
    .local v12, "mediaInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_14d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 254
    .local v10, "mInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    iget v3, v10, Lcom/lge/cic/eden/db/type/MediaInfo;->photoState:I

    if-gez v3, :cond_173

    iget v3, v10, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_173

    .line 255
    add-int/lit8 v14, v14, 0x1

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager;->futurePublishList:Ljava/util/HashMap;

    iget-wide v4, v10, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_173
    iget-object v0, v13, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->entry:Ljava/util/Map;

    move-object/from16 v19, v0

    iget-wide v4, v10, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    new-instance v3, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    iget-wide v4, v10, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, v10, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    iget v8, v10, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    iget v9, v10, Lcom/lge/cic/eden/db/type/MediaInfo;->storageId:I

    invoke-direct/range {v3 .. v9}, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;-><init>(JIIII)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_195
    .catchall {:try_start_5c .. :try_end_195} :catchall_196

    goto :goto_14d

    .line 209
    .end local v10    # "mInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    .end local v11    # "mappingInfo":Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;
    .end local v12    # "mediaInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .end local v13    # "pInfo":Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;
    .end local v14    # "publishCnt":I
    :catchall_196
    move-exception v3

    monitor-exit p0

    throw v3

    .line 266
    .restart local v13    # "pInfo":Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;
    .restart local v14    # "publishCnt":I
    :cond_199
    :try_start_199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  event("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is will be wait until image processing is finished"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager;->futurePublishCnt:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_ab

    .line 270
    .end local v13    # "pInfo":Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;
    .end local v14    # "publishCnt":I
    :cond_1c6
    sget-object v3, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;->STORY_CLUSTERING:Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  publishLocked() - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager;->publishInfoMap:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;

    move-object v15, v0

    goto/16 :goto_ab

    .line 285
    .restart local v16    # "visibilityFlag":I
    :cond_1f8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "InterestPointDetector is null."

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V
    :try_end_201
    .catchall {:try_start_199 .. :try_end_201} :catchall_196

    goto/16 :goto_ce

    .line 294
    .end local v16    # "visibilityFlag":I
    :cond_203
    const/4 v3, 0x0

    goto/16 :goto_5a
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 3

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->futurePublishList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 102
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->futurePublishCnt:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 103
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->publishInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 105
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->remainCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 106
    monitor-exit p0

    return-void

    .line 101
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroy()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 79
    iget-object v1, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "destory()"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->destroyFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 82
    iget-object v1, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->msgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2d

    .line 83
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 84
    .local v0, "msg":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 85
    iget-object v1, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1c
    sget-boolean v1, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->USE_SMART_THUMBNAIL:Z

    if-eqz v1, :cond_2c

    .line 92
    iget-object v1, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->interestPointDetector:Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;

    if-eqz v1, :cond_2c

    .line 93
    iget-object v1, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->interestPointDetector:Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;

    invoke-virtual {v1}, Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;->destroy()V

    .line 94
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->interestPointDetector:Lcom/lge/cic/eden/analyzer/cover/InterestPointDetector;

    .line 98
    :cond_2c
    return-void

    .line 87
    :cond_2d
    iget-object v1, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "msgHandler is null."

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public declared-synchronized getPublishInfoMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->publishInfoMap:Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPublishInfoMapKey()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->publishInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemainCnt()I
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->remainCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public publish(Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;Lcom/lge/cic/eden/db/type/MediaInfo;Ljava/lang/Integer;)V
    .registers 4
    .param p1, "type"    # Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;
    .param p2, "mediaInfo"    # Lcom/lge/cic/eden/db/type/MediaInfo;
    .param p3, "eventId"    # Ljava/lang/Integer;

    .prologue
    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/cic/eden/generator/EventPublishManager;->publishLocked(Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;Lcom/lge/cic/eden/db/type/MediaInfo;Ljava/lang/Integer;)Z

    .line 162
    return-void
.end method

.method public publishAsync(Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;Lcom/lge/cic/eden/db/type/MediaInfo;Ljava/lang/Integer;)V
    .registers 7
    .param p1, "type"    # Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;
    .param p2, "mediaInfo"    # Lcom/lge/cic/eden/db/type/MediaInfo;
    .param p3, "eventId"    # Ljava/lang/Integer;

    .prologue
    .line 165
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 166
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 167
    new-instance v1, Lcom/lge/cic/eden/generator/EventPublishManager$PublishParams;

    invoke-direct {v1, p1, p2, p3}, Lcom/lge/cic/eden/generator/EventPublishManager$PublishParams;-><init>(Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;Lcom/lge/cic/eden/db/type/MediaInfo;Ljava/lang/Integer;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->remainCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 170
    iget-object v1, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->msgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1d

    .line 171
    iget-object v1, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    :goto_1c
    return-void

    .line 173
    :cond_1d
    iget-object v1, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "msgHandler is null(at publishAsync)."

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public waitProcessCompleted(J)V
    .registers 12
    .param p1, "millis"    # J

    .prologue
    .line 182
    long-to-double v4, p1

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 183
    .local v2, "maxTimeOut":I
    iget-object v3, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  wait publishing, cnt = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/cic/eden/generator/EventPublishManager;->getRemainCnt()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", max = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x0

    .line 187
    .local v0, "cntTimeOut":I
    :cond_2f
    invoke-virtual {p0}, Lcom/lge/cic/eden/generator/EventPublishManager;->getRemainCnt()I

    move-result v3

    if-nez v3, :cond_57

    .line 188
    iget-object v3, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  publisng cnt is 0, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " times"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 204
    :goto_4f
    iget-object v3, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "  wait publishing - done"

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 205
    return-void

    .line 193
    :cond_57
    const-wide/16 v4, 0x3e8

    :try_start_59
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5c
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_5c} :catch_68

    .line 198
    :goto_5c
    add-int/lit8 v0, v0, 0x1

    .line 199
    if-lt v0, v2, :cond_2f

    .line 200
    iget-object v3, p0, Lcom/lge/cic/eden/generator/EventPublishManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "time out while publshing."

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_4f

    .line 194
    :catch_68
    move-exception v1

    .line 195
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_5c
.end method
