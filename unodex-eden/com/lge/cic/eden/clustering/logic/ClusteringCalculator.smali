.class public Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;
.super Ljava/lang/Object;
.source "ClusteringCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator$ClusteringType;
    }
.end annotation


# instance fields
.field private DEFAULT_DISTANCE_BOUNDARY:I

.field private DEFAULT_DISTANCE_WEIGHT:D

.field private DEFAULT_TIMEWEIGHT:D

.field private DEFAULT_TIME_BOUNDARY:J

.field private DISTANCE_BOUNDARY:D

.field private DISTANCE_BOUNDARY_FROM_HOME:I

.field private DISTANCE_WEIGHT:D

.field private OUT_OF_COUNTRY_FLAG:Z

.field private TIME_BOUNDARY:D

.field private TIME_WEIGHT:D

.field private homeAddress:Ljava/lang/String;

.field private homeLoc:Landroid/location/Location;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/location/Location;I)V
    .registers 11
    .param p1, "homeAddress"    # Ljava/lang/String;
    .param p2, "homeLoc"    # Landroid/location/Location;
    .param p3, "type"    # I

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p3, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->type:I

    .line 33
    packed-switch p3, :pswitch_data_64

    .line 69
    :goto_d
    return-void

    .line 35
    :pswitch_e
    const/16 v0, 0x1388

    iput v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_DISTANCE_BOUNDARY:I

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DISTANCE_BOUNDARY_FROM_HOME:I

    .line 37
    const-wide/32 v0, 0x6ddd00

    iput-wide v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_TIME_BOUNDARY:J

    .line 38
    iput-wide v2, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_DISTANCE_WEIGHT:D

    .line 39
    iput-wide v4, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_TIMEWEIGHT:D

    .line 40
    iput-boolean v6, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->OUT_OF_COUNTRY_FLAG:Z

    .line 42
    iget v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_DISTANCE_BOUNDARY:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DISTANCE_BOUNDARY:D

    .line 43
    iget-wide v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_TIME_BOUNDARY:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->TIME_BOUNDARY:D

    .line 44
    iget-wide v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_DISTANCE_WEIGHT:D

    iput-wide v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DISTANCE_WEIGHT:D

    .line 45
    iget-wide v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_TIMEWEIGHT:D

    iput-wide v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->TIME_WEIGHT:D

    .line 47
    iput-object p1, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->homeAddress:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->homeLoc:Landroid/location/Location;

    goto :goto_d

    .line 52
    :pswitch_37
    const v0, 0x186a0

    iput v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_DISTANCE_BOUNDARY:I

    .line 53
    const v0, 0xc350

    iput v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DISTANCE_BOUNDARY_FROM_HOME:I

    .line 54
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_TIME_BOUNDARY:J

    .line 55
    iput-wide v4, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_DISTANCE_WEIGHT:D

    .line 56
    iput-wide v2, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_TIMEWEIGHT:D

    .line 57
    iput-boolean v6, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->OUT_OF_COUNTRY_FLAG:Z

    .line 59
    iget v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_DISTANCE_BOUNDARY:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DISTANCE_BOUNDARY:D

    .line 60
    iget-wide v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_TIME_BOUNDARY:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->TIME_BOUNDARY:D

    .line 61
    iget-wide v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_DISTANCE_WEIGHT:D

    iput-wide v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DISTANCE_WEIGHT:D

    .line 62
    iget-wide v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_TIMEWEIGHT:D

    iput-wide v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->TIME_WEIGHT:D

    .line 64
    iput-object p1, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->homeAddress:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->homeLoc:Landroid/location/Location;

    goto :goto_d

    .line 33
    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_e
        :pswitch_37
    .end packed-switch
.end method

