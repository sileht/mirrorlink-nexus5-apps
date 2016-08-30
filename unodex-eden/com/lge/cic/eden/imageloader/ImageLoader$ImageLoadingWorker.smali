.class Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cic/eden/imageloader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoadingWorker"
.end annotation


# instance fields
.field private index:I

.field private path:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/cic/eden/imageloader/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/lge/cic/eden/imageloader/ImageLoader;Ljava/lang/String;I)V
    .registers 4
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->this$0:Lcom/lge/cic/eden/imageloader/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->path:Ljava/lang/String;

    .line 107
    iput p3, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->index:I

    .line 108
    return-void
.end method

.method private load()Z
    .registers 14

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 111
    new-instance v5, Lcom/lge/cic/eden/imageloader/MemorySafeBitmapFactory;

    invoke-direct {v5}, Lcom/lge/cic/eden/imageloader/MemorySafeBitmapFactory;-><init>()V

    .line 113
    .local v5, "memorySafeBitmapFactory":Lcom/lge/cic/eden/imageloader/MemorySafeBitmapFactory;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 114
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string v7, ""

    .line 119
    .local v7, "reason":Ljava/lang/String;
    :try_start_11
    iget-object v10, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->path:Ljava/lang/String;

    invoke-static {v10, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 122
    iget v1, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 123
    .local v1, "decodedHeight":I
    iget v2, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 125
    .local v2, "decodedWidth":I
    const/4 v10, 0x0

    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 126
    iget-object v10, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->this$0:Lcom/lge/cic/eden/imageloader/ImageLoader;

    # getter for: Lcom/lge/cic/eden/imageloader/ImageLoader;->requestSize:I
    invoke-static {v10}, Lcom/lge/cic/eden/imageloader/ImageLoader;->access$0(Lcom/lge/cic/eden/imageloader/ImageLoader;)I

    move-result v10

    if-lez v10, :cond_37

    .line 127
    iget-object v10, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->this$0:Lcom/lge/cic/eden/imageloader/ImageLoader;

    # getter for: Lcom/lge/cic/eden/imageloader/ImageLoader;->requestSize:I
    invoke-static {v10}, Lcom/lge/cic/eden/imageloader/ImageLoader;->access$0(Lcom/lge/cic/eden/imageloader/ImageLoader;)I

    move-result v10

    iget-object v11, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->this$0:Lcom/lge/cic/eden/imageloader/ImageLoader;

    # getter for: Lcom/lge/cic/eden/imageloader/ImageLoader;->requestSize:I
    invoke-static {v11}, Lcom/lge/cic/eden/imageloader/ImageLoader;->access$0(Lcom/lge/cic/eden/imageloader/ImageLoader;)I

    move-result v11

    invoke-virtual {v5, v2, v1, v10, v11}, Lcom/lge/cic/eden/imageloader/MemorySafeBitmapFactory;->calculateInSampleSize(IIII)I

    move-result v10

    iput v10, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 129
    :cond_37
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 131
    iget-object v10, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->path:Ljava/lang/String;

    invoke-virtual {v5, v10, v6}, Lcom/lge/cic/eden/imageloader/MemorySafeBitmapFactory;->decodeFileWithGravity(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_40
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_40} :catch_82
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_40} :catch_97
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_40} :catch_da

    move-result-object v0

    .line 152
    .end local v1    # "decodedHeight":I
    .end local v2    # "decodedWidth":I
    :goto_41
    if-nez v0, :cond_6d

    .line 153
    iget-object v10, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->this$0:Lcom/lge/cic/eden/imageloader/ImageLoader;

    # getter for: Lcom/lge/cic/eden/imageloader/ImageLoader;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v10}, Lcom/lge/cic/eden/imageloader/ImageLoader;->access$2(Lcom/lge/cic/eden/imageloader/ImageLoader;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "bitmap["

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->path:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] cannot read by "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 156
    sget-object v10, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    :cond_6d
    :try_start_6d
    iget-object v10, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->this$0:Lcom/lge/cic/eden/imageloader/ImageLoader;

    # getter for: Lcom/lge/cic/eden/imageloader/ImageLoader;->queue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v10}, Lcom/lge/cic/eden/imageloader/ImageLoader;->access$3(Lcom/lge/cic/eden/imageloader/ImageLoader;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v10

    new-instance v11, Landroid/util/Pair;

    iget v12, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->index:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v11, v12, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_81
    .catch Ljava/lang/InterruptedException; {:try_start_6d .. :try_end_81} :catch_f0

    .line 166
    :goto_81
    return v8

    .line 132
    :catch_82
    move-exception v3

    .line 133
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "OutOfMemoryError"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_41

    .line 134
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catch_97
    move-exception v3

    .line 136
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/io/File;

    iget-object v10, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->path:Ljava/lang/String;

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v4, "file":Ljava/io/File;
    if-eqz v4, :cond_a7

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_c5

    .line 138
    :cond_a7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "FileNotFoundException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 141
    iget-object v10, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->this$0:Lcom/lge/cic/eden/imageloader/ImageLoader;

    # getter for: Lcom/lge/cic/eden/imageloader/ImageLoader;->invalidCnt:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v10}, Lcom/lge/cic/eden/imageloader/ImageLoader;->access$1(Lcom/lge/cic/eden/imageloader/ImageLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/16 :goto_41

    .line 146
    :cond_c5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "DamagedImageException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_41

    .line 148
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "file":Ljava/io/File;
    :catch_da
    move-exception v3

    .line 149
    .local v3, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "Exception"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_41

    .line 161
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_f0
    move-exception v3

    .line 162
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 163
    iget-object v8, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->this$0:Lcom/lge/cic/eden/imageloader/ImageLoader;

    # getter for: Lcom/lge/cic/eden/imageloader/ImageLoader;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v8}, Lcom/lge/cic/eden/imageloader/ImageLoader;->access$2(Lcom/lge/cic/eden/imageloader/ImageLoader;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v8

    const-string v10, "InterruptedException by shutdown"

    invoke-virtual {v8, v10}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    move v8, v9

    .line 164
    goto/16 :goto_81
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 171
    iget-object v4, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->this$0:Lcom/lge/cic/eden/imageloader/ImageLoader;

    # getter for: Lcom/lge/cic/eden/imageloader/ImageLoader;->maxAwaitForOrdering:I
    invoke-static {v4}, Lcom/lge/cic/eden/imageloader/ImageLoader;->access$4(Lcom/lge/cic/eden/imageloader/ImageLoader;)I

    move-result v4

    if-lez v4, :cond_86

    .line 172
    iget-object v4, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->this$0:Lcom/lge/cic/eden/imageloader/ImageLoader;

    # getter for: Lcom/lge/cic/eden/imageloader/ImageLoader;->workingIdx:Ljava/util/SortedSet;
    invoke-static {v4}, Lcom/lge/cic/eden/imageloader/ImageLoader;->access$5(Lcom/lge/cic/eden/imageloader/ImageLoader;)Ljava/util/SortedSet;

    move-result-object v4

    iget v5, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 175
    :goto_17
    const/4 v3, 0x0

    .line 177
    .local v3, "lastestStartedIdx":Ljava/lang/Integer;
    :try_start_18
    iget-object v4, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->this$0:Lcom/lge/cic/eden/imageloader/ImageLoader;

    # getter for: Lcom/lge/cic/eden/imageloader/ImageLoader;->workingIdx:Ljava/util/SortedSet;
    invoke-static {v4}, Lcom/lge/cic/eden/imageloader/ImageLoader;->access$5(Lcom/lge/cic/eden/imageloader/ImageLoader;)Ljava/util/SortedSet;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0
    :try_end_26
    .catch Ljava/util/NoSuchElementException; {:try_start_18 .. :try_end_26} :catch_8a

    .line 182
    :goto_26
    if-eqz v3, :cond_37

    iget v4, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->index:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->this$0:Lcom/lge/cic/eden/imageloader/ImageLoader;

    # getter for: Lcom/lge/cic/eden/imageloader/ImageLoader;->maxAwaitForOrdering:I
    invoke-static {v5}, Lcom/lge/cic/eden/imageloader/ImageLoader;->access$4(Lcom/lge/cic/eden/imageloader/ImageLoader;)I

    move-result v5

    if-ge v4, v5, :cond_4e

    .line 183
    :cond_37
    invoke-direct {p0}, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->load()Z

    move-result v4

    if-nez v4, :cond_3e

    .line 204
    .end local v3    # "lastestStartedIdx":Ljava/lang/Integer;
    :goto_3d
    return-void

    .line 187
    .restart local v3    # "lastestStartedIdx":Ljava/lang/Integer;
    :cond_3e
    iget-object v4, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->this$0:Lcom/lge/cic/eden/imageloader/ImageLoader;

    # getter for: Lcom/lge/cic/eden/imageloader/ImageLoader;->workingIdx:Ljava/util/SortedSet;
    invoke-static {v4}, Lcom/lge/cic/eden/imageloader/ImageLoader;->access$5(Lcom/lge/cic/eden/imageloader/ImageLoader;)Ljava/util/SortedSet;

    move-result-object v4

    iget v5, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 191
    :cond_4e
    iget-object v4, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->this$0:Lcom/lge/cic/eden/imageloader/ImageLoader;

    # getter for: Lcom/lge/cic/eden/imageloader/ImageLoader;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v4}, Lcom/lge/cic/eden/imageloader/ImageLoader;->access$2(Lcom/lge/cic/eden/imageloader/ImageLoader;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  waiting until loading previous image completed.("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 193
    const-wide/16 v4, 0xc8

    :try_start_6e
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_71
    .catch Ljava/lang/InterruptedException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_17

    .line 194
    :catch_72
    move-exception v2

    .line 195
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 196
    iget-object v4, p0, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->this$0:Lcom/lge/cic/eden/imageloader/ImageLoader;

    # getter for: Lcom/lge/cic/eden/imageloader/ImageLoader;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v4}, Lcom/lge/cic/eden/imageloader/ImageLoader;->access$2(Lcom/lge/cic/eden/imageloader/ImageLoader;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v4

    const-string v5, "InterruptedException by shutdown"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3d

    .line 202
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "lastestStartedIdx":Ljava/lang/Integer;
    :cond_86
    invoke-direct {p0}, Lcom/lge/cic/eden/imageloader/ImageLoader$ImageLoadingWorker;->load()Z

    goto :goto_3d

    .line 178
    .restart local v3    # "lastestStartedIdx":Ljava/lang/Integer;
    :catch_8a
    move-exception v4

    goto :goto_26
.end method
