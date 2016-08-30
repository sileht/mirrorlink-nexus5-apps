.class public Lcom/lge/cic/eden/db/type/TaskInfo;
.super Lcom/lge/cic/eden/db/type/ColumnInfo;
.source "TaskInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public taskId:J

.field public taskName:Ljava/lang/String;

.field public taskStatus:I

.field public taskType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/lge/cic/eden/db/type/TaskInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/db/type/TaskInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v5, -0x1

    .line 22
    const-wide/16 v2, -0x1

    const-string v4, ""

    move-object v1, p0

    move v6, v5

    invoke-direct/range {v1 .. v6}, Lcom/lge/cic/eden/db/type/TaskInfo;-><init>(JLjava/lang/String;II)V

    .line 23
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;II)V
    .registers 9
    .param p1, "taskId"    # J
    .param p3, "taskName"    # Ljava/lang/String;
    .param p4, "taskType"    # I
    .param p5, "taskStatus"    # I

    .prologue
    .line 28
    invoke-static {}, Lcom/lge/cic/eden/db/table/TaskInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/cic/eden/db/type/ColumnInfo;-><init>(Lcom/lge/cic/eden/db/table/TableInfo;)V

    .line 29
    if-nez p3, :cond_11

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "taskName is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_11
    iput-wide p1, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    .line 33
    iput-object p3, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    .line 34
    iput p4, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskType:I

    .line 35
    iput p5, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 11
    .param p1, "taskName"    # Ljava/lang/String;
    .param p2, "taskType"    # I
    .param p3, "taskStatus"    # I

    .prologue
    .line 25
    const-wide/16 v2, -0x1

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/lge/cic/eden/db/type/TaskInfo;-><init>(JLjava/lang/String;II)V

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    if-ne p0, p1, :cond_5

    .line 182
    :cond_4
    :goto_4
    return v1

    .line 159
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 160
    goto :goto_4

    .line 162
    :cond_9
    instance-of v3, p1, Lcom/lge/cic/eden/db/type/TaskInfo;

    if-nez v3, :cond_f

    move v1, v2

    .line 163
    goto :goto_4

    :cond_f
    move-object v0, p1

    .line 165
    check-cast v0, Lcom/lge/cic/eden/db/type/TaskInfo;

    .line 166
    .local v0, "other":Lcom/lge/cic/eden/db/type/TaskInfo;
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1c

    move v1, v2

    .line 167
    goto :goto_4

    .line 169
    :cond_1c
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    if-nez v3, :cond_26

    .line 170
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    if-eqz v3, :cond_32

    move v1, v2

    .line 171
    goto :goto_4

    .line 173
    :cond_26
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    move v1, v2

    .line 174
    goto :goto_4

    .line 176
    :cond_32
    iget v3, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    if-eq v3, v4, :cond_3a

    move v1, v2

    .line 177
    goto :goto_4

    .line 179
    :cond_3a
    iget v3, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskType:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskType:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 180
    goto :goto_4
