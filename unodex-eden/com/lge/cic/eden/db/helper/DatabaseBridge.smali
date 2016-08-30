.class public Lcom/lge/cic/eden/db/helper/DatabaseBridge;
.super Ljava/lang/Object;
.source "DatabaseBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/eden/db/helper/DatabaseBridge$KeyedRowMapper;,
        Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;
    }
.end annotation


# static fields
.field private static instance:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

.field private static lock:Ljava/lang/Object;


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->instance:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 60
    iput-object p1, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->contentResolver:Landroid/content/ContentResolver;

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Ljava/lang/Class;Landroid/content/ContentValues;)Lcom/lge/cic/eden/db/type/ColumnInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-direct {p0, p1, p2}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->createData(Ljava/lang/Class;Landroid/content/ContentValues;)Lcom/lge/cic/eden/db/type/ColumnInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/cic/eden/db/helper/DatabaseBridge;)Lcom/lge/cic/eden/utils/Logger;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->logger:Lcom/lge/cic/eden/utils/Logger;

    return-object v0
.end method

.method public static create(Landroid/content/ContentResolver;)V
    .registers 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 52
    sget-object v1, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_3
    sget-object v0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->instance:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    if-nez v0, :cond_e

    .line 54
    new-instance v0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-direct {v0, p0}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;-><init>(Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->instance:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 52
    :cond_e
    monitor-exit v1

    .line 57
    return-void

    .line 52
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private createData(Ljava/lang/Class;Landroid/content/ContentValues;)Lcom/lge/cic/eden/db/type/ColumnInfo;
    .registers 4
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/ContentValues;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 406
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/ColumnInfo;

    .line 407
    .local v0, "instance":Lcom/lge/cic/eden/db/type/ColumnInfo;, "TT;"
    invoke-virtual {v0, p2}, Lcom/lge/cic/eden/db/type/ColumnInfo;->setContentValues(Landroid/content/ContentValues;)V

    .line 408
    return-object v0
.end method

.method public static get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    .registers 2

    .prologue
    .line 44
    sget-object v0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->instance:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    if-nez v0, :cond_c

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DatabaseBridge is null... call DatabaseBridge.create() first..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_c
    sget-object v0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->instance:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    return-object v0
.end method

.method private getDataFromCursor(Landroid/database/Cursor;Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;)Ljava/util/ArrayList;
    .registers 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">(",
            "Landroid/database/Cursor;",
            "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 444
    .local p2, "rowMapper":Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;, "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v1, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 446
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-eqz p1, :cond_19

    .line 447
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 448
    :goto_10
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 453
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 455
    :cond_19
    return-object v1

    .line 449
    :cond_1a
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 450
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 451
    invoke-interface {p2, v0}, Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;->mapRow(Landroid/content/ContentValues;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/cic/eden/db/type/ColumnInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10
.end method

.method private getDataFromCursorRaw(Landroid/database/Cursor;Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;)Ljava/util/ArrayList;
    .registers 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 429
    .local p2, "rowMapper":Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;, "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v1, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 431
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-eqz p1, :cond_19

    .line 432
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 433
    :goto_10
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 438
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 440
    :cond_19
    return-object v1

    .line 434
    :cond_1a
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 435
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 436
    invoke-interface {p2, v0}, Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;->mapRow(Landroid/content/ContentValues;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10
.end method

.method private getMapDataFromCursor(Landroid/database/Cursor;Lcom/lge/cic/eden/db/helper/DatabaseBridge$KeyedRowMapper;)Ljava/util/HashMap;
    .registers 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">(",
            "Landroid/database/Cursor;",
            "Lcom/lge/cic/eden/db/helper/DatabaseBridge$KeyedRowMapper",
            "<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 412
    .local p2, "rowMapper":Lcom/lge/cic/eden/db/helper/DatabaseBridge$KeyedRowMapper;, "Lcom/lge/cic/eden/db/helper/DatabaseBridge$KeyedRowMapper<Ljava/lang/String;TT;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 413
    .local v1, "resultList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;TT;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 414
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-eqz p1, :cond_19

    .line 415
    const/4 v3, -0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 416
    :goto_10
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 423
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 425
    :cond_19
    return-object v1

    .line 417
    :cond_1a
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 418
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 419
    invoke-interface {p2, v0}, Lcom/lge/cic/eden/db/helper/DatabaseBridge$KeyedRowMapper;->mapValue(Landroid/content/ContentValues;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/cic/eden/db/type/ColumnInfo;

    .line 421
    .local v2, "value":Lcom/lge/cic/eden/db/type/ColumnInfo;, "TT;"
    invoke-interface {p2, v2}, Lcom/lge/cic/eden/db/helper/DatabaseBridge$KeyedRowMapper;->mapKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method

.method private makeWhereArgs(Landroid/content/ContentValues;)[Ljava/lang/String;
    .registers 8
    .param p1, "selectionValues"    # Landroid/content/ContentValues;

    .prologue
    .line 479
    if-nez p1, :cond_4

    .line 480
    const/4 v3, 0x0

    .line 489
    :cond_3
    return-object v3

    .line 483
    :cond_4
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 484
    .local v3, "whereArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 485
    .local v0, "i":I
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 486
    .local v2, "primaryKey":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_13
.end method

.method private makeWhereClause(Ljava/util/Collection;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "selectionColumns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_4

    .line 460
    const/4 v3, 0x0

    .line 475
    :goto_3
    return-object v3

    .line 463
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 464
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    .line 465
    .local v2, "isFirst":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_19

    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 465
    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 466
    .local v1, "c":Ljava/lang/String;
    if-eqz v2, :cond_32

    .line 467
    const/4 v2, 0x0

    .line 472
    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 469
    :cond_32
    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_22
.end method


# virtual methods
.method public bulkDelete(Ljava/util/ArrayList;)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "columnInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/lge/cic/eden/db/type/ColumnInfo;>;"
    const/4 v10, 0x0

    .line 136
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v5, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .line 139
    .local v1, "authority":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1e

    .line 150
    const/4 v0, 0x0

    .line 153
    .local v0, "affectedCount":I
    :try_start_12
    iget-object v11, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v11, v1, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v8

    .line 154
    .local v8, "resultList":[Landroid/content/ContentProviderResult;
    array-length v12, v8
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_5d
    .catch Landroid/content/OperationApplicationException; {:try_start_12 .. :try_end_19} :catch_68

    move v11, v10

    :goto_1a
    if-lt v11, v12, :cond_51

    move v10, v0

    .line 166
    .end local v8    # "resultList":[Landroid/content/ContentProviderResult;
    :goto_1d
    return v10

    .line 139
    .end local v0    # "affectedCount":I
    :cond_1e
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/cic/eden/db/type/ColumnInfo;

    .line 140
    .local v3, "columnInfo":Lcom/lge/cic/eden/db/type/ColumnInfo;
    invoke-virtual {v3}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v9

    .line 141
    .local v9, "uri":Landroid/net/Uri;
    if-nez v1, :cond_2e

    .line 142
    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 144
    :cond_2e
    invoke-virtual {v3}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getPrimaryValues()Landroid/content/ContentValues;

    move-result-object v6

    .line 145
    .local v6, "primaryValues":Landroid/content/ContentValues;
    invoke-virtual {v3}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v12

    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 146
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v6}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->makeWhereClause(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->makeWhereArgs(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 147
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 154
    .end local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v3    # "columnInfo":Lcom/lge/cic/eden/db/type/ColumnInfo;
    .end local v6    # "primaryValues":Landroid/content/ContentValues;
    .end local v9    # "uri":Landroid/net/Uri;
    .restart local v0    # "affectedCount":I
    .restart local v8    # "resultList":[Landroid/content/ContentProviderResult;
    :cond_51
    :try_start_51
    aget-object v7, v8, v11

    .line 155
    .local v7, "result":Landroid/content/ContentProviderResult;
    iget-object v13, v7, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_58} :catch_5d
    .catch Landroid/content/OperationApplicationException; {:try_start_51 .. :try_end_58} :catch_68

    move-result v13

    add-int/2addr v0, v13

    .line 154
    add-int/lit8 v11, v11, 0x1

    goto :goto_1a

    .line 158
    .end local v7    # "result":Landroid/content/ContentProviderResult;
    .end local v8    # "resultList":[Landroid/content/ContentProviderResult;
    :catch_5d
    move-exception v4

    .line 159
    .local v4, "e":Landroid/os/RemoteException;
    iget-object v11, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_1d

    .line 161
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_68
    move-exception v4

    .line 162
    .local v4, "e":Landroid/content/OperationApplicationException;
    iget-object v11, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual {v4}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public bulkInsert(Ljava/util/ArrayList;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "columnInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/lge/cic/eden/db/type/ColumnInfo;>;"
    const/4 v7, 0x0

    .line 84
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v7

    .line 97
    :goto_8
    return v6

    .line 88
    :cond_9
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/cic/eden/db/type/ColumnInfo;

    invoke-virtual {v6}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v5

    .line 90
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v2, v6, [Landroid/content/ContentValues;

    .line 91
    .local v2, "contentValuesList":[Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 92
    .local v3, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2b

    .line 97
    iget-object v6, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, v5, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v6

    goto :goto_8

    .line 92
    :cond_2b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/ColumnInfo;

    .line 93
    .local v0, "columnInfo":Lcom/lge/cic/eden/db/type/ColumnInfo;
    new-array v8, v7, [Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getContentValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 94
    .local v1, "contentValues":Landroid/content/ContentValues;
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aput-object v1, v2, v3

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1e
.end method

.method public varargs bulkUpdate(Ljava/util/ArrayList;[Ljava/lang/String;)I
    .registers 18
    .param p2, "columnList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "columnInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/lge/cic/eden/db/type/ColumnInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v7, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x0

    .line 104
    .local v2, "authority":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_1d

    .line 116
    const/4 v1, 0x0

    .line 119
    .local v1, "affectedCount":I
    :try_start_11
    iget-object v12, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v12, v2, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v10

    .line 120
    .local v10, "resultList":[Landroid/content/ContentProviderResult;
    array-length v13, v10
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_18} :catch_66
    .catch Landroid/content/OperationApplicationException; {:try_start_11 .. :try_end_18} :catch_72

    const/4 v12, 0x0

    :goto_19
    if-lt v12, v13, :cond_5a

    move v12, v1

    .line 132
    .end local v10    # "resultList":[Landroid/content/ContentProviderResult;
    :goto_1c
    return v12

    .line 104
    .end local v1    # "affectedCount":I
    :cond_1d
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/cic/eden/db/type/ColumnInfo;

    .line 105
    .local v4, "columnInfo":Lcom/lge/cic/eden/db/type/ColumnInfo;
    invoke-virtual {v4}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v11

    .line 106
    .local v11, "uri":Landroid/net/Uri;
    if-nez v2, :cond_2d

    .line 107
    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 109
    :cond_2d
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getContentValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    .line 110
    .local v5, "contentValues":Landroid/content/ContentValues;
    invoke-virtual {v4}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getPrimaryValues()Landroid/content/ContentValues;

    move-result-object v8

    .line 111
    .local v8, "primaryValues":Landroid/content/ContentValues;
    invoke-virtual {v4}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v13

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 112
    .local v3, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v8}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->makeWhereClause(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->makeWhereArgs(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 113
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 120
    .end local v3    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v4    # "columnInfo":Lcom/lge/cic/eden/db/type/ColumnInfo;
    .end local v5    # "contentValues":Landroid/content/ContentValues;
    .end local v8    # "primaryValues":Landroid/content/ContentValues;
    .end local v11    # "uri":Landroid/net/Uri;
    .restart local v1    # "affectedCount":I
    .restart local v10    # "resultList":[Landroid/content/ContentProviderResult;
    :cond_5a
    :try_start_5a
    aget-object v9, v10, v12

    .line 121
    .local v9, "result":Landroid/content/ContentProviderResult;
    iget-object v14, v9, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_61} :catch_66
    .catch Landroid/content/OperationApplicationException; {:try_start_5a .. :try_end_61} :catch_72

    move-result v14

    add-int/2addr v1, v14

    .line 120
    add-int/lit8 v12, v12, 0x1

    goto :goto_19

    .line 124
    .end local v9    # "result":Landroid/content/ContentProviderResult;
    .end local v10    # "resultList":[Landroid/content/ContentProviderResult;
    :catch_66
    move-exception v6

    .line 125
    .local v6, "e":Landroid/os/RemoteException;
    iget-object v12, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V

    .line 126
    const/4 v12, 0x0

    goto :goto_1c

    .line 127
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_72
    move-exception v6

    .line 128
    .local v6, "e":Landroid/content/OperationApplicationException;
    iget-object v12, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual {v6}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V

    .line 129
    const/4 v12, 0x0

    goto :goto_1c
.end method

.method public clear(Landroid/net/Uri;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public delete(Lcom/lge/cic/eden/db/type/ColumnInfo;)I
    .registers 7
    .param p1, "columnInfo"    # Lcom/lge/cic/eden/db/type/ColumnInfo;

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getPrimaryValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 79
    .local v0, "primaryValues":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 80
    invoke-virtual {v0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->makeWhereClause(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->makeWhereArgs(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public get(Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;Landroid/net/Uri;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/ArrayList;
    .registers 14
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "columnList"    # [Ljava/lang/String;
    .param p4, "selectionValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper",
            "<TT;>;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "rowMapper":Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;, "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper<TT;>;"
    const/4 v6, 0x0

    .line 365
    if-nez p4, :cond_17

    move-object v0, v6

    :goto_4
    invoke-direct {p0, v0}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->makeWhereClause(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p4}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->makeWhereArgs(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v6

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_17
    invoke-virtual {p4}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_4
.end method

.method public get(Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 15
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "columnList"    # [Ljava/lang/String;
    .param p4, "whereClause"    # Ljava/lang/String;
    .param p5, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper",
            "<TT;>;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "rowMapper":Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;, "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper<TT;>;"
    const/4 v6, 0x0

    .line 369
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 16
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "columnList"    # [Ljava/lang/String;
    .param p4, "whereClause"    # Ljava/lang/String;
    .param p5, "whereArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper",
            "<TT;>;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "rowMapper":Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;, "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper<TT;>;"
    const/4 v7, 0x0

    .line 373
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 19
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "columnList"    # [Ljava/lang/String;
    .param p4, "whereClause"    # Ljava/lang/String;
    .param p5, "whereArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper",
            "<TT;>;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "rowMapper":Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;, "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper<TT;>;"
    if-eqz p7, :cond_8

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_8
    if-eqz p8, :cond_36

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 378
    :cond_10
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 380
    .local v7, "builder":Landroid/net/Uri$Builder;
    if-eqz p7, :cond_23

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    .line 381
    const-string v1, "groupBy"

    move-object/from16 v0, p7

    invoke-virtual {v7, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 384
    :cond_23
    if-eqz p8, :cond_32

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 385
    const-string v1, "limit"

    move-object/from16 v0, p8

    invoke-virtual {v7, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 387
    :cond_32
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 390
    .end local v7    # "builder":Landroid/net/Uri$Builder;
    :cond_36
    const/4 v8, 0x0

    .line 392
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_37
    iget-object v1, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->contentResolver:Landroid/content/ContentResolver;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_42} :catch_48

    move-result-object v8

    .line 401
    :goto_43
    invoke-direct {p0, v8, p1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getDataFromCursorRaw(Landroid/database/Cursor;Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 393
    :catch_48
    move-exception v9

    .line 394
    .local v9, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 395
    if-eqz v8, :cond_66

    .line 396
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_66
    const/4 v8, 0x0

    goto :goto_43
.end method

.method public get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/ArrayList;
    .registers 14
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "columnList"    # [Ljava/lang/String;
    .param p4, "selectionValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    .line 304
    if-nez p4, :cond_17

    move-object v0, v6

    :goto_4
    invoke-direct {p0, v0}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->makeWhereClause(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p4}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->makeWhereArgs(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v6

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_17
    invoke-virtual {p4}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_4
.end method

.method public get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 15
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "columnList"    # [Ljava/lang/String;
    .param p4, "whereClause"    # Ljava/lang/String;
    .param p5, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    .line 308
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 16
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "columnList"    # [Ljava/lang/String;
    .param p4, "whereClause"    # Ljava/lang/String;
    .param p5, "whereArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v7, 0x0

    .line 312
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 19
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "columnList"    # [Ljava/lang/String;
    .param p4, "whereClause"    # Ljava/lang/String;
    .param p5, "whereArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p7, :cond_8

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_8
    if-eqz p8, :cond_36

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 317
    :cond_10
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 319
    .local v7, "builder":Landroid/net/Uri$Builder;
    if-eqz p7, :cond_23

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    .line 320
    const-string v1, "groupBy"

    move-object/from16 v0, p7

    invoke-virtual {v7, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 323
    :cond_23
    if-eqz p8, :cond_32

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 324
    const-string v1, "limit"

    move-object/from16 v0, p8

    invoke-virtual {v7, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 326
    :cond_32
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 329
    .end local v7    # "builder":Landroid/net/Uri$Builder;
    :cond_36
    const/4 v8, 0x0

    .line 331
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_37
    iget-object v1, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->contentResolver:Landroid/content/ContentResolver;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_42} :catch_4d

    move-result-object v8

    .line 340
    :goto_43
    new-instance v1, Lcom/lge/cic/eden/db/helper/DatabaseBridge$2;

    invoke-direct {v1, p0, p1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge$2;-><init>(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Ljava/lang/Class;)V

    invoke-direct {p0, v8, v1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getDataFromCursor(Landroid/database/Cursor;Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 332
    :catch_4d
    move-exception v9

    .line 333
    .local v9, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 334
    if-eqz v8, :cond_6b

    .line 335
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_6b
    const/4 v8, 0x0

    goto :goto_43
.end method

.method public getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;
    .registers 12
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 296
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "columnList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 300
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllMapped(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/HashMap;
    .registers 12
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 170
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getMapped(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getAllMapped(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/HashMap;
    .registers 13
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "columnList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 174
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getMapped(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->contentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getMapped(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/HashMap;
    .registers 14
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "columnList"    # [Ljava/lang/String;
    .param p4, "selectionValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    .line 178
    invoke-virtual {p4}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->makeWhereClause(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p4}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->makeWhereArgs(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v6

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getMapped(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getMapped(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .registers 15
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "columnList"    # [Ljava/lang/String;
    .param p4, "whereClause"    # Ljava/lang/String;
    .param p5, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    .line 182
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getMapped(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getMapped(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 16
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "columnList"    # [Ljava/lang/String;
    .param p4, "whereClause"    # Ljava/lang/String;
    .param p5, "whereArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v7, 0x0

    .line 186
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getMapped(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getMapped(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 19
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "columnList"    # [Ljava/lang/String;
    .param p4, "whereClause"    # Ljava/lang/String;
    .param p5, "whereArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p7, :cond_8

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_8
    if-eqz p8, :cond_36

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 192
    :cond_10
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 194
    .local v7, "builder":Landroid/net/Uri$Builder;
    if-eqz p7, :cond_23

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    .line 195
    const-string v1, "groupBy"

    move-object/from16 v0, p7

    invoke-virtual {v7, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 198
    :cond_23
    if-eqz p8, :cond_32

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 199
    const-string v1, "limit"

    move-object/from16 v0, p8

    invoke-virtual {v7, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 201
    :cond_32
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 204
    .end local v7    # "builder":Landroid/net/Uri$Builder;
    :cond_36
    const/4 v8, 0x0

    .line 206
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_37
    iget-object v1, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->contentResolver:Landroid/content/ContentResolver;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_42} :catch_4d

    move-result-object v8

    .line 215
    :goto_43
    new-instance v1, Lcom/lge/cic/eden/db/helper/DatabaseBridge$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge$1;-><init>(Lcom/lge/cic/eden/db/helper/DatabaseBridge;Ljava/lang/Class;)V

    invoke-direct {p0, v8, v1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getMapDataFromCursor(Landroid/database/Cursor;Lcom/lge/cic/eden/db/helper/DatabaseBridge$KeyedRowMapper;)Ljava/util/HashMap;

    move-result-object v1

    return-object v1

    .line 207
    :catch_4d
    move-exception v9

    .line 208
    .local v9, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 209
    if-eqz v8, :cond_6b

    .line 210
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_6b
    const/4 v8, 0x0

    goto :goto_43
.end method

.method public insert(Lcom/lge/cic/eden/db/type/ColumnInfo;)Landroid/net/Uri;
    .registers 5
    .param p1, "columnInfo"    # Lcom/lge/cic/eden/db/type/ColumnInfo;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getContentValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public load(Lcom/lge/cic/eden/db/type/ColumnInfo;[Ljava/lang/String;)Z
    .registers 14
    .param p2, "columnList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">(TT;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "columnInfo":Lcom/lge/cic/eden/db/type/ColumnInfo;, "TT;"
    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 256
    invoke-virtual {p1}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getPrimaryValues()Landroid/content/ContentValues;

    move-result-object v9

    .line 258
    .local v9, "primaryValues":Landroid/content/ContentValues;
    const/4 v7, 0x0

    .line 260
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_7
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v1

    .line 261
    if-nez v9, :cond_3b

    :goto_f
    invoke-direct {p0, v2}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->makeWhereClause(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-direct {p0, v9}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->makeWhereArgs(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p2

    .line 260
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_40

    move-result-object v7

    .line 271
    :goto_1d
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 272
    .local v6, "contentValues":Landroid/content/ContentValues;
    if-eqz v7, :cond_7e

    .line 274
    const/4 v0, -0x1

    :try_start_25
    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 276
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v10, :cond_60

    .line 277
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Multiple row found..."

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_36

    .line 287
    :catchall_36
    move-exception v0

    .line 288
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 289
    throw v0

    .line 261
    .end local v6    # "contentValues":Landroid/content/ContentValues;
    :cond_3b
    :try_start_3b
    invoke-virtual {v9}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_40

    move-result-object v2

    goto :goto_f

    .line 263
    :catch_40
    move-exception v8

    .line 264
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 265
    if-eqz v7, :cond_5e

    .line 266
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 268
    :cond_5e
    const/4 v7, 0x0

    goto :goto_1d

    .line 278
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "contentValues":Landroid/content/ContentValues;
    :cond_60
    :try_start_60
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_72

    .line 279
    iget-object v0, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "No such row found..."

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_60 .. :try_end_6d} :catchall_36

    .line 288
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 280
    const/4 v0, 0x0

    .line 292
    :goto_71
    return v0

    .line 283
    :cond_72
    :try_start_72
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 284
    invoke-static {v7, v6}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 285
    invoke-virtual {p1, v6}, Lcom/lge/cic/eden/db/type/ColumnInfo;->setContentValues(Landroid/content/ContentValues;)V
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_36

    .line 288
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7e
    move v0, v10

    .line 292
    goto :goto_71
.end method

.method public varargs update(Lcom/lge/cic/eden/db/type/ColumnInfo;[Ljava/lang/String;)I
    .registers 9
    .param p1, "columnInfo"    # Lcom/lge/cic/eden/db/type/ColumnInfo;
    .param p2, "columnList"    # [Ljava/lang/String;

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getPrimaryValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 73
    .local v0, "primaryValues":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, p2}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getContentValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    .line 74
    invoke-virtual {v0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->makeWhereClause(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->makeWhereArgs(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
