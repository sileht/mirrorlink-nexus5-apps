.class public Lcom/lge/cic/eden/db/provider/EdenContentProvider;
.super Landroid/content/ContentProvider;
.source "EdenContentProvider.java"


# static fields
.field private static final ACTIVITYEVENTMAP:I = 0x4

.field private static final ACTIVITYEVENTVIEW:I = 0x5

.field private static final ACTIVITYINFO:I = 0x1

.field private static final AUTHORITY:Ljava/lang/String; = "com.lge.cic.eden.provider"

.field private static final EDENPROPERTYINFO:I = 0xa

.field private static final EVENTINFO:I = 0x2

.field private static final EVENTMEDIAMAP:I = 0x6

.field private static final FACEINFO:I = 0x3

.field private static final MATCHER:Landroid/content/UriMatcher;

.field private static final MEDIAINFO:I = 0x0

.field public static final METHOD_BULK_UPDATE_MEDIA_INFO:Ljava/lang/String; = "BulkUpdate"

.field public static final METHOD_RAW_UPDATE_OR_DELETE:Ljava/lang/String; = "RawUpdateOrDelete"

.field private static final MULTITABLES:I = 0x7

.field private static final RAWQUERY:I = 0x8

.field private static final TASKINFO:I = 0x9


# instance fields
.field private final DB_NAME:Ljava/lang/String;

.field private final DB_VERSION:I

.field private edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

.field private logger:Lcom/lge/cic/eden/utils/Logger;

.field private tableInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/table/TableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private tableInfoMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 53
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->MATCHER:Landroid/content/UriMatcher;

    .line 54
    sget-object v0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.cic.eden.provider"

    const-string v2, "MediaInfo"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    sget-object v0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.cic.eden.provider"

    const-string v2, "ActivityInfo"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    sget-object v0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.cic.eden.provider"

    const-string v2, "EventInfo"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.cic.eden.provider"

    const-string v2, "FaceInfo"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.cic.eden.provider"

    const-string v2, "ActivityEventMap"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.cic.eden.provider"

    const-string v2, "ActivityEventView"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.cic.eden.provider"

    const-string v2, "EventMediaMap"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.cic.eden.provider"

    const-string v2, "MultiTables"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.cic.eden.provider"

    const-string v2, "RawQuery"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.cic.eden.provider"

    const-string v2, "TaskInfo"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    sget-object v0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.cic.eden.provider"

    const-string v2, "EdenPropertyInfo"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 33
    const-class v0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 68
    const-string v0, "EVENTCLUSTERING_DB"

    iput-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->DB_NAME:Ljava/lang/String;

    .line 69
    const/4 v0, 0x7

    iput v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->DB_VERSION:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoList:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoMap:Landroid/util/SparseArray;

    .line 32
    return-void
.end method

