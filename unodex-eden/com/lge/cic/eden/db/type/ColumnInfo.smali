.class public abstract Lcom/lge/cic/eden/db/type/ColumnInfo;
.super Ljava/lang/Object;
.source "ColumnInfo.java"


# instance fields
.field protected columnSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

.field protected final tableInfo:Lcom/lge/cic/eden/db/table/TableInfo;


# direct methods
.method public constructor <init>(Lcom/lge/cic/eden/db/table/TableInfo;)V
    .registers 7
    .param p1, "tableInfo"    # Lcom/lge/cic/eden/db/table/TableInfo;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/ColumnInfo;->columnSet:Ljava/util/HashSet;

    .line 17
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/ColumnInfo;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    .line 20
    iput-object p1, p0, Lcom/lge/cic/eden/db/type/ColumnInfo;->tableInfo:Lcom/lge/cic/eden/db/table/TableInfo;

    .line 22
    invoke-interface {p1}, Lcom/lge/cic/eden/db/table/TableInfo;->getAllColumns()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_18
    if-lt v1, v3, :cond_1b

    .line 25
    return-void

    .line 22
    :cond_1b
    aget-object v0, v2, v1

    .line 23
    .local v0, "columnName":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/ColumnInfo;->columnSet:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_18
.end method

.method private checkColumns([Ljava/lang/String;)Z
    .registers 6
    .param p1, "columnList"    # [Ljava/lang/String;

    .prologue
    .line 94
    array-length v1, p1

    if-eqz v1, :cond_7

    .line 95
    array-length v2, p1

    const/4 v1, 0x0

    :goto_5
    if-lt v1, v2, :cond_9

    .line 102
    :cond_7
    const/4 v1, 0x1

    return v1

    .line 95
    :cond_9
    aget-object v0, p1, v1

    .line 96
    .local v0, "columnName":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/ColumnInfo;->columnSet:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 97
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Column name "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method


# virtual methods
.method public final delete()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 81
    iget-object v2, p0, Lcom/lge/cic/eden/db/type/ColumnInfo;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-virtual {v2, p0}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->delete(Lcom/lge/cic/eden/db/type/ColumnInfo;)I

    move-result v0

    .line 82
    .local v0, "removedCount":I
    if-le v0, v1, :cond_1c

    .line 83
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/ColumnInfo;->tableInfo:Lcom/lge/cic/eden/db/table/TableInfo;

    invoke-interface {v1}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Updated Count Must be 1..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    const-string v2, "Multiple row found..."

    invoke-direct {v1, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_1c
    if-nez v0, :cond_2a

    .line 86
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/ColumnInfo;->tableInfo:Lcom/lge/cic/eden/db/table/TableInfo;

    invoke-interface {v1}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No field updated..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v1, 0x0

    .line 90
    :cond_2a
    return v1
.end method

.method public final getAllColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/cic/eden/db/type/ColumnInfo;->tableInfo:Lcom/lge/cic/eden/db/table/TableInfo;

    invoke-interface {v0}, Lcom/lge/cic/eden/db/table/TableInfo;->getAllColumns()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getClazz()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract getContentValues([Ljava/lang/String;)Landroid/content/ContentValues;
.end method

.method public final getPrimaryColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/cic/eden/db/type/ColumnInfo;->tableInfo:Lcom/lge/cic/eden/db/table/TableInfo;

    invoke-interface {v0}, Lcom/lge/cic/eden/db/table/TableInfo;->getPrimaryColumns()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPrimaryValues()Landroid/content/ContentValues;
.end method

.method public final getTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/cic/eden/db/type/ColumnInfo;->tableInfo:Lcom/lge/cic/eden/db/table/TableInfo;

    invoke-interface {v0}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTableUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/cic/eden/db/type/ColumnInfo;->tableInfo:Lcom/lge/cic/eden/db/table/TableInfo;

    invoke-interface {v0}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final varargs load([Ljava/lang/String;)Z
    .registers 4
    .param p1, "columnList"    # [Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/lge/cic/eden/db/type/ColumnInfo;->checkColumns([Ljava/lang/String;)Z

    .line 48
    array-length v1, p1

    if-eqz v1, :cond_e

    .line 49
    move-object v0, p1

    .line 54
    .local v0, "columns":[Ljava/lang/String;
    :goto_7
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/ColumnInfo;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-virtual {v1, p0, v0}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->load(Lcom/lge/cic/eden/db/type/ColumnInfo;[Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 51
    .end local v0    # "columns":[Ljava/lang/String;
    :cond_e
    invoke-virtual {p0}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getAllColumns()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "columns":[Ljava/lang/String;
    goto :goto_7
.end method

.method public final varargs save([Ljava/lang/String;)Z
    .registers 6
    .param p1, "columnList"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-direct {p0, p1}, Lcom/lge/cic/eden/db/type/ColumnInfo;->checkColumns([Ljava/lang/String;)Z

    .line 62
    array-length v3, p1

    if-eqz v3, :cond_23

    .line 63
    move-object v1, p1

    .line 68
    .local v1, "columns":[Ljava/lang/String;
    :goto_8
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/ColumnInfo;->databaseBridge:Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    invoke-virtual {v3, p0, v1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->update(Lcom/lge/cic/eden/db/type/ColumnInfo;[Ljava/lang/String;)I

    move-result v0

    .line 69
    .local v0, "changedCount":I
    if-le v0, v2, :cond_28

    .line 70
    iget-object v2, p0, Lcom/lge/cic/eden/db/type/ColumnInfo;->tableInfo:Lcom/lge/cic/eden/db/table/TableInfo;

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Updated Count Must be 1..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    const-string v3, "Multiple row found..."

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    .end local v0    # "changedCount":I
    .end local v1    # "columns":[Ljava/lang/String;
    :cond_23
    invoke-virtual {p0}, Lcom/lge/cic/eden/db/type/ColumnInfo;->getAllColumns()[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "columns":[Ljava/lang/String;
    goto :goto_8

    .line 72
    .restart local v0    # "changedCount":I
    :cond_28
    if-nez v0, :cond_36

    .line 73
    iget-object v2, p0, Lcom/lge/cic/eden/db/type/ColumnInfo;->tableInfo:Lcom/lge/cic/eden/db/table/TableInfo;

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No field updated..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v2, 0x0

    .line 77
    :cond_36
    return v2
.end method

.method public abstract setContentValues(Landroid/content/ContentValues;)V
.end method
