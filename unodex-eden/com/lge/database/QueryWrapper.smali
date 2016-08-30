.class public Lcom/lge/database/QueryWrapper;
.super Ljava/lang/Object;
.source "QueryWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/database/QueryWrapper$QueryObject;
    }
.end annotation


# static fields
.field public static final DYNAMIC_MODE:I = 0x2

.field public static final STATIC_MODE:I = 0x1

.field public static final STORED_QUERY_LIMIT_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "QueryWrapper"

.field private static mNumMemTable:I

.field private static mQueryWrapperMode:I

.field static sQueryObjectPoolDynamic:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/database/QueryWrapper$QueryObject;",
            ">;"
        }
    .end annotation
.end field

.field static sQueryObjectPoolStatic:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/database/QueryWrapper$QueryObject;",
            ">;"
        }
    .end annotation
.end field

.field private static sQueryWrapper:Lcom/lge/database/QueryWrapper;


# instance fields
.field private MEM_DB_TABLE_NAME_PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    sput v0, Lcom/lge/database/QueryWrapper;->mNumMemTable:I

    .line 37
    sput v0, Lcom/lge/database/QueryWrapper;->mQueryWrapperMode:I

    .line 38
    sput-object v1, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    .line 39
    sput-object v1, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    .line 59
    new-instance v0, Lcom/lge/database/QueryWrapper;

    invoke-direct {v0}, Lcom/lge/database/QueryWrapper;-><init>()V

    sput-object v0, Lcom/lge/database/QueryWrapper;->sQueryWrapper:Lcom/lge/database/QueryWrapper;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "mem_table"

    iput-object v0, p0, Lcom/lge/database/QueryWrapper;->MEM_DB_TABLE_NAME_PREFIX:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static getInstance(Landroid/database/sqlite/SQLiteDatabase;I)Lcom/lge/database/QueryWrapper;
    .registers 5
    .param p0, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "storeSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 123
    if-nez p0, :cond_b

    .line 124
    const-string v1, "QueryWrapper"

    const-string v2, "SQLiteDatabase parameter is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_a
    return-object v0

    .line 127
    :cond_b
    sget v1, Lcom/lge/database/QueryWrapper;->mQueryWrapperMode:I

    if-eqz v1, :cond_17

    .line 128
    const-string v1, "QueryWrapper"

    const-string v2, "Already QueryWrapper Object created in other mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 131
    :cond_17
    sget-object v0, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    if-nez v0, :cond_2a

    .line 132
    const/16 v0, 0xa

    if-gt p1, v0, :cond_21

    if-gtz p1, :cond_23

    .line 133
    :cond_21
    const/16 p1, 0xa

    .line 135
    :cond_23
    new-instance v0, Lcom/lge/database/QueryWrapper$1;

    invoke-direct {v0, p1, p0}, Lcom/lge/database/QueryWrapper$1;-><init>(ILandroid/database/sqlite/SQLiteDatabase;)V

    sput-object v0, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    .line 146
    :cond_2a
    const/4 v0, 0x2

    sput v0, Lcom/lge/database/QueryWrapper;->mQueryWrapperMode:I

    .line 147
    const-string v0, "QueryWrapper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 148
    const-string v0, "QueryWrapper"

    const-string v1, "QueryWrapper Object created in Dynamic mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_3d
    sget-object v0, Lcom/lge/database/QueryWrapper;->sQueryWrapper:Lcom/lge/database/QueryWrapper;

    goto :goto_a
.end method

