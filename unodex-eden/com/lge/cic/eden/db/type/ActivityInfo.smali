.class public Lcom/lge/cic/eden/db/type/ActivityInfo;
.super Lcom/lge/cic/eden/db/type/ColumnInfo;
.source "ActivityInfo.java"


# instance fields
.field public activityEntryCnt:I

.field public activityId:I

.field public deleteFlag:I

.field public endLatitude:D

.field public endLongitude:D

.field public endTime:J

.field public geoAdminArea:Ljava/lang/String;

.field public geoCountryName:Ljava/lang/String;

.field public geoLocality:Ljava/lang/String;

.field public geoThoroughfare:Ljava/lang/String;

.field public locale:Ljava/lang/String;

.field logger:Lcom/lge/cic/eden/utils/Logger;

.field public retryCnt:I

.field public startLatitude:D

.field public startLongitude:D

.field public startTime:J

.field public visibility:I


# direct methods
.method public constructor <init>()V
    .registers 13

    .prologue
    const-wide/16 v2, -0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 31
    const/4 v1, -0x1

    const/16 v9, 0x63

    move-object v0, p0

    move-wide v4, v2

    move-object v7, v6

    move-object v8, v6

    move v11, v10

    invoke-direct/range {v0 .. v11}, Lcom/lge/cic/eden/db/type/ActivityInfo;-><init>(IJJLandroid/location/Location;Landroid/location/Location;Lcom/lge/cic/eden/db/type/GeoData;III)V

    .line 32
    return-void
.end method