.method private static addDeleteFlagFilter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "whereClause"    # Ljava/lang/String;
    .param p1, "deleteFlagString"    # Ljava/lang/String;

    .prologue
    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "deleteFlagFilter":Ljava/lang/String;
    if-nez p0, :cond_18

    .line 411
    .end local v0    # "deleteFlagFilter":Ljava/lang/String;
    :goto_17
    return-object v0

    .restart local v0    # "deleteFlagFilter":Ljava/lang/String;
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method private static addStorageFilter(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "whereClause"    # Ljava/lang/String;

    .prologue
    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/lge/cic/eden/utils/SdcardChecker;->getStorageFilter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "storageFilter":Ljava/lang/String;
    if-nez p1, :cond_1c

    .line 403
    .end local v0    # "storageFilter":Ljava/lang/String;
    :goto_1b
    return-object v0

    .restart local v0    # "storageFilter":Ljava/lang/String;
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method private createBulkInsertStatementForMediaInfo()Landroid/database/sqlite/SQLiteStatement;
    .registers 7

    .prologue
    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insert or ignore into "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "MEDIA_INFO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 416
    .local v2, "sqlStringBuilder":Ljava/lang/StringBuilder;
    sget-object v0, Lcom/lge/cic/eden/db/table/MediaInfoTable;->columnList:[Ljava/lang/String;

    .line 417
    .local v0, "columnList":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_5c

    .line 420
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    const-string v3, " VALUES ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const/4 v1, 0x0

    :goto_2f
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_6a

    .line 426
    const-string v3, "?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    iget-object v3, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "createBulkInsertStatementForMediaInfo :  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 429
    iget-object v3, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    return-object v3

    .line 418
    :cond_5c
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 424
    :cond_6a
    const-string v3, "?,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f
.end method

.method private createBulkUpdateStatementForMediaInfo()Landroid/database/sqlite/SQLiteStatement;
    .registers 5

    .prologue
    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update or ignore "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "MEDIA_INFO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 433
    .local v0, "sqlStringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "FILE_PATH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ?,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v1, "ORIENTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ?,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string v1, "IS_FAVORITE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ?,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ?,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string v1, "LATITUDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ?,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string v1, "LONGITUDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MEDIA_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    iget-object v1, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createBulkUpdateStatementForMediaInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    return-object v1
.end method

.method private createTableInfo()V
    .registers 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/lge/cic/eden/db/table/MediaInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/lge/cic/eden/db/table/FaceInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/lge/cic/eden/db/table/EventInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityEventViewTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/lge/cic/eden/db/table/TaskInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/lge/cic/eden/db/table/EdenPropertyInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {}, Lcom/lge/cic/eden/db/table/MediaInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoMap:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-static {}, Lcom/lge/cic/eden/db/table/FaceInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoMap:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-static {}, Lcom/lge/cic/eden/db/table/EventInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoMap:Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoMap:Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityEventViewTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoMap:Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-static {}, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoMap:Landroid/util/SparseArray;

    const/16 v1, 0x9

    invoke-static {}, Lcom/lge/cic/eden/db/table/TaskInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoMap:Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-static {}, Lcom/lge/cic/eden/db/table/EdenPropertyInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    return-void
.end method

.method private getTableName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 275
    sget-object v2, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 277
    .local v0, "index":I
    iget-object v2, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 278
    .local v1, "tableName":Ljava/lang/String;
    if-nez v1, :cond_29

    .line 279
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid Uri - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 282
    :cond_29
    return-object v1
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 727
    sget-object v0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 742
    :goto_9
    return-void

    .line 736
    :pswitch_a
    invoke-virtual {p0}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_9

    .line 727
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method private processBulkInsertStatementForMediaInfo(Landroid/database/sqlite/SQLiteStatement;Landroid/content/ContentValues;)V
    .registers 7
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 445
    const/4 v0, 0x1

    .line 446
    .local v0, "index":I
    const-string v2, "MEDIA_ID"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 447
    const-string v2, "MEDIA_ID"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 448
    .local v1, "temp":Ljava/lang/Long;
    if-eqz v1, :cond_18

    .line 449
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 452
    .end local v1    # "temp":Ljava/lang/Long;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    .line 454
    const-string v2, "ACTIVITY_ID"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 455
    const-string v2, "ACTIVITY_ID"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 456
    .local v1, "temp":Ljava/lang/Integer;
    if-eqz v1, :cond_32

    .line 457
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 460
    .end local v1    # "temp":Ljava/lang/Integer;
    :cond_32
    add-int/lit8 v0, v0, 0x1

    .line 462
    const-string v2, "CONTENT_TYPE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 463
    const-string v2, "CONTENT_TYPE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 464
    .restart local v1    # "temp":Ljava/lang/Integer;
    if-eqz v1, :cond_4c

    .line 465
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 468
    .end local v1    # "temp":Ljava/lang/Integer;
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    .line 470
    const-string v2, "FILE_PATH"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 471
    const-string v2, "FILE_PATH"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "temp":Ljava/lang/String;
    if-eqz v1, :cond_61

    .line 473
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 477
    .end local v1    # "temp":Ljava/lang/String;
    :cond_61
    add-int/lit8 v0, v0, 0x1

    .line 479
    const-string v2, "DATE_TAKEN"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 480
    const-string v2, "DATE_TAKEN"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 481
    .local v1, "temp":Ljava/lang/Long;
    if-eqz v1, :cond_7a

    .line 482
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 485
    .end local v1    # "temp":Ljava/lang/Long;
    :cond_7a
    add-int/lit8 v0, v0, 0x1

    .line 487
    const-string v2, "DATE_MODIFIED"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 488
    const-string v2, "DATE_MODIFIED"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 489
    .restart local v1    # "temp":Ljava/lang/Long;
    if-eqz v1, :cond_93

    .line 490
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 493
    .end local v1    # "temp":Ljava/lang/Long;
    :cond_93
    add-int/lit8 v0, v0, 0x1

    .line 495
    const-string v2, "MIME_TYPE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 496
    const-string v2, "MIME_TYPE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, "temp":Ljava/lang/String;
    if-eqz v1, :cond_a8

    .line 498
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 501
    .end local v1    # "temp":Ljava/lang/String;
    :cond_a8
    add-int/lit8 v0, v0, 0x1

    .line 503
    const-string v2, "TITLE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 504
    const-string v2, "TITLE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    .restart local v1    # "temp":Ljava/lang/String;
    if-eqz v1, :cond_bd

    .line 506
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 509
    .end local v1    # "temp":Ljava/lang/String;
    :cond_bd
    add-int/lit8 v0, v0, 0x1

    .line 511
    const-string v2, "LATITUDE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 512
    const-string v2, "LATITUDE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 513
    .local v1, "temp":Ljava/lang/Double;
    if-eqz v1, :cond_d6

    .line 514
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 517
    .end local v1    # "temp":Ljava/lang/Double;
    :cond_d6
    add-int/lit8 v0, v0, 0x1

    .line 519
    const-string v2, "LONGITUDE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 520
    const-string v2, "LONGITUDE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 521
    .restart local v1    # "temp":Ljava/lang/Double;
    if-eqz v1, :cond_ef

    .line 522
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 525
    .end local v1    # "temp":Ljava/lang/Double;
    :cond_ef
    add-int/lit8 v0, v0, 0x1

    .line 527
    const-string v2, "ORIENTATION"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_109

    .line 528
    const-string v2, "ORIENTATION"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 529
    .local v1, "temp":Ljava/lang/Integer;
    if-eqz v1, :cond_109

    .line 530
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 533
    .end local v1    # "temp":Ljava/lang/Integer;
    :cond_109
    add-int/lit8 v0, v0, 0x1

    .line 535
    const-string v2, "BUCKET_ID"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 536
    const-string v2, "BUCKET_ID"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "temp":Ljava/lang/String;
    if-eqz v1, :cond_11e

    .line 538
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 541
    .end local v1    # "temp":Ljava/lang/String;
    :cond_11e
    add-int/lit8 v0, v0, 0x1

    .line 543
    const-string v2, "MEDIA_TYPE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_138

    .line 544
    const-string v2, "MEDIA_TYPE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 545
    .local v1, "temp":Ljava/lang/Integer;
    if-eqz v1, :cond_138

    .line 546
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 549
    .end local v1    # "temp":Ljava/lang/Integer;
    :cond_138
    add-int/lit8 v0, v0, 0x1

    .line 551
    const-string v2, "WIDTH"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_152

    .line 552
    const-string v2, "WIDTH"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 553
    .restart local v1    # "temp":Ljava/lang/Integer;
    if-eqz v1, :cond_152

    .line 554
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 557
    .end local v1    # "temp":Ljava/lang/Integer;
    :cond_152
    add-int/lit8 v0, v0, 0x1

    .line 559
    const-string v2, "HEIGHT"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16c

    .line 560
    const-string v2, "HEIGHT"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 561
    .restart local v1    # "temp":Ljava/lang/Integer;
    if-eqz v1, :cond_16c

    .line 562
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 565
    .end local v1    # "temp":Ljava/lang/Integer;
    :cond_16c
    add-int/lit8 v0, v0, 0x1

    .line 567
    const-string v2, "STORAGE_ID"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_186

    .line 568
    const-string v2, "STORAGE_ID"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 569
    .restart local v1    # "temp":Ljava/lang/Integer;
    if-eqz v1, :cond_186

    .line 570
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 573
    .end local v1    # "temp":Ljava/lang/Integer;
    :cond_186
    add-int/lit8 v0, v0, 0x1

    .line 575
    const-string v2, "IS_FAVORITE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a0

    .line 576
    const-string v2, "IS_FAVORITE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 577
    .restart local v1    # "temp":Ljava/lang/Integer;
    if-eqz v1, :cond_1a0

    .line 578
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 581
    .end local v1    # "temp":Ljava/lang/Integer;
    :cond_1a0
    add-int/lit8 v0, v0, 0x1

    .line 584
    const-string v2, "SIZE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b9

    .line 585
    const-string v2, "SIZE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 586
    .local v1, "temp":Ljava/lang/Long;
    if-eqz v1, :cond_1b9

    .line 587
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 590
    .end local v1    # "temp":Ljava/lang/Long;
    :cond_1b9
    add-int/lit8 v0, v0, 0x1

    .line 594
    const-string v2, "REPRESENTATIVE_ID"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d2

    .line 595
    const-string v2, "REPRESENTATIVE_ID"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 596
    .restart local v1    # "temp":Ljava/lang/Long;
    if-eqz v1, :cond_1d2

    .line 597
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 600
    .end local v1    # "temp":Ljava/lang/Long;
    :cond_1d2
    add-int/lit8 v0, v0, 0x1

    .line 602
    const-string v2, "SIMILAR_COUNT"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ec

    .line 603
    const-string v2, "SIMILAR_COUNT"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 604
    .local v1, "temp":Ljava/lang/Integer;
    if-eqz v1, :cond_1ec

    .line 605
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 608
    .end local v1    # "temp":Ljava/lang/Integer;
    :cond_1ec
    add-int/lit8 v0, v0, 0x1

    .line 610
    const-string v2, "SCENE_TYPE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_206

    .line 611
    const-string v2, "SCENE_TYPE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 612
    .restart local v1    # "temp":Ljava/lang/Integer;
    if-eqz v1, :cond_206

    .line 613
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 616
    .end local v1    # "temp":Ljava/lang/Integer;
    :cond_206
    add-int/lit8 v0, v0, 0x1

    .line 618
    const-string v2, "PHOTO_STATE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_220

    .line 619
    const-string v2, "PHOTO_STATE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 620
    .restart local v1    # "temp":Ljava/lang/Integer;
    if-eqz v1, :cond_220

    .line 621
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 624
    .end local v1    # "temp":Ljava/lang/Integer;
    :cond_220
    add-int/lit8 v0, v0, 0x1

    .line 626
    const-string v2, "VISIBILITY_TYPE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23a

    .line 627
    const-string v2, "VISIBILITY_TYPE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 628
    .restart local v1    # "temp":Ljava/lang/Integer;
    if-eqz v1, :cond_23a

    .line 629
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 632
    .end local v1    # "temp":Ljava/lang/Integer;
    :cond_23a
    add-int/lit8 v0, v0, 0x1

    .line 634
    const-string v2, "PHOTO_NICENESSSCORE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_254

    .line 635
    const-string v2, "PHOTO_NICENESSSCORE"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 636
    .local v1, "temp":Ljava/lang/Float;
    if-eqz v1, :cond_254

    .line 637
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 640
    .end local v1    # "temp":Ljava/lang/Float;
    :cond_254
    add-int/lit8 v0, v0, 0x1

    .line 642
    const-string v2, "ROI_POINT"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_269

    .line 643
    const-string v2, "ROI_POINT"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "temp":Ljava/lang/String;
    if-eqz v1, :cond_269

    .line 645
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 648
    .end local v1    # "temp":Ljava/lang/String;
    :cond_269
    add-int/lit8 v0, v0, 0x1

    .line 650
    const-string v2, "DELETE_FLAG"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_283

    .line 651
    const-string v2, "DELETE_FLAG"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 652
    .local v1, "temp":Ljava/lang/Integer;
    if-eqz v1, :cond_283

    .line 653
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 656
    .end local v1    # "temp":Ljava/lang/Integer;
    :cond_283
    add-int/lit8 v0, v0, 0x1

    .line 658
    const-string v2, "SET_TIME_DELETE_FLAG"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29c

    .line 659
    const-string v2, "SET_TIME_DELETE_FLAG"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 660
    .local v1, "temp":Ljava/lang/Long;
    if-eqz v1, :cond_29c

    .line 661
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 664
    .end local v1    # "temp":Ljava/lang/Long;
    :cond_29c
    add-int/lit8 v0, v0, 0x1

    .line 669
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 670
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 672
    return-void
.end method

.method private processBulkUpdateStatementForMediaInfo(Landroid/database/sqlite/SQLiteStatement;Landroid/content/ContentValues;)V
    .registers 7
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 675
    const-string v1, "FILE_PATH"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 676
    const-string v1, "FILE_PATH"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "temp":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 678
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 681
    .end local v0    # "temp":Ljava/lang/String;
    :cond_14
    const-string v1, "ORIENTATION"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 682
    const-string v1, "ORIENTATION"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 683
    .local v0, "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_2d

    .line 684
    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 688
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_2d
    const-string v1, "IS_FAVORITE"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 689
    const-string v1, "IS_FAVORITE"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 690
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_46

    .line 691
    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 695
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_46
    const-string v1, "TITLE"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 696
    const-string v1, "TITLE"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "temp":Ljava/lang/String;
    if-eqz v0, :cond_5a

    .line 698
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 702
    .end local v0    # "temp":Ljava/lang/String;
    :cond_5a
    const-string v1, "LATITUDE"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 703
    const-string v1, "LATITUDE"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 704
    .local v0, "temp":Ljava/lang/Double;
    if-eqz v0, :cond_72

    .line 705
    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 708
    .end local v0    # "temp":Ljava/lang/Double;
    :cond_72
    const-string v1, "LONGITUDE"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 709
    const-string v1, "LONGITUDE"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 710
    .restart local v0    # "temp":Ljava/lang/Double;
    if-eqz v0, :cond_8a

    .line 711
    const/4 v1, 0x6

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 715
    .end local v0    # "temp":Ljava/lang/Double;
    :cond_8a
    const-string v1, "MEDIA_ID"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 716
    const-string v1, "MEDIA_ID"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 717
    .local v0, "temp":Ljava/lang/Long;
    if-eqz v0, :cond_a2

    .line 718
    const/4 v1, 0x7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 722
    .end local v0    # "temp":Ljava/lang/Long;
    :cond_a2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 723
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 725
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "applyBatch()"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 339
    const/4 v1, 0x0

    .line 341
    .local v1, "result":[Landroid/content/ContentProviderResult;
    iget-object v2, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->beginTransaction(Z)V

    .line 343
    :try_start_e
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    .line 344
    iget-object v2, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v2}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->successTransaction()V
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_17} :catch_1d
    .catchall {:try_start_e .. :try_end_17} :catchall_2d

    .line 348
    iget-object v2, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v2}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->endTransaction()V

    .line 351
    :goto_1c
    return-object v1

    .line 345
    :catch_1d
    move-exception v0

    .line 346
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1e
    iget-object v2, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_2d

    .line 348
    iget-object v2, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v2}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->endTransaction()V

    goto :goto_1c

    .line 347
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_2d
    move-exception v2

    .line 348
    iget-object v3, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v3}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->endTransaction()V

    .line 349
    throw v2
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 287
    iget-object v8, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "bulkInsert() uri : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 288
    if-nez p2, :cond_24

    .line 289
    iget-object v8, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v9, "bulkInsert() : values are null"

    invoke-virtual {v8, v9}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 331
    :goto_23
    return v7

    .line 292
    :cond_24
    array-length v8, p2

    if-gtz v8, :cond_2f

    .line 293
    iget-object v8, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v9, "bulkInsert() : values.length is 0"

    invoke-virtual {v8, v9}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_23

    .line 297
    :cond_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 298
    .local v0, "chkTime":J
    sget-object v8, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p1, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_95

    .line 299
    invoke-direct {p0}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->createBulkInsertStatementForMediaInfo()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    .line 302
    .local v5, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3f
    iget-object v8, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->beginTransaction(Z)V

    .line 303
    array-length v8, p2

    :goto_46
    if-lt v7, v8, :cond_76

    .line 306
    iget-object v7, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v7}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->successTransaction()V

    .line 307
    invoke-direct {p0, p1}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->notifyChange(Landroid/net/Uri;)V
    :try_end_50
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3f .. :try_end_50} :catch_7e
    .catchall {:try_start_3f .. :try_end_50} :catchall_8e

    .line 311
    iget-object v7, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v7}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->endTransaction()V

    .line 330
    .end local v5    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :goto_55
    iget-object v7, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bulkInsert() completed : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 331
    array-length v7, p2

    goto :goto_23

    .line 303
    .restart local v5    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_76
    :try_start_76
    aget-object v6, p2, v7

    .line 304
    .local v6, "value":Landroid/content/ContentValues;
    invoke-direct {p0, v5, v6}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->processBulkInsertStatementForMediaInfo(Landroid/database/sqlite/SQLiteStatement;Landroid/content/ContentValues;)V
    :try_end_7b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_76 .. :try_end_7b} :catch_7e
    .catchall {:try_start_76 .. :try_end_7b} :catchall_8e

    .line 303
    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    .line 308
    .end local v6    # "value":Landroid/content/ContentValues;
    :catch_7e
    move-exception v2

    .line 309
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_7f
    iget-object v7, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_7f .. :try_end_88} :catchall_8e

    .line 311
    iget-object v7, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v7}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->endTransaction()V

    goto :goto_55

    .line 310
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_8e
    move-exception v7

    .line 311
    iget-object v8, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v8}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->endTransaction()V

    .line 312
    throw v7

    .line 315
    .end local v5    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_95
    iget-object v7, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v7, v11}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->beginTransaction(Z)V

    .line 316
    array-length v4, p2

    .line 319
    .local v4, "numValues":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9c
    if-lt v3, v4, :cond_a9

    .line 322
    :try_start_9e
    iget-object v7, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v7}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->successTransaction()V
    :try_end_a3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9e .. :try_end_a3} :catch_b1
    .catchall {:try_start_9e .. :try_end_a3} :catchall_c1

    .line 326
    iget-object v7, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v7}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->endTransaction()V

    goto :goto_55

    .line 320
    :cond_a9
    :try_start_a9
    aget-object v7, p2, v3

    invoke-virtual {p0, p1, v7}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_ae
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a9 .. :try_end_ae} :catch_b1
    .catchall {:try_start_a9 .. :try_end_ae} :catchall_c1

    .line 319
    add-int/lit8 v3, v3, 0x1

    goto :goto_9c

    .line 323
    :catch_b1
    move-exception v2

    .line 324
    .restart local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_b2
    iget-object v7, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V
    :try_end_bb
    .catchall {:try_start_b2 .. :try_end_bb} :catchall_c1

    .line 326
    iget-object v7, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v7}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->endTransaction()V

    goto :goto_55

    .line 325
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_c1
    move-exception v7

    .line 326
    iget-object v8, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v8}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->endTransaction()V

    .line 327
    throw v7
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 16
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uriString"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    .line 356
    iget-object v8, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "call() :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 358
    .local v0, "chkTime":J
    const-string v8, "BulkUpdate"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 359
    const-string v8, "values"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 360
    .local v7, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_57

    .line 361
    invoke-direct {p0}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->createBulkUpdateStatementForMediaInfo()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    .line 362
    .local v5, "stmt":Landroid/database/sqlite/SQLiteStatement;
    iget-object v8, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v8, v11}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->beginTransaction(Z)V

    .line 364
    :try_start_3c
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_40
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_78

    .line 367
    iget-object v8, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v8}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->successTransaction()V

    .line 368
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->notifyChange(Landroid/net/Uri;)V
    :try_end_52
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3c .. :try_end_52} :catch_82
    .catchall {:try_start_3c .. :try_end_52} :catchall_92

    .line 372
    iget-object v8, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v8}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->endTransaction()V

    .line 394
    .end local v5    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v7    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_57
    :goto_57
    iget-object v8, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "call() completed : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 395
    const/4 v8, 0x0

    return-object v8

    .line 364
    .restart local v5    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v7    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_78
    :try_start_78
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 365
    .local v6, "value":Landroid/content/ContentValues;
    invoke-direct {p0, v5, v6}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->processBulkUpdateStatementForMediaInfo(Landroid/database/sqlite/SQLiteStatement;Landroid/content/ContentValues;)V
    :try_end_81
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_78 .. :try_end_81} :catch_82
    .catchall {:try_start_78 .. :try_end_81} :catchall_92

    goto :goto_40

    .line 369
    .end local v6    # "value":Landroid/content/ContentValues;
    :catch_82
    move-exception v2

    .line 370
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_83
    iget-object v8, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V
    :try_end_8c
    .catchall {:try_start_83 .. :try_end_8c} :catchall_92

    .line 372
    iget-object v8, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v8}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->endTransaction()V

    goto :goto_57

    .line 371
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_92
    move-exception v8

    .line 372
    iget-object v9, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v9}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->endTransaction()V

    .line 373
    throw v8

    .line 376
    .end local v5    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v7    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_99
    const-string v8, "RawUpdateOrDelete"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 377
    const-string v8, "sqlString"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, "sqlString":Ljava/lang/String;
    iget-object v8, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v8, v4}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    .line 379
    .restart local v5    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    iget-object v8, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v8, v11}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->beginTransaction(Z)V

    .line 381
    :try_start_b2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v3

    .line 382
    .local v3, "ncount":I
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 383
    iget-object v8, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v8}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->successTransaction()V

    .line 384
    if-lez v3, :cond_c7

    .line 385
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->notifyChange(Landroid/net/Uri;)V
    :try_end_c7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b2 .. :try_end_c7} :catch_cd
    .catchall {:try_start_b2 .. :try_end_c7} :catchall_de

    .line 391
    :cond_c7
    iget-object v8, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v8}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->endTransaction()V

    goto :goto_57

    .line 388
    .end local v3    # "ncount":I
    :catch_cd
    move-exception v2

    .line 389
    .restart local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_ce
    iget-object v8, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V
    :try_end_d7
    .catchall {:try_start_ce .. :try_end_d7} :catchall_de

    .line 391
    iget-object v8, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v8}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->endTransaction()V

    goto/16 :goto_57

    .line 390
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_de
    move-exception v8

    .line 391
    iget-object v9, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v9}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->endTransaction()V

    .line 392
    throw v8
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v1, "deleteInfoStringBuilder":Ljava/lang/StringBuilder;
    const-string v4, "Delete  uri: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    if-eqz p2, :cond_26

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " ,selection : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_26
    if-eqz p3, :cond_31

    .line 221
    const-string v4, " ,selectionArgs: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    array-length v5, p3

    const/4 v4, 0x0

    :goto_2f
    if-lt v4, v5, :cond_4e

    .line 229
    :cond_31
    const/4 v0, 0x0

    .line 231
    .local v0, "affectedRows":I
    :try_start_32
    iget-object v4, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-direct {p0, p1}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2, p3}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 233
    if-lez v0, :cond_4d

    invoke-direct {p0, p1}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "MEDIA_INFO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 234
    invoke-direct {p0, p1}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->notifyChange(Landroid/net/Uri;)V
    :try_end_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_4d} :catch_5b

    .line 241
    :cond_4d
    :goto_4d
    return v0

    .line 222
    .end local v0    # "affectedRows":I
    :cond_4e
    aget-object v3, p3, v4

    .line 223
    .local v3, "temp":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 238
    .end local v3    # "temp":Ljava/lang/String;
    .restart local v0    # "affectedRows":I
    :catch_5b
    move-exception v2

    .line 239
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4d
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "getType()"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 199
    move-object v1, p1

    .line 201
    .local v1, "returnUri":Landroid/net/Uri;
    :try_start_1
    iget-object v4, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-direct {p0, p1}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 202
    .local v2, "id":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_27

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 204
    invoke-direct {p0, p1}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->notifyChange(Landroid/net/Uri;)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_27} :catch_28

    .line 210
    .end local v2    # "id":J
    :cond_27
    :goto_27
    return-object v1

    .line 207
    :catch_28
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_27
.end method

