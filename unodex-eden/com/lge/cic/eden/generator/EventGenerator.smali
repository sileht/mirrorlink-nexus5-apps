.class public Lcom/lge/cic/eden/generator/EventGenerator;
.super Ljava/lang/Object;
.source "EventGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;,
        Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;,
        Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;
    }
.end annotation


# static fields
.field private static final MAX_BULK_100:I = 0x64

.field private static final MAX_BULK_50:I = 0x32

.field private static final TIMEOUT:I = 0x2710

.field private static isChinaFlag:Z

.field private static logger:Lcom/lge/cic/eden/utils/Logger;


# instance fields
.field private context:Landroid/content/Context;

.field private dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

.field private eventClusteringManager:Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;

.field private eventPublishManager:Lcom/lge/cic/eden/generator/EventPublishManager;

.field private imageAnalysisManager:Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;

.field private shutdownFlag:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/lge/cic/eden/generator/EventGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/cic/eden/generator/EventGenerator;->isChinaFlag:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/lge/cic/eden/generator/EventGenerator;->context:Landroid/content/Context;

    .line 63
    const-string v0, "CN"

    invoke-static {v0}, Lcom/lge/cic/eden/clustering/utils/CountryChecker;->checkTargetCountry(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/cic/eden/generator/EventGenerator;->isChinaFlag:Z

    .line 65
    new-instance v0, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;

    iget-object v1, p0, Lcom/lge/cic/eden/generator/EventGenerator;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/cic/eden/analyzer/image/manager/ImageAnalysisManagerForEventClustering;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/cic/eden/generator/EventGenerator;->imageAnalysisManager:Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;

    .line 66
    new-instance v0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;

    iget-object v1, p0, Lcom/lge/cic/eden/generator/EventGenerator;->context:Landroid/content/Context;

    sget-boolean v2, Lcom/lge/cic/eden/generator/EventGenerator;->isChinaFlag:Z

    invoke-direct {v0, v1, v2}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/lge/cic/eden/generator/EventGenerator;->eventClusteringManager:Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;

    .line 68
    new-instance v0, Lcom/lge/cic/eden/generator/EventPublishManager;

    iget-object v1, p0, Lcom/lge/cic/eden/generator/EventGenerator;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/cic/eden/generator/EventGenerator;->eventClusteringManager:Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;

    invoke-direct {v0, v1, v2}, Lcom/lge/cic/eden/generator/EventPublishManager;-><init>(Landroid/content/Context;Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;)V

    iput-object v0, p0, Lcom/lge/cic/eden/generator/EventGenerator;->eventPublishManager:Lcom/lge/cic/eden/generator/EventPublishManager;

    .line 73
    new-instance v0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;-><init>(Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V

    iput-object v0, p0, Lcom/lge/cic/eden/generator/EventGenerator;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/lge/cic/eden/generator/EventGenerator;->shutdownFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    return-void
.end method

.method static synthetic access$0()Lcom/lge/cic/eden/utils/Logger;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/cic/eden/generator/EventGenerator;)Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventGenerator;->imageAnalysisManager:Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/cic/eden/generator/EventGenerator;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventGenerator;->shutdownFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/cic/eden/generator/EventGenerator;)Lcom/lge/cic/eden/generator/EventPublishManager;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventGenerator;->eventPublishManager:Lcom/lge/cic/eden/generator/EventPublishManager;

    return-object v0
.end method

