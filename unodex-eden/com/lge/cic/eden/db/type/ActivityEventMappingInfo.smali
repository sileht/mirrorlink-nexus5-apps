.class public Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;
.super Lcom/lge/cic/eden/db/type/ColumnInfo;
.source "ActivityEventMappingInfo.java"


# instance fields
.field public activityId:I

.field public deleteFlag:I

.field public eventId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 16
    invoke-direct {p0, v0, v0}, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;-><init>(II)V

    .line 17
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "activityId"    # I
    .param p2, "eventId"    # I

    .prologue
    .line 19
    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/cic/eden/db/type/ColumnInfo;-><init>(Lcom/lge/cic/eden/db/table/TableInfo;)V

    .line 20
    iput p1, p0, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->activityId:I

    .line 21
    iput p2, p0, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->eventId:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->deleteFlag:I

    .line 23
    return-void
.end method


# virtual methods
.method public getClazz()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public varargs getContentValues([Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 8
    .param p1, "columnList"    # [Ljava/lang/String;

    .prologue
    .line 54
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 56
    .local v2, "contentValues":Landroid/content/ContentValues;
    array-length v4, p1

    if-nez v4, :cond_4f

    .line 57
    invoke-virtual {p0}, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->getAllColumns()[Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "columns":[Ljava/lang/String;
    :goto_c
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 63
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v5, v1

    const/4 v4, 0x0

    :goto_13
    if-lt v4, v5, :cond_51

    .line 67
    const-string v4, "ACTIVITY_ID"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 68
    const-string v4, "ACTIVITY_ID"

    iget v5, p0, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    :cond_28
    const-string v4, "EVENT_ID"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 72
    const-string v4, "EVENT_ID"

    iget v5, p0, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->eventId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    :cond_3b
    const-string v4, "DELETE_FLAG"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 75
    const-string v4, "DELETE_FLAG"

    iget v5, p0, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->deleteFlag:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    :cond_4e
    return-object v2

    .line 59
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4f
    move-object v1, p1

    .restart local v1    # "columns":[Ljava/lang/String;
    goto :goto_c

    .line 63
    .restart local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_51
    aget-object v0, v1, v4

    .line 64
    .local v0, "columnName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v4, v4, 0x1

    goto :goto_13
.end method

.method public getPrimaryValues()Landroid/content/ContentValues;
    .registers 4

    .prologue
    .line 83
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "ACTIVITY_ID"

    iget v2, p0, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->activityId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v1, "EVENT_ID"

    iget v2, p0, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->eventId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    return-object v0
.end method

.method public setContentValues(Landroid/content/ContentValues;)V
    .registers 4
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 31
    const-string v1, "ACTIVITY_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 32
    const-string v1, "ACTIVITY_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 33
    .local v0, "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_16

    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->activityId:I

    .line 38
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_16
    const-string v1, "EVENT_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 39
    const-string v1, "EVENT_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 40
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_2c

    .line 41
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->eventId:I

    .line 44
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_2c
    const-string v1, "DELETE_FLAG"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 45
    const-string v1, "DELETE_FLAG"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 46
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_42

    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;->deleteFlag:I

    .line 50
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_42
    return-void
.end method
