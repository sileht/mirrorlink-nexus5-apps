.class public Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;
.super Ljava/lang/Object;
.source "ImageSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;,
        Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;
    }
.end annotation


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field private context:Landroid/content/Context;

.field private databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

.field private logger:Lcom/lge/cic/eden/utils/Logger;

.field private mediaStoreUri:Landroid/net/Uri;

.field private projEden:[Ljava/lang/String;

.field private projStore:[Ljava/lang/String;

.field projStoreForUpdate:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaStoreUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-class v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 47
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 48
    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 49
    const-string v1, "date_modified"

    aput-object v1, v0, v4

    .line 50
    const-string v1, "mime_type"

    aput-object v1, v0, v5

    .line 51
    const-string v1, "title"

    aput-object v1, v0, v6

    .line 52
    const-string v1, "latitude"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 53
    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 54
    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 55
    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 56
    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 57
    sget-object v2, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->COLUMN_NAME_STORAGE_ID:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->projStore:[Ljava/lang/String;

    .line 60
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 61
    const-string v1, "MEDIA_ID"

    aput-object v1, v0, v3

    .line 62
    const-string v1, "ACTIVITY_ID"

    aput-object v1, v0, v4

    .line 63
    const-string v1, "CONTENT_TYPE"

    aput-object v1, v0, v5

    .line 64
    const-string v1, "REPRESENTATIVE_ID"

    aput-object v1, v0, v6

    .line 65
    const-string v1, "SIMILAR_COUNT"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 66
    const-string v2, "SCENE_TYPE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 67
    const-string v2, "PHOTO_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 68
    const-string v2, "PHOTO_NICENESSSCORE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 69
    const-string v2, "VISIBILITY_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 70
    const-string v2, "ROI_POINT"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->projEden:[Ljava/lang/String;

    .line 73
    new-array v0, v5, [Ljava/lang/String;

    .line 74
    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 75
    const-string v1, "title"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->projStoreForUpdate:[Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->context:Landroid/content/Context;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    .line 144
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 145
    iput-object p2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->mediaStoreUri:Landroid/net/Uri;

    .line 146
    return-void
.end method

.method static synthetic access$0(Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;)Lcom/lge/cic/eden/utils/Logger;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    return-object v0
.end method

.method private createImageInfosForSyncAtEdenHashMap()Ljava/util/LinkedHashMap;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 474
    new-instance v24, Ljava/util/LinkedHashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/LinkedHashMap;-><init>()V

    .line 476
    .local v24, "imageInfosForSyncAtEden":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/cic/eden/utils/SdcardChecker;->getStorageFilter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    .line 477
    .local v27, "storageFilter":Ljava/lang/String;
    if-eqz v27, :cond_19

    const-string v2, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 545
    :cond_19
    :goto_19
    return-object v24

    .line 481
    :cond_1a
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v26, "selectionEdenBuilder":Ljava/lang/StringBuilder;
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const-string v2, " AND "

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const-string v2, "MEDIA_TYPE"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const-string v2, " = "

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 490
    .local v5, "selectionEden":Ljava/lang/String;
    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 491
    const-string v3, "MEDIA_ID"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    .line 492
    const-string v3, "FILE_PATH"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    .line 493
    const-string v3, "ORIENTATION"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    .line 494
    const-string v3, "IS_FAVORITE"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    .line 495
    const-string v3, "DATE_TAKEN"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    .line 496
    const-string v3, "SIZE"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    .line 497
    const-string v3, "LATITUDE"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    .line 498
    const-string v3, "LONGITUDE"

    aput-object v3, v4, v2

    .line 500
    .local v4, "projEden":[Ljava/lang/String;
    const/16 v22, 0x0

    .line 501
    .local v22, "cursorEden":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 502
    invoke-static {}, Lcom/lge/cic/eden/db/table/MediaInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v3

    .line 505
    const/4 v6, 0x0

    .line 506
    const-string v7, "MEDIA_ID ASC"

    .line 501
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 508
    if-eqz v22, :cond_19

    .line 510
    const/16 v2, 0x8

    :try_start_8a
    new-array v0, v2, [I

    move-object/from16 v25, v0

    const/4 v2, 0x0

    .line 511
    const-string v3, "MEDIA_ID"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v25, v2

    const/4 v2, 0x1

    .line 512
    const-string v3, "FILE_PATH"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v25, v2

    const/4 v2, 0x2

    .line 513
    const-string v3, "ORIENTATION"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v25, v2

    const/4 v2, 0x3

    .line 514
    const-string v3, "IS_FAVORITE"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v25, v2

    const/4 v2, 0x4

    .line 515
    const-string v3, "DATE_TAKEN"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v25, v2

    const/4 v2, 0x5

    .line 516
    const-string v3, "SIZE"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v25, v2

    const/4 v2, 0x6

    .line 517
    const-string v3, "LATITUDE"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v25, v2

    const/4 v2, 0x7

    .line 518
    const-string v3, "LONGITUDE"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v25, v2

    .line 521
    .local v25, "indices":[I
    const/4 v2, -0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 522
    :goto_ec
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_ef
    .catch Ljava/lang/NumberFormatException; {:try_start_8a .. :try_end_ef} :catch_150
    .catchall {:try_start_8a .. :try_end_ef} :catchall_170

    move-result v2

    if-nez v2, :cond_f7

    .line 541
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_19

    .line 523
    :cond_f7
    const/4 v2, 0x0

    :try_start_f8
    aget v2, v25, v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 524
    .local v9, "mediaId":J
    const/4 v2, 0x1

    aget v2, v25, v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 525
    .local v11, "filePath":Ljava/lang/String;
    const/4 v2, 0x2

    aget v2, v25, v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 526
    .local v12, "orientation":I
    const/4 v2, 0x3

    aget v2, v25, v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 527
    .local v13, "isFavorite":I
    const/4 v2, 0x4

    aget v2, v25, v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 528
    .local v14, "dateTaken":J
    const/4 v2, 0x5

    aget v2, v25, v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 529
    .local v16, "size":J
    const/4 v2, 0x6

    aget v2, v25, v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 530
    .local v18, "latitude":D
    const/4 v2, 0x7

    aget v2, v25, v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    .line 532
    .local v20, "longitude":D
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v7, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;

    move-object/from16 v8, p0

    .line 533
    invoke-direct/range {v7 .. v21}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;-><init>(Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;JLjava/lang/String;IIJJDD)V

    .line 532
    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14f
    .catch Ljava/lang/NumberFormatException; {:try_start_f8 .. :try_end_14f} :catch_150
    .catchall {:try_start_f8 .. :try_end_14f} :catchall_170

    goto :goto_ec

    .line 538
    .end local v9    # "mediaId":J
    .end local v11    # "filePath":Ljava/lang/String;
    .end local v12    # "orientation":I
    .end local v13    # "isFavorite":I
    .end local v14    # "dateTaken":J
    .end local v16    # "size":J
    .end local v18    # "latitude":D
    .end local v20    # "longitude":D
    .end local v25    # "indices":[I
    :catch_150
    move-exception v23

    .line 539
    .local v23, "e":Ljava/lang/NumberFormatException;
    :try_start_151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "NumberFormatException: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V
    :try_end_16b
    .catchall {:try_start_151 .. :try_end_16b} :catchall_170

    .line 541
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_19

    .line 540
    .end local v23    # "e":Ljava/lang/NumberFormatException;
    :catchall_170
    move-exception v2

    .line 541
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 542
    throw v2
.end method

.method private createImageInfosForSyncAtStoreHashMap(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .registers 28
    .param p1, "rootPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 550
    const-string v5, "(storage_type IN (65537,131073)) AND (latitude != 0  AND longitude != 0) AND (latitude != \'\' AND longitude != \'\')"

    .line 551
    .local v5, "selectionStore":Ljava/lang/String;
    if-eqz p1, :cond_2f

    .line 552
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

    .line 555
    :cond_2f
    new-instance v24, Ljava/util/LinkedHashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/LinkedHashMap;-><init>()V

    .line 557
    .local v24, "imageInfosForSyncAtStore":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;>;"
    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 558
    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    .line 559
    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    .line 560
    const-string v3, "orientation"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    .line 561
    sget-object v3, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->COLUMN_NAME_IS_FAVORITE:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x4

    .line 562
    const-string v3, "datetaken"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    .line 563
    const-string v3, "_size"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    .line 564
    const-string v3, "latitude"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    .line 565
    const-string v3, "longitude"

    aput-object v3, v4, v2

    .line 567
    .local v4, "projStore":[Ljava/lang/String;
    const/16 v22, 0x0

    .line 569
    .local v22, "cursorStore":Landroid/database/Cursor;
    :try_start_62
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 570
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->mediaStoreUri:Landroid/net/Uri;

    .line 573
    const/4 v6, 0x0

    .line 574
    const-string v7, "_id ASC"

    .line 569
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_74
    .catch Ljava/lang/SecurityException; {:try_start_62 .. :try_end_74} :catch_e5

    move-result-object v22

    .line 580
    :goto_75
    if-eqz v22, :cond_e4

    .line 582
    const/16 v2, 0x8

    :try_start_79
    new-array v0, v2, [I

    move-object/from16 v25, v0

    const/4 v2, 0x0

    .line 583
    const-string v3, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v25, v2

    const/4 v2, 0x1

    .line 584
    const-string v3, "_data"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v25, v2

    const/4 v2, 0x2

    .line 585
    const-string v3, "orientation"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v25, v2

    const/4 v2, 0x3

    .line 586
    sget-object v3, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->COLUMN_NAME_IS_FAVORITE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v25, v2

    const/4 v2, 0x4

    .line 587
    const-string v3, "datetaken"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v25, v2

    const/4 v2, 0x5

    .line 588
    const-string v3, "_size"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v25, v2

    const/4 v2, 0x6

    .line 589
    const-string v3, "latitude"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v25, v2

    const/4 v2, 0x7

    .line 590
    const-string v3, "longitude"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v25, v2

    .line 593
    .local v25, "indices":[I
    const/4 v2, -0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 594
    :goto_db
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_de
    .catch Ljava/lang/NumberFormatException; {:try_start_79 .. :try_end_de} :catch_15e
    .catchall {:try_start_79 .. :try_end_de} :catchall_17e

    move-result v2

    if-nez v2, :cond_104

    .line 612
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 615
    .end local v25    # "indices":[I
    :cond_e4
    :goto_e4
    return-object v24

    .line 575
    :catch_e5
    move-exception v23

    .line 576
    .local v23, "e":Ljava/lang/SecurityException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "SecurityException : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 577
    const/16 v22, 0x0

    goto/16 :goto_75

    .line 595
    .end local v23    # "e":Ljava/lang/SecurityException;
    .restart local v25    # "indices":[I
    :cond_104
    const/4 v2, 0x0

    :try_start_105
    aget v2, v25, v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 596
    .local v9, "mediaId":J
    const/4 v2, 0x1

    aget v2, v25, v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 597
    .local v11, "filePath":Ljava/lang/String;
    const/4 v2, 0x2

    aget v2, v25, v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 598
    .local v12, "orientation":I
    const/4 v2, 0x3

    aget v2, v25, v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 599
    .local v13, "isFavorite":I
    const/4 v2, 0x4

    aget v2, v25, v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 600
    .local v14, "dateTaken":J
    const/4 v2, 0x5

    aget v2, v25, v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 601
    .local v16, "size":J
    const/4 v2, 0x6

    aget v2, v25, v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 602
    .local v18, "latitude":D
    const/4 v2, 0x7

    aget v2, v25, v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    .line 604
    .local v20, "longitude":D
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v7, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;

    move-object/from16 v8, p0

    .line 605
    invoke-direct/range {v7 .. v21}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;-><init>(Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;JLjava/lang/String;IIJJDD)V

    .line 604
    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15c
    .catch Ljava/lang/NumberFormatException; {:try_start_105 .. :try_end_15c} :catch_15e
    .catchall {:try_start_105 .. :try_end_15c} :catchall_17e

    goto/16 :goto_db

    .line 609
    .end local v9    # "mediaId":J
    .end local v11    # "filePath":Ljava/lang/String;
    .end local v12    # "orientation":I
    .end local v13    # "isFavorite":I
    .end local v14    # "dateTaken":J
    .end local v16    # "size":J
    .end local v18    # "latitude":D
    .end local v20    # "longitude":D
    .end local v25    # "indices":[I
    :catch_15e
    move-exception v23

    .line 610
    .local v23, "e":Ljava/lang/NumberFormatException;
    :try_start_15f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "NumberFormatException: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V
    :try_end_179
    .catchall {:try_start_15f .. :try_end_179} :catchall_17e

    .line 612
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_e4

    .line 611
    .end local v23    # "e":Ljava/lang/NumberFormatException;
    :catchall_17e
    move-exception v2

    .line 612
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 613
    throw v2
.end method

.method private getRepresentativeIdList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .param p1, "whereString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 656
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .local v8, "representativeIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 659
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_6
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/lge/cic/eden/db/table/MediaInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "distinct(REPRESENTATIVE_ID)"

    aput-object v4, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 660
    if-eqz v6, :cond_31

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_31

    .line 661
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 662
    :goto_2b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_2e} :catch_44
    .catchall {:try_start_6 .. :try_end_2e} :catchall_54

    move-result v0

    if-nez v0, :cond_37

    .line 669
    :cond_31
    if-eqz v6, :cond_36

    .line 670
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 673
    :cond_36
    :goto_36
    return-object v8

    .line 663
    :cond_37
    const/4 v0, 0x0

    :try_start_38
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_38 .. :try_end_43} :catch_44
    .catchall {:try_start_38 .. :try_end_43} :catchall_54

    goto :goto_2b

    .line 666
    :catch_44
    move-exception v7

    .line 667
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_45
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_54

    .line 669
    if-eqz v6, :cond_36

    .line 670
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_36

    .line 668
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_54
    move-exception v0

    .line 669
    if-eqz v6, :cond_5a

    .line 670
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 672
    :cond_5a
    throw v0
.end method

.method private insertForCopiedImageList(Ljava/util/LinkedHashMap;Ljava/util/ArrayList;)Z
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, "imageInfosForSyncAtStore":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;>;"
    .local p2, "listForInsert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 297
    const/4 v4, 0x0

    .line 391
    :goto_7
    return v4

    .line 300
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "                                  insertForCopiedImageList"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 301
    const-string v4, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->makeSelectionStringForSpecificMedia(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    .line 303
    .local v7, "selectionStore":Ljava/lang/String;
    const/4 v10, 0x0

    .line 306
    .local v10, "cursorStore":Landroid/database/Cursor;
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 307
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->mediaStoreUri:Landroid/net/Uri;

    .line 308
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->projStore:[Ljava/lang/String;

    .line 310
    const/4 v8, 0x0

    .line 311
    const-string v9, "_id ASC"

    .line 306
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_32
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_32} :catch_7e
    .catchall {:try_start_1c .. :try_end_32} :catchall_c0

    move-result-object v10

    .line 317
    :goto_33
    if-eqz v10, :cond_77

    .line 318
    const/4 v4, -0x1

    :try_start_36
    invoke-interface {v10, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->projStore:[Ljava/lang/String;

    array-length v4, v4

    new-array v13, v4, [I

    .line 321
    .local v13, "indicesStore":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_41
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->projStore:[Ljava/lang/String;

    array-length v4, v4

    if-lt v12, v4, :cond_9b

    .line 324
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v15, "insertMediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_51
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_aa

    .line 374
    :goto_57
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_77

    .line 375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->isSyncAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1d1

    .line 377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "insertForCopiedImageList : isInternalMounted true"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-virtual {v4, v15}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->bulkInsert(Ljava/util/ArrayList;)I
    :try_end_77
    .catchall {:try_start_36 .. :try_end_77} :catchall_c0

    .line 386
    .end local v12    # "i":I
    .end local v13    # "indicesStore":[I
    .end local v15    # "insertMediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :cond_77
    :goto_77
    if-eqz v10, :cond_7c

    .line 387
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_7c
    const/4 v4, 0x1

    goto :goto_7

    .line 312
    :catch_7e
    move-exception v11

    .line 313
    .local v11, "e":Ljava/lang/SecurityException;
    :try_start_7f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SecurityException : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 314
    const/4 v10, 0x0

    goto :goto_33

    .line 322
    .end local v11    # "e":Ljava/lang/SecurityException;
    .restart local v12    # "i":I
    .restart local v13    # "indicesStore":[I
    :cond_9b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->projStore:[Ljava/lang/String;

    aget-object v4, v4, v12

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    aput v4, v13, v12

    .line 321
    add-int/lit8 v12, v12, 0x1

    goto :goto_41

    .line 326
    .restart local v15    # "insertMediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :cond_aa
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    .line 327
    .local v20, "mediaIdAtStore":Ljava/lang/Long;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_c7

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "end of cursor(store)"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V
    :try_end_bf
    .catchall {:try_start_7f .. :try_end_bf} :catchall_c0

    goto :goto_57

    .line 385
    .end local v12    # "i":I
    .end local v13    # "indicesStore":[I
    .end local v15    # "insertMediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .end local v20    # "mediaIdAtStore":Ljava/lang/Long;
    :catchall_c0
    move-exception v4

    .line 386
    if-eqz v10, :cond_c6

    .line 387
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 389
    :cond_c6
    throw v4

    .line 332
    .restart local v12    # "i":I
    .restart local v13    # "indicesStore":[I
    .restart local v15    # "insertMediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .restart local v20    # "mediaIdAtStore":Ljava/lang/Long;
    :cond_c7
    :try_start_c7
    new-instance v21, Lcom/lge/cic/eden/db/type/MediaInfo;

    invoke-direct/range {v21 .. v21}, Lcom/lge/cic/eden/db/type/MediaInfo;-><init>()V

    .line 333
    .local v21, "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    const/4 v5, 0x0

    aget v5, v13, v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, v21

    iput-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    .line 335
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    move-wide/from16 v22, v0

    cmp-long v5, v8, v22

    if-eqz v5, :cond_10d

    .line 336
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "  dismatched mediaId(store): "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " / "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_51

    .line 340
    :cond_10d
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;

    .line 342
    .local v14, "infoStore":Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;
    iget-object v5, v14, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->filePath:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    .line 343
    iget-wide v8, v14, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->dateTaken:J

    move-object/from16 v0, v21

    iput-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    .line 345
    const/4 v5, 0x1

    aget v5, v13, v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, v21

    iput-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateModified:J

    .line 346
    const/4 v5, 0x2

    aget v5, v13, v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    .line 347
    const/4 v5, 0x3

    aget v5, v13, v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    .line 349
    const/4 v5, 0x4

    aget v5, v13, v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    .line 350
    .local v16, "latitude":D
    const/4 v5, 0x5

    aget v5, v13, v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 351
    .local v18, "longitude":D
    const-wide/16 v8, 0x0

    cmpl-double v5, v16, v8

    if-nez v5, :cond_1c4

    const-wide/16 v8, 0x0

    cmpl-double v5, v18, v8

    if-nez v5, :cond_1c4

    .line 352
    const-wide v8, -0x3f70c80000000000L    # -999.0

    move-object/from16 v0, v21

    iput-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    .line 353
    const-wide v8, -0x3f70c80000000000L    # -999.0

    move-object/from16 v0, v21

    iput-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    .line 359
    :goto_170
    iget v5, v14, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->orientation:I

    move-object/from16 v0, v21

    iput v5, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->orientation:I

    .line 360
    const/4 v5, 0x6

    aget v5, v13, v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    .line 361
    const/4 v5, 0x1

    move-object/from16 v0, v21

    iput v5, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaType:I

    .line 363
    const/4 v5, 0x7

    aget v5, v13, v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v21

    iput v5, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->width:I

    .line 364
    const/16 v5, 0x8

    aget v5, v13, v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v21

    iput v5, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->height:I

    .line 365
    const/16 v5, 0x9

    aget v5, v13, v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v21

    iput v5, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->storageId:I

    .line 366
    iget v5, v14, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->isFavorite:I

    move-object/from16 v0, v21

    iput v5, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->isFavorite:I

    .line 367
    iget-wide v8, v14, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->size:J

    move-object/from16 v0, v21

    iput-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->size:J

    .line 369
    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    move-object/from16 v0, v21

    iput-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    .line 370
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_51

    .line 355
    :cond_1c4
    move-wide/from16 v0, v16

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    .line 356
    move-wide/from16 v0, v18

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    goto :goto_170

    .line 380
    .end local v14    # "infoStore":Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;
    .end local v16    # "latitude":D
    .end local v18    # "longitude":D
    .end local v20    # "mediaIdAtStore":Ljava/lang/Long;
    .end local v21    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    :cond_1d1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "insertForCopiedImageList : isInternalMounted false"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V
    :try_end_1da
    .catchall {:try_start_c7 .. :try_end_1da} :catchall_c0

    goto/16 :goto_77
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
    .line 676
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

    .line 677
    .local v1, "selectionStringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_35

    .line 680
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 681
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 677
    :cond_35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 678
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
    .line 686
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

    .line 688
    .local v2, "selectionStringBuilder":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_4b

    .line 689
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 698
    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 699
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 689
    :cond_3b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 690
    .local v1, "mediaId":Ljava/lang/Long;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 693
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

    .line 694
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
            "Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;",
            ">;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;",
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
    .line 396
    .local p1, "imageInfosForSyncAtStore":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;>;"
    .local p2, "imageInfosForSyncAtEden":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;>;"
    .local p3, "listForInsert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p4, "listForUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p5, "listForDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 398
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

    .line 399
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

    .line 401
    .local v7, "keyListOfEden":[Ljava/lang/Long;
    array-length v10, v8

    .line 402
    .local v10, "nStore":I
    array-length v9, v7

    .line 403
    .local v9, "nEden":I
    const/4 v12, 0x0

    .line 404
    .local v12, "ptrStore":I
    const/4 v11, 0x0

    .line 408
    .local v11, "ptrEden":I
    :cond_2c
    :goto_2c
    if-ge v12, v10, :cond_71

    const/4 v6, 0x1

    .line 409
    .local v6, "hasStore":Z
    :goto_2f
    if-ge v11, v9, :cond_73

    const/4 v5, 0x1

    .line 411
    .local v5, "hasInfo":Z
    :goto_32
    const/4 v15, 0x0

    .line 412
    .local v15, "vStore":Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;
    const/4 v14, 0x0

    .line 414
    .local v14, "vEden":Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;
    :try_start_34
    sget-object v13, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;->END:Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;

    .line 415
    .local v13, "type":Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;
    if-eqz v6, :cond_9c

    if-eqz v5, :cond_9c

    .line 416
    aget-object v16, v8, v12

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;

    move-object v15, v0

    .line 417
    aget-object v16, v7, v11

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;

    move-object v14, v0

    .line 419
    iget-wide v0, v15, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->mediaId:J

    move-wide/from16 v16, v0

    iget-wide v0, v14, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->mediaId:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-gez v16, :cond_75

    .line 420
    sget-object v13, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;->INSERT:Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;

    .line 444
    :cond_66
    :goto_66
    sget-object v16, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;->SKIP:Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;

    move-object/from16 v0, v16

    if-ne v13, v0, :cond_c7

    .line 445
    add-int/lit8 v12, v12, 0x1

    .line 446
    add-int/lit8 v11, v11, 0x1

    .line 448
    goto :goto_2c

    .line 408
    .end local v5    # "hasInfo":Z
    .end local v6    # "hasStore":Z
    .end local v13    # "type":Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;
    .end local v14    # "vEden":Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;
    .end local v15    # "vStore":Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;
    :cond_71
    const/4 v6, 0x0

    goto :goto_2f

    .line 409
    .restart local v6    # "hasStore":Z
    :cond_73
    const/4 v5, 0x0

    goto :goto_32

    .line 422
    .restart local v5    # "hasInfo":Z
    .restart local v13    # "type":Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;
    .restart local v14    # "vEden":Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;
    .restart local v15    # "vStore":Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;
    :cond_75
    iget-wide v0, v15, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->mediaId:J

    move-wide/from16 v16, v0

    iget-wide v0, v14, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->mediaId:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-nez v16, :cond_8d

    .line 423
    invoke-virtual {v15, v14}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8a

    .line 424
    sget-object v13, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;->UPDATE:Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;

    .line 425
    goto :goto_66

    .line 426
    :cond_8a
    sget-object v13, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;->SKIP:Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;

    .line 428
    goto :goto_66

    :cond_8d
    iget-wide v0, v15, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->mediaId:J

    move-wide/from16 v16, v0

    iget-wide v0, v14, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->mediaId:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-lez v16, :cond_66

    .line 429
    sget-object v13, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;->DELETE:Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;

    .line 432
    goto :goto_66

    :cond_9c
    if-eqz v6, :cond_b0

    .line 433
    aget-object v16, v8, v12

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;

    move-object v15, v0

    .line 434
    sget-object v13, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;->INSERT:Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;

    .line 436
    goto :goto_66

    :cond_b0
    if-eqz v5, :cond_c4

    .line 437
    aget-object v16, v7, v11

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;

    move-object v14, v0

    .line 438
    sget-object v13, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;->DELETE:Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;

    .line 440
    goto :goto_66

    .line 441
    :cond_c4
    sget-object v13, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;->END:Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;

    goto :goto_66

    .line 448
    :cond_c7
    sget-object v16, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;->END:Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;
    :try_end_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_c9} :catch_10b

    move-object/from16 v0, v16

    if-ne v13, v0, :cond_f2

    .line 470
    .end local v13    # "type":Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;
    :goto_cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v16, v0

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

    .line 471
    return-void

    .line 451
    .restart local v13    # "type":Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;
    :cond_f2
    :try_start_f2
    sget-object v16, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;->INSERT:Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;

    move-object/from16 v0, v16

    if-ne v13, v0, :cond_129

    .line 452
    add-int/lit8 v12, v12, 0x1

    .line 453
    iget-wide v0, v15, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->mediaId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_109
    .catch Ljava/lang/NumberFormatException; {:try_start_f2 .. :try_end_109} :catch_10b

    goto/16 :goto_2c

    .line 466
    .end local v13    # "type":Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;
    :catch_10b
    move-exception v4

    .line 467
    .local v4, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v16, v0

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

    .line 455
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v13    # "type":Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;
    :cond_129
    :try_start_129
    sget-object v16, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;->UPDATE:Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;

    move-object/from16 v0, v16

    if-ne v13, v0, :cond_144

    .line 456
    add-int/lit8 v12, v12, 0x1

    .line 457
    add-int/lit8 v11, v11, 0x1

    .line 458
    iget-wide v0, v14, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->mediaId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2c

    .line 460
    :cond_144
    sget-object v16, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;->DELETE:Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$SyncType;

    move-object/from16 v0, v16

    if-ne v13, v0, :cond_2c

    .line 461
    add-int/lit8 v11, v11, 0x1

    .line 463
    iget-wide v0, v14, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->mediaId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15b
    .catch Ljava/lang/NumberFormatException; {:try_start_129 .. :try_end_15b} :catch_10b

    goto/16 :goto_2c
.end method

.method private updateForUpdatedImageList(Ljava/util/LinkedHashMap;Ljava/util/ArrayList;)Z
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "imageInfosForSyncAtStore":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;>;"
    .local p2, "listForUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 221
    const/4 v2, 0x0

    .line 291
    :goto_7
    return v2

    .line 224
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "                                  updateForUpdatedImageList"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 225
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 226
    .local v15, "mapForTitle":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    const-string v2, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->makeSelectionStringForSpecificMedia(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, "selection":Ljava/lang/String;
    const/4 v11, 0x0

    .line 231
    .local v11, "cursorStore":Landroid/database/Cursor;
    :try_start_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->mediaStoreUri:Landroid/net/Uri;

    .line 233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->projStoreForUpdate:[Ljava/lang/String;

    .line 235
    const/4 v6, 0x0

    .line 236
    const-string v7, "_id ASC"

    .line 231
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_37
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_37} :catch_98
    .catchall {:try_start_21 .. :try_end_37} :catchall_db

    move-result-object v11

    .line 242
    :goto_38
    if-eqz v11, :cond_53

    .line 243
    const/4 v2, -0x1

    :try_start_3b
    invoke-interface {v11, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->projStoreForUpdate:[Ljava/lang/String;

    array-length v2, v2

    new-array v14, v2, [I

    .line 246
    .local v14, "indicesStore":[I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->projStoreForUpdate:[Ljava/lang/String;

    array-length v2, v2

    if-lt v13, v2, :cond_b5

    .line 250
    :goto_4d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_db

    move-result v2

    if-nez v2, :cond_c4

    .line 255
    .end local v13    # "i":I
    .end local v14    # "indicesStore":[I
    :cond_53
    if-eqz v11, :cond_58

    .line 256
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_58
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v10, "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e2

    .line 278
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 279
    .local v8, "bundle":Landroid/os/Bundle;
    const-string v2, "values"

    invoke-virtual {v8, v2, v10}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->isSyncAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_175

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "updateForUpdatedImageList : isInternalMounted true"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const-string v4, "BulkUpdate"

    .line 285
    sget-object v6, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 284
    invoke-virtual {v2, v3, v4, v6, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 291
    :goto_95
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 237
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v10    # "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_98
    move-exception v12

    .line 238
    .local v12, "e":Ljava/lang/SecurityException;
    :try_start_99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SecurityException : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 239
    const/4 v11, 0x0

    goto :goto_38

    .line 247
    .end local v12    # "e":Ljava/lang/SecurityException;
    .restart local v13    # "i":I
    .restart local v14    # "indicesStore":[I
    :cond_b5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->projStoreForUpdate:[Ljava/lang/String;

    aget-object v2, v2, v13

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    aput v2, v14, v13

    .line 246
    add-int/lit8 v13, v13, 0x1

    goto :goto_46

    .line 251
    :cond_c4
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
    :try_end_d9
    .catchall {:try_start_99 .. :try_end_d9} :catchall_db

    goto/16 :goto_4d

    .line 254
    .end local v13    # "i":I
    .end local v14    # "indicesStore":[I
    :catchall_db
    move-exception v2

    .line 255
    if-eqz v11, :cond_e1

    .line 256
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 258
    :cond_e1
    throw v2

    .line 260
    .restart local v10    # "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_e2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    .line 261
    .local v16, "mediaId":Ljava/lang/Long;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;

    .line 262
    .local v17, "vStore":Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;
    if-nez v17, :cond_10e

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "dismatched mediaId(update): "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_61

    .line 267
    :cond_10e
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 268
    .local v9, "contentValues":Landroid/content/ContentValues;
    const-string v2, "MEDIA_ID"

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->mediaId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 269
    const-string v2, "FILE_PATH"

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->filePath:Ljava/lang/String;

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v2, "ORIENTATION"

    move-object/from16 v0, v17

    iget v4, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->orientation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    const-string v2, "IS_FAVORITE"

    move-object/from16 v0, v17

    iget v4, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->isFavorite:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    const-string v4, "TITLE"

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->mediaId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v2, "LATITUDE"

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 274
    const-string v2, "LONGITUDE"

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 275
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_61

    .line 287
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    .end local v16    # "mediaId":Ljava/lang/Long;
    .end local v17    # "vStore":Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :cond_175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "updateForUpdatedImageList : isInternalMounted false"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_95
.end method


# virtual methods
.method public deleteForDeletedImageList(Ljava/util/ArrayList;)Z
    .registers 7
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
    const/4 v4, 0x0

    .line 619
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 620
    const/4 v2, 0x0

    .line 652
    :goto_8
    return v2

    .line 622
    :cond_9
    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "                                  deleteForDeletedImageList"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 623
    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->isSyncAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 625
    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "deleteForDeletedImageList : isInternalMounted true"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 626
    const-string v2, "MEDIA_ID"

    invoke-direct {p0, v2, p1}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->makeSelectionStringForSpecificMedia(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, "whereString":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->getRepresentativeIdList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 628
    .local v0, "listForUpdateRepresentativeID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual {v2, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 629
    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/lge/cic/eden/db/table/MediaInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 630
    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/lge/cic/eden/db/table/FaceInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 631
    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 634
    const-string v1, "ACTIVITY_ID NOT IN (SELECT distinct(ACTIVITY_ID) FROM EVENT_MEDIA_MAP)"

    .line 635
    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 638
    const-string v1, "EVENT_ID NOT IN (SELECT distinct(EVENT_ID) FROM EVENT_MEDIA_MAP)"

    .line 639
    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/lge/cic/eden/db/table/EventInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 642
    const-string v1, "(ACTIVITY_ID NOT IN (SELECT distinct(ACTIVITY_ID) FROM ACTIVITY_INFO)) OR (EVENT_ID NOT IN (SELECT distinct(EVENT_ID) FROM EVENT_INFO))"

    .line 643
    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 645
    invoke-virtual {p0, v0}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->updateRepresentativeID(Ljava/util/ArrayList;)V

    .line 652
    .end local v0    # "listForUpdateRepresentativeID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v1    # "whereString":Ljava/lang/String;
    :goto_85
    const/4 v2, 0x1

    goto :goto_8

    .line 647
    :cond_87
    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "deleteForDeletedImageList : isInternalMounted false"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_85
.end method

.method public syncImageMedia(Ljava/lang/String;Z)Z
    .registers 19
    .param p1, "rootPath"    # Ljava/lang/String;
    .param p2, "isFullSync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v11, 0x0

    .line 151
    .local v11, "status":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "syncImageMedia() - isFullSync :"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 154
    .local v8, "chkTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->isSyncAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v12, "syncImageMedia() : first_check (ignored)"

    invoke-virtual {v2, v12}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 156
    const/4 v2, 0x0

    .line 216
    .end local v8    # "chkTime":J
    :goto_31
    return v2

    .line 158
    .restart local v8    # "chkTime":J
    :cond_32
    invoke-direct/range {p0 .. p1}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->createImageInfosForSyncAtStoreHashMap(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 159
    .local v3, "imageInfosForSyncAtStore":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;>;"
    const-wide/16 v12, 0x0

    const/4 v2, 0x1

    invoke-static {v12, v13, v2}, Ljava/lang/Thread;->sleep(JI)V

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->isSyncAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v12, "syncImageMedia() : second_check (ignored)"

    invoke-virtual {v2, v12}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 163
    const/4 v2, 0x0

    goto :goto_31

    .line 165
    :cond_51
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->createImageInfosForSyncAtEdenHashMap()Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 166
    .local v4, "imageInfosForSyncAtEden":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;>;"
    const-wide/16 v12, 0x0

    const/4 v2, 0x1

    invoke-static {v12, v13, v2}, Ljava/lang/Thread;->sleep(JI)V

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

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

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

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

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 173
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v5, "listForInsert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v6, "listForUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "listForDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v2, p0

    .line 177
    invoke-direct/range {v2 .. v7}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->makeSyncList(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

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

    .line 180
    const-string v13, ", insert = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 181
    const-string v13, ", update = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 182
    const-string v13, ", delete = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 179
    invoke-virtual {v2, v12}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

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

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->isSyncAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_149

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v12, "syncImageMedia() : final_check (ignored)"

    invoke-virtual {v2, v12}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 189
    const/4 v2, 0x0

    goto/16 :goto_31

    .line 192
    :cond_149
    if-eqz p2, :cond_179

    .line 193
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->insertForCopiedImageList(Ljava/util/LinkedHashMap;Ljava/util/ArrayList;)Z

    move-result v2

    or-int/2addr v11, v2

    .line 194
    const-wide/16 v12, 0x0

    const/4 v2, 0x1

    invoke-static {v12, v13, v2}, Ljava/lang/Thread;->sleep(JI)V

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

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

    .line 198
    :cond_179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 200
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->updateForUpdatedImageList(Ljava/util/LinkedHashMap;Ljava/util/ArrayList;)Z

    move-result v2

    or-int/2addr v11, v2

    .line 201
    const-wide/16 v12, 0x0

    const/4 v2, 0x1

    invoke-static {v12, v13, v2}, Ljava/lang/Thread;->sleep(JI)V

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

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

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 205
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->deleteForDeletedImageList(Ljava/util/ArrayList;)Z

    move-result v2

    or-int/2addr v11, v2

    .line 206
    const-wide/16 v12, 0x0

    const/4 v2, 0x1

    invoke-static {v12, v13, v2}, Ljava/lang/Thread;->sleep(JI)V

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

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

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1e0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1e0} :catch_1e3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1e0} :catch_204

    .end local v3    # "imageInfosForSyncAtStore":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;>;"
    .end local v4    # "imageInfosForSyncAtEden":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;>;"
    .end local v5    # "listForInsert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v6    # "listForUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v7    # "listForDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v8    # "chkTime":J
    :goto_1e0
    move v2, v11

    .line 216
    goto/16 :goto_31

    .line 210
    :catch_1e3
    move-exception v10

    .line 211
    .local v10, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 212
    new-instance v2, Ljava/lang/InterruptedException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "syncImageMedia() interrupted\n"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :catch_204
    move-exception v10

    .line 214
    .local v10, "e":Landroid/database/sqlite/SQLiteException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "syncImageMedia(): "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1e0
.end method

.method public updateRepresentativeID(Ljava/util/ArrayList;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 705
    .local p1, "representativeIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "MEDIA_ID"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "REPRESENTATIVE_ID"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "DATE_TAKEN"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "DELETE_FLAG"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "FILE_PATH"

    aput-object v3, v4, v2

    .line 707
    .local v4, "projEden":[Ljava/lang/String;
    if-eqz p1, :cond_24

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_25

    .line 786
    :cond_24
    :goto_24
    return-void

    .line 711
    :cond_25
    const-string v2, "REPRESENTATIVE_ID"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->makeSelectionStringForSpecificMedia(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v16

    .line 712
    .local v16, "representativeIdFilter":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MEDIA_INFO.VISIBILITY_TYPE IN (0, 1, 2) and "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 714
    .local v5, "whereClause":Ljava/lang/String;
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 715
    .local v19, "visibleMediaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 716
    .local v14, "duplicatedMediaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v12, 0x0

    .line 718
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 719
    invoke-static {}, Lcom/lge/cic/eden/db/table/MediaInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v3

    .line 722
    const/4 v6, 0x0

    .line 723
    const-string v7, "REPRESENTATIVE_ID ASC, DATE_TAKEN ASC, FILE_PATH ASC"

    .line 718
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 725
    if-eqz v12, :cond_6a

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_79

    .line 726
    :cond_6a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "cursor is null"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_4b .. :try_end_73} :catchall_20f

    .line 749
    if-eqz v12, :cond_24

    .line 750
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_24

    .line 729
    :cond_79
    const/4 v2, 0x5

    :try_start_7a
    new-array v15, v2, [I

    const/4 v2, 0x0

    .line 730
    const-string v3, "MEDIA_ID"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v15, v2

    const/4 v2, 0x1

    .line 731
    const-string v3, "REPRESENTATIVE_ID"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v15, v2

    const/4 v2, 0x2

    .line 732
    const-string v3, "DATE_TAKEN"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v15, v2

    const/4 v2, 0x3

    .line 733
    const-string v3, "DELETE_FLAG"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v15, v2

    const/4 v2, 0x4

    .line 734
    const-string v3, "FILE_PATH"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v15, v2

    .line 737
    .local v15, "indices":[I
    const/4 v2, -0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 738
    :cond_ad
    :goto_ad
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b0
    .catchall {:try_start_7a .. :try_end_b0} :catchall_20f

    move-result v2

    if-nez v2, :cond_1c9

    .line 749
    if-eqz v12, :cond_b8

    .line 750
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 754
    :cond_b8
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 755
    .local v10, "contentValuesForMediaInfo":Landroid/content/ContentValues;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 757
    .local v9, "contentValuesForEMMap":Landroid/content/ContentValues;
    new-instance v18, Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 758
    .local v18, "visibleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_174

    .line 759
    const-string v2, "VISIBILITY_TYPE"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "VISIBILITY_TYPE != 1 AND "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "MEDIA_ID"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v7, v1}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->makeSelectionStringForSpecificMedia(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v10, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 763
    const-string v2, "VISIBILITY"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "VISIBILITY != 1 AND "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "MEDIA_ID"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v7, v1}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->makeSelectionStringForSpecificMedia(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v9, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 766
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 768
    .local v13, "duplicatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_174

    .line 769
    const-string v2, "VISIBILITY_TYPE"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const-string v6, "MEDIA_ID"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->makeSelectionStringForSpecificMedia(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v10, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 772
    const-string v2, "VISIBILITY"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    const-string v6, "MEDIA_ID"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->makeSelectionStringForSpecificMedia(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v9, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 777
    .end local v13    # "duplicatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_174
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 778
    .local v8, "bundle":Landroid/os/Bundle;
    const-string v17, "update MEDIA_INFO set SIMILAR_COUNT = (select count(*) from MEDIA_INFO as b where b.VISIBILITY_TYPE IN (0,1,2) and b.DELETE_FLAG = 0 and MEDIA_INFO.REPRESENTATIVE_ID = b.REPRESENTATIVE_ID) - 1"

    .line 779
    .local v17, "sqlString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 780
    const-string v2, "sqlString"

    move-object/from16 v0, v17

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const-string v6, "RawUpdateOrDelete"

    sget-object v7, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v6, v7, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 783
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 784
    .local v11, "contentValuesForSimilarCount":Landroid/content/ContentValues;
    const-string v2, "SIMILAR_COUNT"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const-string v6, "SIMILAR_COUNT < 0"

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v11, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_24

    .line 739
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v9    # "contentValuesForEMMap":Landroid/content/ContentValues;
    .end local v10    # "contentValuesForMediaInfo":Landroid/content/ContentValues;
    .end local v11    # "contentValuesForSimilarCount":Landroid/content/ContentValues;
    .end local v17    # "sqlString":Ljava/lang/String;
    .end local v18    # "visibleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1c9
    const/4 v2, 0x1

    :try_start_1ca
    aget v2, v15, v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_ad

    .line 740
    const/4 v2, 0x1

    aget v2, v15, v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_216

    const/4 v2, 0x3

    aget v2, v15, v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_216

    .line 741
    const/4 v2, 0x1

    aget v2, v15, v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v15, v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20d
    .catchall {:try_start_1ca .. :try_end_20d} :catchall_20f

    goto/16 :goto_ad

    .line 748
    .end local v15    # "indices":[I
    :catchall_20f
    move-exception v2

    .line 749
    if-eqz v12, :cond_215

    .line 750
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 752
    :cond_215
    throw v2

    .line 743
    .restart local v15    # "indices":[I
    :cond_216
    const/4 v2, 0x0

    :try_start_217
    aget v2, v15, v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v15, v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22f
    .catchall {:try_start_217 .. :try_end_22f} :catchall_20f

    goto/16 :goto_ad
.end method
