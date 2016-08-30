.class public Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;
.super Ljava/lang/Object;
.source "MediaStoreSynchronizer.java"


# static fields
.field private static logger:Lcom/lge/cic/eden/utils/Logger;


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field private context:Landroid/content/Context;

.field private databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

.field private imageSynchronizer:Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;

.field private mediaStoreUriForImage:Landroid/net/Uri;

.field private mediaStoreUriForVideo:Landroid/net/Uri;

.field syncThread:Ljava/lang/Thread;

.field private videoSynchronizer:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaStoreUriForImage"    # Landroid/net/Uri;
    .param p3, "mediaStoreUriForVideo"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncThread:Ljava/lang/Thread;

    .line 31
    iput-object v1, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->context:Landroid/content/Context;

    .line 32
    iput-object v1, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 46
    iput-object p1, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->context:Landroid/content/Context;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    .line 50
    :try_start_12
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_18} :catch_2b

    .line 56
    :goto_18
    iput-object p2, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->mediaStoreUriForImage:Landroid/net/Uri;

    .line 57
    iput-object p3, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->mediaStoreUriForVideo:Landroid/net/Uri;

    .line 59
    new-instance v1, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;

    invoke-direct {v1, p1, p2}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->imageSynchronizer:Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;

    .line 60
    new-instance v1, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;

    invoke-direct {v1, p1, p3}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->videoSynchronizer:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;

    .line 61
    return-void

    .line 51
    :catch_2b
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->create(Landroid/content/ContentResolver;)V

    .line 53
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    goto :goto_18
.end method