.method public static getInstance(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Lcom/lge/database/QueryWrapper;
    .registers 8
    .param p0, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "arrQuery"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 162
    if-eqz p0, :cond_6

    if-nez p1, :cond_e

    .line 163
    :cond_6
    const-string v3, "QueryWrapper"

    const-string v4, "There is a NULL in parameter"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_d
    return-object v2

    .line 166
    :cond_e
    sget v4, Lcom/lge/database/QueryWrapper;->mQueryWrapperMode:I

    if-eqz v4, :cond_1a

    .line 167
    const-string v3, "QueryWrapper"

    const-string v4, "Already QueryWrapper Object created in other mode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 170
    :cond_1a
    array-length v4, p1

    if-gtz v4, :cond_25

    .line 171
    const-string v3, "QueryWrapper"

    const-string v4, "Array size must be greater than 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 174
    :cond_25
    array-length v4, p1

    const/16 v5, 0xa

    if-le v4, v5, :cond_32

    .line 175
    const-string v3, "QueryWrapper"

    const-string v4, "Exceed avalable managing size. Size should be under 10"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 178
    :cond_32
    const/4 v2, 0x1

    sput v2, Lcom/lge/database/QueryWrapper;->mQueryWrapperMode:I

    .line 179
    sget-object v2, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    if-nez v2, :cond_45

    .line 180
    new-instance v2, Lcom/lge/database/QueryWrapper$2;

    array-length v4, p1

    invoke-direct {v2, v4, p0}, Lcom/lge/database/QueryWrapper$2;-><init>(ILandroid/database/sqlite/SQLiteDatabase;)V

    sput-object v2, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    .line 190
    array-length v4, p1

    move v2, v3

    :goto_43
    if-lt v2, v4, :cond_58

    .line 201
    :cond_45
    const-string v2, "QueryWrapper"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 202
    const-string v2, "QueryWrapper"

    const-string v3, "QueryWrapper Object created in Static mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_55
    sget-object v2, Lcom/lge/database/QueryWrapper;->sQueryWrapper:Lcom/lge/database/QueryWrapper;

    goto :goto_d

    .line 190
    :cond_58
    aget-object v1, p1, v2

    .line 191
    .local v1, "strQuery":Ljava/lang/String;
    if-nez v1, :cond_5f

    .line 190
    :goto_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 194
    :cond_5f
    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 195
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 197
    :cond_71
    new-instance v0, Lcom/lge/database/QueryWrapper$QueryObject;

    invoke-direct {v0, v1}, Lcom/lge/database/QueryWrapper$QueryObject;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    sget-object v5, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    invoke-virtual {v5, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5c
.end method

.method private declared-synchronized getQueryObject(Ljava/lang/String;)Lcom/lge/database/QueryWrapper$QueryObject;
    .registers 7
    .param p1, "requestQuery"    # Ljava/lang/String;

    .prologue
    .line 70
    monitor-enter p0

    const/4 v1, 0x0

    .line 71
    .local v1, "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    :try_start_2
    sget v3, Lcom/lge/database/QueryWrapper;->mQueryWrapperMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_22

    sget-object v3, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    if-eqz v3, :cond_22

    .line 72
    sget-object v3, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    invoke-virtual {v3, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/lge/database/QueryWrapper$QueryObject;

    move-object v1, v0

    .line 73
    if-nez v1, :cond_22

    .line 74
    new-instance v2, Lcom/lge/database/QueryWrapper$QueryObject;

    invoke-direct {v2, p1}, Lcom/lge/database/QueryWrapper$QueryObject;-><init>(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_37

    .line 75
    .end local v1    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    .local v2, "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    :try_start_1c
    sget-object v3, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    invoke-virtual {v3, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_3a

    move-object v1, v2

    .line 78
    .end local v2    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    .restart local v1    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    :cond_22
    :try_start_22
    sget v3, Lcom/lge/database/QueryWrapper;->mQueryWrapperMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_35

    sget-object v3, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    if-eqz v3, :cond_35

    .line 79
    sget-object v3, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    invoke-virtual {v3, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/lge/database/QueryWrapper$QueryObject;

    move-object v1, v0
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_37

    .line 81
    :cond_35
    monitor-exit p0

    return-object v1

    .line 70
    :catchall_37
    move-exception v3

    :goto_38
    monitor-exit p0

    throw v3

    .end local v1    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    .restart local v2    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    :catchall_3a
    move-exception v3

    move-object v1, v2

    .end local v2    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    .restart local v1    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    goto :goto_38
.end method

.method private declared-synchronized getQueryObject(Ljava/lang/String;[Ljava/lang/String;)Lcom/lge/database/QueryWrapper$QueryObject;
    .registers 10
    .param p1, "requestQuery"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 92
    monitor-enter p0

    const/4 v2, 0x0

    .line 93
    .local v2, "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    :try_start_2
    sget v5, Lcom/lge/database/QueryWrapper;->mQueryWrapperMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_22

    sget-object v5, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    if-eqz v5, :cond_22

    .line 94
    sget-object v5, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    invoke-virtual {v5, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/lge/database/QueryWrapper$QueryObject;

    move-object v2, v0

    .line 95
    if-nez v2, :cond_22

    .line 96
    new-instance v3, Lcom/lge/database/QueryWrapper$QueryObject;

    invoke-direct {v3, p1, p2}, Lcom/lge/database/QueryWrapper$QueryObject;-><init>(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_57

    .line 97
    .end local v2    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    .local v3, "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    :try_start_1c
    sget-object v5, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    invoke-virtual {v5, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_5a

    move-object v2, v3

    .line 100
    .end local v3    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    .restart local v2    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    :cond_22
    :try_start_22
    sget v5, Lcom/lge/database/QueryWrapper;->mQueryWrapperMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_49

    sget-object v5, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    if-eqz v5, :cond_49

    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c
    array-length v5, p2

    if-lt v1, v5, :cond_4b

    .line 106
    const-string v5, "QueryWrapper"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 107
    const-string v5, "QueryWrapper"

    const-string v6, "Replaces the match for ? within query with the given actual value"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_3f
    sget-object v5, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    invoke-virtual {v5, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/lge/database/QueryWrapper$QueryObject;

    move-object v2, v0
    :try_end_49
    .catchall {:try_start_22 .. :try_end_49} :catchall_57

    .line 111
    .end local v1    # "i":I
    :cond_49
    monitor-exit p0

    return-object v2

    .line 103
    .restart local v1    # "i":I
    :cond_4b
    :try_start_4b
    const-string v5, "[?]"

    aget-object v6, p2, v1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_57

    move-result-object v4

    .line 104
    .local v4, "stringBinding":Ljava/lang/String;
    move-object p1, v4

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 92
    .end local v1    # "i":I
    .end local v4    # "stringBinding":Ljava/lang/String;
    :catchall_57
    move-exception v5

    :goto_58
    monitor-exit p0

    throw v5

    .end local v2    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    .restart local v3    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    :catchall_5a
    move-exception v5

    move-object v2, v3

    .end local v3    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    .restart local v2    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    goto :goto_58
.end method

.method private queryMemTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 12
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    const/4 v6, 0x0

    .line 712
    const/4 v0, 0x0

    .line 713
    .local v0, "mQueryObject":Lcom/lge/database/QueryWrapper$QueryObject;
    if-nez p3, :cond_87

    .line 714
    invoke-direct {p0, p2}, Lcom/lge/database/QueryWrapper;->getQueryObject(Ljava/lang/String;)Lcom/lge/database/QueryWrapper$QueryObject;

    move-result-object v0

    .line 718
    :goto_8
    if-eqz v0, :cond_13c

    .line 719
    invoke-virtual {v0}, Lcom/lge/database/QueryWrapper$QueryObject;->getMemTableName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 720
    if-nez p3, :cond_8d

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TEMP TABLE IF NOT EXISTS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/database/QueryWrapper;->MEM_DB_TABLE_NAME_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/database/QueryWrapper;->mNumMemTable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 725
    :goto_42
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lge/database/QueryWrapper;->MEM_DB_TABLE_NAME_PREFIX:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/lge/database/QueryWrapper;->mNumMemTable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/database/QueryWrapper$QueryObject;->setMemTableName(Ljava/lang/String;)V

    .line 726
    const-string v1, "SELECT total_changes();"

    invoke-static {p1, v1, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/lge/database/QueryWrapper$QueryObject;->setChangeCount(J)V

    .line 727
    sget v1, Lcom/lge/database/QueryWrapper;->mNumMemTable:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/lge/database/QueryWrapper;->mNumMemTable:I

    .line 741
    :cond_69
    :goto_69
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lge/database/QueryWrapper$QueryObject;->getMemTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v6, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    .line 746
    :goto_86
    return-object v1

    .line 716
    :cond_87
    invoke-direct {p0, p2, p3}, Lcom/lge/database/QueryWrapper;->getQueryObject(Ljava/lang/String;[Ljava/lang/String;)Lcom/lge/database/QueryWrapper$QueryObject;

    move-result-object v0

    goto/16 :goto_8

    .line 723
    :cond_8d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TEMP TABLE IF NOT EXISTS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/database/QueryWrapper;->MEM_DB_TABLE_NAME_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/database/QueryWrapper;->mNumMemTable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_42

    .line 730
    :cond_b8
    const-string v1, "SELECT total_changes();"

    invoke-static {p1, v1, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/lge/database/QueryWrapper$QueryObject;->getChangeCount()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_69

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Drop Table IF EXISTS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lge/database/QueryWrapper$QueryObject;->getMemTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 732
    if-nez p3, :cond_115

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TEMP TABLE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lge/database/QueryWrapper$QueryObject;->getMemTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 738
    :goto_10a
    const-string v1, "SELECT total_changes();"

    invoke-static {p1, v1, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/lge/database/QueryWrapper$QueryObject;->setChangeCount(J)V

    goto/16 :goto_69

    .line 735
    :cond_115
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TEMP TABLE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lge/database/QueryWrapper$QueryObject;->getMemTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10a

    .line 743
    :cond_13c
    const-string v1, "QueryWrapper"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_14c

    .line 744
    const-string v1, "QueryWrapper"

    const-string v2, "Not use memory table. It works on Native routine"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_14c
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    goto/16 :goto_86
.end method

.method private queryWithFactory(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 23
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "distinct"    # Z
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "orderBy"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;
    .param p11, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_25

    .line 246
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "database "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "already closed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_25
    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    .line 248
    invoke-static/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 251
    .local v10, "sql":Ljava/lang/String;
    move-object/from16 v0, p6

    move-object/from16 v1, p11

    invoke-direct {p0, p1, v10, v0, v1}, Lcom/lge/database/QueryWrapper;->queryMemTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 20
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p3, "projectionIn"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 580
    .line 581
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 580
    invoke-virtual/range {v0 .. v10}, Lcom/lge/database/QueryWrapper;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 21
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p3, "projectionIn"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "sortOrder"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;

    .prologue
    .line 631
    .line 632
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 631
    invoke-virtual/range {v0 .. v10}, Lcom/lge/database/QueryWrapper;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 20
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p3, "projectionIn"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "sortOrder"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;
    .param p10, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 687
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    .line 688
    :cond_8
    const-string v1, "QueryWrapper"

    const-string v2, "SQLiteQueryBuilder is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const/4 v1, 0x0

    .line 699
    :goto_10
    return-object v1

    :cond_11
    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 692
    invoke-virtual/range {v1 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 696
    .local v8, "sql":Ljava/lang/String;
    const-string v1, "QueryWrapper"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 697
    const-string v1, "QueryWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Performing query: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_3c
    move-object/from16 v0, p10

    invoke-direct {p0, p1, v8, p5, v0}, Lcom/lge/database/QueryWrapper;->queryMemTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_10
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 533
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/lge/database/QueryWrapper;->queryMemTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 20
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 412
    const/4 v2, 0x0

    .line 413
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 412
    invoke-virtual/range {v0 .. v10}, Lcom/lge/database/QueryWrapper;->query(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 21
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;

    .prologue
    .line 464
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/lge/database/QueryWrapper;->query(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 23
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "distinct"    # Z
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "orderBy"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;

    .prologue
    .line 304
    .line 305
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 304
    invoke-direct/range {v0 .. v11}, Lcom/lge/database/QueryWrapper;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 13
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "distinct"    # Z
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "orderBy"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;
    .param p11, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 363
    invoke-direct/range {p0 .. p11}, Lcom/lge/database/QueryWrapper;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 487
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_25

    .line 488
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lge/database/QueryWrapper;->queryMemTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 6
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 518
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/database/QueryWrapper;->queryMemTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public releaseQueryWrapper()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 756
    sget-object v0, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    if-eqz v0, :cond_d

    .line 757
    sget-object v0, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 758
    sput-object v2, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    .line 760
    :cond_d
    sget-object v0, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    if-eqz v0, :cond_18

    .line 761
    sget-object v0, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 762
    sput-object v2, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    .line 764
    :cond_18
    sput v1, Lcom/lge/database/QueryWrapper;->mQueryWrapperMode:I

    .line 765
    sput v1, Lcom/lge/database/QueryWrapper;->mNumMemTable:I

    .line 766
    const-string v0, "QueryWrapper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 767
    const-string v0, "QueryWrapper"

    const-string v1, "released memory using by QueryWrapper "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_2c
    return-void
.end method
