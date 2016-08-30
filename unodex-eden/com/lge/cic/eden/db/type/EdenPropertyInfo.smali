.class public Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
.super Lcom/lge/cic/eden/db/type/ColumnInfo;
.source "EdenPropertyInfo.java"


# instance fields
.field private _id:I

.field public homeAdminarea:Ljava/lang/String;

.field public homeCountry:Ljava/lang/String;

.field public homeLatitude:D

.field public homeLocality:Ljava/lang/String;

.field public homeLongitude:D

.field public homeThroughfare:Ljava/lang/String;

.field public maxActivityId:I

.field public maxEventId:I

.field public poiAnalysisFlag:I

.field public poiName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 14

    .prologue
    const-wide v4, -0x3f70c80000000000L    # -999.0

    const/4 v1, -0x1

    .line 25
    const-string v3, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    move-object v0, p0

    move v2, v1

    move-wide v6, v4

    move v8, v1

    invoke-direct/range {v0 .. v12}, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;-><init>(IILjava/lang/String;DDILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;DDILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "aid"    # I
    .param p2, "eid"    # I
    .param p3, "poiName"    # Ljava/lang/String;
    .param p4, "lat"    # D
    .param p6, "lon"    # D
    .param p8, "flag"    # I
    .param p9, "homeCountry"    # Ljava/lang/String;
    .param p10, "homeAdminarea"    # Ljava/lang/String;
    .param p11, "homeLocality"    # Ljava/lang/String;
    .param p12, "homeThroughfare"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {}, Lcom/lge/cic/eden/db/table/EdenPropertyInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/cic/eden/db/type/ColumnInfo;-><init>(Lcom/lge/cic/eden/db/table/TableInfo;)V

    .line 31
    iput p1, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->maxActivityId:I

    .line 32
    iput p2, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->maxEventId:I

    .line 33
    iput-object p3, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiName:Ljava/lang/String;

    .line 34
    iput-wide p4, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeLatitude:D

    .line 35
    iput-wide p6, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeLongitude:D

    .line 36
    iput p8, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiAnalysisFlag:I

    .line 37
    iput-object p9, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeCountry:Ljava/lang/String;

    .line 38
    iput-object p10, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeAdminarea:Ljava/lang/String;

    .line 39
    iput-object p11, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeLocality:Ljava/lang/String;

    .line 40
    iput-object p12, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeThroughfare:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static getEdenPropertyInfo()Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    .registers 6

    .prologue
    const/4 v5, 0x0

    .line 162
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v2

    const-class v3, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;

    invoke-static {}, Lcom/lge/cic/eden/db/table/EdenPropertyInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5, v5}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/ArrayList;

    move-result-object v1

    .line 164
    .local v1, "propertyInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EdenPropertyInfo;>;"
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_23

    .line 165
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;

    .line 169
    :goto_22
    return-object v2

    .line 167
    :cond_23
    new-instance v0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;

    invoke-direct {v0}, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;-><init>()V

    .line 168
    .local v0, "edenPropertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->insert(Lcom/lge/cic/eden/db/type/ColumnInfo;)Landroid/net/Uri;

    move-object v2, v0

    .line 169
    goto :goto_22
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
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public varargs getContentValues([Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 10
    .param p1, "columnList"    # [Ljava/lang/String;

    .prologue
    .line 106
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 108
    .local v2, "contentValues":Landroid/content/ContentValues;
    array-length v4, p1

    if-nez v4, :cond_d3

    .line 109
    invoke-virtual {p0}, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->getAllColumns()[Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "columns":[Ljava/lang/String;
    :goto_c
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 115
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v5, v1

    const/4 v4, 0x0

    :goto_13
    if-lt v4, v5, :cond_d6

    .line 118
    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 119
    const-string v4, "_id"

    iget v5, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    :cond_28
    const-string v4, "MAX_ACTIVITY_ID"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 122
    const-string v4, "MAX_ACTIVITY_ID"

    iget v5, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->maxActivityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    :cond_3b
    const-string v4, "MAX_EVENT_ID"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 125
    const-string v4, "MAX_EVENT_ID"

    iget v5, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->maxEventId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    :cond_4e
    const-string v4, "POI_ANALYSIS_FLAG"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 128
    const-string v4, "POI_ANALYSIS_FLAG"

    iget v5, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiAnalysisFlag:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    :cond_61
    const-string v4, "HOME_COUNTRY"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 131
    const-string v4, "HOME_COUNTRY"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeCountry:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_70
    const-string v4, "HOME_ADMINAREA"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 134
    const-string v4, "HOME_ADMINAREA"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeAdminarea:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_7f
    const-string v4, "HOME_LOCALITY"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 137
    const-string v4, "HOME_LOCALITY"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeLocality:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_8e
    const-string v4, "HOME_THOROUGHFARE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 140
    const-string v4, "HOME_THOROUGHFARE"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeThroughfare:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_9d
    const-string v4, "HOME_LATITUDE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 143
    const-string v4, "HOME_LATITUDE"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeLatitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 145
    :cond_b0
    const-string v4, "HOME_LONGITUDE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 146
    const-string v4, "HOME_LONGITUDE"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeLongitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 148
    :cond_c3
    const-string v4, "POI_NAME"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 149
    const-string v4, "POI_NAME"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_d2
    return-object v2

    .line 111
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_d3
    move-object v1, p1

    .restart local v1    # "columns":[Ljava/lang/String;
    goto/16 :goto_c

    .line 115
    .restart local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_d6
    aget-object v0, v1, v4

    .line 116
    .local v0, "columnName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13
.end method

.method public getPrimaryValues()Landroid/content/ContentValues;
    .registers 4

    .prologue
    .line 156
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 157
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "_id"

    iget v2, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    return-object v0
.end method

.method public setContentValues(Landroid/content/ContentValues;)V
    .registers 6
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 50
    const-string v1, "_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 51
    const-string v1, "_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 52
    .local v0, "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_16

    .line 53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->_id:I

    .line 57
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_16
    const-string v1, "MAX_ACTIVITY_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 58
    const-string v1, "MAX_ACTIVITY_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 59
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_2c

    .line 60
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->maxActivityId:I

    .line 63
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_2c
    const-string v1, "MAX_EVENT_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 64
    const-string v1, "MAX_EVENT_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 65
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_42

    .line 66
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->maxEventId:I

    .line 69
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_42
    const-string v1, "POI_NAME"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 70
    const-string v1, "POI_NAME"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiName:Ljava/lang/String;

    .line 72
    :cond_52
    const-string v1, "HOME_LATITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 73
    const-string v1, "HOME_LATITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 74
    .local v0, "temp":Ljava/lang/Double;
    if-eqz v0, :cond_68

    .line 75
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeLatitude:D

    .line 78
    .end local v0    # "temp":Ljava/lang/Double;
    :cond_68
    const-string v1, "HOME_LONGITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 79
    const-string v1, "HOME_LONGITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 80
    .restart local v0    # "temp":Ljava/lang/Double;
    if-eqz v0, :cond_7e

    .line 81
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeLongitude:D

    .line 84
    .end local v0    # "temp":Ljava/lang/Double;
    :cond_7e
    const-string v1, "HOME_COUNTRY"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 85
    const-string v1, "HOME_COUNTRY"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeCountry:Ljava/lang/String;

    .line 87
    :cond_8e
    const-string v1, "HOME_ADMINAREA"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 88
    const-string v1, "HOME_ADMINAREA"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeAdminarea:Ljava/lang/String;

    .line 90
    :cond_9e
    const-string v1, "HOME_LOCALITY"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 91
    const-string v1, "HOME_LOCALITY"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeLocality:Ljava/lang/String;

    .line 93
    :cond_ae
    const-string v1, "HOME_THOROUGHFARE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 94
    const-string v1, "HOME_THOROUGHFARE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeThroughfare:Ljava/lang/String;

    .line 96
    :cond_be
    const-string v1, "POI_ANALYSIS_FLAG"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 97
    const-string v1, "POI_ANALYSIS_FLAG"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 98
    .local v0, "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_d4

    .line 99
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiAnalysisFlag:I

    .line 102
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_d4
    return-void
.end method