.method private checkDBFileModified()Z
    .registers 7

    .prologue
    .line 225
    const-string v0, "/data/data/com.android.providers.media/databases/"

    .line 226
    .local v0, "dbPath":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->context:Landroid/content/Context;

    const-string v4, "external_db_status"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 227
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v3, "default_lastModifiedTime"

    const-string v4, "/data/data/com.android.providers.media/databases/external.db"

    invoke-direct {p0, v1, v3, v4}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->isChangeMediaStore(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 228
    .local v2, "status":Z
    const-string v3, "wal_lastModifiedTime"

    const-string v4, "/data/data/com.android.providers.media/databases/external.db-wal"

    invoke-direct {p0, v1, v3, v4}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->isChangeMediaStore(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 229
    const-string v3, "shm_lastModifiedTime"

    const-string v4, "/data/data/com.android.providers.media/databases/external.db-shm"

    invoke-direct {p0, v1, v3, v4}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->isChangeMediaStore(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 231
    return v2
.end method

.method private isChangeMediaStore(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "pref"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 234
    const-wide/16 v6, -0x1

    invoke-interface {p1, p2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 235
    .local v4, "temp":J
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 237
    .local v2, "lastModifiedTime":J
    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isChangeMediaStore_ old : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "new : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 238
    cmp-long v1, v4, v2

    if-eqz v1, :cond_3e

    .line 239
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p2, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 240
    const/4 v1, 0x1

    .line 242
    :goto_3d
    return v1

    :cond_3e
    const/4 v1, 0x0

    goto :goto_3d
.end method

.method public static isSyncAvailable(Landroid/content/Context;)Z
    .registers 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const-wide/16 v12, -0x1

    .line 265
    sget-object v8, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v9, "isSyncAvailable() checking.."

    invoke-virtual {v8, v9}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 266
    invoke-static {p0}, Lcom/lge/cic/eden/utils/SdcardChecker;->isInternalMounted(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 267
    sget-object v8, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v9, "isSyncAvailable() : Internal Unmounted"

    invoke-virtual {v8, v9}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 268
    invoke-static {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->notifyChangeAllTable(Landroid/content/Context;)V

    .line 289
    :goto_1a
    return v7

    .line 272
    :cond_1b
    const-string v8, "com.lge.cic.eden.pref.mountinfo"

    invoke-virtual {p0, v8, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 273
    .local v6, "pref":Landroid/content/SharedPreferences;
    const-string v8, "PREF_KEY_MOUNT_INFO_MOUNTED_TIME"

    invoke-interface {v6, v8, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 274
    .local v0, "lastMountedTime":J
    const-string v8, "PREF_KEY_MOUNT_INFO_SCANFINISHED_TIME"

    invoke-interface {v6, v8, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 275
    .local v2, "lastScanFinishedTime":J
    const-string v8, "PREF_KEY_MOUNT_INFO_UNMOUNTED_TIME"

    invoke-interface {v6, v8, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 277
    .local v4, "lastUnMountedTime":J
    sget-object v8, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "isSyncAvailable() :  lastMountedTime "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , lastScanFinishedTime "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 279
    cmp-long v8, v0, v12

    if-lez v8, :cond_61

    cmp-long v8, v2, v0

    if-gtz v8, :cond_61

    .line 280
    sget-object v8, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v9, "isSyncAvailable() : lastScanFinishedTime <= lastMountedTime"

    invoke-virtual {v8, v9}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1a

    .line 283
    :cond_61
    cmp-long v8, v4, v12

    if-lez v8, :cond_71

    cmp-long v8, v2, v4

    if-gtz v8, :cond_71

    .line 284
    sget-object v8, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v9, "isSyncAvailable() : lastScanFinishedTime <= lastUnMountedTime"

    invoke-virtual {v8, v9}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1a

    .line 288
    :cond_71
    sget-object v7, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v8, "isSyncAvailable() checking.. true"

    invoke-virtual {v7, v8}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 289
    const/4 v7, 0x1

    goto :goto_1a
.end method

.method private static notifyChangeAllTable(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/db/table/ActivityEventViewTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/db/table/EventInfoTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->ACTIVITYINFO_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 298
    sget-object v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "notifyChangeAllTable"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 299
    return-void
.end method


# virtual methods
.method public deleteForDeletedImageList(Ljava/util/ArrayList;)Z
    .registers 3
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
    .line 261
    .local p1, "listForDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->imageSynchronizer:Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;

    invoke-virtual {v0, p1}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->deleteForDeletedImageList(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSyncPath()Ljava/lang/String;
    .registers 6

    .prologue
    .line 68
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->context:Landroid/content/Context;

    const-string v3, "monitoring"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v2, "path"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result-object v1

    .line 71
    .local v1, "syncPath":Ljava/lang/String;
    monitor-exit p0

    return-object v1

    .line 68
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    .end local v1    # "syncPath":Ljava/lang/String;
    :catchall_13
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public lightSyncOnRequest()Z
    .registers 23

    .prologue
    .line 76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->isSyncAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 77
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "lightSyncOnRequest() : first_check (ignored)"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 78
    const/4 v2, 0x0

    .line 183
    :goto_12
    return v2

    .line 80
    :cond_13
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v16, "mediaIdAtImageStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v5, "(storage_type IN (65537,131073)) AND (latitude != 0  AND longitude != 0) AND (latitude != \'\' AND longitude != \'\')"

    .line 82
    .local v5, "selectionStore":Ljava/lang/String;
    const/4 v12, 0x0

    .line 84
    .local v12, "imageCursor":Landroid/database/Cursor;
    :try_start_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1e} :catch_125
    .catchall {:try_start_1b .. :try_end_1e} :catchall_145

    move-result-wide v8

    .line 87
    .local v8, "chkTime":J
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 88
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->mediaStoreUriForImage:Landroid/net/Uri;

    .line 89
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    .line 91
    const/4 v6, 0x0

    .line 92
    const/4 v7, 0x0

    .line 87
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_38} :catch_fa
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_38} :catch_125
    .catchall {:try_start_1f .. :try_end_38} :catchall_145

    move-result-object v12

    .line 98
    :goto_39
    if-eqz v12, :cond_4b

    .line 99
    const/4 v2, -0x1

    :try_start_3c
    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 100
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 101
    .local v13, "index":I
    :goto_45
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_116

    .line 106
    .end local v13    # "index":I
    :cond_4b
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " images, mediaStore query end : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V
    :try_end_76
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3c .. :try_end_76} :catch_125
    .catchall {:try_start_3c .. :try_end_76} :catchall_145

    .line 111
    if-eqz v12, :cond_7b

    .line 112
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 116
    .end local v8    # "chkTime":J
    :cond_7b
    :goto_7b
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v17, "mediaIdAtVideoStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v19, 0x0

    .line 119
    .local v19, "videoCursor":Landroid/database/Cursor;
    :try_start_82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_85
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_82 .. :try_end_85} :catch_17a
    .catchall {:try_start_82 .. :try_end_85} :catchall_19a

    move-result-wide v8

    .line 121
    .restart local v8    # "chkTime":J
    :try_start_86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->mediaStoreUriForVideo:Landroid/net/Uri;

    .line 123
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    .line 125
    const/4 v6, 0x0

    .line 126
    const/4 v7, 0x0

    .line 121
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9f
    .catch Ljava/lang/SecurityException; {:try_start_86 .. :try_end_9f} :catch_14c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_86 .. :try_end_9f} :catch_17a
    .catchall {:try_start_86 .. :try_end_9f} :catchall_19a

    move-result-object v19

    .line 132
    :goto_a0
    if-eqz v19, :cond_b6

    .line 133
    const/4 v2, -0x1

    :try_start_a3
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 134
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 135
    .restart local v13    # "index":I
    :goto_b0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_169

    .line 140
    .end local v13    # "index":I
    :cond_b6
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " videos, mediaStore query end : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V
    :try_end_e1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a3 .. :try_end_e1} :catch_17a
    .catchall {:try_start_a3 .. :try_end_e1} :catchall_19a

    .line 145
    if-eqz v19, :cond_e6

    .line 146
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 150
    .end local v8    # "chkTime":J
    :cond_e6
    :goto_e6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->isSyncAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1a1

    .line 151
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "lightSyncOnRequest() : second_check (ignored)"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 152
    const/4 v2, 0x0

    goto/16 :goto_12

    .line 93
    .end local v17    # "mediaIdAtVideoStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v19    # "videoCursor":Landroid/database/Cursor;
    .restart local v8    # "chkTime":J
    :catch_fa
    move-exception v11

    .line 94
    .local v11, "e":Ljava/lang/SecurityException;
    :try_start_fb
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SecurityException : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 95
    const/4 v12, 0x0

    goto/16 :goto_39

    .line 102
    .end local v11    # "e":Ljava/lang/SecurityException;
    .restart local v13    # "index":I
    :cond_116
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 103
    .local v14, "mediaId":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_123
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_fb .. :try_end_123} :catch_125
    .catchall {:try_start_fb .. :try_end_123} :catchall_145

    goto/16 :goto_45

    .line 108
    .end local v8    # "chkTime":J
    .end local v13    # "index":I
    .end local v14    # "mediaId":J
    :catch_125
    move-exception v11

    .line 109
    .local v11, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_126
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lightSyncOnRequest() : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V
    :try_end_13e
    .catchall {:try_start_126 .. :try_end_13e} :catchall_145

    .line 111
    if-eqz v12, :cond_7b

    .line 112
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7b

    .line 110
    .end local v11    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_145
    move-exception v2

    .line 111
    if-eqz v12, :cond_14b

    .line 112
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_14b
    throw v2

    .line 127
    .restart local v8    # "chkTime":J
    .restart local v17    # "mediaIdAtVideoStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v19    # "videoCursor":Landroid/database/Cursor;
    :catch_14c
    move-exception v11

    .line 128
    .local v11, "e":Ljava/lang/SecurityException;
    :try_start_14d
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SecurityException : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 129
    const/16 v19, 0x0

    goto/16 :goto_a0

    .line 136
    .end local v11    # "e":Ljava/lang/SecurityException;
    .restart local v13    # "index":I
    :cond_169
    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 137
    .restart local v14    # "mediaId":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_178
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14d .. :try_end_178} :catch_17a
    .catchall {:try_start_14d .. :try_end_178} :catchall_19a

    goto/16 :goto_b0

    .line 142
    .end local v8    # "chkTime":J
    .end local v13    # "index":I
    .end local v14    # "mediaId":J
    :catch_17a
    move-exception v11

    .line 143
    .local v11, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_17b
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lightSyncOnRequest() : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V
    :try_end_193
    .catchall {:try_start_17b .. :try_end_193} :catchall_19a

    .line 145
    if-eqz v19, :cond_e6

    .line 146
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_e6

    .line 144
    .end local v11    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_19a
    move-exception v2

    .line 145
    if-eqz v19, :cond_1a0

    .line 146
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_1a0
    throw v2

    .line 155
    :cond_1a1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/cic/eden/utils/SdcardChecker;->getStorageFilter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 156
    .local v18, "storageFilter":Ljava/lang/String;
    if-eqz v18, :cond_1b5

    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b8

    .line 157
    :cond_1b5
    const/4 v2, 0x0

    goto/16 :goto_12

    .line 160
    :cond_1b8
    move-object/from16 v21, v18

    .line 161
    .local v21, "whereClauseString":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c6

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_205

    .line 162
    :cond_1c6
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v2, " AND MEDIA_ID NOT IN ("

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .local v20, "whereClauseBuilder":Ljava/lang/StringBuilder;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_233

    .line 166
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1dd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_249

    .line 169
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x29

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 172
    .end local v20    # "whereClauseBuilder":Ljava/lang/StringBuilder;
    :cond_205
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lightSyncOnRequest() : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 177
    .restart local v8    # "chkTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->isSyncAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_260

    .line 178
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "lightSyncOnRequest() : final_check (ignored)"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 179
    const/4 v2, 0x0

    goto/16 :goto_12

    .line 163
    .end local v8    # "chkTime":J
    .restart local v20    # "whereClauseBuilder":Ljava/lang/StringBuilder;
    :cond_233
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 164
    .restart local v14    # "mediaId":J
    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d3

    .line 166
    .end local v14    # "mediaId":J
    :cond_249
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 167
    .restart local v14    # "mediaId":J
    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1dd

    .line 181
    .end local v14    # "mediaId":J
    .end local v20    # "whereClauseBuilder":Ljava/lang/StringBuilder;
    .restart local v8    # "chkTime":J
    :cond_260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 182
    .local v10, "deleteCount":I
    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteCount : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,EventMediaMapTable delete end : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 183
    if-lez v10, :cond_29b

    const/4 v2, 0x1

    goto/16 :goto_12

    :cond_29b
    const/4 v2, 0x0

    goto/16 :goto_12
.end method

.method public declared-synchronized setSyncPath(Ljava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->context:Landroid/content/Context;

    const-string v2, "monitoring"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "path"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 66
    monitor-exit p0

    return-void

    .line 64
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public syncOnRequest(Z)Z
    .registers 16
    .param p1, "isFullSync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 188
    sget-object v8, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "syncOnRequest() Full: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->getSyncPath()Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, "rootPath":Ljava/lang/String;
    sget-object v11, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v8, "sync path : "

    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v7, :cond_ef

    const-string v8, "all"

    :goto_27
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 193
    :try_start_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 195
    .local v0, "chkTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 196
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->checkDBFileModified()Z

    move-result v6

    .line 197
    .local v6, "isMediaStoreDBModified":Z
    sget-object v8, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "checkModified ("

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") end : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v0

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 200
    iget-object v8, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->imageSynchronizer:Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;

    invoke-virtual {v8, v7, p1}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->syncImageMedia(Ljava/lang/String;Z)Z

    move-result v3

    .line 201
    .local v3, "hasImageForSync":Z
    sget-object v8, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "syncImageMedia end : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v0

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 204
    iget-object v8, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->videoSynchronizer:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;

    invoke-virtual {v8, v7, p1}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->syncVideoMedia(Ljava/lang/String;Z)Z

    move-result v5

    .line 205
    .local v5, "hasVideoForSync":Z
    sget-object v8, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "syncVideoMedia end : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v0

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 208
    invoke-virtual {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->updateEventVisibilityUsingDeleteFlag()V

    .line 209
    sget-object v8, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "updateEventVisibilityUsingDeleteFlag end : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v0

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 211
    if-nez v3, :cond_f2

    if-nez v5, :cond_f2

    move v4, v9

    .line 212
    .local v4, "hasUpdateList":Z
    :goto_e4
    if-nez v4, :cond_f4

    .line 213
    sget-object v8, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v10, "syncOnRequest() is done. No Update List"

    invoke-virtual {v8, v10}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    move v8, v9

    .line 222
    :goto_ee
    return v8

    .end local v0    # "chkTime":J
    .end local v3    # "hasImageForSync":Z
    .end local v4    # "hasUpdateList":Z
    .end local v5    # "hasVideoForSync":Z
    .end local v6    # "isMediaStoreDBModified":Z
    :cond_ef
    move-object v8, v7

    .line 191
    goto/16 :goto_27

    .restart local v0    # "chkTime":J
    .restart local v3    # "hasImageForSync":Z
    .restart local v5    # "hasVideoForSync":Z
    .restart local v6    # "isMediaStoreDBModified":Z
    :cond_f2
    move v4, v10

    .line 211
    goto :goto_e4

    .line 216
    .restart local v4    # "hasUpdateList":Z
    :cond_f4
    sget-object v8, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v9, "syncOnRequest() is done."

    invoke-virtual {v8, v9}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V
    :try_end_fb
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_fb} :catch_fd

    move v8, v10

    .line 222
    goto :goto_ee

    .line 217
    .end local v0    # "chkTime":J
    .end local v3    # "hasImageForSync":Z
    .end local v4    # "hasUpdateList":Z
    .end local v5    # "hasVideoForSync":Z
    .end local v6    # "isMediaStoreDBModified":Z
    :catch_fd
    move-exception v2

    .line 218
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 219
    new-instance v8, Ljava/lang/InterruptedException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "syncOnRequest() interrupted\n"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public updateEventVisibilityUsingDeleteFlag()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 245
    const-string v1, "EVENT_ID IN (select EVENT_ID from EVENT_INFO where E_VISIBILITY = 0 AND E_DELETE_FLAG = 0) AND EVENT_ID NOT IN (select distinct(EVENT_ID) from EVENT_MEDIA_MAP where VISIBILITY IN (0, 1) AND DELETE_FLAG = 0)"

    .line 248
    .local v1, "whereClause":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "E_VISIBILITY"

    const/16 v3, 0x63

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/lge/cic/eden/db/table/EventInfoTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 253
    const-string v1, "EVENT_ID IN (select EVENT_ID from EVENT_INFO where E_VISIBILITY = 0 AND E_DELETE_FLAG = 0) AND EVENT_ID NOT IN (select distinct(EVENT_ID) from EVENT_MEDIA_MAP where VISIBILITY = 0 AND DELETE_FLAG = 0)"

    .line 256
    const-string v2, "E_VISIBILITY"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/lge/cic/eden/db/table/EventInfoTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 259
    return-void
.end method