.method private process(Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;I)Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;
    .registers 23
    .param p1, "listener"    # Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;
    .param p2, "clusteringTarget"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 140
    sget-object v14, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v15, "process()"

    invoke-virtual {v14, v15}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/cic/eden/generator/EventGenerator;->shutdownFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 142
    sget-object v14, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v15, "shutdown by flag (process(s))"

    invoke-virtual {v14, v15}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 143
    sget-object v14, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;->SHUTDOWN:Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    .line 338
    :goto_1a
    return-object v14

    .line 146
    :cond_1b
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;->onProgress(I)V

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 148
    .local v4, "chkTimeAll":J
    const-wide/16 v2, 0x0

    .line 150
    .local v2, "chkTime":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/cic/eden/generator/EventGenerator;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    move/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->getMediaInfoForUnknownPhoto(I[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 152
    .local v12, "mediaInfosForImageAnalysis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 153
    .local v13, "newMediaCnt":I
    sget-object v14, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "newMediaCnt: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 157
    new-instance v14, Lcom/lge/cic/eden/generator/EventGenerator$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/lge/cic/eden/generator/EventGenerator$1;-><init>(Lcom/lge/cic/eden/generator/EventGenerator;)V

    invoke-static {v12, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 176
    sget-object v14, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "sorting end: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v2

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/cic/eden/generator/EventGenerator;->eventPublishManager:Lcom/lge/cic/eden/generator/EventPublishManager;

    const-wide/16 v16, 0x2710

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/lge/cic/eden/generator/EventPublishManager;->waitProcessCompleted(J)V

    .line 180
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/cic/eden/generator/EventGenerator;->eventPublishManager:Lcom/lge/cic/eden/generator/EventPublishManager;

    invoke-virtual {v14}, Lcom/lge/cic/eden/generator/EventPublishManager;->clear()V

    .line 182
    new-instance v9, Ljava/lang/Thread;

    new-instance v14, Lcom/lge/cic/eden/generator/EventGenerator$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v12, v13, v1}, Lcom/lge/cic/eden/generator/EventGenerator$2;-><init>(Lcom/lge/cic/eden/generator/EventGenerator;Ljava/util/ArrayList;ILcom/lge/cic/eden/generator/EventGenerator$ProgressListener;)V

    invoke-direct {v9, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 235
    .local v9, "imageAnalysisWorker":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 240
    const/4 v10, 0x0

    .line 242
    .local v10, "isGeocodingFailed":Z
    :try_start_9e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 243
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/lge/cic/eden/generator/EventGenerator;->processActivityClustering(I)V

    .line 244
    sget-object v14, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "processActivityClustering end: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v2

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 248
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/lge/cic/eden/generator/EventGenerator;->processEventClustering(I)V

    .line 249
    sget-object v14, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "processEventClustering end: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v2

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/cic/eden/generator/EventGenerator;->eventPublishManager:Lcom/lge/cic/eden/generator/EventPublishManager;

    invoke-virtual {v14}, Lcom/lge/cic/eden/generator/EventPublishManager;->getPublishInfoMapKey()Ljava/util/Iterator;

    move-result-object v11

    .line 253
    .local v11, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_fc
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
    :try_end_ff
    .catch Ljava/lang/InterruptedException; {:try_start_9e .. :try_end_ff} :catch_13e
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_ff} :catch_151

    move-result v14

    if-nez v14, :cond_11d

    .line 276
    .end local v11    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_102
    :try_start_102
    invoke-virtual {v9}, Ljava/lang/Thread;->join()V

    .line 277
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V
    :try_end_108
    .catch Ljava/lang/InterruptedException; {:try_start_102 .. :try_end_108} :catch_16a

    .line 302
    :cond_108
    :goto_108
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/cic/eden/generator/EventGenerator;->shutdownFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v14

    if-eqz v14, :cond_1b1

    .line 303
    sget-object v14, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v15, "shutdown by flag (process(m))"

    invoke-virtual {v14, v15}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 304
    sget-object v14, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;->SHUTDOWN:Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    goto/16 :goto_1a

    .line 254
    .restart local v11    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_11d
    const-wide/16 v14, 0x0

    const/16 v16, 0x1

    :try_start_121
    invoke-static/range {v14 .. v16}, Ljava/lang/Thread;->sleep(JI)V

    .line 256
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 257
    .local v8, "eventId":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/cic/eden/generator/EventGenerator;->eventPublishManager:Lcom/lge/cic/eden/generator/EventPublishManager;

    sget-object v15, Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;->EVENT_CLUSTERING:Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    const/16 v16, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v14 .. v17}, Lcom/lge/cic/eden/generator/EventPublishManager;->publish(Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;Lcom/lge/cic/eden/db/type/MediaInfo;Ljava/lang/Integer;)V
    :try_end_13d
    .catch Ljava/lang/InterruptedException; {:try_start_121 .. :try_end_13d} :catch_13e
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_13d} :catch_151

    goto :goto_fc

    .line 264
    .end local v8    # "eventId":I
    .end local v11    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catch_13e
    move-exception v6

    .line 265
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->interrupt()V

    .line 266
    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    .line 268
    sget-object v14, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v15, "InterruptedException at clustering works"

    invoke-virtual {v14, v15}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_102

    .line 270
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catch_151
    move-exception v6

    .line 271
    .local v6, "e":Ljava/io/IOException;
    sget-object v14, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 272
    const/4 v10, 0x1

    goto :goto_102

    .line 279
    .end local v6    # "e":Ljava/io/IOException;
    :catch_16a
    move-exception v6

    .line 280
    .local v6, "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/cic/eden/generator/EventGenerator;->imageAnalysisManager:Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;

    invoke-virtual {v14}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->shutdownNow()V

    .line 281
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/cic/eden/generator/EventGenerator;->imageAnalysisManager:Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;

    const-wide/16 v16, 0x2710

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->waitProcessCompleted(J)V

    .line 283
    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    .line 285
    sget-object v14, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v15, "InterruptedException at joining analyzer"

    invoke-virtual {v14, v15}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/cic/eden/generator/EventGenerator;->shutdownFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 288
    invoke-virtual {v9}, Ljava/lang/Thread;->isAlive()Z

    move-result v14

    if-eqz v14, :cond_108

    .line 289
    sget-object v14, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v15, "  imageAnalysisWorker is alive"

    invoke-virtual {v14, v15}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 292
    :goto_19c
    :try_start_19c
    invoke-virtual {v9}, Ljava/lang/Thread;->join()V
    :try_end_19f
    .catch Ljava/lang/InterruptedException; {:try_start_19c .. :try_end_19f} :catch_1a8

    .line 298
    sget-object v14, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v15, "  joining is complete"

    invoke-virtual {v14, v15}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    goto/16 :goto_108

    .line 294
    :catch_1a8
    move-exception v7

    .line 295
    .local v7, "e1":Ljava/lang/InterruptedException;
    sget-object v14, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v15, "InterruptedException at joining imageAnalysisWorker, but I ignore"

    invoke-virtual {v14, v15}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_19c

    .line 326
    .end local v6    # "e":Ljava/lang/InterruptedException;
    .end local v7    # "e1":Ljava/lang/InterruptedException;
    :cond_1b1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v4, v14, v4

    .line 327
    sget-object v14, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "all of analysis end: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    long-to-double v0, v4

    move-wide/from16 v16, v0

    const-wide v18, 0x408f400000000000L    # 1000.0

    div-double v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "sec"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 328
    if-lez v13, :cond_1ff

    .line 329
    sget-object v14, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "    time per image = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    long-to-float v0, v4

    move/from16 v16, v0

    int-to-float v0, v13

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 332
    :cond_1ff
    const/16 v14, 0x64

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;->onProgress(I)V

    .line 333
    sget-object v14, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v15, "process is done."

    invoke-virtual {v14, v15}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 335
    if-eqz v10, :cond_213

    .line 336
    sget-object v14, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;->FAILED_GEOCODING:Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    goto/16 :goto_1a

    .line 338
    :cond_213
    sget-object v14, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;->COMPLETE:Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    goto/16 :goto_1a
