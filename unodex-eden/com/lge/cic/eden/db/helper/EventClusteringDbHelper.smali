.class public Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;
.super Ljava/lang/Object;
.source "EventClusteringDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$EventClusteringTarget;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.lge.cic.eden.provider"

.field private static final EXTERNAL_STORAGE_ID:I = 0x20001

.field private static final INTERNAL_STORAGE_ID:I = 0x10001

.field private static final NO_LOCATION_EXCLUDE_FILTER:Ljava/lang/String; = "LATITUDE >= -90 AND LATITUDE <= 90 AND LONGITUDE >= -180 AND LONGITUDE <= 180"


# instance fields
.field private final bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

.field private logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method public constructor <init>(Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V
    .registers 3
    .param p1, "bridge"    # Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 46
    iput-object p1, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;)Lcom/lge/cic/eden/utils/Logger;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    return-object v0
.end method

.method public static getEdenDatabaseUri()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 50
    const-string v0, "content://com.lge.cic.eden.provider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearDatabase()V
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {}, Lcom/lge/cic/eden/db/table/MediaInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->clear(Landroid/net/Uri;)V

    .line 55
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->clear(Landroid/net/Uri;)V

    .line 56
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {}, Lcom/lge/cic/eden/db/table/EventInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->clear(Landroid/net/Uri;)V

    .line 57
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {}, Lcom/lge/cic/eden/db/table/FaceInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->clear(Landroid/net/Uri;)V

    .line 58
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->clear(Landroid/net/Uri;)V

    .line 59
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {}, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->clear(Landroid/net/Uri;)V

    .line 60
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {}, Lcom/lge/cic/eden/db/table/EdenPropertyInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->clear(Landroid/net/Uri;)V

    .line 61
    return-void
.end method

.method public clearDatabaseForPOI()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 64
    iget-object v2, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-virtual {v2}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 65
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 66
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string v2, "ACTIVITY_ID"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    invoke-static {}, Lcom/lge/cic/eden/db/table/MediaInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 69
    iget-object v2, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->clear(Landroid/net/Uri;)V

    .line 70
    iget-object v2, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {}, Lcom/lge/cic/eden/db/table/EventInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->clear(Landroid/net/Uri;)V

    .line 71
    iget-object v2, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->clear(Landroid/net/Uri;)V

    .line 72
    iget-object v2, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-static {}, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->clear(Landroid/net/Uri;)V

    .line 73
    return-void
.end method

.method public getAcitivityInfoFromUnknownEventId()Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/ActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v1, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 161
    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 165
    const-string v6, "A_START_TIME DESC"

    move-object v4, v3

    move-object v5, v3

    .line 160
    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 167
    .local v11, "allActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v1, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    .line 168
    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 167
    invoke-virtual {v0, v1, v2}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v12

    .line 169
    .local v12, "mappingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 171
    .local v8, "activityIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 175
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v10, "activityInfoForUnknownEvent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3d
    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 182
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activityInfoForUnknownEvent - size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 183
    return-object v10

    .line 171
    .end local v10    # "activityInfoForUnknownEvent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    :cond_5c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    .line 172
    .local v7, "activityEventMappingInfo":Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;
    iget v1, v7, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->activityId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 176
    .end local v7    # "activityEventMappingInfo":Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;
    .restart local v10    # "activityInfoForUnknownEvent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    :cond_6c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 177
    .local v9, "activityInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    iget v1, v9, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    iget v1, v9, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3d

    .line 178
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d
.end method

.method public getActivityCountInEvent(I)I
    .registers 13
    .param p1, "eventId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 314
    new-instance v1, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$3;

    invoke-direct {v1, p0}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$3;-><init>(Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;)V

    .line 336
    .local v1, "rowMapper":Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;, "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 337
    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityEventViewTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 338
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "COUNT(ACTIVITY_ID)"

    aput-object v4, v3, v10

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "EVENT_ID="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    .line 336
    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 345
    .local v9, "countInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v10

    .line 349
    :goto_35
    return v0

    :cond_36
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_35
.end method

