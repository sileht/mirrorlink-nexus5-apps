.class public abstract Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;
.super Ljava/lang/Object;
.source "AbstractImageAnalysisManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$ImageAnalysisListener;
    }
.end annotation


# static fields
.field private static final INVALID_MAX:I = 0xa

.field private static final MIN_BITMAP_SIZE:I = 0x50

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected contentResolver:Landroid/content/ContentResolver;

.field private context:Landroid/content/Context;

.field private imageLoader:Lcom/lge/cic/eden/imageloader/ImageLoader;

.field private isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final logger:Lcom/lge/cic/eden/utils/Logger;

.field private shutdownFlag:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 44
    iput-object p1, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->context:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->contentResolver:Landroid/content/ContentResolver;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->imageLoader:Lcom/lge/cic/eden/imageloader/ImageLoader;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->shutdownFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    return-void
.end method

.method private isAvailable(Landroid/graphics/Bitmap;)Z
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v2, 0x50

    .line 249
    const-string v0, ""

    .line 250
    .local v0, "reason":Ljava/lang/String;
    if-eqz p1, :cond_49

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v1, v2, :cond_49

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, v2, :cond_49

    .line 251
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 252
    const/4 v1, 0x1

    .line 260
    :goto_1f
    return v1

    .line 254
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "wrong config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_33
    iget-object v1, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bitmap is not available due to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 260
    const/4 v1, 0x0

    goto :goto_1f

    .line 257
    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "not enough size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33
.end method

.method private prepare()V
    .registers 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "prepare()"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/lge/cic/eden/imageloader/ImageLoader;

    const/4 v1, 0x4

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/lge/cic/eden/imageloader/ImageLoader;-><init>(II)V

    iput-object v0, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->imageLoader:Lcom/lge/cic/eden/imageloader/ImageLoader;

    .line 56
    iget-object v0, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->imageLoader:Lcom/lge/cic/eden/imageloader/ImageLoader;

    invoke-virtual {p0}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->getRequestSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/imageloader/ImageLoader;->setRequestSize(I)V

    .line 57
    return-void
.end method

.method private prepareIfNeeded()V
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->imageLoader:Lcom/lge/cic/eden/imageloader/ImageLoader;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->imageLoader:Lcom/lge/cic/eden/imageloader/ImageLoader;

    invoke-virtual {v0}, Lcom/lge/cic/eden/imageloader/ImageLoader;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 61
    :cond_c
    invoke-direct {p0}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->prepare()V

    .line 63
    :cond_f
    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .param p1, "time"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->imageLoader:Lcom/lge/cic/eden/imageloader/ImageLoader;

    if-nez v0, :cond_5

    .line 71
    :goto_4
    return-void

    .line 70
    :cond_5
    iget-object v0, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->imageLoader:Lcom/lge/cic/eden/imageloader/ImageLoader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/cic/eden/imageloader/ImageLoader;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_4
.end method

.method public abstract clear()V
.end method

.method public abstract destroy()V
.end method

.method public abstract getRequestSize()I
.end method

.method public abstract parallelAnalysis(ILandroid/graphics/Bitmap;Lcom/lge/cic/eden/db/type/MediaInfo;)V
.end method

