.class public Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;
.super Ljava/lang/Object;
.source "LocationPOImanager.java"


# static fields
.field static logger:Lcom/lge/cic/eden/utils/Logger;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->logger:Lcom/lge/cic/eden/utils/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "LocationPOImanager()"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->context:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public checkFirstTimeAnalysisUsingPOI()Z
    .registers 4

    .prologue
    .line 131
    sget-object v1, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "checkFirstTimeAnalysisUsingPOI()"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->getEdenPropertyInfo()Lcom/lge/cic/eden/db/type/EdenPropertyInfo;

    move-result-object v0

    .line 134
    .local v0, "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    iget v1, v0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiAnalysisFlag:I

    if-nez v1, :cond_11

    .line 135
    const/4 v1, 0x1

    .line 137
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public checkLocation(Ljava/lang/String;)Z
    .registers 5
    .param p1, "POIname"    # Ljava/lang/String;

    .prologue
    .line 173
    sget-object v1, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "checkLocation()"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->getEdenPropertyInfo()Lcom/lge/cic/eden/db/type/EdenPropertyInfo;

    move-result-object v0

    .line 176
    .local v0, "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    iget-object v1, v0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 177
    sget-object v1, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "    isSaved"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 178
    const/4 v1, 0x1

    .line 181
    :goto_1b
    return v1

    .line 180
    :cond_1c
    sget-object v1, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "    isEmpty"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 181
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public checkUserModifiedFlag()Z
    .registers 4

    .prologue
    .line 141
    sget-object v1, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "checkUserModifiedFlag()"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->getEdenPropertyInfo()Lcom/lge/cic/eden/db/type/EdenPropertyInfo;

    move-result-object v0

    .line 144
    .local v0, "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    iget v1, v0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiAnalysisFlag:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    .line 145
    const/4 v1, 0x1

    .line 147
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public deleteLocations()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const-wide v4, -0x3f70c80000000000L    # -999.0

    .line 106
    sget-object v2, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "deleteLocation()"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->getEdenPropertyInfo()Lcom/lge/cic/eden/db/type/EdenPropertyInfo;

    move-result-object v1

    .line 109
    .local v1, "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    const-string v2, ""

    iput-object v2, v1, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeCountry:Ljava/lang/String;

    .line 110
    const-string v2, ""

    iput-object v2, v1, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeAdminarea:Ljava/lang/String;

    .line 111
    const-string v2, ""

    iput-object v2, v1, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeLocality:Ljava/lang/String;

    .line 112
    const-string v2, ""

    iput-object v2, v1, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeThroughfare:Ljava/lang/String;

    .line 113
    iput-wide v4, v1, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeLatitude:D

    .line 114
    iput-wide v4, v1, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeLongitude:D

    .line 116
    iget v2, v1, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiAnalysisFlag:I

    if-eq v2, v6, :cond_2c

    .line 117
    const/4 v2, -0x1

    iput v2, v1, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiAnalysisFlag:I

    .line 119
    :cond_2c
    const-string v2, ""

    iput-object v2, v1, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiName:Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v2

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "HOME_COUNTRY"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "HOME_ADMINAREA"

    aput-object v5, v3, v4

    .line 122
    const-string v4, "HOME_LOCALITY"

    aput-object v4, v3, v6

    const/4 v4, 0x3

    const-string v5, "HOME_THOROUGHFARE"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "POI_NAME"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 123
    const-string v5, "HOME_LATITUDE"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "HOME_LONGITUDE"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "POI_ANALYSIS_FLAG"

    aput-object v5, v3, v4

    .line 121
    invoke-virtual {v2, v1, v3}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->update(Lcom/lge/cic/eden/db/type/ColumnInfo;[Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, "affectedRows":I
    if-nez v0, :cond_6c

    .line 126
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->insert(Lcom/lge/cic/eden/db/type/ColumnInfo;)Landroid/net/Uri;

    .line 128
    :cond_6c
    return-void
.end method

.method public getCountryName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 96
    sget-object v1, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "getCountryName()"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->getEdenPropertyInfo()Lcom/lge/cic/eden/db/type/EdenPropertyInfo;

    move-result-object v0

    .line 100
    .local v0, "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    iget-object v1, v0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeCountry:Ljava/lang/String;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeCountry:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1a

    .line 101
    iget-object v1, v0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeCountry:Ljava/lang/String;

    .line 103
    :goto_19
    return-object v1

    :cond_1a
    const-string v1, ""

    goto :goto_19
.end method

.method public getGeoData(Ljava/lang/String;)Lcom/lge/cic/eden/db/type/GeoData;
    .registers 5
    .param p1, "POIname"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {}, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->getEdenPropertyInfo()Lcom/lge/cic/eden/db/type/EdenPropertyInfo;

    move-result-object v1

    .line 82
    .local v1, "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    iget-object v2, v1, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiName:Ljava/lang/String;

    if-eqz v2, :cond_26

    iget-object v2, v1, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_26

    .line 83
    new-instance v0, Lcom/lge/cic/eden/db/type/GeoData;

    invoke-direct {v0}, Lcom/lge/cic/eden/db/type/GeoData;-><init>()V

    .line 85
    .local v0, "geoData":Lcom/lge/cic/eden/db/type/GeoData;
    iget-object v2, v1, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeCountry:Ljava/lang/String;

    iput-object v2, v0, Lcom/lge/cic/eden/db/type/GeoData;->countryName:Ljava/lang/String;

    .line 86
    iget-object v2, v1, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeAdminarea:Ljava/lang/String;

    iput-object v2, v0, Lcom/lge/cic/eden/db/type/GeoData;->adminArea:Ljava/lang/String;

    .line 87
    iget-object v2, v1, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeLocality:Ljava/lang/String;

    iput-object v2, v0, Lcom/lge/cic/eden/db/type/GeoData;->locality:Ljava/lang/String;

    .line 88
    iget-object v2, v1, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeThroughfare:Ljava/lang/String;

    iput-object v2, v0, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfare:Ljava/lang/String;

    .line 92
    .end local v0    # "geoData":Lcom/lge/cic/eden/db/type/GeoData;
    :goto_25
    return-object v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public getLocation(Ljava/lang/String;)Landroid/location/Location;
    .registers 6
    .param p1, "POIname"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v2, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "get()"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->getEdenPropertyInfo()Lcom/lge/cic/eden/db/type/EdenPropertyInfo;

    move-result-object v0

    .line 69
    .local v0, "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    const/4 v1, 0x0

    .line 71
    .local v1, "returnLoc":Landroid/location/Location;
    iget-object v2, v0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiName:Ljava/lang/String;

    if-eqz v2, :cond_29

    iget-object v2, v0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_29

    .line 72
    new-instance v1, Landroid/location/Location;

    .end local v1    # "returnLoc":Landroid/location/Location;
    iget-object v2, v0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiName:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 73
    .restart local v1    # "returnLoc":Landroid/location/Location;
    iget-wide v2, v0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeLatitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 74
    iget-wide v2, v0, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeLongitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 76
    :cond_29
    return-object v1
.end method

.method public setLocationPOI(Landroid/location/Location;)V
    .registers 12
    .param p1, "loc"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 27
    sget-object v5, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v6, "setLocationPOI()"

    invoke-virtual {v5, v6}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 30
    :try_start_7
    new-instance v3, Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;

    iget-object v5, p0, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->context:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;-><init>(Landroid/content/Context;)V

    .line 31
    .local v3, "locationManager":Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;->getGeoData(DD)Lcom/lge/cic/eden/db/type/GeoData;

    move-result-object v2

    .line 32
    .local v2, "geoData":Lcom/lge/cic/eden/db/type/GeoData;
    if-nez v2, :cond_1d

    .line 63
    :cond_1c
    :goto_1c
    return-void

    .line 35
    :cond_1d
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    invoke-static {v6, v7, v5}, Ljava/lang/Thread;->sleep(JI)V

    .line 37
    sget-object v5, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->getEdenPropertyInfo()Lcom/lge/cic/eden/db/type/EdenPropertyInfo;

    move-result-object v4

    .line 40
    .local v4, "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiName:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    iput-wide v6, v4, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeLatitude:D

    .line 42
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    iput-wide v6, v4, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeLongitude:D

    .line 43
    iget-object v5, v2, Lcom/lge/cic/eden/db/type/GeoData;->countryName:Ljava/lang/String;

    iput-object v5, v4, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeCountry:Ljava/lang/String;

    .line 44
    iget-object v5, v2, Lcom/lge/cic/eden/db/type/GeoData;->adminArea:Ljava/lang/String;

    iput-object v5, v4, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeAdminarea:Ljava/lang/String;

    .line 45
    iget-object v5, v2, Lcom/lge/cic/eden/db/type/GeoData;->locality:Ljava/lang/String;

    iput-object v5, v4, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeLocality:Ljava/lang/String;

    .line 46
    iget-object v5, v2, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfare:Ljava/lang/String;

    iput-object v5, v4, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->homeThroughfare:Ljava/lang/String;

    .line 48
    iget v5, v4, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiAnalysisFlag:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_89

    .line 49
    const/4 v5, 0x0

    iput v5, v4, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiAnalysisFlag:I

    .line 52
    :cond_89
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v5

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "HOME_COUNTRY"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "HOME_ADMINAREA"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 53
    const-string v8, "HOME_LOCALITY"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "HOME_THOROUGHFARE"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "POI_NAME"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    .line 54
    const-string v8, "HOME_LATITUDE"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "HOME_LONGITUDE"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "POI_ANALYSIS_FLAG"

    aput-object v8, v6, v7

    .line 52
    invoke-virtual {v5, v4, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->update(Lcom/lge/cic/eden/db/type/ColumnInfo;[Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, "affectedRows":I
    if-nez v0, :cond_1c

    .line 57
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->insert(Lcom/lge/cic/eden/db/type/ColumnInfo;)Landroid/net/Uri;
    :try_end_c6
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c6} :catch_c8

    goto/16 :goto_1c

    .line 59
    .end local v0    # "affectedRows":I
    .end local v2    # "geoData":Lcom/lge/cic/eden/db/type/GeoData;
    .end local v3    # "locationManager":Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;
    .end local v4    # "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    :catch_c8
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 61
    new-instance v5, Ljava/lang/InterruptedException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Interrupt in setLocationPOI(), "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public updateLocationFlag()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 151
    sget-object v2, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "updateLocationFlag()"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 153
    new-instance v1, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;

    invoke-direct {v1}, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;-><init>()V

    .line 154
    .local v1, "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    iput v4, v1, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiAnalysisFlag:I

    .line 155
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "POI_ANALYSIS_FLAG"

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->update(Lcom/lge/cic/eden/db/type/ColumnInfo;[Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, "affectedRows":I
    if-nez v0, :cond_27

    .line 157
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->insert(Lcom/lge/cic/eden/db/type/ColumnInfo;)Landroid/net/Uri;

    .line 159
    :cond_27
    return-void
.end method

.method public updateUserModifiedFlag()V
    .registers 7

    .prologue
    .line 162
    sget-object v2, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "updateUserModifiedFlag()"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 164
    new-instance v1, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;

    invoke-direct {v1}, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;-><init>()V

    .line 165
    .local v1, "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    const/4 v2, 0x2

    iput v2, v1, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->poiAnalysisFlag:I

    .line 166
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "POI_ANALYSIS_FLAG"

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->update(Lcom/lge/cic/eden/db/type/ColumnInfo;[Ljava/lang/String;)I

    move-result v0

    .line 167
    .local v0, "affectedRows":I
    if-nez v0, :cond_28

    .line 168
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->insert(Lcom/lge/cic/eden/db/type/ColumnInfo;)Landroid/net/Uri;

    .line 170
    :cond_28
    return-void
.end method