.method public getActivityIdsInEvent(I)Ljava/util/ArrayList;
    .registers 12
    .param p1, "eventId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 353
    new-instance v1, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$4;

    invoke-direct {v1, p0}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$4;-><init>(Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;)V

    .line 375
    .local v1, "rowMapper":Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;, "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 376
    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 377
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "ACTIVITY_ID"

    aput-object v6, v3, v4

    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "EVENT_ID="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    .line 375
    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 385
    .local v9, "activityIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-object v9
.end method

.method public getGeoCodingFailedActivityList()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/ActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 631
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v0, "A_RETRYCOUNT != 99 AND A_RETRYCOUNT < 5"

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 633
    .local v9, "query":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v1, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 634
    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 635
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "ACTIVITY_ID"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const-string v6, "A_RETRYCOUNT"

    aput-object v6, v3, v4

    .line 636
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 638
    const-string v6, "A_START_TIME DESC"

    move-object v7, v5

    move-object v8, v5

    .line 633
    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGeoCodingFailedActivityListUsingMappingInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/ActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "mappingInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;>;"
    const/4 v5, 0x0

    .line 644
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v0, "ACTIVITY_ID IN ("

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 645
    .local v10, "query":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 648
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 649
    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "A_RETRYCOUNT < 5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v1, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 653
    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 654
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "ACTIVITY_ID"

    aput-object v6, v3, v4

    .line 655
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    .line 652
    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 645
    :cond_4b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    .line 646
    .local v9, "mappingInfo":Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;
    iget v1, v9, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->activityId:I

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c
.end method

.method public getInvisibleEventIdsInEventMediaMap()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 508
    new-instance v1, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$6;

    invoke-direct {v1, p0}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$6;-><init>(Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;)V

    .line 528
    .local v1, "rowMapper":Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;, "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 529
    invoke-static {}, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 530
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "distinct(EVENT_ID)"

    aput-object v6, v3, v4

    .line 531
    const-string v4, "VISIBILITY = 99"

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    .line 528
    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 537
    .local v9, "eventIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-object v9
.end method

.method public getLastMonthEventIdsInEventInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Calendar;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    .local p1, "lastMonth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Calendar;>;"
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Calendar;

    .line 543
    .local v15, "start":Ljava/util/Calendar;
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Calendar;

    .line 545
    .local v11, "end":Ljava/util/Calendar;
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    .line 546
    .local v16, "startTime":J
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 548
    .local v12, "endTime":J
    new-instance v3, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$7;-><init>(Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;)V

    .line 570
    .local v3, "rowMapper":Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;, "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 571
    invoke-static {}, Lcom/lge/cic/eden/db/table/EventInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v4

    .line 572
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "EVENT_ID"

    aput-object v7, v5, v6

    .line 573
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "E_START_TIME >= "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 574
    const-string v7, "E_END_TIME"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " <= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "E_VISIBILITY"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " != "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 573
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 575
    const/4 v7, 0x0

    .line 576
    const/4 v8, 0x0

    .line 577
    const/4 v9, 0x0

    .line 578
    const/4 v10, 0x0

    .line 570
    invoke-virtual/range {v2 .. v10}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 580
    .local v14, "eventIdsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-object v14
.end method