.method public constructor <init>(IJJLandroid/location/Location;Landroid/location/Location;Lcom/lge/cic/eden/db/type/GeoData;III)V
    .registers 14
    .param p1, "activityId"    # I
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "startlocation"    # Landroid/location/Location;
    .param p7, "endLocation"    # Landroid/location/Location;
    .param p8, "geoData"    # Lcom/lge/cic/eden/db/type/GeoData;
    .param p9, "visibility"    # I
    .param p10, "cnt"    # I
    .param p11, "retryCnt"    # I

    .prologue
    .line 35
    invoke-static {}, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/cic/eden/db/type/ColumnInfo;-><init>(Lcom/lge/cic/eden/db/table/TableInfo;)V

    .line 12
    const-class v0, Lcom/lge/cic/eden/db/type/ActivityInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 37
    iput p1, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    .line 38
    iput-wide p2, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startTime:J

    .line 39
    iput-wide p4, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endTime:J

    .line 40
    if-eqz p6, :cond_27

    .line 41
    invoke-virtual {p6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLatitude:D

    .line 42
    invoke-virtual {p6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLongitude:D

    .line 45
    :cond_27
    if-eqz p7, :cond_35

    .line 46
    invoke-virtual {p7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLatitude:D

    .line 47
    invoke-virtual {p7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLongitude:D

    .line 50
    :cond_35
    if-eqz p8, :cond_4b

    .line 51
    iget-object v0, p8, Lcom/lge/cic/eden/db/type/GeoData;->geoLocale:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->locale:Ljava/lang/String;

    .line 52
    iget-object v0, p8, Lcom/lge/cic/eden/db/type/GeoData;->countryName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoCountryName:Ljava/lang/String;

    .line 53
    iget-object v0, p8, Lcom/lge/cic/eden/db/type/GeoData;->adminArea:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoAdminArea:Ljava/lang/String;

    .line 54
    iget-object v0, p8, Lcom/lge/cic/eden/db/type/GeoData;->locality:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoLocality:Ljava/lang/String;

    .line 55
    iget-object v0, p8, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfare:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoThoroughfare:Ljava/lang/String;

    .line 58
    :cond_4b
    iput p9, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->visibility:I

    .line 59
    iput p10, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityEntryCnt:I

    .line 60
    iput p11, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->retryCnt:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->deleteFlag:I

    .line 62
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 317
    if-ne p0, p1, :cond_5

    .line 375
    :cond_4
    :goto_4
    return v1

    .line 319
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 320
    goto :goto_4

    .line 321
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 322
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 323
    check-cast v0, Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 324
    .local v0, "other":Lcom/lge/cic/eden/db/type/ActivityInfo;
    iget v3, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityEntryCnt:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityEntryCnt:I

    if-eq v3, v4, :cond_20

    move v1, v2

    .line 325
    goto :goto_4

    .line 326
    :cond_20
    iget v3, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    if-eq v3, v4, :cond_28

    move v1, v2

    .line 327
    goto :goto_4

    .line 328
    :cond_28
    iget v3, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->deleteFlag:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->deleteFlag:I

    if-eq v3, v4, :cond_30

    move v1, v2

    .line 329
    goto :goto_4

    .line 330
    :cond_30
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLatitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 331
    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLatitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 330
    cmp-long v3, v4, v6

    if-eqz v3, :cond_42

    move v1, v2

    .line 332
    goto :goto_4

    .line 333
    :cond_42
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 334
    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLongitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 333
    cmp-long v3, v4, v6

    if-eqz v3, :cond_54

    move v1, v2

    .line 335
    goto :goto_4

    .line 336
    :cond_54
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endTime:J

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endTime:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5e

    move v1, v2

    .line 337
    goto :goto_4

    .line 338
    :cond_5e
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoAdminArea:Ljava/lang/String;

    if-nez v3, :cond_68

    .line 339
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoAdminArea:Ljava/lang/String;

    if-eqz v3, :cond_74

    move v1, v2

    .line 340
    goto :goto_4

    .line 341
    :cond_68
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoAdminArea:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoAdminArea:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    move v1, v2

    .line 342
    goto :goto_4

    .line 343
    :cond_74
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoCountryName:Ljava/lang/String;

    if-nez v3, :cond_7e

    .line 344
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoCountryName:Ljava/lang/String;

    if-eqz v3, :cond_8b

    move v1, v2

    .line 345
    goto :goto_4

    .line 346
    :cond_7e
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoCountryName:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoCountryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8b

    move v1, v2

    .line 347
    goto/16 :goto_4

    .line 348
    :cond_8b
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoLocality:Ljava/lang/String;

    if-nez v3, :cond_96

    .line 349
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoLocality:Ljava/lang/String;

    if-eqz v3, :cond_a3

    move v1, v2

    .line 350
    goto/16 :goto_4

    .line 351
    :cond_96
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoLocality:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoLocality:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a3

    move v1, v2

    .line 352
    goto/16 :goto_4

    .line 353
    :cond_a3
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoThoroughfare:Ljava/lang/String;

    if-nez v3, :cond_ae

    .line 354
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoThoroughfare:Ljava/lang/String;

    if-eqz v3, :cond_bb

    move v1, v2

    .line 355
    goto/16 :goto_4

    .line 356
    :cond_ae
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoThoroughfare:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoThoroughfare:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bb

    move v1, v2

    .line 357
    goto/16 :goto_4

    .line 358
    :cond_bb
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->locale:Ljava/lang/String;

    if-nez v3, :cond_c6

    .line 359
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->locale:Ljava/lang/String;

    if-eqz v3, :cond_d3

    move v1, v2

    .line 360
    goto/16 :goto_4

    .line 361
    :cond_c6
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->locale:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->locale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d3

    move v1, v2

    .line 362
    goto/16 :goto_4

    .line 363
    :cond_d3
    iget v3, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->retryCnt:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->retryCnt:I

    if-eq v3, v4, :cond_dc

    move v1, v2

    .line 364
    goto/16 :goto_4

    .line 365
    :cond_dc
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLatitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 366
    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLatitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 365
    cmp-long v3, v4, v6

    if-eqz v3, :cond_ef

    move v1, v2

    .line 367
    goto/16 :goto_4

    .line 368
    :cond_ef
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 369
    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLongitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 368
    cmp-long v3, v4, v6

    if-eqz v3, :cond_102

    move v1, v2

    .line 370
    goto/16 :goto_4

    .line 371
    :cond_102
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startTime:J

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startTime:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_10d

    move v1, v2

    .line 372
    goto/16 :goto_4

    .line 373
    :cond_10d
    iget v3, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->visibility:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->visibility:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 374
    goto/16 :goto_4
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
    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public varargs getContentValues([Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 10
    .param p1, "columnList"    # [Ljava/lang/String;

    .prologue
    .line 199
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 201
    .local v2, "contentValues":Landroid/content/ContentValues;
    array-length v4, p1

    if-nez v4, :cond_11f

    .line 202
    invoke-virtual {p0}, Lcom/lge/cic/eden/db/type/ActivityInfo;->getAllColumns()[Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "columns":[Ljava/lang/String;
    :goto_c
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 208
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v5, v1

    const/4 v4, 0x0

    :goto_13
    if-lt v4, v5, :cond_122

    .line 213
    const-string v4, "ACTIVITY_ID"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 214
    const-string v4, "ACTIVITY_ID"

    iget v5, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    :cond_28
    const-string v4, "A_START_TIME"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 218
    const-string v4, "A_START_TIME"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 221
    :cond_3b
    const-string v4, "A_END_TIME"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 222
    const-string v4, "A_END_TIME"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    :cond_4e
    const-string v4, "A_START_LATITUDE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 226
    const-string v4, "A_START_LATITUDE"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLatitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 229
    :cond_61
    const-string v4, "A_START_LONGITUDE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 230
    const-string v4, "A_START_LONGITUDE"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLongitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 233
    :cond_74
    const-string v4, "A_END_LATITUDE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 234
    const-string v4, "A_END_LATITUDE"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLatitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 237
    :cond_87
    const-string v4, "A_END_LONGITUDE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 238
    const-string v4, "A_END_LONGITUDE"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLongitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 241
    :cond_9a
    const-string v4, "A_LOCALE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 242
    const-string v4, "A_LOCALE"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->locale:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_a9
    const-string v4, "A_GEOCOUNTRYNAME"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 246
    const-string v4, "A_GEOCOUNTRYNAME"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoCountryName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_b8
    const-string v4, "A_GEOADMINAREA"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 250
    const-string v4, "A_GEOADMINAREA"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoAdminArea:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_c7
    const-string v4, "A_GEOLOCALITY"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d6

    .line 254
    const-string v4, "A_GEOLOCALITY"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoLocality:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_d6
    const-string v4, "A_GEOTHOROUGHFARE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e5

    .line 258
    const-string v4, "A_GEOTHOROUGHFARE"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoThoroughfare:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_e5
    const-string v4, "A_VISIBILITY"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f8

    .line 262
    const-string v4, "A_VISIBILITY"

    iget v5, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->visibility:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    :cond_f8
    const-string v4, "A_RETRYCOUNT"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10b

    .line 266
    const-string v4, "A_RETRYCOUNT"

    iget v5, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->retryCnt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    :cond_10b
    const-string v4, "A_DELETE_FLAG"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11e

    .line 270
    const-string v4, "A_DELETE_FLAG"

    iget v5, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->deleteFlag:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    :cond_11e
    return-object v2

    .line 204
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_11f
    move-object v1, p1

    .restart local v1    # "columns":[Ljava/lang/String;
    goto/16 :goto_c

    .line 208
    .restart local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_122
    aget-object v0, v1, v4

    .line 209
    .local v0, "columnName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13
.end method

.method public getPrimaryValues()Landroid/content/ContentValues;
    .registers 4

    .prologue
    .line 278
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 279
    .local v0, "primaryValues":Landroid/content/ContentValues;
    const-string v1, "ACTIVITY_ID"

    iget v2, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    return-object v0
.end method

.method public hashCode()I
    .registers 12

    .prologue
    const/4 v5, 0x0

    const/16 v10, 0x20

    .line 285
    const/16 v0, 0x1f

    .line 286
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 287
    .local v1, "result":I
    iget v4, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityEntryCnt:I

    add-int/lit8 v1, v4, 0x1f

    .line 288
    mul-int/lit8 v4, v1, 0x1f

    iget v6, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    add-int v1, v4, v6

    .line 289
    mul-int/lit8 v4, v1, 0x1f

    iget v6, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->deleteFlag:I

    add-int v1, v4, v6

    .line 291
    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLatitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 292
    .local v2, "temp":J
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v10

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int v1, v4, v6

    .line 293
    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLongitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 294
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v10

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int v1, v4, v6

    .line 295
    mul-int/lit8 v4, v1, 0x1f

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endTime:J

    iget-wide v8, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endTime:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v4, v6

    .line 296
    mul-int/lit8 v6, v1, 0x1f

    .line 297
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoAdminArea:Ljava/lang/String;

    if-nez v4, :cond_9d

    move v4, v5

    .line 296
    :goto_44
    add-int v1, v6, v4

    .line 298
    mul-int/lit8 v6, v1, 0x1f

    .line 299
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoCountryName:Ljava/lang/String;

    if-nez v4, :cond_a4

    move v4, v5

    .line 298
    :goto_4d
    add-int v1, v6, v4

    .line 300
    mul-int/lit8 v6, v1, 0x1f

    .line 301
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoLocality:Ljava/lang/String;

    if-nez v4, :cond_ab

    move v4, v5

    .line 300
    :goto_56
    add-int v1, v6, v4

    .line 302
    mul-int/lit8 v6, v1, 0x1f

    .line 303
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoThoroughfare:Ljava/lang/String;

    if-nez v4, :cond_b2

    move v4, v5

    .line 302
    :goto_5f
    add-int v1, v6, v4

    .line 304
    mul-int/lit8 v4, v1, 0x1f

    iget-object v6, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->locale:Ljava/lang/String;

    if-nez v6, :cond_b9

    :goto_67
    add-int v1, v4, v5

    .line 305
    mul-int/lit8 v4, v1, 0x1f

    iget v5, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->retryCnt:I

    add-int v1, v4, v5

    .line 306
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLatitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 307
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v10

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v1, v4, v5

    .line 308
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 309
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v10

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v1, v4, v5

    .line 310
    mul-int/lit8 v4, v1, 0x1f

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startTime:J

    iget-wide v8, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startTime:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v5, v6

    add-int v1, v4, v5

    .line 311
    mul-int/lit8 v4, v1, 0x1f

    iget v5, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->visibility:I

    add-int v1, v4, v5

    .line 312
    return v1

    .line 297
    :cond_9d
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoAdminArea:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_44

    .line 299
    :cond_a4
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoCountryName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_4d

    .line 301
    :cond_ab
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoLocality:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_56

    .line 303
    :cond_b2
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoThoroughfare:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_5f

    .line 304
    :cond_b9
    iget-object v5, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->locale:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    goto :goto_67
.end method

.method public setActivityEntryCnt(I)V
    .registers 2
    .param p1, "cnt"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityEntryCnt:I

    .line 81
    return-void
.end method

.method public setContentValues(Landroid/content/ContentValues;)V
    .registers 6
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 85
    const-string v1, "ACTIVITY_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 86
    const-string v1, "ACTIVITY_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 87
    .local v0, "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_12d

    .line 88
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    .line 94
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_16
    :goto_16
    const-string v1, "A_START_TIME"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 95
    const-string v1, "A_START_TIME"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 96
    .local v0, "temp":Ljava/lang/Long;
    if-eqz v0, :cond_136

    .line 97
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startTime:J

    .line 103
    .end local v0    # "temp":Ljava/lang/Long;
    :cond_2c
    :goto_2c
    const-string v1, "A_END_TIME"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 104
    const-string v1, "A_END_TIME"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 105
    .restart local v0    # "temp":Ljava/lang/Long;
    if-eqz v0, :cond_13f

    .line 106
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endTime:J

    .line 112
    .end local v0    # "temp":Ljava/lang/Long;
    :cond_42
    :goto_42
    const-string v1, "A_START_LATITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 113
    const-string v1, "A_START_LATITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 114
    .local v0, "temp":Ljava/lang/Double;
    if-eqz v0, :cond_148

    .line 115
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLatitude:D

    .line 121
    .end local v0    # "temp":Ljava/lang/Double;
    :cond_58
    :goto_58
    const-string v1, "A_START_LONGITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 122
    const-string v1, "A_START_LONGITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 123
    .restart local v0    # "temp":Ljava/lang/Double;
    if-eqz v0, :cond_151

    .line 124
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startLongitude:D

    .line 130
    .end local v0    # "temp":Ljava/lang/Double;
    :cond_6e
    :goto_6e
    const-string v1, "A_END_LATITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 131
    const-string v1, "A_END_LATITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 132
    .restart local v0    # "temp":Ljava/lang/Double;
    if-eqz v0, :cond_15a

    .line 133
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLatitude:D

    .line 139
    .end local v0    # "temp":Ljava/lang/Double;
    :cond_84
    :goto_84
    const-string v1, "A_END_LONGITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 140
    const-string v1, "A_END_LONGITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 141
    .restart local v0    # "temp":Ljava/lang/Double;
    if-eqz v0, :cond_163

    .line 142
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->endLongitude:D

    .line 148
    .end local v0    # "temp":Ljava/lang/Double;
    :cond_9a
    :goto_9a
    const-string v1, "A_LOCALE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 149
    const-string v1, "A_LOCALE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->locale:Ljava/lang/String;

    .line 152
    :cond_aa
    const-string v1, "A_GEOCOUNTRYNAME"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 153
    const-string v1, "A_GEOCOUNTRYNAME"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoCountryName:Ljava/lang/String;

    .line 156
    :cond_ba
    const-string v1, "A_GEOADMINAREA"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 157
    const-string v1, "A_GEOADMINAREA"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoAdminArea:Ljava/lang/String;

    .line 160
    :cond_ca
    const-string v1, "A_GEOLOCALITY"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_da

    .line 161
    const-string v1, "A_GEOLOCALITY"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoLocality:Ljava/lang/String;

    .line 164
    :cond_da
    const-string v1, "A_GEOTHOROUGHFARE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 165
    const-string v1, "A_GEOTHOROUGHFARE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoThoroughfare:Ljava/lang/String;

    .line 168
    :cond_ea
    const-string v1, "A_VISIBILITY"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_100

    .line 169
    const-string v1, "A_VISIBILITY"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 170
    .local v0, "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_16c

    .line 171
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->visibility:I

    .line 177
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_100
    :goto_100
    const-string v1, "A_RETRYCOUNT"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_116

    .line 178
    const-string v1, "A_RETRYCOUNT"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 179
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_174

    .line 180
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->retryCnt:I

    .line 186
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_116
    :goto_116
    const-string v1, "A_DELETE_FLAG"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 187
    const-string v1, "A_DELETE_FLAG"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 188
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_17c

    .line 189
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->deleteFlag:I

    .line 196
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_12c
    :goto_12c
    return-void

    .line 90
    .restart local v0    # "temp":Ljava/lang/Integer;
    :cond_12d
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "ACTIVITY_ID is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 99
    .local v0, "temp":Ljava/lang/Long;
    :cond_136
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "START_TIME is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 108
    :cond_13f
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "END_TIME is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_42

    .line 117
    .local v0, "temp":Ljava/lang/Double;
    :cond_148
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "START_LATITUDE is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_58

    .line 126
    :cond_151
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "START_LONGITUDE is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_6e

    .line 135
    :cond_15a
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "END_LATITUDE is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_84

    .line 144
    :cond_163
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "END_LONGITUDE is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_9a

    .line 173
    .local v0, "temp":Ljava/lang/Integer;
    :cond_16c
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "VISIBILITY is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_100

    .line 182
    :cond_174
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "RETRY_COUNT is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_116

    .line 191
    :cond_17c
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "DELETE_FLAG is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_12c
.end method

.method public setGeoData(Lcom/lge/cic/eden/db/type/GeoData;)V
    .registers 3
    .param p1, "geoData"    # Lcom/lge/cic/eden/db/type/GeoData;

    .prologue
    .line 65
    if-eqz p1, :cond_16

    .line 66
    iget-object v0, p1, Lcom/lge/cic/eden/db/type/GeoData;->geoLocale:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->locale:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/lge/cic/eden/db/type/GeoData;->countryName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoCountryName:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/lge/cic/eden/db/type/GeoData;->adminArea:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoAdminArea:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Lcom/lge/cic/eden/db/type/GeoData;->locality:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoLocality:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfare:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoThoroughfare:Ljava/lang/String;

    .line 72
    :cond_16
    return-void
.end method