.end method

.method private processActivityClustering(I)V
    .registers 12
    .param p1, "clusteringTarget"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    .line 343
    sget-object v3, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "processActivityClustering()"

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 345
    invoke-static {v8, v9, v6}, Ljava/lang/Thread;->sleep(JI)V

    .line 348
    sget-boolean v3, Lcom/lge/cic/eden/generator/EventGenerator;->isChinaFlag:Z

    if-nez v3, :cond_1d

    .line 350
    iget-object v3, p0, Lcom/lge/cic/eden/generator/EventGenerator;->eventClusteringManager:Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;

    invoke-virtual {v3, p1}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->buildActivityInfoUsingGeoCodingFailedList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 352
    .local v1, "activityContainerListForFailedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/ActivityContainer;>;"
    if-eqz v1, :cond_1d

    .line 353
    invoke-direct {p0, v1}, Lcom/lge/cic/eden/generator/EventGenerator;->updateActivityClusterGeocodeToDB(Ljava/util/ArrayList;)V

    .line 356
    .end local v1    # "activityContainerListForFailedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/ActivityContainer;>;"
    :cond_1d
    invoke-static {v8, v9, v6}, Ljava/lang/Thread;->sleep(JI)V

    .line 358
    iget-object v3, p0, Lcom/lge/cic/eden/generator/EventGenerator;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5, p1, v4}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->getMediaInfoForUnknownActivityId(ZI[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 359
    .local v2, "mediaInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    sget-object v3, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  mediaInfoList : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_54

    .line 361
    :cond_4c
    sget-object v3, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "  new media cnt is 0"

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 371
    :goto_53
    return-void

    .line 363
    :cond_54
    invoke-static {v8, v9, v6}, Ljava/lang/Thread;->sleep(JI)V

    .line 365
    iget-object v3, p0, Lcom/lge/cic/eden/generator/EventGenerator;->eventClusteringManager:Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;

    invoke-virtual {v3, v2}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->makeActivityCluster(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 368
    .local v0, "acitivtyContainerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/ActivityContainer;>;"
    invoke-direct {p0, v0}, Lcom/lge/cic/eden/generator/EventGenerator;->writeActivityClusterToDB(Ljava/util/ArrayList;)V

    goto :goto_53
.end method

.method private processEventClustering(I)V
    .registers 10
    .param p1, "clusteringTarget"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    .line 374
    sget-object v2, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "processEventClustering()"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 375
    invoke-static {v6, v7, v5}, Ljava/lang/Thread;->sleep(JI)V

    .line 377
    invoke-direct {p0, p1}, Lcom/lge/cic/eden/generator/EventGenerator;->readUnProcessedActivityClusterFromDB(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 378
    .local v0, "activityContainerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/ActivityContainer;>;"
    sget-object v2, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "activityContainerList : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_36

    .line 388
    :cond_35
    :goto_35
    return-void

    .line 383
    :cond_36
    invoke-static {v6, v7, v5}, Ljava/lang/Thread;->sleep(JI)V

    .line 385
    iget-object v2, p0, Lcom/lge/cic/eden/generator/EventGenerator;->eventClusteringManager:Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;

    iget-object v3, p0, Lcom/lge/cic/eden/generator/EventGenerator;->eventPublishManager:Lcom/lge/cic/eden/generator/EventPublishManager;

    invoke-virtual {v3}, Lcom/lge/cic/eden/generator/EventPublishManager;->getPublishInfoMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->makeEventCluster(Ljava/util/HashMap;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 387
    .local v1, "eventContainerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/EventContainer;>;"
    invoke-direct {p0, v1}, Lcom/lge/cic/eden/generator/EventGenerator;->writeEventClusterToDB(Ljava/util/ArrayList;)V

    goto :goto_35
.end method

.method private readUnProcessedActivityClusterFromDB(I)Ljava/util/ArrayList;
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

    .prologue
    .line 415
    const v1, 0x10001

    .line 416
    .local v1, "INTERNAL_STORAGE_ID":I
    const v0, 0x20001

    .line 418
    .local v0, "EXTERNAL_STORAGE_ID":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v3, "acitivtyContainerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/ActivityContainer;>;"
    iget-object v9, p0, Lcom/lge/cic/eden/generator/EventGenerator;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-virtual {v9}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->getAcitivityInfoFromUnknownEventId()Ljava/util/ArrayList;

    move-result-object v4

    .line 421
    .local v4, "activityInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    const/4 v8, 0x0

    .line 422
    .local v8, "storageId":I
    if-nez p1, :cond_22

    .line 423
    const v8, 0x10001

    .line 427
    :cond_17
    :goto_17
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_29

    .line 442
    return-object v3

    .line 424
    :cond_22
    const/4 v9, 0x1

    if-ne p1, v9, :cond_17

    .line 425
    const v8, 0x20001

    goto :goto_17

    .line 427
    :cond_29
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 428
    .local v2, "aInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    iget-object v9, p0, Lcom/lge/cic/eden/generator/EventGenerator;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    iget v11, v2, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-virtual {v9, v11, v12, v13}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->getMediaInfoInActivity(IZ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 430
    .local v6, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    if-eqz v8, :cond_58

    if-eqz v6, :cond_58

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_58

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v9, v9, Lcom/lge/cic/eden/db/type/MediaInfo;->storageId:I

    if-eq v9, v8, :cond_58

    .line 431
    sget-object v9, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v11, "getAcitivityInfoFromUnknownEventId != storageId"

    invoke-virtual {v9, v11}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    goto :goto_1b

    .line 435
    :cond_58
    new-instance v7, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;

    invoke-direct {v7}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;-><init>()V

    .line 436
    .local v7, "sortedList":Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_61
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_77

    .line 439
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/lge/cic/eden/db/type/ActivityInfo;->setActivityEntryCnt(I)V

    .line 440
    new-instance v9, Lcom/lge/cic/eden/clustering/manager/ActivityContainer;

    invoke-direct {v9, v2, v7}, Lcom/lge/cic/eden/clustering/manager/ActivityContainer;-><init>(Lcom/lge/cic/eden/db/type/ActivityInfo;Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 436
    :cond_77
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 437
    .local v5, "mInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    invoke-virtual {v7, v5}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->add(Lcom/lge/cic/eden/db/type/MediaInfo;)Z

    goto :goto_61
.end method

.method private updateActivityClusterGeocodeToDB(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/clustering/manager/ActivityContainer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 487
    .local p1, "acitivtyContainerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/ActivityContainer;>;"
    sget-object v4, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "updateActivityClusterGeocodeToDB()"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 488
    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Ljava/lang/Thread;->sleep(JI)V

    .line 490
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1d

    .line 491
    :cond_15
    sget-object v4, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "acitivtyContainerList is null"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 503
    :goto_1c
    return-void

    .line 495
    :cond_1d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v0, "activityInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_55

    .line 500
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 501
    .local v2, "startTime":J
    const/16 v4, 0x32

    invoke-static {v0, v4}, Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;->updateGeoCode(Ljava/util/ArrayList;I)V

    .line 502
    sget-object v4, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  DB update Time - ActivityInfo Table : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    goto :goto_1c

    .line 496
    .end local v2    # "startTime":J
    :cond_55
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/cic/eden/clustering/manager/ActivityContainer;

    .line 497
    .local v1, "container":Lcom/lge/cic/eden/clustering/manager/ActivityContainer;
    iget-object v5, v1, Lcom/lge/cic/eden/clustering/manager/ActivityContainer;->activityInfo:Lcom/lge/cic/eden/db/type/ActivityInfo;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26
.end method

.method private writeActivityClusterToDB(Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/clustering/manager/ActivityContainer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p1, "acitivtyContainerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/ActivityContainer;>;"
    const/4 v12, 0x1

    .line 446
    sget-object v8, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v9, "writeActivityClusterToDB()"

    invoke-virtual {v8, v9}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 447
    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v12}, Ljava/lang/Thread;->sleep(JI)V

    .line 449
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_1d

    .line 450
    :cond_15
    sget-object v8, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v9, "acitivtyContainerList is null"

    invoke-virtual {v8, v9}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 484
    :cond_1c
    :goto_1c
    return-void

    .line 453
    :cond_1d
    sget-object v8, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "acitivtyContainerList size : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 454
    const/4 v3, 0x0

    .line 456
    .local v3, "maxActivityID":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v0, "activityInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v4, "mediaInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_44
    :goto_44
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_ba

    .line 467
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 468
    .local v6, "startTime":J
    const/16 v8, 0x32

    invoke-static {v0, v8}, Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;->insert(Ljava/util/ArrayList;I)V

    .line 470
    sget-object v8, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  DB Insert Time - ActivityInfo Table : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 473
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 474
    const/16 v8, 0x64

    invoke-static {v4, v8}, Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;->update(Ljava/util/ArrayList;I)V

    .line 476
    sget-object v8, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  DB Update Time - MediaInfo Table - ACTIVITY_ID : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 478
    invoke-static {}, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->getEdenPropertyInfo()Lcom/lge/cic/eden/db/type/EdenPropertyInfo;

    move-result-object v5

    .line 479
    .local v5, "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    iput v3, v5, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->maxActivityId:I

    .line 480
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "MAX_ACTIVITY_ID"

    aput-object v11, v9, v10

    invoke-virtual {v8, v5, v9}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->update(Lcom/lge/cic/eden/db/type/ColumnInfo;[Ljava/lang/String;)I

    move-result v1

    .line 481
    .local v1, "affectedRows":I
    if-nez v1, :cond_1c

    .line 482
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->insert(Lcom/lge/cic/eden/db/type/ColumnInfo;)Landroid/net/Uri;

    goto/16 :goto_1c

    .line 458
    .end local v1    # "affectedRows":I
    .end local v5    # "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    .end local v6    # "startTime":J
    :cond_ba
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/cic/eden/clustering/manager/ActivityContainer;

    .line 459
    .local v2, "container":Lcom/lge/cic/eden/clustering/manager/ActivityContainer;
    iget-object v9, v2, Lcom/lge/cic/eden/clustering/manager/ActivityContainer;->activityInfo:Lcom/lge/cic/eden/db/type/ActivityInfo;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v9, v2, Lcom/lge/cic/eden/clustering/manager/ActivityContainer;->mediaList:Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 462
    iget-object v9, v2, Lcom/lge/cic/eden/clustering/manager/ActivityContainer;->activityInfo:Lcom/lge/cic/eden/db/type/ActivityInfo;

    iget v9, v9, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    if-le v9, v3, :cond_44

    .line 463
    iget-object v9, v2, Lcom/lge/cic/eden/clustering/manager/ActivityContainer;->activityInfo:Lcom/lge/cic/eden/db/type/ActivityInfo;

    iget v3, v9, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    goto/16 :goto_44
.end method

.method private writeEventClusterToDB(Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/clustering/manager/EventContainer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 632
    .local p1, "eventContainerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/clustering/manager/EventContainer;>;"
    const v0, 0x5265c00

    .line 633
    .local v0, "EVENT_DECISION_TIMEBOUNDARY":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 635
    .local v2, "currentTime":J
    sget-object v5, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v8, "writeEventClusterToDB()"

    invoke-virtual {v5, v8}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 636
    const-wide/16 v8, 0x0

    const/4 v5, 0x1

    invoke-static {v8, v9, v5}, Ljava/lang/Thread;->sleep(JI)V

    .line 638
    if-nez p1, :cond_1e

    .line 639
    sget-object v5, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v8, "eventContainerList is null"

    invoke-virtual {v5, v8}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 657
    :goto_1d
    return-void

    .line 643
    :cond_1e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v4, "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_70

    .line 653
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 654
    .local v6, "startTime":J
    sget-object v5, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  bulkInsert about EventInfo, size = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 655
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->bulkInsert(Ljava/util/ArrayList;)I

    .line 656
    sget-object v5, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  DB Insert Time - Eventinfo Table : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    goto :goto_1d

    .line 644
    .end local v6    # "startTime":J
    :cond_70
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/cic/eden/clustering/manager/EventContainer;

    .line 645
    .local v1, "container":Lcom/lge/cic/eden/clustering/manager/EventContainer;
    iget-object v8, v1, Lcom/lge/cic/eden/clustering/manager/EventContainer;->eventInfo:Lcom/lge/cic/eden/db/type/EventInfo;

    iget-wide v8, v8, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    sub-long v8, v2, v8

    const-wide/32 v10, 0x5265c00

    cmp-long v8, v8, v10

    if-lez v8, :cond_89

    .line 646
    iget-object v8, v1, Lcom/lge/cic/eden/clustering/manager/EventContainer;->eventInfo:Lcom/lge/cic/eden/db/type/EventInfo;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 648
    :cond_89
    iget-object v8, p0, Lcom/lge/cic/eden/generator/EventGenerator;->eventPublishManager:Lcom/lge/cic/eden/generator/EventPublishManager;

    invoke-virtual {v8}, Lcom/lge/cic/eden/generator/EventPublishManager;->getPublishInfoMap()Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, v1, Lcom/lge/cic/eden/clustering/manager/EventContainer;->eventInfo:Lcom/lge/cic/eden/db/type/EventInfo;

    iget v9, v9, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27
.end method


# virtual methods
.method public destroy()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x2710

    const/4 v2, 0x0

    .line 80
    sget-object v0, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "destroy()"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventGenerator;->imageAnalysisManager:Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;

    if-eqz v0, :cond_1a

    .line 83
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventGenerator;->imageAnalysisManager:Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;

    invoke-virtual {v0, v4, v5}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->waitProcessCompleted(J)V

    .line 84
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventGenerator;->imageAnalysisManager:Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;

    invoke-virtual {v0}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->destroy()V

    .line 85
    iput-object v2, p0, Lcom/lge/cic/eden/generator/EventGenerator;->imageAnalysisManager:Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;

    .line 88
    :cond_1a
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventGenerator;->eventPublishManager:Lcom/lge/cic/eden/generator/EventPublishManager;

    if-eqz v0, :cond_2a

    .line 89
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventGenerator;->eventPublishManager:Lcom/lge/cic/eden/generator/EventPublishManager;

    invoke-virtual {v0, v4, v5}, Lcom/lge/cic/eden/generator/EventPublishManager;->waitProcessCompleted(J)V

    .line 90
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventGenerator;->eventPublishManager:Lcom/lge/cic/eden/generator/EventPublishManager;

    invoke-virtual {v0}, Lcom/lge/cic/eden/generator/EventPublishManager;->destroy()V

    .line 91
    iput-object v2, p0, Lcom/lge/cic/eden/generator/EventGenerator;->eventPublishManager:Lcom/lge/cic/eden/generator/EventPublishManager;

    .line 93
    :cond_2a
    return-void
.end method

.method public declared-synchronized process(Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;)Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;
    .registers 8
    .param p1, "listener"    # Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    sget-object v2, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "process()"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/lge/cic/eden/generator/EventGenerator;->shutdownFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    sget-object v2, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "  do INTERNAL process"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 111
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/lge/cic/eden/generator/EventGenerator;->process(Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;I)Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    move-result-object v1

    .line 113
    .local v1, "statusInternal":Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;
    sget-object v2, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "  do EXTERNAL process"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 114
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/lge/cic/eden/generator/EventGenerator;->process(Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;I)Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    move-result-object v0

    .line 118
    .local v0, "statusExternal":Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;
    sget-object v2, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "complete process"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/lge/cic/eden/generator/EventGenerator;->shutdownFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 121
    sget-object v2, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "shutdown and wait"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/lge/cic/eden/generator/EventGenerator;->eventPublishManager:Lcom/lge/cic/eden/generator/EventPublishManager;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Lcom/lge/cic/eden/generator/EventPublishManager;->waitProcessCompleted(J)V

    .line 127
    sget-object v2, Lcom/lge/cic/eden/generator/EventGenerator;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "complete shutdown and wait"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 128
    sget-object v2, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;->SHUTDOWN:Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_5c

    .line 135
    :goto_4c
    monitor-exit p0

    return-object v2

    .line 131
    :cond_4e
    :try_start_4e
    sget-object v2, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;->FAILED_GEOCODING:Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    if-eq v1, v2, :cond_56

    .line 132
    sget-object v2, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;->FAILED_GEOCODING:Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    if-ne v0, v2, :cond_59

    .line 133
    :cond_56
    sget-object v2, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;->FAILED_GEOCODING:Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    goto :goto_4c

    .line 135
    :cond_59
    sget-object v2, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;->COMPLETE:Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_5c

    goto :goto_4c

    .line 107
    .end local v0    # "statusExternal":Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;
    .end local v1    # "statusInternal":Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;
    :catchall_5c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public update()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventGenerator;->eventClusteringManager:Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;

    invoke-virtual {v0}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->updateClusteringManager()V

    .line 97
    return-void
.end method
