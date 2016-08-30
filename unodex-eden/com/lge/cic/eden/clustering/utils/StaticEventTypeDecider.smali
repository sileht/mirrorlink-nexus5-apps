.class public Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;
.super Ljava/lang/Object;
.source "StaticEventTypeDecider.java"


# static fields
.field private static final MILLISECS_PER_DAY:J = 0x5265c00L

.field static logger:Lcom/lge/cic/eden/utils/Logger;


# instance fields
.field private final DISTANCEBOUNDARY:I

.field private homeAddress:Ljava/lang/String;

.field private homeGeoData:Lcom/lge/cic/eden/db/type/GeoData;

.field private homeLoc:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x2328

    iput v0, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->DISTANCEBOUNDARY:I

    .line 19
    iput-object v1, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeLoc:Landroid/location/Location;

    .line 20
    iput-object v1, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeAddress:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeGeoData:Lcom/lge/cic/eden/db/type/GeoData;

    .line 31
    sget-object v0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "StaticEventTypeDecider create (No location)"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;Ljava/lang/String;Lcom/lge/cic/eden/db/type/GeoData;)V
    .registers 6
    .param p1, "loc"    # Landroid/location/Location;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "geoData"    # Lcom/lge/cic/eden/db/type/GeoData;

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x2328

    iput v0, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->DISTANCEBOUNDARY:I

    .line 19
    iput-object v1, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeLoc:Landroid/location/Location;

    .line 20
    iput-object v1, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeAddress:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeGeoData:Lcom/lge/cic/eden/db/type/GeoData;

    .line 24
    sget-object v0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "StaticEventTypeDecider create"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeLoc:Landroid/location/Location;

    .line 26
    iput-object p2, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeAddress:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeGeoData:Lcom/lge/cic/eden/db/type/GeoData;

    .line 28
    return-void
.end method

