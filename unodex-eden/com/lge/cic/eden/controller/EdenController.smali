.class public Lcom/lge/cic/eden/controller/EdenController;
.super Ljava/lang/Object;
.source "EdenController.java"


# static fields
.field private static final SYNC_DELAY_TIME:J = 0xbb8L

.field static logger:Lcom/lge/cic/eden/utils/Logger;


# instance fields
.field private final REQUIRED_PERMISSIONS:[Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

.field private imageContentObserver:Landroid/database/ContentObserver;

.field private mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

.field private videoContentObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-class v0, Lcom/lge/cic/eden/controller/EdenController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/lge/cic/eden/controller/EdenController;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    .line 52
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 64
    iput-object v1, p0, Lcom/lge/cic/eden/controller/EdenController;->imageContentObserver:Landroid/database/ContentObserver;

    .line 65
    iput-object v1, p0, Lcom/lge/cic/eden/controller/EdenController;->videoContentObserver:Landroid/database/ContentObserver;

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 68
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 69
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    invoke-direct {v0, p1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    .line 75
    return-void
.end method


# virtual methods
.method public checkPermission(Landroid/content/Intent;)Z
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 534
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Service;

    if-eqz v0, :cond_28

    .line 535
    sget-object v0, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "checkPermission : context instanceof Service is true"

    invoke-virtual {v0, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Service;

    iget-object v2, p0, Lcom/lge/cic/eden/controller/EdenController;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    new-instance v3, Lcom/lge/cic/eden/runtimepermission/EdenUiProvider;

    invoke-direct {v3}, Lcom/lge/cic/eden/runtimepermission/EdenUiProvider;-><init>()V

    invoke-static {v0, v2, p1, v3}, Lcom/lge/app/permission/RequestPermissionsHelper;->requestPermissionsIfNeeded(Landroid/app/Service;[Ljava/lang/String;Landroid/content/Intent;Lcom/lge/app/permission/GuideUiProvider;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 538
    sget-object v0, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "checkPermission : No permission"

    invoke-virtual {v0, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    move v0, v1

    .line 545
    :goto_27
    return v0

    .line 542
    :cond_28
    sget-object v0, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "checkPermission : context instanceof Service is false"

    invoke-virtual {v0, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    move v0, v1

    .line 543
    goto :goto_27

    .line 545
    :cond_31
    const/4 v0, 0x1

    goto :goto_27
.end method

.method public checkRunningGallery()V
    .registers 3

    .prologue
    .line 376
    sget-object v0, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "checkRunningGallery"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public clearDB()Z
    .registers 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/cic/eden/controller/EdenController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-string v2, "1-CLEAR_DB_TASK"

    invoke-static {v0, v1, v2}, Lcom/lge/cic/eden/service/task/manager/TaskRequester;->requestTask(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public clearDBaboutPOIDetected()Z
    .registers 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/cic/eden/controller/EdenController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-string v2, "1-CLEAR_DB_POI_TASK"

    invoke-static {v0, v1, v2}, Lcom/lge/cic/eden/service/task/manager/TaskRequester;->requestTask(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public deleteLocation()Z
    .registers 3

    .prologue
    .line 305
    new-instance v0, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;

    iget-object v1, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;-><init>(Landroid/content/Context;)V

    .line 306
    .local v0, "locationPOImanager":Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;
    invoke-virtual {v0}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->deleteLocations()V

    .line 308
    const/4 v1, 0x1

    return v1
.end method

.method public detectPosition()Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 250
    new-instance v2, Lcom/lge/PosClusteringApi/PosClusteringApi;

    iget-object v5, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/lge/PosClusteringApi/PosClusteringApi;-><init>(Landroid/content/Context;)V

    .line 251
    .local v2, "pc":Lcom/lge/PosClusteringApi/PosClusteringApi;
    invoke-virtual {v2}, Lcom/lge/PosClusteringApi/PosClusteringApi;->getHomePosInfo()Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;

    move-result-object v1

    .line 253
    .local v1, "locationInfo":Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;
    if-eqz v1, :cond_6e

    .line 254
    invoke-virtual {v1}, Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 255
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_66

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "rawLocation":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/lge/cic/eden/controller/EdenController;->setLocationPOI(Ljava/lang/String;)Z

    .line 258
    sget-object v4, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "detectHome :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 263
    const/4 v4, 0x1

    .line 266
    .end local v0    # "location":Landroid/location/Location;
    .end local v3    # "rawLocation":Ljava/lang/String;
    :goto_65
    return v4

    .line 260
    .restart local v0    # "location":Landroid/location/Location;
    :cond_66
    sget-object v5, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v6, "HomeLocationInfo : null"

    invoke-virtual {v5, v6}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_65

    .line 265
    .end local v0    # "location":Landroid/location/Location;
    :cond_6e
    sget-object v5, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v6, "HomeLocationInfo : null"

    invoke-virtual {v5, v6}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_65
.end method

.method public hasPermissions()Z
    .registers 3

    .prologue
    .line 549
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/cic/eden/controller/EdenController;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lge/app/permission/RequestPermissionsHelper;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public lightSyncOnRequest()V
    .registers 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/cic/eden/controller/EdenController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-string v2, "2-LIGHT_SYNC_TASK"

    invoke-static {v0, v1, v2}, Lcom/lge/cic/eden/service/task/manager/TaskRequester;->requestTask(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public mediaDelete(J[J)V
    .registers 11
    .param p1, "requestId"    # J
    .param p3, "mediaIds"    # [J

    .prologue
    .line 517
    sget-object v1, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "mediaDelete()"

    invoke-virtual {v1, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 518
    if-nez p3, :cond_11

    .line 519
    sget-object v1, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "mediaIds is null"

    invoke-virtual {v1, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 531
    :goto_10
    return-void

    .line 522
    :cond_11
    sget-object v1, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mediaIds : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v0, "listForDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    array-length v4, p3

    const/4 v1, 0x0

    :goto_2d
    if-lt v1, v4, :cond_41

    .line 528
    new-instance v1, Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;

    invoke-direct {v1, p1, p2, v0}, Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;-><init>(JLjava/util/ArrayList;)V

    invoke-static {v1}, Lcom/lge/cic/eden/service/task/DeleteMediaTask;->addRequestForm(Lcom/lge/cic/eden/service/task/DeleteMediaTask$DeleteMediaRequestForm;)V

    .line 529
    iget-object v1, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/lge/cic/eden/controller/EdenController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-string v5, "2-DELETE_MEDIA"

    invoke-static {v1, v4, v5}, Lcom/lge/cic/eden/service/task/manager/TaskRequester;->requestTask(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;Ljava/lang/String;)V

    goto :goto_10

    .line 525
    :cond_41
    aget-wide v2, p3, v1

    .line 526
    .local v2, "mediaId":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d
.end method

.method public mergeEvent([ILjava/lang/String;)V
    .registers 21
    .param p1, "eventIds"    # [I
    .param p2, "eventName"    # Ljava/lang/String;

    .prologue
    .line 469
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    .local v17, "query":Ljava/lang/StringBuilder;
    const-string v1, "EVENT_ID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_13
    move-object/from16 v0, p1

    array-length v1, v0

    if-lt v13, v1, :cond_5b

    .line 476
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 477
    const-string v1, ")"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    sget-object v1, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/cic/eden/controller/EdenController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v2, Lcom/lge/cic/eden/db/type/EventInfo;

    invoke-static {}, Lcom/lge/cic/eden/db/table/EventInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 481
    .local v12, "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    if-eqz v12, :cond_53

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6b

    .line 482
    :cond_53
    sget-object v1, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "eventInfoList for Event Merge is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 514
    :goto_5a
    return-void

    .line 474
    .end local v12    # "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    :cond_5b
    aget v1, p1, v13

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    add-int/lit8 v13, v13, 0x1

    goto :goto_13

    .line 486
    .restart local v12    # "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    :cond_6b
    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/lge/cic/eden/db/type/EventInfo;->makeMergedEventInfo(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/lge/cic/eden/db/type/EventInfo;

    move-result-object v15

    .line 488
    .local v15, "mergedEventInfo":Lcom/lge/cic/eden/db/type/EventInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 490
    .local v9, "contentResolver":Landroid/content/ContentResolver;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 491
    .local v10, "contentValueForAEMap":Landroid/content/ContentValues;
    const-string v1, "EVENT_ID"

    iget v2, v15, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 492
    sget-object v1, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v9, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 494
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 495
    .local v11, "contentValueForEMMap":Landroid/content/ContentValues;
    const-string v1, "EVENT_ID"

    iget v2, v15, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    sget-object v1, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v9, v1, v11, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 498
    invoke-static {}, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->getEdenPropertyInfo()Lcom/lge/cic/eden/db/type/EdenPropertyInfo;

    move-result-object v16

    .line 499
    .local v16, "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    iget v1, v15, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    move-object/from16 v0, v16

    iput v1, v0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->maxEventId:I

    .line 500
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/cic/eden/controller/EdenController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MAX_EVENT_ID"

    aput-object v4, v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->update(Lcom/lge/cic/eden/db/type/ColumnInfo;[Ljava/lang/String;)I

    move-result v7

    .line 501
    .local v7, "affectedRows":I
    if-nez v7, :cond_d4

    .line 502
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/cic/eden/controller/EdenController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->insert(Lcom/lge/cic/eden/db/type/ColumnInfo;)Landroid/net/Uri;

    .line 505
    :cond_d4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/cic/eden/controller/EdenController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-virtual {v1, v15}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->insert(Lcom/lge/cic/eden/db/type/ColumnInfo;)Landroid/net/Uri;

    .line 506
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/cic/eden/controller/EdenController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-virtual {v1, v12}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->bulkDelete(Ljava/util/ArrayList;)I

    .line 508
    new-instance v8, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-direct {v8, v1}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;-><init>(Landroid/content/Context;)V

    .line 509
    .local v8, "cardPublisher":Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;
    sget-object v1, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  lastest published eventId on pref = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->getPrefLastestEventId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 510
    move-object/from16 v0, v16

    iget v1, v0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->maxEventId:I

    invoke-virtual {v8, v1}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->setPrefLastestEventId(I)V

    .line 512
    new-instance v14, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-direct {v14, v1}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;-><init>(Landroid/content/Context;)V

    .line 513
    .local v14, "locationPOImanager":Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;
    invoke-virtual {v14}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->updateUserModifiedFlag()V

    goto/16 :goto_5a
.end method

.method public removeCard()Z
    .registers 8

    .prologue
    .line 235
    :try_start_0
    const-string v1, "?category=MemoriesCard"

    .line 236
    .local v1, "cardUri":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/lge/concierge/sdk/SmartNotice;->removeCard(Landroid/content/Context;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->getEdenPropertyInfo()Lcom/lge/cic/eden/db/type/EdenPropertyInfo;

    move-result-object v3

    .line 239
    .local v3, "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    new-instance v0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;

    iget-object v4, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;-><init>(Landroid/content/Context;)V

    .line 240
    .local v0, "cardPublisher":Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;
    sget-object v4, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  lastest published eventId on pref = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->getPrefLastestEventId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 241
    iget v4, v3, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->maxEventId:I

    invoke-virtual {v0, v4}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->setPrefLastestEventId(I)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_31

    .line 246
    .end local v0    # "cardPublisher":Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;
    .end local v1    # "cardUri":Ljava/lang/String;
    .end local v3    # "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    :goto_2f
    const/4 v4, 0x1

    return v4

    .line 243
    :catch_31
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f
.end method

.method public removeTaskAll()V
    .registers 5

    .prologue
    .line 422
    invoke-static {}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->getInstance()Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->stop()Z

    .line 423
    iget-object v2, p0, Lcom/lge/cic/eden/controller/EdenController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    sget-object v3, Lcom/lge/cic/eden/db/table/TaskInfoTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->clear(Landroid/net/Uri;)V

    .line 425
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 426
    .local v1, "serviceIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.lge.cic.eden.service"

    const-string v3, "com.lge.cic.eden.service.eventclustering.EventClusteringService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 428
    iget-object v2, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 429
    return-void
.end method

.method public requestEventClustering(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 272
    sget-object v0, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "start event clustering service"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/cic/eden/controller/EdenController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-string v2, "4-EVENT_CLUSTERING_TASK"

    invoke-static {v0, v1, v2}, Lcom/lge/cic/eden/service/task/manager/TaskRequester;->requestTask(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public requestStopService()V
    .registers 6

    .prologue
    .line 432
    iget-object v2, p0, Lcom/lge/cic/eden/controller/EdenController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v3, Lcom/lge/cic/eden/db/type/TaskInfo;

    sget-object v4, Lcom/lge/cic/eden/db/table/TaskInfoTable;->TABLE_URI_LIMIT:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_18

    .line 433
    invoke-static {}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->getInstance()Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->start()V

    .line 454
    :goto_17
    return-void

    .line 435
    :cond_18
    sget-object v2, Lcom/lge/cic/eden/service/EdenService;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_61

    sget-object v2, Lcom/lge/cic/eden/service/EdenService;->receivedIntentCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-gtz v2, :cond_61

    .line 436
    sget-object v2, Lcom/lge/cic/eden/service/EdenService;->isRequestStopSelf:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 438
    iget-object v2, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Service;

    if-eqz v2, :cond_43

    .line 439
    sget-object v2, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "requestStopService : stopSelf"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 440
    iget-object v2, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Service;

    invoke-virtual {v2}, Landroid/app/Service;->stopSelf()V

    goto :goto_17

    .line 443
    :cond_43
    sget-object v2, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "requestStopService : stopService"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 445
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 446
    .local v1, "serviceIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.lge.cic.eden.service"

    const-string v3, "com.lge.cic.eden.service.EdenService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 448
    iget-object v2, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_17

    .line 451
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_61
    sget-object v2, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isMonitoring: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/lge/cic/eden/service/EdenService;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "receivedIntentCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/lge/cic/eden/service/EdenService;->receivedIntentCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public requestStoryClustering(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 312
    sget-object v0, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "this function is not implemented - requestStoryClustering()"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public setAlarmManually()Z
    .registers 3

    .prologue
    .line 553
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->checkConcatenatedDate(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 554
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->registerStartAlarm(Landroid/content/Context;)V

    .line 555
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->registerRestartAlarm(Landroid/content/Context;)V

    .line 556
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->registerStopAlarm(Landroid/content/Context;)V

    .line 557
    sget-object v0, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "register complete Alarm Manually"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 558
    const/4 v0, 0x1

    .line 561
    :goto_1f
    return v0

    .line 560
    :cond_20
    sget-object v0, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "Alarm is already registered"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 561
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public setEventHideFlag([I)V
    .registers 14
    .param p1, "hideList"    # [I

    .prologue
    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .local v4, "eventIdListQuery":Ljava/lang/StringBuilder;
    array-length v8, p1

    const/4 v7, 0x0

    :goto_9
    if-lt v7, v8, :cond_1de

    .line 175
    :goto_b
    iget-object v7, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 177
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v4, :cond_207

    .line 178
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 179
    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 182
    .local v1, "contentValuesForEventInfo":Landroid/content/ContentValues;
    const-string v7, "E_VISIBILITY"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v6, "whereClause":Ljava/lang/StringBuilder;
    const-string v7, "EVENT_ID"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "E_VISIBILITY"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    sget-object v7, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 186
    sget-object v7, Lcom/lge/cic/eden/db/table/EventInfoTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 188
    const-string v7, "E_VISIBILITY"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "whereClause":Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .restart local v6    # "whereClause":Ljava/lang/StringBuilder;
    const-string v7, "EVENT_ID"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not IN (select distinct("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "EVENT_ID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "EVENT_INFO"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " where "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v7, "E_VISIBILITY"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "EVENT_ID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not IN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "E_VISIBILITY"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    sget-object v7, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 194
    sget-object v7, Lcom/lge/cic/eden/db/table/EventInfoTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 197
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 198
    .local v2, "contentValuesForEventMediaMap":Landroid/content/ContentValues;
    const-string v7, "VISIBILITY"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "whereClause":Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .restart local v6    # "whereClause":Ljava/lang/StringBuilder;
    const-string v7, "EVENT_ID"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "VISIBILITY"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    sget-object v7, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 202
    sget-object v7, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v2, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 204
    const-string v7, "VISIBILITY"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "whereClause":Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .restart local v6    # "whereClause":Ljava/lang/StringBuilder;
    const-string v7, "EVENT_ID"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not IN (select distinct("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "EVENT_ID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "EVENT_MEDIA_MAP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v7, " where "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "VISIBILITY"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "EVENT_ID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not IN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "VISIBILITY"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    sget-object v7, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 210
    sget-object v7, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v2, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 229
    :goto_1d3
    new-instance v5, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;

    iget-object v7, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;-><init>(Landroid/content/Context;)V

    .line 230
    .local v5, "locationPOImanager":Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;
    invoke-virtual {v5}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->updateUserModifiedFlag()V

    .line 231
    return-void

    .line 166
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "contentValuesForEventInfo":Landroid/content/ContentValues;
    .end local v2    # "contentValuesForEventMediaMap":Landroid/content/ContentValues;
    .end local v5    # "locationPOImanager":Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;
    .end local v6    # "whereClause":Ljava/lang/StringBuilder;
    :cond_1de
    aget v3, p1, v7

    .line 167
    .local v3, "eid":I
    const/4 v9, -0x1

    if-ne v3, v9, :cond_1e6

    .line 168
    const/4 v4, 0x0

    .line 169
    goto/16 :goto_b

    .line 171
    :cond_1e6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    sget-object v9, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "setEventHideFlag : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 166
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9

    .line 213
    .end local v3    # "eid":I
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    :cond_207
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 214
    .restart local v1    # "contentValuesForEventInfo":Landroid/content/ContentValues;
    const-string v7, "E_VISIBILITY"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .restart local v6    # "whereClause":Ljava/lang/StringBuilder;
    const-string v7, "EVENT_ID"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not IN (select distinct("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "EVENT_ID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "EVENT_INFO"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " where "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v7, "E_VISIBILITY"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "E_VISIBILITY"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    sget-object v7, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 219
    sget-object v7, Lcom/lge/cic/eden/db/table/EventInfoTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 221
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 222
    .restart local v2    # "contentValuesForEventMediaMap":Landroid/content/ContentValues;
    const-string v7, "VISIBILITY"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "whereClause":Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .restart local v6    # "whereClause":Ljava/lang/StringBuilder;
    const-string v7, "EVENT_ID"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not IN (select distinct("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "EVENT_ID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "EVENT_MEDIA_MAP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v7, " where "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "VISIBILITY"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "VISIBILITY"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    sget-object v7, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 227
    sget-object v7, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v2, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1d3
.end method

.method public setLocationPOI(Ljava/lang/String;)Z
    .registers 9
    .param p1, "rawLocation"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 279
    sget-object v4, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "setLocationPOI()"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 280
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 281
    :cond_10
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "POI location is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 284
    :cond_18
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "token":[Ljava/lang/String;
    new-instance v1, Landroid/location/Location;

    const-string v4, "HOME"

    invoke-direct {v1, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, "loc":Landroid/location/Location;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 288
    aget-object v4, v3, v6

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 291
    const/4 v2, 0x0

    .line 293
    .local v2, "locationTaskWorker":Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;
    :try_start_39
    invoke-static {}, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->getInstance()Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;
    :try_end_3c
    .catch Ljava/lang/IllegalStateException; {:try_start_39 .. :try_end_3c} :catch_43

    move-result-object v2

    .line 298
    :goto_3d
    if-eqz v2, :cond_42

    .line 299
    invoke-virtual {v2, v1}, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->requestAsync(Landroid/location/Location;)V

    .line 301
    :cond_42
    return v6

    .line 294
    :catch_43
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v4, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/lge/cic/eden/controller/EdenController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {v4, v5}, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->create(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V

    .line 296
    invoke-static {}, Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;->getInstance()Lcom/lge/cic/eden/service/task/manager/LocationTaskWorker;

    move-result-object v2

    goto :goto_3d
.end method

.method public setMediaHideFlag([JI)V
    .registers 21
    .param p1, "hideList"    # [J
    .param p2, "eventId"    # I

    .prologue
    .line 108
    sget-object v13, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v14, "setMediaHideFlag start"

    invoke-virtual {v13, v14}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 109
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 111
    .local v5, "hideSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v13, 0x0

    :goto_10
    if-lt v13, v14, :cond_179

    .line 115
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "("

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .local v9, "mediaIdListQuery":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 117
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_25
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_186

    .line 126
    :goto_2b
    if-eqz v9, :cond_1b8

    .line 128
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 129
    const-string v13, ")"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .local v4, "contentValuesForEventMediaMap":Landroid/content/ContentValues;
    const-string v13, "VISIBILITY"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "MEDIA_ID IN "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " AND "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "VISIBILITY"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " AND "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "EVENT_ID"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 134
    .local v12, "whereClause":Ljava/lang/String;
    sget-object v13, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 135
    sget-object v13, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v4, v12, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 137
    const-string v13, "VISIBILITY"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "MEDIA_ID not IN "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " AND "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "VISIBILITY"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " AND "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "EVENT_ID"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 139
    sget-object v13, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 140
    sget-object v13, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v4, v12, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 150
    :goto_f6
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 151
    .local v3, "contentValuesForEventInfo":Landroid/content/ContentValues;
    const-string v13, "E_VISIBILITY"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    new-instance v12, Ljava/lang/StringBuilder;

    .end local v12    # "whereClause":Ljava/lang/String;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v12, "whereClause":Ljava/lang/StringBuilder;
    const-string v13, "EVENT_ID"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " AND "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "EVENT_ID"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " NOT IN (SELECT distinct "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v13, "EVENT_ID"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "EVENT_MEDIA_MAP"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " where "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "VISIBILITY"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    sget-object v13, Lcom/lge/cic/eden/db/table/EventInfoTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v2, v13, v3, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 157
    new-instance v8, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;-><init>(Landroid/content/Context;)V

    .line 158
    .local v8, "locationPOImanager":Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;
    invoke-virtual {v8}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->updateUserModifiedFlag()V

    .line 160
    sget-object v13, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v14, "setMediaHideFlag complete"

    invoke-virtual {v13, v14}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 161
    return-void

    .line 111
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "contentValuesForEventInfo":Landroid/content/ContentValues;
    .end local v4    # "contentValuesForEventMediaMap":Landroid/content/ContentValues;
    .end local v8    # "locationPOImanager":Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;
    .end local v9    # "mediaIdListQuery":Ljava/lang/StringBuilder;
    .end local v12    # "whereClause":Ljava/lang/StringBuilder;
    :cond_179
    aget-wide v10, p1, v13

    .line 112
    .local v10, "mediaId":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_10

    .line 117
    .end local v10    # "mediaId":J
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v9    # "mediaIdListQuery":Ljava/lang/StringBuilder;
    :cond_186
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 118
    .local v6, "eid":J
    const-wide/16 v16, -0x1

    cmp-long v13, v6, v16

    if-nez v13, :cond_199

    .line 119
    const/4 v9, 0x0

    .line 120
    goto/16 :goto_2b

    .line 122
    :cond_199
    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ","

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    sget-object v13, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "setEventHideFlag : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    goto/16 :goto_25

    .line 143
    .end local v6    # "eid":J
    :cond_1b8
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 144
    .restart local v4    # "contentValuesForEventMediaMap":Landroid/content/ContentValues;
    const-string v13, "VISIBILITY"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "VISIBILITY = 1 AND EVENT_ID = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 146
    .local v12, "whereClause":Ljava/lang/String;
    sget-object v13, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 147
    sget-object v13, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v4, v12, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_f6
.end method

.method public setSyncPath(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    if-eqz v0, :cond_9

    .line 79
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    invoke-virtual {v0, p1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->setSyncPath(Ljava/lang/String;)V

    .line 81
    :cond_9
    return-void
.end method

.method public startImageContentChangeMonitoring()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 321
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->imageContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_2b

    .line 322
    sget-object v0, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "startImageContentChangeMonitoring"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 323
    new-instance v0, Lcom/lge/cic/eden/controller/EdenController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lge/cic/eden/controller/EdenController$1;-><init>(Lcom/lge/cic/eden/controller/EdenController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->imageContentObserver:Landroid/database/ContentObserver;

    .line 330
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lge/cic/eden/controller/EdenController;->imageContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 331
    sget-object v0, Lcom/lge/cic/eden/service/EdenService;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 335
    :goto_2a
    return-void

    .line 333
    :cond_2b
    sget-object v0, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "startImageContentChangeMonitoring [IGNORE]: contentObserver is not null.."

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method public startVideoContentChangeMonitoring()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 348
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->videoContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_2b

    .line 349
    sget-object v0, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "startVideoContentChangeMonitoring"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 350
    new-instance v0, Lcom/lge/cic/eden/controller/EdenController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lge/cic/eden/controller/EdenController$2;-><init>(Lcom/lge/cic/eden/controller/EdenController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->videoContentObserver:Landroid/database/ContentObserver;

    .line 357
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lge/cic/eden/controller/EdenController;->videoContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 358
    sget-object v0, Lcom/lge/cic/eden/service/EdenService;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 362
    :goto_2a
    return-void

    .line 360
    :cond_2b
    sget-object v0, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "startVideoContentChangeMonitoring [IGNORE]: contentObserver is not null.."

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method public stopAnalysis()V
    .registers 7

    .prologue
    .line 411
    invoke-static {}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->getInstance()Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->stop()Z

    .line 413
    iget-object v2, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lge/cic/eden/db/table/TaskInfoTable;->TABLE_URI:Landroid/net/Uri;

    const-string v4, "TASK_NAME = \'4-EVENT_CLUSTERING_TASK\'"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 414
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 415
    .local v1, "serviceIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.lge.cic.eden.service"

    const-string v3, "com.lge.cic.eden.service.eventclustering.EventClusteringService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 417
    iget-object v2, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 419
    invoke-static {}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->getInstance()Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->start()V

    .line 420
    return-void
.end method

.method public stopImageContentChangeMonitoring()V
    .registers 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->imageContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_20

    .line 339
    sget-object v0, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "stopImageContentChangeMonitoring"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/cic/eden/controller/EdenController;->imageContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->imageContentObserver:Landroid/database/ContentObserver;

    .line 342
    sget-object v0, Lcom/lge/cic/eden/service/EdenService;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 346
    :goto_1f
    return-void

    .line 344
    :cond_20
    sget-object v0, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "stopImageContentChangeMonitoring [IGNORE]: contentObserver is null.."

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public stopVideoContentChangeMonitoring()V
    .registers 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->videoContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_20

    .line 366
    sget-object v0, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "stopVideoContentChangeMonitoring"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/cic/eden/controller/EdenController;->videoContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->videoContentObserver:Landroid/database/ContentObserver;

    .line 369
    sget-object v0, Lcom/lge/cic/eden/service/EdenService;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 373
    :goto_1f
    return-void

    .line 371
    :cond_20
    sget-object v0, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "stopVideoContentChangeMonitoring [IGNORE]: contentObserver is null.."

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public syncOnRequest()V
    .registers 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/cic/eden/controller/EdenController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-string v2, "2-LIGHT_SYNC_TASK"

    invoke-static {v0, v1, v2}, Lcom/lge/cic/eden/service/task/manager/TaskRequester;->requestTask(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/cic/eden/controller/EdenController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-string v2, "3-SYNC_TASK"

    invoke-static {v0, v1, v2}, Lcom/lge/cic/eden/service/task/manager/TaskRequester;->requestTask(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public updateEventName(ILjava/lang/String;)V
    .registers 9
    .param p1, "eventId"    # I
    .param p2, "eventName"    # Ljava/lang/String;

    .prologue
    .line 457
    sget-object v2, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateEventName() : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 458
    new-instance v0, Lcom/lge/cic/eden/db/type/EventInfo;

    invoke-direct {v0}, Lcom/lge/cic/eden/db/type/EventInfo;-><init>()V

    .line 459
    .local v0, "eventInfo":Lcom/lge/cic/eden/db/type/EventInfo;
    iput p1, v0, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    .line 460
    iput-object p2, v0, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    .line 462
    iget-object v2, p0, Lcom/lge/cic/eden/controller/EdenController;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "EVENT_TITLE"

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->update(Lcom/lge/cic/eden/db/type/ColumnInfo;[Ljava/lang/String;)I

    .line 464
    new-instance v1, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;

    iget-object v2, p0, Lcom/lge/cic/eden/controller/EdenController;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;-><init>(Landroid/content/Context;)V

    .line 465
    .local v1, "locationPOImanager":Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;
    invoke-virtual {v1}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->updateUserModifiedFlag()V

    .line 466
    return-void
.end method
