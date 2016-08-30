.class public Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;
.super Ljava/lang/Object;
.source "VideoSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;,
        Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;
    }
.end annotation


# static fields
.field private static logger:Lcom/lge/cic/eden/utils/Logger;


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field private context:Landroid/content/Context;

.field private databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

.field private mediaStoreUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaStoreUri"    # Landroid/net/Uri;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->context:Landroid/content/Context;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    .line 104
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 105
    iput-object p2, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->mediaStoreUri:Landroid/net/Uri;

    .line 106
    return-void
.end method

.method static synthetic access$0()Lcom/lge/cic/eden/utils/Logger;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    return-object v0
.end method

.method private createVideoInfosForSyncAtEdenHashMap()Ljava/util/LinkedHashMap;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 455
    new-instance v25, Ljava/util/LinkedHashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/LinkedHashMap;-><init>()V

    .line 457
    .local v25, "videoInfosForSyncAtEden":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/cic/eden/utils/SdcardChecker;->getStorageFilter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    .line 458
    .local v24, "storageFilter":Ljava/lang/String;
    if-eqz v24, :cond_19

    const-string v2, ""

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 518
    :cond_19
    :goto_19
    return-object v25

    .line 461
    :cond_1a
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .local v23, "selectionEdenBuilder":Ljava/lang/StringBuilder;
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v2, " AND "

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    const-string v2, "MEDIA_TYPE"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string v2, " = "

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const/4 v2, 0x3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 470
    .local v5, "selectionEden":Ljava/lang/String;
    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 471
    const-string v3, "MEDIA_ID"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    .line 472
    const-string v3, "FILE_PATH"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    .line 473
    const-string v3, "IS_FAVORITE"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    .line 474
    const-string v3, "DATE_TAKEN"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    .line 475
    const-string v3, "SIZE"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    .line 476
    const-string v3, "LATITUDE"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    .line 477
    const-string v3, "LONGITUDE"

    aput-object v3, v4, v2

    .line 479
    .local v4, "projEden":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 480
    invoke-static {}, Lcom/lge/cic/eden/db/table/MediaInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v3

    .line 483
    const/4 v6, 0x0

    .line 484
    const-string v7, "MEDIA_ID ASC"

    .line 479
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 486
    .local v20, "cursorEden":Landroid/database/Cursor;
    if-eqz v20, :cond_19

    .line 488
    const/4 v2, 0x7

    :try_start_81
    new-array v0, v2, [I

    move-object/from16 v22, v0

    const/4 v2, 0x0

    .line 489
    const-string v3, "MEDIA_ID"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v22, v2

    const/4 v2, 0x1

    .line 490
    const-string v3, "FILE_PATH"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v22, v2

    const/4 v2, 0x2

    .line 491
    const-string v3, "IS_FAVORITE"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v22, v2

    const/4 v2, 0x3

    .line 492
    const-string v3, "DATE_TAKEN"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v22, v2

    const/4 v2, 0x4

    .line 493
    const-string v3, "SIZE"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v22, v2

    const/4 v2, 0x5

    .line 494
    const-string v3, "LATITUDE"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v22, v2

    const/4 v2, 0x6

    .line 495
    const-string v3, "LONGITUDE"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v22, v2

    .line 498
    .local v22, "indices":[I
    const/4 v2, -0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 499
    :goto_d8
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_db
    .catch Ljava/lang/NumberFormatException; {:try_start_81 .. :try_end_db} :catch_131
    .catchall {:try_start_81 .. :try_end_db} :catchall_14f

    move-result v2

    if-nez v2, :cond_e3

    .line 514
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_19

    .line 500
    :cond_e3
    const/4 v2, 0x0

    :try_start_e4
    aget v2, v22, v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 501
    .local v8, "mediaId":J
    const/4 v2, 0x1

    aget v2, v22, v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 502
    .local v10, "filePath":Ljava/lang/String;
    const/4 v2, 0x2

    aget v2, v22, v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 503
    .local v11, "isFavorite":I
    const/4 v2, 0x3

    aget v2, v22, v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 504
    .local v12, "dateTaken":J
    const/4 v2, 0x4

    aget v2, v22, v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 505
    .local v14, "size":J
    const/4 v2, 0x5

    aget v2, v22, v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    .line 506
    .local v16, "latitude":D
    const/4 v2, 0x6

    aget v2, v22, v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 508
    .local v18, "longitude":D
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v7, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;

    .line 509
    invoke-direct/range {v7 .. v19}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;-><init>(JLjava/lang/String;IJJDD)V

    .line 508
    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_130
    .catch Ljava/lang/NumberFormatException; {:try_start_e4 .. :try_end_130} :catch_131
    .catchall {:try_start_e4 .. :try_end_130} :catchall_14f

    goto :goto_d8

    .line 511
    .end local v8    # "mediaId":J
    .end local v10    # "filePath":Ljava/lang/String;
    .end local v11    # "isFavorite":I
    .end local v12    # "dateTaken":J
    .end local v14    # "size":J
    .end local v16    # "latitude":D
    .end local v18    # "longitude":D
    .end local v22    # "indices":[I
    :catch_131
    move-exception v21

    .line 512
    .local v21, "e":Ljava/lang/NumberFormatException;
    :try_start_132
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "NumberFormatException: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V
    :try_end_14a
    .catchall {:try_start_132 .. :try_end_14a} :catchall_14f

    .line 514
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_19

    .line 513
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    :catchall_14f
    move-exception v2

    .line 514
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 515
    throw v2
.end method

.method private createVideoInfosForSyncAtStoreHashMap(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .registers 26
    .param p1, "rootPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 522
    const-string v5, "(storage_type IN (65537,131073)) AND video_datetaken > 0 AND mime_type = \'video/mp4\' AND (latitude != 0  AND longitude != 0) AND (latitude != \'\' AND longitude != \'\')"

    .line 523
    .local v5, "selectionStore":Ljava/lang/String;
    if-eqz p1, :cond_2f

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " like \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 527
    :cond_2f
    new-instance v23, Ljava/util/LinkedHashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedHashMap;-><init>()V

    .line 529
    .local v23, "videoInfosForSyncAtStore":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;>;"
    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 530
    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    .line 531
    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    .line 532
    sget-object v3, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->COLUMN_NAME_IS_FAVORITE:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x3

    .line 533
    sget-object v3, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->COLUMN_NAME_VIDEO_DATETAKEN:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x4

    .line 534
    const-string v3, "_size"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    .line 535
    const-string v3, "latitude"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    .line 536
    const-string v3, "longitude"

    aput-object v3, v4, v2

    .line 540
    .local v4, "projStore":[Ljava/lang/String;
    const/16 v20, 0x0

    .line 542
    .local v20, "cursorStore":Landroid/database/Cursor;
    :try_start_5c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->mediaStoreUri:Landroid/net/Uri;

    .line 546
    const/4 v6, 0x0

    .line 547
    const-string v7, "_id ASC"

    .line 542
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6e
    .catch Ljava/lang/SecurityException; {:try_start_5c .. :try_end_6e} :catch_d3

    move-result-object v20

    .line 553
    :goto_6f
    if-eqz v20, :cond_d2

    .line 555
    const/4 v2, 0x7

    :try_start_72
    new-array v0, v2, [I

    move-object/from16 v22, v0

    const/4 v2, 0x0

    .line 556
    const-string v3, "_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v22, v2

    const/4 v2, 0x1

    .line 557
    const-string v3, "_data"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v22, v2

    const/4 v2, 0x2

    .line 558
    sget-object v3, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->COLUMN_NAME_IS_FAVORITE:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v22, v2

    const/4 v2, 0x3

    .line 559
    sget-object v3, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->COLUMN_NAME_VIDEO_DATETAKEN:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v22, v2

    const/4 v2, 0x4

    .line 560
    const-string v3, "_size"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v22, v2

    const/4 v2, 0x5

    .line 561
    const-string v3, "latitude"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v22, v2

    const/4 v2, 0x6

    .line 562
    const-string v3, "longitude"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v22, v2

    .line 565
    .local v22, "indices":[I
    const/4 v2, -0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 566
    :goto_c9
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_cc
    .catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_cc} :catch_13d
    .catchall {:try_start_72 .. :try_end_cc} :catchall_15b

    move-result v2

    if-nez v2, :cond_ef

    .line 581
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 584
    .end local v22    # "indices":[I
    :cond_d2
    :goto_d2
    return-object v23

    .line 548
    :catch_d3
    move-exception v21

    .line 549
    .local v21, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "SecurityException : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 550
    const/16 v20, 0x0

    goto :goto_6f

    .line 567
    .end local v21    # "e":Ljava/lang/SecurityException;
    .restart local v22    # "indices":[I
    :cond_ef
    const/4 v2, 0x0

    :try_start_f0
    aget v2, v22, v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 568
    .local v8, "mediaId":J
    const/4 v2, 0x1

    aget v2, v22, v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 569
    .local v10, "filePath":Ljava/lang/String;
    const/4 v2, 0x2

    aget v2, v22, v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 570
    .local v11, "isFavorite":I
    const/4 v2, 0x3

    aget v2, v22, v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 571
    .local v12, "dateTaken":J
    const/4 v2, 0x4

    aget v2, v22, v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 572
    .local v14, "size":J
    const/4 v2, 0x5

    aget v2, v22, v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    .line 573
    .local v16, "latitude":D
    const/4 v2, 0x6

    aget v2, v22, v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 575
    .local v18, "longitude":D
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v7, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;

    .line 576
    invoke-direct/range {v7 .. v19}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;-><init>(JLjava/lang/String;IJJDD)V

    .line 575
    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13c
    .catch Ljava/lang/NumberFormatException; {:try_start_f0 .. :try_end_13c} :catch_13d
    .catchall {:try_start_f0 .. :try_end_13c} :catchall_15b

    goto :goto_c9

    .line 578
    .end local v8    # "mediaId":J
    .end local v10    # "filePath":Ljava/lang/String;
    .end local v11    # "isFavorite":I
    .end local v12    # "dateTaken":J
    .end local v14    # "size":J
    .end local v16    # "latitude":D
    .end local v18    # "longitude":D
    .end local v22    # "indices":[I
    :catch_13d
    move-exception v21

    .line 579
    .local v21, "e":Ljava/lang/NumberFormatException;
    :try_start_13e
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "NumberFormatException: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V
    :try_end_156
    .catchall {:try_start_13e .. :try_end_156} :catchall_15b

    .line 581
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_d2

    .line 580
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    :catchall_15b
    move-exception v2

    .line 581
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 582
    throw v2
.end method

.method private insertForCopiedVideoList(Ljava/util/LinkedHashMap;Ljava/util/ArrayList;)Z
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "videoInfosForSyncAtStore":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;>;"
    .local p2, "listForInsert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 267
    const/4 v4, 0x0

    .line 372
    :goto_7
    return v4

    .line 270
    :cond_8
    sget-object v4, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "                                  insertForCopiedVideoList"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 271
    const-string v4, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->makeSelectionStringForSpecificMedia(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    .line 273
    .local v7, "selectionStore":Ljava/lang/String;
    const/16 v4, 0xa

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 274
    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    .line 275
    const-string v5, "date_modified"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    .line 276
    const-string v5, "mime_type"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    .line 277
    const-string v5, "title"

    aput-object v5, v6, v4

    const/4 v4, 0x4

    .line 278
    const-string v5, "latitude"

    aput-object v5, v6, v4

    const/4 v4, 0x5

    .line 279
    const-string v5, "longitude"

    aput-object v5, v6, v4

    const/4 v4, 0x6

    .line 280
    const-string v5, "bucket_id"

    aput-object v5, v6, v4

    const/4 v4, 0x7

    .line 281
    const-string v5, "width"

    aput-object v5, v6, v4

    const/16 v4, 0x8

    .line 282
    const-string v5, "height"

    aput-object v5, v6, v4

    const/16 v4, 0x9

    .line 283
    sget-object v5, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->COLUMN_NAME_STORAGE_ID:Ljava/lang/String;

    aput-object v5, v6, v4

    .line 286
    .local v6, "projStore":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 289
    .local v10, "cursorStore":Landroid/database/Cursor;
    :try_start_52
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 290
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->mediaStoreUri:Landroid/net/Uri;

    .line 293
    const/4 v8, 0x0

    .line 294
    const-string v9, "_id ASC"

    .line 289
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_64
    .catch Ljava/lang/SecurityException; {:try_start_52 .. :try_end_64} :catch_a7
    .catchall {:try_start_52 .. :try_end_64} :catchall_e1

    move-result-object v10

    .line 299
    :goto_65
    if-eqz v10, :cond_9f

    .line 300
    const/4 v4, -0x1

    :try_start_68
    invoke-interface {v10, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 302
    array-length v4, v6

    new-array v13, v4, [I

    .line 303
    .local v13, "indicesStore":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_6f
    array-length v4, v6

    if-lt v12, v4, :cond_c2

    .line 306
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v15, "insertMediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_cd

    .line 356
    :goto_81
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9f

    .line 357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->isSyncAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1ee

    .line 359
    sget-object v4, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "insertForCopiedVideoList : isInternalMounted true"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-virtual {v4, v15}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->bulkInsert(Ljava/util/ArrayList;)I
    :try_end_9f
    .catchall {:try_start_68 .. :try_end_9f} :catchall_e1

    .line 367
    .end local v12    # "i":I
    .end local v13    # "indicesStore":[I
    .end local v15    # "insertMediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :cond_9f
    :goto_9f
    if-eqz v10, :cond_a4

    .line 368
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 372
    :cond_a4
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 295
    :catch_a7
    move-exception v11

    .line 296
    .local v11, "e":Ljava/lang/SecurityException;
    :try_start_a8
    sget-object v4, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "SecurityException : "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 297
    const/4 v10, 0x0

    goto :goto_65

    .line 304
    .end local v11    # "e":Ljava/lang/SecurityException;
    .restart local v12    # "i":I
    .restart local v13    # "indicesStore":[I
    :cond_c2
    aget-object v4, v6, v12

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    aput v4, v13, v12

    .line 303
    add-int/lit8 v12, v12, 0x1

    goto :goto_6f

    .line 308
    .restart local v15    # "insertMediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :cond_cd
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    .line 309
    .local v20, "mediaIdAtStore":Ljava/lang/Long;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_e8

    .line 310
    sget-object v4, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "end of cursor(store)"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V
    :try_end_e0
    .catchall {:try_start_a8 .. :try_end_e0} :catchall_e1

    goto :goto_81

    .line 366
    .end local v12    # "i":I
    .end local v13    # "indicesStore":[I
    .end local v15    # "insertMediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .end local v20    # "mediaIdAtStore":Ljava/lang/Long;
    :catchall_e1
    move-exception v4

    .line 367
    if-eqz v10, :cond_e7

    .line 368
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 370
    :cond_e7
    throw v4

    .line 314
    .restart local v12    # "i":I
    .restart local v13    # "indicesStore":[I
    .restart local v15    # "insertMediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .restart local v20    # "mediaIdAtStore":Ljava/lang/Long;
    :cond_e8
    :try_start_e8
    new-instance v21, Lcom/lge/cic/eden/db/type/MediaInfo;

    invoke-direct/range {v21 .. v21}, Lcom/lge/cic/eden/db/type/MediaInfo;-><init>()V

    .line 315
    .local v21, "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    const/4 v5, 0x0

    aget v5, v13, v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, v21

    iput-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    .line 317
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    move-wide/from16 v22, v0

    cmp-long v5, v8, v22

    if-eqz v5, :cond_130

    .line 318
    sget-object v5, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  dismatched mediaId(store): "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_7b

    .line 322
    :cond_130
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;

    .line 324
    .local v14, "infoStore":Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;
    iget-object v5, v14, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->filePath:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    .line 325
    iget-wide v8, v14, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->dateTaken:J

    move-object/from16 v0, v21

    iput-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    .line 327
    const/4 v5, 0x1

    aget v5, v13, v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, v21

    iput-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateModified:J

    .line 328
    const/4 v5, 0x2

    aget v5, v13, v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    .line 329
    const/4 v5, 0x3

    aget v5, v13, v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    .line 331
    const/4 v5, 0x4

    aget v5, v13, v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    .line 332
    .local v16, "latitude":D
    const/4 v5, 0x5

    aget v5, v13, v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 333
    .local v18, "longitude":D
    const-wide/16 v8, 0x0

    cmpl-double v5, v16, v8

    if-nez v5, :cond_1e1

    const-wide/16 v8, 0x0

    cmpl-double v5, v18, v8

    if-nez v5, :cond_1e1

    .line 334
    const-wide v8, -0x3f70c80000000000L    # -999.0

    move-object/from16 v0, v21

    iput-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    .line 335
    const-wide v8, -0x3f70c80000000000L    # -999.0

    move-object/from16 v0, v21

    iput-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    .line 341
    :goto_193
    const/4 v5, 0x6

    aget v5, v13, v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    .line 342
    const/4 v5, 0x3

    move-object/from16 v0, v21

    iput v5, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaType:I

    .line 344
    const/4 v5, 0x7

    aget v5, v13, v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v21

    iput v5, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->width:I

    .line 345
    const/16 v5, 0x8

    aget v5, v13, v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v21

    iput v5, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->height:I

    .line 346
    const/16 v5, 0x9

    aget v5, v13, v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v21

    iput v5, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->storageId:I

    .line 347
    iget v5, v14, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->isFavorite:I

    move-object/from16 v0, v21

    iput v5, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->isFavorite:I

    .line 348
    iget-wide v8, v14, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->size:J

    move-object/from16 v0, v21

    iput-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->size:J

    .line 350
    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    move-object/from16 v0, v21

    iput-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    .line 352
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7b

    .line 337
    :cond_1e1
    move-wide/from16 v0, v16

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    .line 338
    move-wide/from16 v0, v18

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    goto :goto_193

    .line 362
    .end local v14    # "infoStore":Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;
    .end local v16    # "latitude":D
    .end local v18    # "longitude":D
    .end local v20    # "mediaIdAtStore":Ljava/lang/Long;
    .end local v21    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    :cond_1ee
    sget-object v4, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "insertForCopiedVideoList : isInternalMounted false"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V
    :try_end_1f5
    .catchall {:try_start_e8 .. :try_end_1f5} :catchall_e1

    goto/16 :goto_9f
.end method

.method private makeSelectionStringForSpecificMedia(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 8
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 622
    .local p2, "mediaIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 623
    .local v1, "selectionStringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_35

    .line 626
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 627
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 623
    :cond_35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 624
    .local v0, "mediaId":Ljava/lang/Long;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c
.end method

.method private makeSelectionStringForSpecificMedia(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 10
    .param p1, "columnName"    # Ljava/lang/String;
    .param p3, "useKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 632
    .local p2, "mediaIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 634
    .local v2, "selectionStringBuilder":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_4b

    .line 635
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 644
    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 645
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 635
    :cond_3b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 636
    .local v1, "mediaId":Ljava/lang/Long;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 639
    .end local v1    # "mediaId":Ljava/lang/Long;
    :cond_4b
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 640
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_53
.end method

.method private makeSyncList(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;",
            ">;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "videoInfosForSyncAtStore":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;>;"
    .local p2, "videoInfosForSyncAtEden":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;>;"
    .local p3, "listForInsert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p4, "listForUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p5, "listForDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 379
    .local v2, "chkTime":J
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Long;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Long;

    .line 380
    .local v8, "keyListOfStore":[Ljava/lang/Long;
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Long;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Long;

    .line 382
    .local v7, "keyListOfEden":[Ljava/lang/Long;
    array-length v10, v8

    .line 383
    .local v10, "nStore":I
    array-length v9, v7

    .line 384
    .local v9, "nEden":I
    const/4 v12, 0x0

    .line 385
    .local v12, "ptrStore":I
    const/4 v11, 0x0

    .line 389
    .local v11, "ptrEden":I
    :cond_2c
    :goto_2c
    if-ge v12, v10, :cond_71

    const/4 v6, 0x1

    .line 390
    .local v6, "hasStore":Z
    :goto_2f
    if-ge v11, v9, :cond_73

    const/4 v5, 0x1

    .line 392
    .local v5, "hasInfo":Z
    :goto_32
    const/4 v15, 0x0

    .line 393
    .local v15, "vStore":Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;
    const/4 v14, 0x0

    .line 395
    .local v14, "vEden":Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;
    :try_start_34
    sget-object v13, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->END:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    .line 396
    .local v13, "type":Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;
    if-eqz v6, :cond_9c

    if-eqz v5, :cond_9c

    .line 397
    aget-object v16, v8, v12

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;

    move-object v15, v0

    .line 398
    aget-object v16, v7, v11

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;

    move-object v14, v0

    .line 400
    iget-wide v0, v15, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->mediaId:J

    move-wide/from16 v16, v0

    iget-wide v0, v14, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->mediaId:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-gez v16, :cond_75

    .line 401
    sget-object v13, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->INSERT:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    .line 425
    :cond_66
    :goto_66
    sget-object v16, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->SKIP:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    move-object/from16 v0, v16

    if-ne v13, v0, :cond_c7

    .line 426
    add-int/lit8 v12, v12, 0x1

    .line 427
    add-int/lit8 v11, v11, 0x1

    .line 429
    goto :goto_2c

    .line 389
    .end local v5    # "hasInfo":Z
    .end local v6    # "hasStore":Z
    .end local v13    # "type":Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;
    .end local v14    # "vEden":Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;
    .end local v15    # "vStore":Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;
    :cond_71
    const/4 v6, 0x0

    goto :goto_2f

    .line 390
    .restart local v6    # "hasStore":Z
    :cond_73
    const/4 v5, 0x0

    goto :goto_32

    .line 403
    .restart local v5    # "hasInfo":Z
    .restart local v13    # "type":Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;
    .restart local v14    # "vEden":Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;
    .restart local v15    # "vStore":Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;
    :cond_75
    iget-wide v0, v15, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->mediaId:J

    move-wide/from16 v16, v0

    iget-wide v0, v14, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->mediaId:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-nez v16, :cond_8d

    .line 404
    invoke-virtual {v15, v14}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8a

    .line 405
    sget-object v13, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->UPDATE:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    .line 406
    goto :goto_66

    .line 407
    :cond_8a
    sget-object v13, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->SKIP:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    .line 409
    goto :goto_66

    :cond_8d
    iget-wide v0, v15, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->mediaId:J

    move-wide/from16 v16, v0

    iget-wide v0, v14, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->mediaId:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-lez v16, :cond_66

    .line 410
    sget-object v13, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->DELETE:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    .line 413
    goto :goto_66

    :cond_9c
    if-eqz v6, :cond_b0

    .line 414
    aget-object v16, v8, v12

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;

    move-object v15, v0

    .line 415
    sget-object v13, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->INSERT:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    .line 417
    goto :goto_66

    :cond_b0
    if-eqz v5, :cond_c4

    .line 418
    aget-object v16, v7, v11

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;

    move-object v14, v0

    .line 419
    sget-object v13, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->DELETE:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    .line 421
    goto :goto_66

    .line 422
    :cond_c4
    sget-object v13, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->END:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    goto :goto_66

    .line 429
    :cond_c7
    sget-object v16, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->END:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;
    :try_end_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_c9} :catch_107

    move-object/from16 v0, v16

    if-ne v13, v0, :cond_ee

    .line 451
    .end local v13    # "type":Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;
    :goto_cd
    sget-object v16, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "TIME(make list of sync): "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v2

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "ms"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 452
    return-void

    .line 432
    .restart local v13    # "type":Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;
    :cond_ee
    :try_start_ee
    sget-object v16, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->INSERT:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    move-object/from16 v0, v16

    if-ne v13, v0, :cond_121

    .line 433
    add-int/lit8 v12, v12, 0x1

    .line 434
    iget-wide v0, v15, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->mediaId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_105
    .catch Ljava/lang/NumberFormatException; {:try_start_ee .. :try_end_105} :catch_107

    goto/16 :goto_2c

    .line 447
    .end local v13    # "type":Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;
    :catch_107
    move-exception v4

    .line 448
    .local v4, "e":Ljava/lang/NumberFormatException;
    sget-object v16, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "NumberFormatException: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    goto :goto_cd

    .line 436
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v13    # "type":Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;
    :cond_121
    :try_start_121
    sget-object v16, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->UPDATE:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    move-object/from16 v0, v16

    if-ne v13, v0, :cond_13c

    .line 437
    add-int/lit8 v12, v12, 0x1

    .line 438
    add-int/lit8 v11, v11, 0x1

    .line 439
    iget-wide v0, v14, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->mediaId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2c

    .line 441
    :cond_13c
    sget-object v16, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->DELETE:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    move-object/from16 v0, v16

    if-ne v13, v0, :cond_2c

    .line 442
    add-int/lit8 v11, v11, 0x1

    .line 444
    iget-wide v0, v14, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->mediaId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_153
    .catch Ljava/lang/NumberFormatException; {:try_start_121 .. :try_end_153} :catch_107

    goto/16 :goto_2c
.end method

.method private updateForUpdatedVideoList(Ljava/util/LinkedHashMap;Ljava/util/ArrayList;)Z
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "videoInfosForSyncAtStore":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;>;"
    .local p2, "listForUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 184
    const/4 v2, 0x0

    .line 261
    :goto_7
    return v2

    .line 188
    :cond_8
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "                                  updateForUpdatedVideoList"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 190
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 191
    .local v15, "mapForTitle":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    const-string v2, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->makeSelectionStringForSpecificMedia(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 194
    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    .line 195
    const-string v3, "title"

    aput-object v3, v4, v2

    .line 197
    .local v4, "projStore":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 200
    .local v11, "cursorStore":Landroid/database/Cursor;
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->mediaStoreUri:Landroid/net/Uri;

    .line 204
    const/4 v6, 0x0

    .line 205
    const-string v7, "_id ASC"

    .line 200
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3e
    .catch Ljava/lang/SecurityException; {:try_start_2c .. :try_end_3e} :catch_95
    .catchall {:try_start_2c .. :try_end_3e} :catchall_d2

    move-result-object v11

    .line 210
    :goto_3f
    if-eqz v11, :cond_52

    .line 211
    const/4 v2, -0x1

    :try_start_42
    invoke-interface {v11, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 213
    array-length v2, v4

    new-array v14, v2, [I

    .line 214
    .local v14, "indicesStore":[I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_49
    array-length v2, v4

    if-lt v13, v2, :cond_b0

    .line 218
    :goto_4c
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_d2

    move-result v2

    if-nez v2, :cond_bb

    .line 223
    .end local v13    # "i":I
    .end local v14    # "indicesStore":[I
    :cond_52
    if-eqz v11, :cond_57

    .line 224
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_57
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v10, "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d9

    .line 249
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v8, "bundle":Landroid/os/Bundle;
    const-string v2, "values"

    invoke-virtual {v8, v2, v10}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->isSyncAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_15f

    .line 253
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "updateForUpdatedVideoList : isInternalMounted true"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const-string v6, "BulkUpdate"

    .line 255
    sget-object v7, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 254
    invoke-virtual {v2, v3, v6, v7, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 261
    :goto_92
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 206
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v10    # "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_95
    move-exception v12

    .line 207
    .local v12, "e":Ljava/lang/SecurityException;
    :try_start_96
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "SecurityException : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 208
    const/4 v11, 0x0

    goto :goto_3f

    .line 215
    .end local v12    # "e":Ljava/lang/SecurityException;
    .restart local v13    # "i":I
    .restart local v14    # "indicesStore":[I
    :cond_b0
    aget-object v2, v4, v13

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    aput v2, v14, v13

    .line 214
    add-int/lit8 v13, v13, 0x1

    goto :goto_49

    .line 219
    :cond_bb
    const/4 v2, 0x0

    aget v2, v14, v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v14, v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d0
    .catchall {:try_start_96 .. :try_end_d0} :catchall_d2

    goto/16 :goto_4c

    .line 222
    .end local v13    # "i":I
    .end local v14    # "indicesStore":[I
    :catchall_d2
    move-exception v2

    .line 223
    if-eqz v11, :cond_d8

    .line 224
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_d8
    throw v2

    .line 232
    .restart local v10    # "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_d9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    .line 233
    .local v16, "mediaId":Ljava/lang/Long;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;

    .line 234
    .local v17, "vStore":Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;
    if-nez v17, :cond_103

    .line 235
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dismatched mediaId(update): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_60

    .line 239
    :cond_103
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 240
    .local v9, "contentValues":Landroid/content/ContentValues;
    const-string v2, "MEDIA_ID"

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->mediaId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v9, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 241
    const-string v2, "FILE_PATH"

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->filePath:Ljava/lang/String;

    invoke-virtual {v9, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v2, "IS_FAVORITE"

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->isFavorite:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    const-string v6, "TITLE"

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->mediaId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v2, "LATITUDE"

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v9, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 245
    const-string v2, "LONGITUDE"

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v9, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 246
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_60

    .line 257
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    .end local v16    # "mediaId":Ljava/lang/Long;
    .end local v17    # "vStore":Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :cond_15f
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "updateForUpdatedVideoList : isInternalMounted false"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_92
.end method


# virtual methods
.method public deleteForDeletedVideoList(Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "listForDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 588
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 589
    const/4 v1, 0x0

    .line 617
    :goto_8
    return v1

    .line 591
    :cond_9
    iget-object v1, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->isSyncAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 593
    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "deleteForDeletedVideoList : isInternalMounted true"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 594
    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "                                  deleteForDeletedVideoList"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 595
    const-string v1, "MEDIA_ID"

    invoke-direct {p0, v1, p1}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->makeSelectionStringForSpecificMedia(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "whereString":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/lge/cic/eden/db/table/MediaInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 598
    iget-object v1, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/lge/cic/eden/db/table/FaceInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 599
    iget-object v1, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 602
    const-string v0, "ACTIVITY_ID NOT IN (SELECT distinct(ACTIVITY_ID) FROM EVENT_MEDIA_MAP)"

    .line 603
    iget-object v1, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 606
    const-string v0, "EVENT_ID NOT IN (SELECT distinct(EVENT_ID) FROM EVENT_MEDIA_MAP)"

    .line 607
    iget-object v1, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/lge/cic/eden/db/table/EventInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 610
    const-string v0, "(ACTIVITY_ID NOT IN (SELECT distinct(ACTIVITY_ID) FROM ACTIVITY_INFO)) OR (EVENT_ID NOT IN (SELECT distinct(EVENT_ID) FROM EVENT_INFO))"

    .line 611
    iget-object v1, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 617
    .end local v0    # "whereString":Ljava/lang/String;
    :goto_79
    const/4 v1, 0x1

    goto :goto_8

    .line 613
    :cond_7b
    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "deleteForDeletedVideoList : isInternalMounted false"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_79
.end method

.method public syncVideoMedia(Ljava/lang/String;Z)Z
    .registers 19
    .param p1, "rootPath"    # Ljava/lang/String;
    .param p2, "isFullSync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v11, 0x0

    .line 111
    .local v11, "status":Z
    :try_start_1
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "syncVideoMedia() - isFullSync :"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 114
    .local v8, "chkTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->isSyncAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 115
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v12, "syncVideoMedia() : first_check (ignored)"

    invoke-virtual {v2, v12}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 116
    const/4 v2, 0x0

    .line 179
    .end local v8    # "chkTime":J
    :goto_2d
    return v2

    .line 118
    .restart local v8    # "chkTime":J
    :cond_2e
    invoke-direct/range {p0 .. p1}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->createVideoInfosForSyncAtStoreHashMap(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 119
    .local v3, "videoInfosForSyncAtStore":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;>;"
    const-wide/16 v12, 0x0

    const/4 v2, 0x1

    invoke-static {v12, v13, v2}, Ljava/lang/Thread;->sleep(JI)V

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->isSyncAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 122
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v12, "syncVideoMedia() : second_check (ignored)"

    invoke-virtual {v2, v12}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 123
    const/4 v2, 0x0

    goto :goto_2d

    .line 125
    :cond_4b
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->createVideoInfosForSyncAtEdenHashMap()Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 126
    .local v4, "videoInfosForSyncAtEden":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;>;"
    const-wide/16 v12, 0x0

    const/4 v2, 0x1

    invoke-static {v12, v13, v2}, Ljava/lang/Thread;->sleep(JI)V

    .line 128
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "    # of Store = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", EDEN = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 129
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "      TIME(get from DB) : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 133
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v5, "listForInsert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v6, "listForUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "listForDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v2, p0

    .line 137
    invoke-direct/range {v2 .. v7}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->makeSyncList(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 139
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "  #list of all = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 140
    const-string v13, ", insert = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 141
    const-string v13, ", update = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 143
    const-string v13, ", delete = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 139
    invoke-virtual {v2, v12}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 145
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "      TIME(make list of same) : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->isSyncAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_139

    .line 150
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v12, "syncVideoMedia() : final_check (ignored)"

    invoke-virtual {v2, v12}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 151
    const/4 v2, 0x0

    goto/16 :goto_2d

    .line 154
    :cond_139
    if-eqz p2, :cond_167

    .line 155
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->insertForCopiedVideoList(Ljava/util/LinkedHashMap;Ljava/util/ArrayList;)Z

    move-result v2

    or-int/2addr v11, v2

    .line 156
    const-wide/16 v12, 0x0

    const/4 v2, 0x1

    invoke-static {v12, v13, v2}, Ljava/lang/Thread;->sleep(JI)V

    .line 157
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "      TIME(insert) : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 160
    :cond_167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 162
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->updateForUpdatedVideoList(Ljava/util/LinkedHashMap;Ljava/util/ArrayList;)Z

    move-result v2

    or-int/2addr v11, v2

    .line 163
    const-wide/16 v12, 0x0

    const/4 v2, 0x1

    invoke-static {v12, v13, v2}, Ljava/lang/Thread;->sleep(JI)V

    .line 164
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "      TIME(update) : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 167
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->deleteForDeletedVideoList(Ljava/util/ArrayList;)Z

    move-result v2

    or-int/2addr v11, v2

    .line 168
    const-wide/16 v12, 0x0

    const/4 v2, 0x1

    invoke-static {v12, v13, v2}, Ljava/lang/Thread;->sleep(JI)V

    .line 169
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "      TIME(delete) : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1ca
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1ca} :catch_1cd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1ca} :catch_1ee

    .end local v3    # "videoInfosForSyncAtStore":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;>;"
    .end local v4    # "videoInfosForSyncAtEden":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;>;"
    .end local v5    # "listForInsert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v6    # "listForUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v7    # "listForDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v8    # "chkTime":J
    :goto_1ca
    move v2, v11

    .line 179
    goto/16 :goto_2d

    .line 173
    :catch_1cd
    move-exception v10

    .line 174
    .local v10, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 175
    new-instance v2, Ljava/lang/InterruptedException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "syncVideoMedia() interrupted\n"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :catch_1ee
    move-exception v10

    .line 177
    .local v10, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "syncVideoMedia(): "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1ca
.end method
