.class public Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EdenDbOpenHelper.java"


# static fields
.field private static lock:Ljava/lang/Object;

.field private static sqliteWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static final writableDatabaseConnectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private logger:Lcom/lge/cic/eden/utils/Logger;

.field private tableInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/cic/eden/db/table/TableInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->sqliteWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->lock:Ljava/lang/Object;

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->writableDatabaseConnectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/util/List;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "db_version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/lge/cic/eden/db/table/TableInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p4, "tableInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/cic/eden/db/table/TableInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 18
    const-class v0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 30
    iput-object p4, p0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->tableInfoList:Ljava/util/List;

    .line 31
    invoke-virtual {p0}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->connect()Z

    .line 32
    return-void
.end method

.method private declared-synchronized checkAndGetWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->sqliteWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_27

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    const-string v2, " is not open, call connect() method first."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_24

    .line 107
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    .line 111
    :cond_27
    :try_start_27
    sget-object v0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->sqliteWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_24

    monitor-exit p0

    return-object v0
.end method

.method private createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->tableInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 80
    return-void

    .line 77
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/table/TableInfo;

    .line 78
    .local v0, "tableInfo":Lcom/lge/cic/eden/db/table/TableInfo;
    invoke-interface {v0}, Lcom/lge/cic/eden/db/table/TableInfo;->getCreateStatement()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->transaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->tableInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 86
    return-void

    .line 83
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/table/TableInfo;

    .line 84
    .local v0, "tableInfo":Lcom/lge/cic/eden/db/table/TableInfo;
    invoke-interface {v0}, Lcom/lge/cic/eden/db/table/TableInfo;->getDropStatement()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->transaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_6
.end method


# virtual methods
.method public beginTransaction(Z)V
    .registers 3
    .param p1, "isExclusive"    # Z

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->checkAndGetWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 117
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p1, :cond_a

    .line 118
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 122
    :goto_9
    return-void

    .line 120
    :cond_a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    goto :goto_9
.end method

.method public compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .registers 4
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->checkAndGetWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 103
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    return-object v1
.end method

.method protected declared-synchronized connect()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 40
    monitor-enter p0

    :try_start_2
    sget-object v1, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_20

    .line 41
    :try_start_5
    sget-object v0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->writableDatabaseConnectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ne v0, v3, :cond_1a

    .line 42
    invoke-virtual {p0}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->sqliteWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "sqlite writable database created!"

    invoke-virtual {v0, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 40
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1d

    .line 46
    monitor-exit p0

    return v3

    .line 40
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->checkAndGetWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 180
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 183
    .local v2, "result":I
    :try_start_5
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_8} :catch_a

    move-result v2

    .line 187
    :goto_9
    return v2

    .line 184
    :catch_a
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ", at delete(), clause = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", #args = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_3a

    const-string v3, "null"

    :goto_2e
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_9

    :cond_3a
    array-length v3, p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2e
.end method

.method protected declared-synchronized disconnect()Z
    .registers 4

    .prologue
    .line 50
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_22

    .line 51
    :try_start_4
    sget-object v0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->writableDatabaseConnectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1b

    .line 52
    sget-object v0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->sqliteWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->sqliteWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    iget-object v0, p0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "sqlite writable database is closed!"

    invoke-virtual {v0, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 50
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1f

    .line 58
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 50
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    throw v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public endTransaction()V
    .registers 2

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->checkAndGetWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 132
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 133
    return-void
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->disconnect()Z

    .line 37
    return-void
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 10
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->checkAndGetWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 152
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, -0x1

    .line 155
    .local v2, "result":J
    const/4 v4, 0x0

    :try_start_7
    invoke-virtual {v0, p1, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-wide v2

    .line 160
    :goto_b
    return-wide v2

    .line 156
    :catch_c
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ", at insert()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 64
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 69
    if-ge p2, p3, :cond_30

    .line 70
    const-class v0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUpgrade : oldVersion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "newVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0, p1}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 74
    :cond_30
    return-void
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 17
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->checkAndGetWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 137
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .local v8, "cursor":Landroid/database/Cursor;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 138
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 139
    return-object v8
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 19
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->checkAndGetWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 145
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 146
    .local v9, "cursor":Landroid/database/Cursor;
    return-object v9
.end method

.method public rawQuery(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .param p1, "statement"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->checkAndGetWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 193
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public successTransaction()V
    .registers 2

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->checkAndGetWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 126
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 127
    return-void
.end method

.method public transaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 90
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 92
    :try_start_6
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_13

    .line 96
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 97
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 99
    return-void

    .line 95
    :catchall_13
    move-exception v0

    .line 96
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 97
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 98
    throw v0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->checkAndGetWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 167
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 170
    .local v2, "result":I
    :try_start_5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_8} :catch_a

    move-result v2

    .line 175
    :goto_9
    return v2

    .line 171
    :catch_a
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/lge/cic/eden/db/provider/EdenDbOpenHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ", at update(), clause = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", #args = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p4, :cond_3a

    const-string v3, "null"

    :goto_2e
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_9

    :cond_3a
    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2e
.end method