.method private checkDistanceBoundary(Lcom/lge/cic/eden/db/type/EventInfo;)Z
    .registers 6
    .param p1, "eInfo"    # Lcom/lge/cic/eden/db/type/EventInfo;

    .prologue
    .line 143
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "eventLoc":Landroid/location/Location;
    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/EventInfo;->startLatitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 145
    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/EventInfo;->startLongitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 147
    iget-object v1, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeLoc:Landroid/location/Location;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeLoc:Landroid/location/Location;

    invoke-virtual {v1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    const v2, 0x460ca000    # 9000.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_24

    .line 148
    const/4 v1, 0x1

    .line 150
    :goto_23
    return v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_23
.end method

.method private checkGeoDataAddressDiff(Lcom/lge/cic/eden/db/type/EventInfo;)Z
    .registers 6
    .param p1, "eInfo"    # Lcom/lge/cic/eden/db/type/EventInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 116
    iget-object v2, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeGeoData:Lcom/lge/cic/eden/db/type/GeoData;

    if-eqz v2, :cond_2e

    .line 117
    iget-object v2, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeGeoData:Lcom/lge/cic/eden/db/type/GeoData;

    iget-object v2, v2, Lcom/lge/cic/eden/db/type/GeoData;->adminArea:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeGeoData:Lcom/lge/cic/eden/db/type/GeoData;

    iget-object v2, v2, Lcom/lge/cic/eden/db/type/GeoData;->adminArea:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_31

    iget-object v2, p1, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v2, p1, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_31

    .line 118
    iget-object v2, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeGeoData:Lcom/lge/cic/eden/db/type/GeoData;

    iget-object v2, v2, Lcom/lge/cic/eden/db/type/GeoData;->adminArea:Ljava/lang/String;

    iget-object v3, p1, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 139
    :cond_2e
    :goto_2e
    return v0

    :cond_2f
    move v0, v1

    .line 121
    goto :goto_2e

    .line 123
    :cond_31
    iget-object v2, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeGeoData:Lcom/lge/cic/eden/db/type/GeoData;

    iget-object v2, v2, Lcom/lge/cic/eden/db/type/GeoData;->locality:Ljava/lang/String;

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeGeoData:Lcom/lge/cic/eden/db/type/GeoData;

    iget-object v2, v2, Lcom/lge/cic/eden/db/type/GeoData;->locality:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5b

    iget-object v2, p1, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    if-eqz v2, :cond_5b

    iget-object v2, p1, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5b

    .line 124
    iget-object v2, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeGeoData:Lcom/lge/cic/eden/db/type/GeoData;

    iget-object v2, v2, Lcom/lge/cic/eden/db/type/GeoData;->locality:Ljava/lang/String;

    iget-object v3, p1, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    move v0, v1

    .line 127
    goto :goto_2e

    .line 129
    :cond_5b
    iget-object v2, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeGeoData:Lcom/lge/cic/eden/db/type/GeoData;

    iget-object v2, v2, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfare:Ljava/lang/String;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeGeoData:Lcom/lge/cic/eden/db/type/GeoData;

    iget-object v2, v2, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfare:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2e

    iget-object v2, p1, Lcom/lge/cic/eden/db/type/EventInfo;->geoThoroughfare:Ljava/lang/String;

    if-eqz v2, :cond_2e

    iget-object v2, p1, Lcom/lge/cic/eden/db/type/EventInfo;->geoThoroughfare:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2e

    .line 130
    iget-object v2, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeGeoData:Lcom/lge/cic/eden/db/type/GeoData;

    iget-object v2, v2, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfare:Ljava/lang/String;

    iget-object v3, p1, Lcom/lge/cic/eden/db/type/EventInfo;->geoThoroughfare:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    move v0, v1

    .line 133
    goto :goto_2e
.end method

.method private checkOneDay(Lcom/lge/cic/eden/db/type/EventInfo;)Z
    .registers 8
    .param p1, "eInfo"    # Lcom/lge/cic/eden/db/type/EventInfo;

    .prologue
    .line 104
    new-instance v2, Ljava/util/Date;

    iget-wide v4, p1, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 105
    .local v2, "startDate":Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    iget-wide v4, p1, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 107
    .local v0, "endDate":Ljava/util/Date;
    const/4 v1, 0x0

    .line 109
    .local v1, "oneDayFlag":Z
    invoke-static {v2, v0}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->getDistanceOfDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v3

    if-nez v3, :cond_16

    .line 110
    const/4 v1, 0x1

    .line 112
    :cond_16
    return v1
.end method

.method private checkOutgoing(Lcom/lge/cic/eden/db/type/EventInfo;)Z
    .registers 4
    .param p1, "eventInfo"    # Lcom/lge/cic/eden/db/type/EventInfo;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeAddress:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeAddress:Ljava/lang/String;

    iget-object v1, p1, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 159
    const/4 v0, 0x1

    .line 161
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private checkTravelEvent(Lcom/lge/cic/eden/db/type/EventInfo;)Z
    .registers 8
    .param p1, "eInfo"    # Lcom/lge/cic/eden/db/type/EventInfo;

    .prologue
    .line 92
    new-instance v1, Ljava/util/Date;

    iget-wide v4, p1, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 93
    .local v1, "startDate":Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    iget-wide v4, p1, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 95
    .local v0, "endDate":Ljava/util/Date;
    const/4 v2, 0x0

    .line 97
    .local v2, "travelEventFlag":Z
    invoke-static {v1, v0}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->getDistanceOfDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1d

    invoke-direct {p0, p1}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->checkDistanceBoundary(Lcom/lge/cic/eden/db/type/EventInfo;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 98
    const/4 v2, 0x1

    .line 100
    :cond_1d
    return v2
.end method

.method private static getDateToLong(Ljava/util/Date;)J
    .registers 5
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 83
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 84
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 85
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 86
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 87
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 88
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getDistanceOfDates(Ljava/util/Date;Ljava/util/Date;)I
    .registers 8
    .param p0, "startdate"    # Ljava/util/Date;
    .param p1, "enddate"    # Ljava/util/Date;

    .prologue
    .line 153
    invoke-static {p1}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->getDateToLong(Ljava/util/Date;)J

    move-result-wide v2

    invoke-static {p0}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->getDateToLong(Ljava/util/Date;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long v0, v2, v4

    .line 154
    .local v0, "dateGap":J
    long-to-int v2, v0

    return v2
.end method

.method private isHomeCountryChecked()Z
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeAddress:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->homeAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 166
    const/4 v0, 0x1

    .line 168
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public decideType(Lcom/lge/cic/eden/db/type/EventInfo;)I
    .registers 8
    .param p1, "eInfo"    # Lcom/lge/cic/eden/db/type/EventInfo;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 35
    sget-object v3, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "decideType()"

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->isHomeCountryChecked()Z

    move-result v0

    .line 39
    .local v0, "homeFlag":Z
    sget-object v3, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "homeFlag : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 40
    sget-object v3, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkOutgoing : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->checkOutgoing(Lcom/lge/cic/eden/db/type/EventInfo;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 41
    sget-object v3, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkTravelEvent : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->checkTravelEvent(Lcom/lge/cic/eden/db/type/EventInfo;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 42
    sget-object v3, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkGeoDataAddressDiff : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->checkGeoDataAddressDiff(Lcom/lge/cic/eden/db/type/EventInfo;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 43
    sget-object v3, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkOneDay : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->checkOneDay(Lcom/lge/cic/eden/db/type/EventInfo;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 45
    if-eqz v0, :cond_dc

    .line 46
    invoke-direct {p0, p1}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->checkOutgoing(Lcom/lge/cic/eden/db/type/EventInfo;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 47
    invoke-direct {p0, p1}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->checkTravelEvent(Lcom/lge/cic/eden/db/type/EventInfo;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 48
    sget-object v1, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "    OUTGOINGTRAVELEVENT"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 49
    const/4 v1, 0x4

    .line 75
    :goto_97
    return v1

    .line 50
    :cond_98
    invoke-direct {p0, p1}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->checkOneDay(Lcom/lge/cic/eden/db/type/EventInfo;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 51
    sget-object v1, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "    OUTGOINGPICNICEVENT"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 52
    const/4 v1, 0x5

    goto :goto_97

    .line 54
    :cond_a7
    sget-object v1, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "    OUTGOINGSTATICEVENT"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 55
    const/4 v1, 0x6

    goto :goto_97

    .line 58
    :cond_b0
    invoke-direct {p0, p1}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->checkTravelEvent(Lcom/lge/cic/eden/db/type/EventInfo;)Z

    move-result v3

    if-eqz v3, :cond_c5

    invoke-direct {p0, p1}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->checkGeoDataAddressDiff(Lcom/lge/cic/eden/db/type/EventInfo;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 59
    sget-object v1, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "    TRAVELEVENT"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 60
    const/4 v1, 0x1

    goto :goto_97

    .line 61
    :cond_c5
    invoke-direct {p0, p1}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->checkOneDay(Lcom/lge/cic/eden/db/type/EventInfo;)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 62
    sget-object v2, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "    PICNICEVENT"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    goto :goto_97

    .line 65
    :cond_d3
    sget-object v1, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "    STATICEVENT"

    invoke-virtual {v1, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    move v1, v2

    .line 66
    goto :goto_97

    .line 70
    :cond_dc
    invoke-direct {p0, p1}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->checkOneDay(Lcom/lge/cic/eden/db/type/EventInfo;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 71
    sget-object v2, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "    PICNICEVENT"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    goto :goto_97

    .line 74
    :cond_ea
    sget-object v1, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "    STATICEVENT"

    invoke-virtual {v1, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    move v1, v2

    .line 75
    goto :goto_97
.end method