.method public request(Ljava/util/ArrayList;Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$ImageAnalysisListener;)V
    .registers 29
    .param p2, "listener"    # Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$ImageAnalysisListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;",
            "Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$ImageAnalysisListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "mediaInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v20, v0

    const-string v21, "request()"

    invoke-virtual/range {v20 .. v21}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 112
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->prepareIfNeeded()V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->shutdownFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 115
    if-eqz p1, :cond_2c

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-gtz v20, :cond_38

    .line 116
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 246
    :goto_37
    return-void

    .line 119
    :cond_38
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 121
    .local v14, "nImages":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v15, "pathes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_45
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_a6

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->imageLoader:Lcom/lge/cic/eden/imageloader/ImageLoader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/lge/cic/eden/imageloader/ImageLoader;->loadImages(Ljava/util/ArrayList;)V

    .line 127
    new-instance v19, Ljava/util/TreeSet;

    .line 128
    new-instance v20, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$1;-><init>(Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;)V

    .line 127
    invoke-direct/range {v19 .. v20}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 135
    .local v19, "sortedListForSequentialAnalysis":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/Bitmap;>;>;"
    const/16 v16, -0x1

    .line 136
    .local v16, "ptrEnd":I
    const/16 v18, 0x0

    .line 137
    .local v18, "publishStartIdx":I
    const/4 v11, 0x0

    .line 138
    .local v11, "isSendStopSignal":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6a
    if-lt v10, v14, :cond_b6

    .line 233
    :goto_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->shutdownFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v20

    if-nez v20, :cond_341

    .line 234
    move/from16 v0, v18

    if-ge v0, v14, :cond_8f

    .line 235
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->writeResultOnDB(ILjava/util/ArrayList;Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$ImageAnalysisListener;)I

    .line 236
    move/from16 v12, v18

    .local v12, "j":I
    :goto_8d
    if-lt v12, v14, :cond_32e

    .line 244
    .end local v12    # "j":I
    :cond_8f
    :goto_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v20, v0

    const-string v21, "request() - done"

    invoke-virtual/range {v20 .. v21}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_37

    .line 122
    .end local v10    # "i":I
    .end local v11    # "isSendStopSignal":Z
    .end local v16    # "ptrEnd":I
    .end local v18    # "publishStartIdx":I
    .end local v19    # "sortedListForSequentialAnalysis":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/Bitmap;>;>;"
    :cond_a6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 123
    .local v13, "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    iget-object v0, v13, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 139
    .end local v13    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    .restart local v10    # "i":I
    .restart local v11    # "isSendStopSignal":Z
    .restart local v16    # "ptrEnd":I
    .restart local v18    # "publishStartIdx":I
    .restart local v19    # "sortedListForSequentialAnalysis":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/Bitmap;>;>;"
    :cond_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->shutdownFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v20

    if-eqz v20, :cond_ce

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v20, v0

    const-string v21, "shutdown by flag"

    invoke-virtual/range {v20 .. v21}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6c

    .line 145
    :cond_ce
    const/4 v8, 0x0

    .line 147
    .local v8, "dataTaken":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/Bitmap;>;"
    :try_start_cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->imageLoader:Lcom/lge/cic/eden/imageloader/ImageLoader;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lge/cic/eden/imageloader/ImageLoader;->take()Landroid/util/Pair;
    :try_end_d8
    .catch Ljava/lang/InterruptedException; {:try_start_cf .. :try_end_d8} :catch_1a2

    move-result-object v8

    .line 154
    if-nez v11, :cond_10c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->imageLoader:Lcom/lge/cic/eden/imageloader/ImageLoader;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lge/cic/eden/imageloader/ImageLoader;->getInvalidCnt()I

    move-result v20

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_10c

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v20, v0

    const-string v21, "shutdown event clustering service, because invalid count > 10"

    invoke-virtual/range {v20 .. v21}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 156
    const/4 v11, 0x1

    .line 159
    new-instance v20, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;

    invoke-direct/range {v20 .. v20}, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;->stopAnalysisService(Landroid/content/Context;)V

    .line 161
    const-wide/16 v20, 0x2710

    :try_start_109
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10c
    .catch Ljava/lang/InterruptedException; {:try_start_109 .. :try_end_10c} :catch_1b7

    .line 170
    :cond_10c
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "    do processing(parallel): "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 174
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->isAvailable(Landroid/graphics/Bitmap;)Z

    move-result v20

    if-eqz v20, :cond_16c

    .line 175
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/graphics/Bitmap;

    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/lge/cic/eden/db/type/MediaInfo;

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->parallelAnalysis(ILandroid/graphics/Bitmap;Lcom/lge/cic/eden/db/type/MediaInfo;)V

    .line 178
    :cond_16c
    add-int/lit8 v6, v16, 0x1

    .line 179
    .local v6, "chkIndex":I
    invoke-interface/range {v19 .. v19}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_172
    :goto_172
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_1cc

    .line 185
    add-int/lit8 v6, v6, -0x1

    if-ne v10, v6, :cond_18b

    .line 187
    invoke-interface/range {v19 .. v19}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_180
    :goto_180
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_1e9

    .line 225
    :goto_186
    invoke-interface/range {v19 .. v19}, Ljava/util/SortedSet;->clear()V

    .line 226
    move/from16 v16, v10

    .line 229
    :cond_18b
    const/high16 v20, 0x42c80000    # 100.0f

    int-to-float v0, v10

    move/from16 v21, v0

    mul-float v20, v20, v21

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v20, v20, v21

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$ImageAnalysisListener;->onProgress(F)V

    .line 138
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6a

    .line 148
    .end local v6    # "chkIndex":I
    :catch_1a2
    move-exception v9

    .line 149
    .local v9, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->interrupt()V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v20, v0

    const-string v21, "InterruptedException at taking image"

    invoke-virtual/range {v20 .. v21}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_6c

    .line 163
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :catch_1b7
    move-exception v9

    .line 164
    .restart local v9    # "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->interrupt()V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v20, v0

    const-string v21, "InterruptedException at waiting stop signal"

    invoke-virtual/range {v20 .. v21}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_6c

    .line 179
    .end local v9    # "e":Ljava/lang/InterruptedException;
    .restart local v6    # "chkIndex":I
    :cond_1cc
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 180
    .local v5, "chkData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/Bitmap;>;"
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_172

    .line 181
    add-int/lit8 v6, v6, 0x1

    goto :goto_172

    .line 187
    .end local v5    # "chkData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/Bitmap;>;"
    :cond_1e9
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 188
    .local v7, "data":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->shutdownFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v20

    if-eqz v20, :cond_207

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v20, v0

    const-string v21, "shutdown by flag(inner)"

    invoke-virtual/range {v20 .. v21}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_186

    .line 192
    :cond_207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v20, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "    do processing(serial): "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 194
    iget-object v4, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    .line 195
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 199
    .restart local v13    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v20, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "    "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": mediaId = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-wide v0, v13, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", path = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v13, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", takenTime = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-wide v0, v13, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 202
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v13, Lcom/lge/cic/eden/db/type/MediaInfo;->photoState:I

    .line 203
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const-string v23, "PHOTO_STATE"

    aput-object v23, v20, v22

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/lge/cic/eden/db/type/MediaInfo;->save([Ljava/lang/String;)Z

    .line 205
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->isAvailable(Landroid/graphics/Bitmap;)Z

    move-result v20

    if-eqz v20, :cond_2c3

    .line 206
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4, v13}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->serialAnalysis(ILandroid/graphics/Bitmap;Lcom/lge/cic/eden/db/type/MediaInfo;)V

    .line 208
    :cond_2c3
    if-eqz v4, :cond_2c8

    .line 209
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    :cond_2c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v20, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "      "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": rId = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-wide v0, v13, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 217
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->writeResultOnDB(ILjava/util/ArrayList;Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$ImageAnalysisListener;)I

    move-result v17

    .line 218
    .local v17, "publishEndIdx":I
    if-ltz v17, :cond_180

    .line 219
    move/from16 v12, v18

    .restart local v12    # "j":I
    :goto_314
    move/from16 v0, v17

    if-lt v12, v0, :cond_31c

    .line 222
    move/from16 v18, v17

    goto/16 :goto_180

    .line 220
    :cond_31c
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/lge/cic/eden/db/type/MediaInfo;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$ImageAnalysisListener;->onPublish(Lcom/lge/cic/eden/db/type/MediaInfo;)V

    .line 219
    add-int/lit8 v12, v12, 0x1

    goto :goto_314

    .line 237
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "chkIndex":I
    .end local v7    # "data":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/Bitmap;>;"
    .end local v8    # "dataTaken":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/Bitmap;>;"
    .end local v13    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    .end local v17    # "publishEndIdx":I
    :cond_32e
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/lge/cic/eden/db/type/MediaInfo;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$ImageAnalysisListener;->onPublish(Lcom/lge/cic/eden/db/type/MediaInfo;)V

    .line 236
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_8d

    .line 241
    .end local v12    # "j":I
    :cond_341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v20, v0

    const-string v21, "skip final writeResultOnDB"

    invoke-virtual/range {v20 .. v21}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_8f