.method public getLastMonthInvisibleEventIdsInEventMediaMap(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "lastMonthEventIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 585
    new-instance v1, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$8;

    invoke-direct {v1, p0}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$8;-><init>(Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;)V

    .line 606
    .local v1, "rowMapper":Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;, "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper<Ljava/lang/Integer;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 607
    .local v11, "query":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_85

    .line 608
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v10, v0, :cond_69

    .line 611
    const-string v0, "EVENT_ID"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 616
    .end local v10    # "i":I
    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "query = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 619
    invoke-static {}, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 620
    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "distinct(EVENT_ID)"

    aput-object v4, v3, v6

    .line 621
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    .line 618
    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 627
    .local v9, "eventIdsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-object v9

    .line 609
    .end local v9    # "eventIdsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "i":I
    :cond_69
    const-string v0, "EVENT_ID"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 612
    .end local v10    # "i":I
    :cond_85
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_35

    .line 613
    const-string v0, "EVENT_ID"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_35
.end method

.method public varargs getLatestActivityInfo(I[Ljava/lang/String;)Lcom/lge/cic/eden/db/type/ActivityInfo;
    .registers 13
    .param p1, "eventId"    # I
    .param p2, "columns"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 473
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v1, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 474
    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityEventViewTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EVENT_ID = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 478
    const-string v6, "A_END_TIME DESC"

    .line 480
    const-string v8, "1"

    move-object v3, p2

    move-object v7, v5

    .line 473
    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 482
    .local v9, "activityInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 486
    :goto_2c
    return-object v5

    :cond_2d
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/ActivityInfo;

    move-object v5, v0

    goto :goto_2c
.end method

.method public varargs getLatestActivityInfo([Ljava/lang/String;)Lcom/lge/cic/eden/db/type/ActivityInfo;
    .registers 10
    .param p1, "columns"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 207
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v1, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 208
    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 209
    array-length v3, p1

    if-nez v3, :cond_39

    move-object v3, v5

    .line 210
    :goto_11
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "ACTIVITY_ID = (SELECT MAX(ACTIVITY_ID) FROM "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v7

    invoke-interface {v7}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 207
    invoke-virtual/range {v0 .. v5}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 213
    .local v6, "activityInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 217
    :goto_38
    return-object v5

    .end local v6    # "activityInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    :cond_39
    move-object v3, p1

    .line 209
    goto :goto_11

    .line 217
    .restart local v6    # "activityInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    :cond_3b
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/ActivityInfo;

    move-object v5, v0

    goto :goto_38
.end method

.method public varargs getLatestActivityInfoHavingLocation(I[Ljava/lang/String;)Lcom/lge/cic/eden/db/type/ActivityInfo;
    .registers 13
    .param p1, "eventId"    # I
    .param p2, "columns"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 491
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v1, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 492
    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityEventViewTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EVENT_ID = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "A_END_LATITUDE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != -999 AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "A_END_LONGITUDE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != -999"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 496
    const-string v6, "A_START_TIME ASC"

    .line 498
    const-string v8, "1"

    move-object v3, p2

    move-object v7, v5

    .line 491
    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 500
    .local v9, "activityInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 504
    :goto_4a
    return-object v5

    :cond_4b
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/ActivityInfo;

    move-object v5, v0

    goto :goto_4a
.end method

.method public varargs getLatestEventInfo([Ljava/lang/String;)Lcom/lge/cic/eden/db/type/EventInfo;
    .registers 10
    .param p1, "columns"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 222
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v1, Lcom/lge/cic/eden/db/type/EventInfo;

    .line 223
    invoke-static {}, Lcom/lge/cic/eden/db/table/EventInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 224
    array-length v3, p1

    if-nez v3, :cond_39

    move-object v3, v5

    .line 225
    :goto_11
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "EVENT_ID = (SELECT MAX(EVENT_ID) FROM "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lge/cic/eden/db/table/EventInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v7

    invoke-interface {v7}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-virtual/range {v0 .. v5}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 227
    .local v6, "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 231
    :goto_38
    return-object v5

    .end local v6    # "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    :cond_39
    move-object v3, p1

    .line 224
    goto :goto_11

    .line 231
    .restart local v6    # "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    :cond_3b
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/EventInfo;

    move-object v5, v0

    goto :goto_38
.end method

.method public varargs getLatestMediaInfo([Ljava/lang/String;)Lcom/lge/cic/eden/db/type/MediaInfo;
    .registers 10
    .param p1, "columns"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 192
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 193
    invoke-static {}, Lcom/lge/cic/eden/db/table/MediaInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 194
    array-length v3, p1

    if-nez v3, :cond_39

    move-object v3, v5

    .line 195
    :goto_11
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "MEDIA_ID = (SELECT MAX(MEDIA_ID) FROM "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lge/cic/eden/db/table/MediaInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v7

    invoke-interface {v7}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-virtual/range {v0 .. v5}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 198
    .local v6, "mediaInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 202
    :goto_38
    return-object v5

    .end local v6    # "mediaInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :cond_39
    move-object v3, p1

    .line 194
    goto :goto_11

    .line 202
    .restart local v6    # "mediaInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :cond_3b
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    move-object v5, v0

    goto :goto_38
.end method

.method public getMediaCountInActivity(I)I
    .registers 13
    .param p1, "activityId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 235
    new-instance v1, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$1;

    invoke-direct {v1, p0}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$1;-><init>(Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;)V

    .line 258
    .local v1, "rowMapper":Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;, "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 259
    invoke-static {}, Lcom/lge/cic/eden/db/table/MediaInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 260
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "COUNT(MEDIA_ID)"

    aput-object v4, v3, v10

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "ACTIVITY_ID="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    .line 258
    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 267
    .local v9, "countInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v10

    .line 271
    :goto_35
    return v0

    :cond_36
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_35
.end method

.method public getMediaCountInEvent(I)I
    .registers 13
    .param p1, "eventId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 275
    new-instance v1, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$2;

    invoke-direct {v1, p0}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$2;-><init>(Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;)V

    .line 297
    .local v1, "rowMapper":Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;, "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 298
    invoke-static {}, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 299
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "COUNT(MEDIA_ID)"

    aput-object v4, v3, v10

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "EVENT_ID="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    .line 297
    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 306
    .local v9, "countInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v10

    .line 310
    :goto_35
    return v0

    :cond_36
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_35
.end method

.method public varargs getMediaInfoForUnknownActivityId(ZI[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .param p1, "timeAscending"    # Z
    .param p2, "type"    # I
    .param p3, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->getMediaInfoInActivity(IIZ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public varargs getMediaInfoForUnknownPhoto(I[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .param p1, "type"    # I
    .param p2, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const-string v4, "PHOTO_STATE = ? AND MIME_TYPE LIKE \'image/%\' AND LATITUDE >= -90 AND LATITUDE <= 90 AND LONGITUDE >= -180 AND LONGITUDE <= 180"

    .line 77
    .local v4, "query":Ljava/lang/String;
    packed-switch p1, :pswitch_data_7c

    .line 87
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 90
    :goto_c
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "query : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 92
    invoke-static {}, Lcom/lge/cic/eden/db/table/MediaInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 93
    array-length v3, p2

    if-nez v3, :cond_79

    const/4 v3, 0x0

    .line 95
    :goto_34
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "-1"

    aput-object v7, v5, v6

    .line 96
    const-string v6, "DATE_TAKEN ASC"

    .line 91
    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 79
    :pswitch_43
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "INTERNAL"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " AND STORAGE_ID = 65537"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 81
    goto :goto_c

    .line 83
    :pswitch_5e
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "EXTERNAL"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " AND STORAGE_ID = 131073"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    goto :goto_c

    :cond_79
    move-object v3, p2

    .line 93
    goto :goto_34

    .line 77
    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_43
        :pswitch_5e
    .end packed-switch
.end method

.method public varargs getMediaInfoInActivity(IIZ[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .param p1, "activityId"    # I
    .param p2, "type"    # I
    .param p3, "timeAscending"    # Z
    .param p4, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    const-string v4, "ACTIVITY_ID = ? AND LATITUDE >= -90 AND LATITUDE <= 90 AND LONGITUDE >= -180 AND LONGITUDE <= 180"

    .line 101
    .local v4, "query":Ljava/lang/String;
    packed-switch p2, :pswitch_data_72

    .line 112
    :goto_5
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 113
    invoke-static {}, Lcom/lge/cic/eden/db/table/MediaInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 114
    array-length v3, p4

    if-nez v3, :cond_6d

    const/4 v3, 0x0

    .line 116
    :goto_15
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v6, "DATE_TAKEN"

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_6f

    const-string v6, " ASC"

    :goto_2a
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 112
    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 103
    :pswitch_37
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "INTERNAL"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " AND STORAGE_ID = 65537"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 105
    goto :goto_5

    .line 107
    :pswitch_52
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "EXTERNAL"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " AND STORAGE_ID = 131073"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_6d
    move-object v3, p4

    .line 114
    goto :goto_15

    .line 117
    :cond_6f
    const-string v6, " DESC"

    goto :goto_2a

    .line 101
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_37
        :pswitch_52
    .end packed-switch
.end method

.method public varargs getMediaInfoInActivity(IZ[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 12
    .param p1, "activityId"    # I
    .param p2, "timeAscending"    # Z
    .param p3, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 122
    invoke-static {}, Lcom/lge/cic/eden/db/table/MediaInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 123
    array-length v3, p3

    if-nez v3, :cond_34

    const/4 v3, 0x0

    .line 124
    :goto_10
    const-string v4, "ACTIVITY_ID = ?"

    .line 125
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 126
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v6, "DATE_TAKEN"

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_36

    const-string v6, " ASC"

    :goto_27
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 121
    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_34
    move-object v3, p3

    .line 123
    goto :goto_10

    .line 126
    :cond_36
    const-string v6, " DESC"

    goto :goto_27
.end method

.method public getMediaInfoInActivityList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 12
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/ActivityInfo;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "activityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    const/4 v3, 0x0

    .line 130
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "ACTIVITY_ID IN ("

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .local v8, "query":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_42

    .line 134
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 135
    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    packed-switch p2, :pswitch_data_6e

    .line 147
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 151
    :goto_2a
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 152
    invoke-static {}, Lcom/lge/cic/eden/db/table/MediaInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 154
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 156
    const-string v6, "DATE_TAKEN DESC"

    move-object v5, v3

    .line 151
    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 131
    :cond_42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 132
    .local v7, "aInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    iget v1, v7, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 139
    .end local v7    # "aInfo":Lcom/lge/cic/eden/db/type/ActivityInfo;
    :pswitch_54
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "INTERNAL"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 140
    const-string v0, " AND STORAGE_ID = 65537"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 143
    :pswitch_61
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "EXTERNAL"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 144
    const-string v0, " AND STORAGE_ID = 131073"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 137
    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_54
        :pswitch_61
    .end packed-switch
.end method

.method public getMostFrequentColumnCount(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 16
    .param p1, "eventId"    # I
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 389
    new-instance v1, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$5;

    invoke-direct {v1, p0, p2}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$5;-><init>(Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;Ljava/lang/String;)V

    .line 418
    .local v1, "rowMapper":Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;, "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 419
    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityEventViewTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 420
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "count("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "EVENT_ID = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != \'\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_87

    .end local p3    # "whereClause":Ljava/lang/String;
    :goto_4a
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 423
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "count("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") DESC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 425
    const/4 v8, 0x0

    move-object v5, p4

    move-object v7, p2

    .line 418
    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 427
    .local v9, "countInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 428
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "empty"

    invoke-virtual {v0, v2}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 429
    new-instance v0, Landroid/util/Pair;

    const-string v2, ""

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 432
    :goto_86
    return-object v0

    .line 421
    .end local v9    # "countInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local p3    # "whereClause":Ljava/lang/String;
    :cond_87
    const-string p3, ""

    goto :goto_4a

    .line 432
    .end local p3    # "whereClause":Ljava/lang/String;
    .restart local v9    # "countInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_8a
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    goto :goto_86
.end method

.method public varargs getOldestActivityInfo(I[Ljava/lang/String;)Lcom/lge/cic/eden/db/type/ActivityInfo;
    .registers 13
    .param p1, "eventId"    # I
    .param p2, "columns"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 437
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v1, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 438
    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityEventViewTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EVENT_ID = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 442
    const-string v6, "A_START_TIME ASC"

    .line 444
    const-string v8, "1"

    move-object v3, p2

    move-object v7, v5

    .line 437
    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 446
    .local v9, "activityInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 450
    :goto_2c
    return-object v5

    :cond_2d
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/ActivityInfo;

    move-object v5, v0

    goto :goto_2c
.end method

.method public varargs getOldestActivityInfoHavingLocation(I[Ljava/lang/String;)Lcom/lge/cic/eden/db/type/ActivityInfo;
    .registers 13
    .param p1, "eventId"    # I
    .param p2, "columns"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 455
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->bridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    const-class v1, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 456
    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityEventViewTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EVENT_ID = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "A_START_LATITUDE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != -999 AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "A_START_LONGITUDE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != -999"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 460
    const-string v6, "A_START_TIME ASC"

    .line 462
    const-string v8, "1"

    move-object v3, p2

    move-object v7, v5

    .line 455
    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 464
    .local v9, "activityInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 468
    :goto_4a
    return-object v5

    :cond_4b
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/ActivityInfo;

    move-object v5, v0

    goto :goto_4a
.end method