.method private calcDistanceBoundary(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)D
    .registers 5
    .param p1, "srcInfo"    # Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;
    .param p2, "dstInfo"    # Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->OUT_OF_COUNTRY_FLAG:Z

    if-eqz v0, :cond_a

    .line 111
    iget v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_DISTANCE_BOUNDARY:I

    mul-int/lit8 v0, v0, 0x5

    int-to-double v0, v0

    .line 113
    :goto_9
    return-wide v0

    :cond_a
    iget v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_DISTANCE_BOUNDARY:I

    int-to-double v0, v0

    goto :goto_9
.end method

.method private calcDistanceGap(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)D
    .registers 7
    .param p1, "srcInfo"    # Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;
    .param p2, "dstInfo"    # Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;

    .prologue
    const-wide v2, -0x3f70c80000000000L    # -999.0

    .line 88
    iget-object v0, p1, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2d

    iget-object v0, p1, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2d

    iget-object v0, p2, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2d

    iget-object v0, p2, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_30

    .line 89
    :cond_2d
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 92
    :goto_2f
    return-wide v0

    :cond_30
    iget-object v0, p1, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    iget-object v1, p2, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    invoke-virtual {v0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    iget v1, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_DISTANCE_BOUNDARY:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    goto :goto_2f
.end method

.method private calcDistanceWeight(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)D
    .registers 9
    .param p1, "srcInfo"    # Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;
    .param p2, "dstInfo"    # Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->calcDistanceWeightFromHome(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)D

    move-result-wide v0

    .line 145
    .local v0, "distanceWeight":D
    cmpg-double v2, v0, v4

    if-gez v2, :cond_f

    .line 146
    iget-wide v2, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_DISTANCE_WEIGHT:D

    div-double/2addr v4, v0

    mul-double/2addr v2, v4

    .line 148
    :goto_e
    return-wide v2

    :cond_f
    iget-wide v2, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_DISTANCE_WEIGHT:D

    goto :goto_e
.end method

.method private calcDistanceWeightFromHome(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)D
    .registers 10
    .param p1, "srcInfo"    # Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;
    .param p2, "dstInfo"    # Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 126
    iget-object v4, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->homeLoc:Landroid/location/Location;

    if-eqz v4, :cond_2d

    .line 127
    iget-object v4, p1, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    iget-object v5, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->homeLoc:Landroid/location/Location;

    invoke-virtual {v4, v5}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v4

    iget v5, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DISTANCE_BOUNDARY_FROM_HOME:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget-object v5, p2, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    iget-object v6, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->homeLoc:Landroid/location/Location;

    invoke-virtual {v5, v6}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v5

    iget v6, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DISTANCE_BOUNDARY_FROM_HOME:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-double v0, v4

    .line 128
    .local v0, "distanceWeight":D
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 130
    .end local v0    # "distanceWeight":D
    :cond_2d
    return-wide v2
.end method

.method private calcNationalBorder(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)D
    .registers 5
    .param p1, "srcInfo"    # Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;
    .param p2, "dstInfo"    # Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;

    .prologue
    .line 134
    iget-object v0, p1, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p1, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3d

    .line 135
    iget-object v0, p2, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p2, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3d

    .line 137
    iget-object v0, p1, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 138
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 140
    :goto_3c
    return-wide v0

    :cond_3d
    const-wide/16 v0, 0x0

    goto :goto_3c
.end method

.method private calcTimeBoundary(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)D
    .registers 11
    .param p1, "srcInfo"    # Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;
    .param p2, "dstInfo"    # Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;

    .prologue
    const-wide v4, -0x3f70c80000000000L    # -999.0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->calcDistanceWeightFromHome(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)D

    move-result-wide v0

    .line 97
    .local v0, "distanceWeightFromhome":D
    iget-object v2, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->homeAddress:Ljava/lang/String;

    if-nez v2, :cond_41

    .line 98
    iget v2, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_60

    iget-object v2, p1, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_3a

    iget-object v2, p1, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_3a

    iget-object v2, p2, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_3a

    iget-object v2, p2, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_60

    .line 99
    :cond_3a
    iget-wide v2, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_TIME_BOUNDARY:J

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    long-to-double v2, v2

    .line 106
    :goto_40
    return-wide v2

    .line 101
    :cond_41
    iget-boolean v2, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->OUT_OF_COUNTRY_FLAG:Z

    if-eqz v2, :cond_4e

    .line 102
    iget-wide v2, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_TIME_BOUNDARY:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_TIME_BOUNDARY:J

    long-to-double v4, v4

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    goto :goto_40

    .line 103
    :cond_4e
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_60

    .line 104
    iget-wide v2, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_TIME_BOUNDARY:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_TIME_BOUNDARY:J

    const-wide/16 v6, 0x18

    div-long/2addr v4, v6

    long-to-double v4, v4

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    goto :goto_40

    .line 106
    :cond_60
    iget-wide v2, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_TIME_BOUNDARY:J

    long-to-double v2, v2

    goto :goto_40
.end method

.method private calcTimeGap(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)D
    .registers 7
    .param p1, "srcInfo"    # Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;
    .param p2, "dstInfo"    # Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;

    .prologue
    .line 84
    iget-wide v0, p1, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->dateTaken:J

    iget-wide v2, p2, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->dateTaken:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0
.end method

.method private checkOutOfCountry(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)Z
    .registers 5
    .param p1, "srcInfo"    # Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;
    .param p2, "dstInfo"    # Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->homeAddress:Ljava/lang/String;

    if-eqz v0, :cond_4a

    iget-object v0, p1, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v0, p1, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4a

    .line 117
    iget-object v0, p2, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v0, p2, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4a

    .line 118
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->homeAddress:Ljava/lang/String;

    iget-object v1, p1, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 119
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->homeAddress:Ljava/lang/String;

    iget-object v1, p2, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 120
    const/4 v0, 0x1

    .line 122
    :goto_49
    return v0

    :cond_4a
    const/4 v0, 0x0

    goto :goto_49
.end method

.method private setCalculateParam(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)V
    .registers 5
    .param p1, "srcInfo"    # Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;
    .param p2, "dstInfo"    # Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->checkOutOfCountry(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->OUT_OF_COUNTRY_FLAG:Z

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->calcTimeBoundary(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->TIME_BOUNDARY:D

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->calcDistanceBoundary(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DISTANCE_BOUNDARY:D

    .line 155
    iget-wide v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DEFAULT_TIMEWEIGHT:D

    iput-wide v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->TIME_WEIGHT:D

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->calcDistanceWeight(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DISTANCE_WEIGHT:D

    .line 157
    return-void
.end method


# virtual methods
.method public calcSimilarity(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)D
    .registers 17
    .param p1, "srcInfo"    # Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;
    .param p2, "dstInfo"    # Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;

    .prologue
    .line 72
    invoke-direct/range {p0 .. p2}, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->setCalculateParam(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)V

    .line 74
    invoke-direct/range {p0 .. p2}, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->calcTimeGap(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)D

    move-result-wide v6

    .line 75
    .local v6, "timeGap":D
    invoke-direct/range {p0 .. p2}, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->calcDistanceGap(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)D

    move-result-wide v2

    .line 76
    .local v2, "distanceGap":D
    invoke-direct/range {p0 .. p2}, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->calcNationalBorder(Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;)D

    move-result-wide v4

    .line 78
    .local v4, "nationalBorder":D
    iget-wide v8, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->TIME_BOUNDARY:D

    div-double v8, v6, v8

    iget-wide v10, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->TIME_WEIGHT:D

    mul-double/2addr v8, v10

    add-double/2addr v8, v4

    iget-wide v10, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DISTANCE_BOUNDARY:D

    div-double v10, v2, v10

    iget-wide v12, p0, Lcom/lge/cic/eden/clustering/logic/ClusteringCalculator;->DISTANCE_WEIGHT:D

    mul-double/2addr v10, v12

    add-double v0, v8, v10

    .line 80
    .local v0, "calculatedValue":D
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    return-wide v8
.end method