.end method

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
    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public varargs getContentValues([Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 10
    .param p1, "columnList"    # [Ljava/lang/String;

    .prologue
    .line 71
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v2, "contentValues":Landroid/content/ContentValues;
    array-length v4, p1

    if-nez v4, :cond_66

    .line 74
    invoke-virtual {p0}, Lcom/lge/cic/eden/db/type/TaskInfo;->getAllColumns()[Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "columns":[Ljava/lang/String;
    :goto_c
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 80
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v5, v1

    const/4 v4, 0x0

    :goto_13
    if-lt v4, v5, :cond_68

    .line 84
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_30

    const-string v4, "TASK_ID"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 85
    const-string v4, "TASK_ID"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    :cond_30
    const-string v4, "TASK_NAME"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 88
    const-string v4, "TASK_NAME"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_3f
    const-string v4, "TASK_TYPE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 91
    const-string v4, "TASK_TYPE"

    iget v5, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    :cond_52
    const-string v4, "TASK_STATUS"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 94
    const-string v4, "TASK_STATUS"

    iget v5, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    :cond_65
    return-object v2

    .line 76
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_66
    move-object v1, p1

    .restart local v1    # "columns":[Ljava/lang/String;
    goto :goto_c

    .line 80
    .restart local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_68
    aget-object v0, v1, v4

    .line 81
    .local v0, "columnName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto :goto_13
.end method

.method public getPrimaryValues()Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 102
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 103
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "TASK_ID"

    iget-wide v2, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 104
    return-object v0
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 141
    const/16 v0, 0x1f

    .line 142
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 143
    .local v1, "result":I
    iget-wide v2, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 144
    mul-int/lit8 v3, v1, 0x1f

    .line 145
    iget-object v2, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    if-nez v2, :cond_24

    const/4 v2, 0x0

    .line 144
    :goto_15
    add-int v1, v3, v2

    .line 146
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    add-int v1, v2, v3

    .line 147
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskType:I

    add-int v1, v2, v3

    .line 148
    return v1

    .line 145
    :cond_24
    iget-object v2, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_15
.end method

.method public isValid()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 112
    iget-wide v2, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_b

    .line 133
    :cond_a
    :goto_a
    return v0

    .line 115
    :cond_b
    iget-object v2, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 119
    iget-object v2, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    const-string v3, "3-SYNC_TASK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 120
    iget-object v2, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    const-string v3, "4-EVENT_CLUSTERING_TASK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 121
    iget-object v2, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    const-string v3, "5-STORY_CLUSTERING_TASK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 122
    iget-object v2, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    const-string v3, "1-CLEAR_DB_TASK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 123
    iget-object v2, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    const-string v3, "1-CLEAR_DB_POI_TASK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 124
    iget-object v2, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    const-string v3, "2-DELETE_MEDIA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 125
    iget-object v2, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    const-string v3, "2-LIGHT_SYNC_TASK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 129
    :cond_55
    iget v2, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    if-lt v2, v1, :cond_a

    iget v2, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    const/4 v3, 0x5

    if-gt v2, v3, :cond_a

    move v0, v1

    .line 133
    goto :goto_a
.end method

.method public setContentValues(Landroid/content/ContentValues;)V
    .registers 6
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 40
    const-string v1, "TASK_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 41
    const-string v1, "TASK_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 42
    .local v0, "temp":Ljava/lang/Long;
    if-eqz v0, :cond_53

    .line 43
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskId:J

    .line 48
    .end local v0    # "temp":Ljava/lang/Long;
    :cond_16
    :goto_16
    const-string v1, "TASK_NAME"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 49
    const-string v1, "TASK_NAME"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskName:Ljava/lang/String;

    .line 51
    :cond_26
    const-string v1, "TASK_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 52
    const-string v1, "TASK_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 53
    .local v0, "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_5b

    .line 54
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskType:I

    .line 59
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_3c
    :goto_3c
    const-string v1, "TASK_STATUS"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 60
    const-string v1, "TASK_STATUS"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 61
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_63

    .line 62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/TaskInfo;->taskStatus:I

    .line 67
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_52
    :goto_52
    return-void

    .line 45
    .local v0, "temp":Ljava/lang/Long;
    :cond_53
    sget-object v1, Lcom/lge/cic/eden/db/type/TaskInfo;->TAG:Ljava/lang/String;

    const-string v2, "TASK_ID is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 56
    .local v0, "temp":Ljava/lang/Integer;
    :cond_5b
    sget-object v1, Lcom/lge/cic/eden/db/type/TaskInfo;->TAG:Ljava/lang/String;

    const-string v2, "TASK_TYPE is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 64
    :cond_63
    sget-object v1, Lcom/lge/cic/eden/db/type/TaskInfo;->TAG:Ljava/lang/String;

    const-string v2, "TASK_STATUS is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method