.method public onCreate()Z
    .registers 6

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->createTableInfo()V

    .line 80
    new-instance v0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {p0}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "EVENTCLUSTERING_DB"

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->tableInfoList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/util/List;)V

    iput-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    .line 82
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "onCreate()"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 21
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v10, 0x0

    .line 113
    .local v10, "cursor":Landroid/database/Cursor;
    const-string v1, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, "limit":Ljava/lang/String;
    const-string v1, "groupBy"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, "groupBy":Ljava/lang/String;
    const-string v2, ""

    .line 119
    .local v2, "tables":Ljava/lang/String;
    sget-object v1, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2e

    .line 120
    const-string v1, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 121
    .local v13, "statement":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v1, v13}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->rawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 187
    .end local v13    # "statement":Ljava/lang/String;
    :goto_2d
    return-object v1

    .line 124
    :cond_2e
    sget-object v1, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_fe

    .line 125
    const-string v1, "tables"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    :goto_41
    sget-object v1, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_55

    .line 131
    invoke-virtual {p0}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-static {v1, v0}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->addStorageFilter(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 134
    :cond_55
    sget-object v1, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_6a

    .line 135
    invoke-virtual {p0}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-static {v1, v0}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->addStorageFilter(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 138
    :cond_6a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v12, "queryInfoStringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "Query  uri: "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    if-eqz p2, :cond_89

    .line 141
    const-string v1, " ,projection: "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    move-object/from16 v0, p2

    array-length v3, v0

    const/4 v1, 0x0

    :goto_87
    if-lt v1, v3, :cond_104

    .line 147
    :cond_89
    if-eqz p3, :cond_9f

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " ,selection : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_9f
    if-eqz p4, :cond_ac

    .line 152
    const-string v1, " ,selectionArgs: "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    move-object/from16 v0, p4

    array-length v3, v0

    const/4 v1, 0x0

    :goto_aa
    if-lt v1, v3, :cond_112

    .line 158
    :cond_ac
    if-eqz p5, :cond_c2

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " ,sortOrder : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_c2
    if-eqz v6, :cond_d6

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " ,groupBy : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_d6
    if-eqz v9, :cond_ea

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " ,limit : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_ea
    if-eqz v9, :cond_11f

    .line 172
    :try_start_ec
    iget-object v1, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v9}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_fa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ec .. :try_end_fa} :catch_12f

    move-result-object v10

    :goto_fb
    move-object v1, v10

    .line 187
    goto/16 :goto_2d

    .line 127
    .end local v12    # "queryInfoStringBuilder":Ljava/lang/StringBuilder;
    :cond_fe
    invoke-direct/range {p0 .. p1}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_41

    .line 142
    .restart local v12    # "queryInfoStringBuilder":Ljava/lang/StringBuilder;
    :cond_104
    aget-object v14, p2, v1

    .line 143
    .local v14, "temp":Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_87

    .line 153
    .end local v14    # "temp":Ljava/lang/String;
    :cond_112
    aget-object v14, p4, v1

    .line 154
    .restart local v14    # "temp":Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_aa

    .line 174
    .end local v14    # "temp":Ljava/lang/String;
    :cond_11f
    :try_start_11f
    iget-object v1, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11f .. :try_end_12d} :catch_12f

    move-result-object v10

    goto :goto_fb

    .line 184
    :catch_12f
    move-exception v11

    .line 185
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IllegalArgumentException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_fb
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v3, "updateInfoStringBuilder":Ljava/lang/StringBuilder;
    const-string v4, "Update  uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    if-eqz p3, :cond_26

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " ,selection : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_26
    if-eqz p4, :cond_31

    .line 252
    const-string v4, " ,selectionArgs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    array-length v5, p4

    const/4 v4, 0x0

    :goto_2f
    if-lt v4, v5, :cond_42

    .line 260
    :cond_31
    const/4 v0, 0x0

    .line 262
    .local v0, "affectedRows":I
    :try_start_32
    iget-object v4, p0, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->edenDatabase:Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-direct {p0, p1}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2, p3, p4}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 263
    if-lez v0, :cond_41

    .line 264
    invoke-direct {p0, p1}, Lcom/lge/cic/eden/db/provider/EdenContentProvider;->notifyChange(Landroid/net/Uri;)V
    :try_end_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_41} :catch_4f

    .line 270
    :cond_41
    :goto_41
    return v0

    .line 253
    .end local v0    # "affectedRows":I
    :cond_42
    aget-object v2, p4, v4

    .line 254
    .local v2, "temp":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 267
    .end local v2    # "temp":Ljava/lang/String;
    .restart local v0    # "affectedRows":I
    :catch_4f
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_41
.end method
