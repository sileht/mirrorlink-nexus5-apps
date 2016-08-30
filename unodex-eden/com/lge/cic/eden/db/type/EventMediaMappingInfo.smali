.class public Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
.super Lcom/lge/cic/eden/db/type/ColumnInfo;
.source "EventMediaMappingInfo.java"


# instance fields
.field public activityId:I

.field public deleteFlag:I

.field public eventId:I

.field logger:Lcom/lge/cic/eden/utils/Logger;

.field public mediaId:J

.field public storageId:I

.field public visibilityFlag:I


# direct methods
.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v4, -0x1

    .line 22
    const-wide/16 v2, -0x1

    const/16 v5, 0x63

    const v7, 0x10001

    move-object v1, p0

    move v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;-><init>(JIIII)V

    .line 23
    return-void
.end method

.method public constructor <init>(JIIII)V
    .registers 8
    .param p1, "mId"    # J
    .param p3, "eId"    # I
    .param p4, "flag"    # I
    .param p5, "aId"    # I
    .param p6, "storageId"    # I

    .prologue
    .line 26
    invoke-static {}, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/cic/eden/db/type/ColumnInfo;-><init>(Lcom/lge/cic/eden/db/table/TableInfo;)V

    .line 12
    const-class v0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 29
    iput-wide p1, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->mediaId:J

    .line 30
    iput p3, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->eventId:I

    .line 31
    iput p4, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->visibilityFlag:I

    .line 32
    iput p5, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->activityId:I

    .line 33
    iput p6, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->storageId:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->deleteFlag:I

    .line 35
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
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public varargs getContentValues([Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 10
    .param p1, "columnList"    # [Ljava/lang/String;

    .prologue
    .line 102
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v2, "contentValues":Landroid/content/ContentValues;
    array-length v4, p1

    if-nez v4, :cond_88

    .line 106
    invoke-virtual {p0}, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->getAllColumns()[Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "columns":[Ljava/lang/String;
    :goto_c
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 112
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v5, v1

    const/4 v4, 0x0

    :goto_13
    if-lt v4, v5, :cond_8a

    .line 116
    const-string v4, "MEDIA_ID"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 117
    const-string v4, "MEDIA_ID"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->mediaId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
    :cond_28
    const-string v4, "EVENT_ID"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 121
    const-string v4, "EVENT_ID"

    iget v5, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->eventId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    :cond_3b
    const-string v4, "VISIBILITY"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 125
    const-string v4, "VISIBILITY"

    iget v5, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->visibilityFlag:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    :cond_4e
    const-string v4, "ACTIVITY_ID"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 129
    const-string v4, "ACTIVITY_ID"

    iget v5, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    :cond_61
    const-string v4, "STORAGE_ID"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 133
    const-string v4, "STORAGE_ID"

    iget v5, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->storageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    :cond_74
    const-string v4, "DELETE_FLAG"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 136
    const-string v4, "DELETE_FLAG"

    iget v5, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->deleteFlag:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    :cond_87
    return-object v2

    .line 108
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_88
    move-object v1, p1

    .restart local v1    # "columns":[Ljava/lang/String;
    goto :goto_c

    .line 112
    .restart local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_8a
    aget-object v0, v1, v4

    .line 113
    .local v0, "columnName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v4, v4, 0x1

    goto :goto_13
.end method

.method public getPrimaryValues()Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 144
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 145
    .local v0, "primaryValues":Landroid/content/ContentValues;
    const-string v1, "MEDIA_ID"

    iget-wide v2, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->mediaId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 146
    const-string v1, "EVENT_ID"

    iget v2, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->eventId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    return-object v0
.end method

.method public setContentValues(Landroid/content/ContentValues;)V
    .registers 6
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 45
    const-string v1, "MEDIA_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 46
    const-string v1, "MEDIA_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 47
    .local v0, "temp":Ljava/lang/Long;
    if-eqz v0, :cond_85

    .line 48
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->mediaId:J

    .line 54
    .end local v0    # "temp":Ljava/lang/Long;
    :cond_16
    :goto_16
    const-string v1, "EVENT_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 55
    const-string v1, "EVENT_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 56
    .local v0, "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_8d

    .line 57
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->eventId:I

    .line 63
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_2c
    :goto_2c
    const-string v1, "VISIBILITY"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 64
    const-string v1, "VISIBILITY"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 65
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_95

    .line 66
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->visibilityFlag:I

    .line 72
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_42
    :goto_42
    const-string v1, "ACTIVITY_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 73
    const-string v1, "ACTIVITY_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 74
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_9d

    .line 75
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->activityId:I

    .line 81
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_58
    :goto_58
    const-string v1, "STORAGE_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 82
    const-string v1, "STORAGE_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 83
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_a5

    .line 84
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->storageId:I

    .line 89
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_6e
    :goto_6e
    const-string v1, "DELETE_FLAG"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 90
    const-string v1, "DELETE_FLAG"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 91
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_ad

    .line 92
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->deleteFlag:I

    .line 98
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_84
    :goto_84
    return-void

    .line 50
    .local v0, "temp":Ljava/lang/Long;
    :cond_85
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "MEDIA_ID is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_16

    .line 59
    .local v0, "temp":Ljava/lang/Integer;
    :cond_8d
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "EVENT_ID is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_2c

    .line 68
    :cond_95
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "VISIBILITY is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_42

    .line 77
    :cond_9d
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "ACTIVITY_ID is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_58

    .line 86
    :cond_a5
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "STORAGE_ID is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_6e

    .line 94
    :cond_ad
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "DELETE_FLAG is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_84
.end method