.end method

.method public abstract serialAnalysis(ILandroid/graphics/Bitmap;Lcom/lge/cic/eden/db/type/MediaInfo;)V
.end method

.method public shutdownNow()V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "shutdownNow()"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->imageLoader:Lcom/lge/cic/eden/imageloader/ImageLoader;

    if-nez v0, :cond_c

    .line 81
    :goto_b
    return-void

    .line 79
    :cond_c
    iget-object v0, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->shutdownFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 80
    iget-object v0, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->imageLoader:Lcom/lge/cic/eden/imageloader/ImageLoader;

    invoke-virtual {v0}, Lcom/lge/cic/eden/imageloader/ImageLoader;->shutdownNow()V

    goto :goto_b
.end method

.method public waitProcessCompleted(J)V
    .registers 12
    .param p1, "millis"    # J

    .prologue
    .line 84
    long-to-double v4, p1

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 85
    .local v2, "maxTimeOut":I
    iget-object v3, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "  wait analysis"

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "cntTimeOut":I
    :cond_14
    iget-object v3, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_24

    .line 106
    :goto_1c
    iget-object v3, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "  wait analysis - done"

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 107
    return-void

    .line 94
    :cond_24
    const-wide/16 v4, 0x3e8

    :try_start_26
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_3b

    .line 99
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 100
    if-lt v0, v2, :cond_14

    .line 101
    iget-object v3, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "time out while analysis."

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->shutdownFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1c

    .line 95
    :catch_3b
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_29
.end method

.method public abstract writeResultOnDB(ILjava/util/ArrayList;Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$ImageAnalysisListener;)I
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
.end method
