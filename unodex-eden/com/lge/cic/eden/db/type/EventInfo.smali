.class public Lcom/lge/cic/eden/db/type/EventInfo;
.super Lcom/lge/cic/eden/db/type/ColumnInfo;
.source "EventInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/eden/db/type/EventInfo$EventState;,
        Lcom/lge/cic/eden/db/type/EventInfo$EventType;,
        Lcom/lge/cic/eden/db/type/EventInfo$EventViewType;
    }
.end annotation


# instance fields
.field public deleteFlag:I

.field public endLatitude:D

.field public endLongitude:D

.field public endTime:J

.field public eventId:I

.field public eventState:I

.field public eventTitle:Ljava/lang/String;

.field public eventType:I

.field public geoAdminArea:Ljava/lang/String;

.field public geoCountryName:Ljava/lang/String;

.field public geoLocality:Ljava/lang/String;

.field public geoThoroughfare:Ljava/lang/String;

.field public locale:Ljava/lang/String;

.field logger:Lcom/lge/cic/eden/utils/Logger;

.field public startLatitude:D

.field public startLongitude:D

.field public startTime:J

.field public viewType:I

.field public visibility:I


# direct methods
.method public constructor <init>()V
    .registers 15

    .prologue
    const-wide/16 v4, -0x1

    const/4 v8, 0x0

    const/4 v1, -0x1

    .line 63
    const-string v3, ""

    const/16 v11, 0x63

    const/4 v13, 0x1

    move-object v0, p0

    move v2, v1

    move-wide v6, v4

    move-object v9, v8

    move-object v10, v8

    move v12, v1

    invoke-direct/range {v0 .. v13}, Lcom/lge/cic/eden/db/type/EventInfo;-><init>(IILjava/lang/String;JJLandroid/location/Location;Landroid/location/Location;Lcom/lge/cic/eden/db/type/GeoData;III)V

    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .registers 16
    .param p1, "eventId"    # I

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    const/4 v8, 0x0

    .line 59
    const-string v3, ""

    const/16 v11, 0x63

    const/4 v13, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v6, v4

    move-object v9, v8

    move-object v10, v8

    move v12, v2

    invoke-direct/range {v0 .. v13}, Lcom/lge/cic/eden/db/type/EventInfo;-><init>(IILjava/lang/String;JJLandroid/location/Location;Landroid/location/Location;Lcom/lge/cic/eden/db/type/GeoData;III)V

    .line 60
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;JJDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 28
    .param p1, "eventId"    # I
    .param p2, "eventType"    # I
    .param p3, "eventTitle"    # Ljava/lang/String;
    .param p4, "startTime"    # J
    .param p6, "endTime"    # J
    .param p8, "startLatitude"    # D
    .param p10, "startLongitude"    # D
    .param p12, "endLatitude"    # D
    .param p14, "endLongitude"    # D
    .param p16, "locale"    # Ljava/lang/String;
    .param p17, "geoCountryName"    # Ljava/lang/String;
    .param p18, "geoAdminArea"    # Ljava/lang/String;
    .param p19, "geoLocality"    # Ljava/lang/String;
    .param p20, "geoThoroughfare"    # Ljava/lang/String;
    .param p21, "visibility"    # I
    .param p22, "eventState"    # I
    .param p23, "viewType"    # I

    .prologue
    .line 111
    invoke-static {}, Lcom/lge/cic/eden/db/table/EventInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/cic/eden/db/type/ColumnInfo;-><init>(Lcom/lge/cic/eden/db/table/TableInfo;)V

    .line 13
    const-class v2, Lcom/lge/cic/eden/db/type/EventInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/cic/eden/db/type/EventInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 113
    iput p1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    .line 114
    iput p2, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventType:I

    .line 115
    iput-object p3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    .line 116
    iput-wide p4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    .line 117
    iput-wide p6, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    .line 119
    iput-wide p8, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startLatitude:D

    .line 120
    iput-wide p10, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startLongitude:D

    .line 121
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endLatitude:D

    .line 122
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endLongitude:D

    .line 124
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->locale:Ljava/lang/String;

    .line 125
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    .line 126
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    .line 127
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    .line 128
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoThoroughfare:Ljava/lang/String;

    .line 130
    move/from16 v0, p21

    iput v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    .line 131
    move/from16 v0, p22

    iput v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventState:I

    .line 133
    move/from16 v0, p23

    iput v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->viewType:I

    .line 134
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/cic/eden/db/type/EventInfo;->deleteFlag:I

    .line 135
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;JJDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 29
    .param p1, "eventId"    # I
    .param p2, "eventType"    # I
    .param p3, "eventTitle"    # Ljava/lang/String;
    .param p4, "startTime"    # J
    .param p6, "endTime"    # J
    .param p8, "startLatitude"    # D
    .param p10, "startLongitude"    # D
    .param p12, "endLatitude"    # D
    .param p14, "endLongitude"    # D
    .param p16, "locale"    # Ljava/lang/String;
    .param p17, "geoCountryName"    # Ljava/lang/String;
    .param p18, "geoAdminArea"    # Ljava/lang/String;
    .param p19, "geoLocality"    # Ljava/lang/String;
    .param p20, "geoThoroughfare"    # Ljava/lang/String;
    .param p21, "visibility"    # I
    .param p22, "eventState"    # I
    .param p23, "viewType"    # I
    .param p24, "deleteFlag"    # I

    .prologue
    .line 141
    invoke-static {}, Lcom/lge/cic/eden/db/table/EventInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/cic/eden/db/type/ColumnInfo;-><init>(Lcom/lge/cic/eden/db/table/TableInfo;)V

    .line 13
    const-class v2, Lcom/lge/cic/eden/db/type/EventInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/cic/eden/db/type/EventInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 143
    iput p1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    .line 144
    iput p2, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventType:I

    .line 145
    iput-object p3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    .line 146
    iput-wide p4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    .line 147
    iput-wide p6, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    .line 149
    iput-wide p8, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startLatitude:D

    .line 150
    iput-wide p10, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startLongitude:D

    .line 151
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endLatitude:D

    .line 152
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endLongitude:D

    .line 154
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->locale:Ljava/lang/String;

    .line 155
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    .line 156
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    .line 157
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    .line 158
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoThoroughfare:Ljava/lang/String;

    .line 160
    move/from16 v0, p21

    iput v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    .line 161
    move/from16 v0, p22

    iput v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventState:I

    .line 163
    move/from16 v0, p23

    iput v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->viewType:I

    .line 165
    move/from16 v0, p24

    iput v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->deleteFlag:I

    .line 166
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;JJLandroid/location/Location;Landroid/location/Location;Lcom/lge/cic/eden/db/type/GeoData;III)V
    .registers 16
    .param p1, "eventId"    # I
    .param p2, "eventType"    # I
    .param p3, "eventTitle"    # Ljava/lang/String;
    .param p4, "startTime"    # J
    .param p6, "endTime"    # J
    .param p8, "startlocation"    # Landroid/location/Location;
    .param p9, "endLocation"    # Landroid/location/Location;
    .param p10, "geoData"    # Lcom/lge/cic/eden/db/type/GeoData;
    .param p11, "visibility"    # I
    .param p12, "eventState"    # I
    .param p13, "viewType"    # I

    .prologue
    .line 68
    invoke-static {}, Lcom/lge/cic/eden/db/table/EventInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/cic/eden/db/type/ColumnInfo;-><init>(Lcom/lge/cic/eden/db/table/TableInfo;)V

    .line 13
    const-class v0, Lcom/lge/cic/eden/db/type/EventInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 70
    iput p1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    .line 71
    iput p2, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventType:I

    .line 72
    iput-object p3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    .line 73
    iput-wide p4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    .line 74
    iput-wide p6, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    .line 76
    if-eqz p8, :cond_59

    .line 77
    invoke-virtual {p8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startLatitude:D

    .line 78
    invoke-virtual {p8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startLongitude:D

    .line 84
    :goto_2b
    if-eqz p9, :cond_68

    .line 85
    invoke-virtual {p9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endLatitude:D

    .line 86
    invoke-virtual {p9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endLongitude:D

    .line 92
    :goto_39
    if-eqz p10, :cond_4f

    .line 93
    iget-object v0, p10, Lcom/lge/cic/eden/db/type/GeoData;->geoLocale:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->locale:Ljava/lang/String;

    .line 94
    iget-object v0, p10, Lcom/lge/cic/eden/db/type/GeoData;->countryName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    .line 95
    iget-object v0, p10, Lcom/lge/cic/eden/db/type/GeoData;->adminArea:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    .line 96
    iget-object v0, p10, Lcom/lge/cic/eden/db/type/GeoData;->locality:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    .line 97
    iget-object v0, p10, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfare:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoThoroughfare:Ljava/lang/String;

    .line 100
    :cond_4f
    iput p11, p0, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    .line 101
    iput p12, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventState:I

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->deleteFlag:I

    .line 104
    iput p13, p0, Lcom/lge/cic/eden/db/type/EventInfo;->viewType:I

    .line 105
    return-void

    .line 80
    :cond_59
    const-wide v0, -0x3f70c80000000000L    # -999.0

    iput-wide v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startLatitude:D

    .line 81
    const-wide v0, -0x3f70c80000000000L    # -999.0

    iput-wide v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startLongitude:D

    goto :goto_2b

    .line 88
    :cond_68
    const-wide v0, -0x3f70c80000000000L    # -999.0

    iput-wide v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endLatitude:D

    .line 89
    const-wide v0, -0x3f70c80000000000L    # -999.0

    iput-wide v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endLongitude:D

    goto :goto_39
.end method

.method public static makeMergedEventInfo(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/lge/cic/eden/db/type/EventInfo;
    .registers 13
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/EventInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lge/cic/eden/db/type/EventInfo;"
        }
    .end annotation

    .prologue
    .local p0, "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    const/4 v10, 0x0

    .line 412
    invoke-static {}, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->getEdenPropertyInfo()Lcom/lge/cic/eden/db/type/EdenPropertyInfo;

    move-result-object v3

    .line 413
    .local v3, "propertyInfo":Lcom/lge/cic/eden/db/type/EdenPropertyInfo;
    const/4 v2, 0x0

    .line 415
    .local v2, "nextEventId":I
    iget v4, v3, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->maxEventId:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2b

    .line 416
    const/4 v2, 0x1

    .line 421
    :goto_c
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/cic/eden/db/type/EventInfo;

    invoke-virtual {v4}, Lcom/lge/cic/eden/db/type/EventInfo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/cic/eden/db/type/EventInfo;

    .line 422
    .local v1, "mergedEventInfo":Lcom/lge/cic/eden/db/type/EventInfo;
    iput-object p1, v1, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    .line 423
    iput v10, v1, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    .line 424
    iput v2, v1, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    .line 426
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_22
    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_30

    .line 445
    iput v10, v1, Lcom/lge/cic/eden/db/type/EventInfo;->deleteFlag:I

    .line 447
    return-object v1

    .line 418
    .end local v1    # "mergedEventInfo":Lcom/lge/cic/eden/db/type/EventInfo;
    :cond_2b
    iget v4, v3, Lcom/lge/cic/eden/db/type/EdenPropertyInfo;->maxEventId:I

    add-int/lit8 v2, v4, 0x1

    goto :goto_c

    .line 426
    .restart local v1    # "mergedEventInfo":Lcom/lge/cic/eden/db/type/EventInfo;
    :cond_30
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/EventInfo;

    .line 427
    .local v0, "eInfo":Lcom/lge/cic/eden/db/type/EventInfo;
    iget-wide v6, v1, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_66

    .line 428
    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    iput-wide v6, v1, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    .line 429
    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/EventInfo;->startLatitude:D

    iput-wide v6, v1, Lcom/lge/cic/eden/db/type/EventInfo;->startLatitude:D

    .line 430
    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/EventInfo;->startLongitude:D

    iput-wide v6, v1, Lcom/lge/cic/eden/db/type/EventInfo;->startLongitude:D

    .line 431
    iget v5, v0, Lcom/lge/cic/eden/db/type/EventInfo;->eventState:I

    iput v5, v1, Lcom/lge/cic/eden/db/type/EventInfo;->eventState:I

    .line 432
    iget v5, v0, Lcom/lge/cic/eden/db/type/EventInfo;->eventType:I

    iput v5, v1, Lcom/lge/cic/eden/db/type/EventInfo;->eventType:I

    .line 433
    iget-object v5, v0, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    iput-object v5, v1, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    .line 434
    iget-object v5, v0, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    iput-object v5, v1, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    .line 435
    iget-object v5, v0, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    iput-object v5, v1, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    .line 436
    iget-object v5, v0, Lcom/lge/cic/eden/db/type/EventInfo;->geoThoroughfare:Ljava/lang/String;

    iput-object v5, v1, Lcom/lge/cic/eden/db/type/EventInfo;->geoThoroughfare:Ljava/lang/String;

    .line 437
    iget-object v5, v0, Lcom/lge/cic/eden/db/type/EventInfo;->locale:Ljava/lang/String;

    iput-object v5, v1, Lcom/lge/cic/eden/db/type/EventInfo;->locale:Ljava/lang/String;

    .line 439
    :cond_66
    iget-wide v6, v1, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_22

    .line 440
    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    iput-wide v6, v1, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    .line 441
    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/EventInfo;->endLatitude:D

    iput-wide v6, v1, Lcom/lge/cic/eden/db/type/EventInfo;->endLatitude:D

    .line 442
    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/EventInfo;->endLongitude:D

    iput-wide v6, v1, Lcom/lge/cic/eden/db/type/EventInfo;->endLongitude:D

    goto :goto_22
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .registers 28

    .prologue
    .line 170
    new-instance v2, Lcom/lge/cic/eden/db/type/EventInfo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/cic/eden/db/type/EventInfo;->eventType:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    .line 171
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/lge/cic/eden/db/type/EventInfo;->startLatitude:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/lge/cic/eden/db/type/EventInfo;->startLongitude:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lge/cic/eden/db/type/EventInfo;->endLatitude:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/cic/eden/db/type/EventInfo;->endLongitude:D

    move-wide/from16 v16, v0

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/db/type/EventInfo;->locale:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/db/type/EventInfo;->geoThoroughfare:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/cic/eden/db/type/EventInfo;->eventState:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/cic/eden/db/type/EventInfo;->viewType:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/cic/eden/db/type/EventInfo;->deleteFlag:I

    move/from16 v26, v0

    .line 170
    invoke-direct/range {v2 .. v26}, Lcom/lge/cic/eden/db/type/EventInfo;-><init>(IILjava/lang/String;JJDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 487
    if-ne p0, p1, :cond_5

    .line 579
    :cond_4
    :goto_4
    return v1

    .line 490
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 491
    goto :goto_4

    .line 493
    :cond_9
    instance-of v3, p1, Lcom/lge/cic/eden/db/type/EventInfo;

    if-nez v3, :cond_f

    move v1, v2

    .line 494
    goto :goto_4

    :cond_f
    move-object v0, p1

    .line 496
    check-cast v0, Lcom/lge/cic/eden/db/type/EventInfo;

    .line 497
    .local v0, "other":Lcom/lge/cic/eden/db/type/EventInfo;
    iget v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->deleteFlag:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/EventInfo;->deleteFlag:I

    if-eq v3, v4, :cond_1a

    move v1, v2

    .line 498
    goto :goto_4

    .line 500
    :cond_1a
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endLatitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 501
    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/EventInfo;->endLatitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 500
    cmp-long v3, v4, v6

    if-eqz v3, :cond_2c

    move v1, v2

    .line 502
    goto :goto_4

    .line 504
    :cond_2c
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 505
    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/EventInfo;->endLongitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 504
    cmp-long v3, v4, v6

    if-eqz v3, :cond_3e

    move v1, v2

    .line 506
    goto :goto_4

    .line 508
    :cond_3e
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_48

    move v1, v2

    .line 509
    goto :goto_4

    .line 511
    :cond_48
    iget v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    if-eq v3, v4, :cond_50

    move v1, v2

    .line 512
    goto :goto_4

    .line 514
    :cond_50
    iget v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventState:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/EventInfo;->eventState:I

    if-eq v3, v4, :cond_58

    move v1, v2

    .line 515
    goto :goto_4

    .line 517
    :cond_58
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    if-nez v3, :cond_62

    .line 518
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    if-eqz v3, :cond_6e

    move v1, v2

    .line 519
    goto :goto_4

    .line 521
    :cond_62
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    move v1, v2

    .line 522
    goto :goto_4

    .line 524
    :cond_6e
    iget v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventType:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/EventInfo;->eventType:I

    if-eq v3, v4, :cond_76

    move v1, v2

    .line 525
    goto :goto_4

    .line 527
    :cond_76
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    if-nez v3, :cond_80

    .line 528
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    if-eqz v3, :cond_8d

    move v1, v2

    .line 529
    goto :goto_4

    .line 531
    :cond_80
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8d

    move v1, v2

    .line 532
    goto/16 :goto_4

    .line 534
    :cond_8d
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    if-nez v3, :cond_98

    .line 535
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    if-eqz v3, :cond_a5

    move v1, v2

    .line 536
    goto/16 :goto_4

    .line 538
    :cond_98
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a5

    move v1, v2

    .line 539
    goto/16 :goto_4

    .line 541
    :cond_a5
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    if-nez v3, :cond_b0

    .line 542
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    if-eqz v3, :cond_bd

    move v1, v2

    .line 543
    goto/16 :goto_4

    .line 545
    :cond_b0
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bd

    move v1, v2

    .line 546
    goto/16 :goto_4

    .line 548
    :cond_bd
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoThoroughfare:Ljava/lang/String;

    if-nez v3, :cond_c8

    .line 549
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/EventInfo;->geoThoroughfare:Ljava/lang/String;

    if-eqz v3, :cond_d5

    move v1, v2

    .line 550
    goto/16 :goto_4

    .line 552
    :cond_c8
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoThoroughfare:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/EventInfo;->geoThoroughfare:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d5

    move v1, v2

    .line 553
    goto/16 :goto_4

    .line 555
    :cond_d5
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->locale:Ljava/lang/String;

    if-nez v3, :cond_e0

    .line 556
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/EventInfo;->locale:Ljava/lang/String;

    if-eqz v3, :cond_ed

    move v1, v2

    .line 557
    goto/16 :goto_4

    .line 559
    :cond_e0
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->locale:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/EventInfo;->locale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ed

    move v1, v2

    .line 560
    goto/16 :goto_4

    .line 562
    :cond_ed
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startLatitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 563
    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/EventInfo;->startLatitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 562
    cmp-long v3, v4, v6

    if-eqz v3, :cond_100

    move v1, v2

    .line 564
    goto/16 :goto_4

    .line 566
    :cond_100
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 567
    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/EventInfo;->startLongitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 566
    cmp-long v3, v4, v6

    if-eqz v3, :cond_113

    move v1, v2

    .line 568
    goto/16 :goto_4

    .line 570
    :cond_113
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_11e

    move v1, v2

    .line 571
    goto/16 :goto_4

    .line 573
    :cond_11e
    iget v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->viewType:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/EventInfo;->viewType:I

    if-eq v3, v4, :cond_127

    move v1, v2

    .line 574
    goto/16 :goto_4

    .line 576
    :cond_127
    iget v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 577
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
    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public varargs getContentValues([Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 10
    .param p1, "columnList"    # [Ljava/lang/String;

    .prologue
    .line 317
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 320
    .local v2, "contentValues":Landroid/content/ContentValues;
    array-length v4, p1

    if-nez v4, :cond_154

    .line 321
    invoke-virtual {p0}, Lcom/lge/cic/eden/db/type/EventInfo;->getAllColumns()[Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "columns":[Ljava/lang/String;
    :goto_c
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 327
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v5, v1

    const/4 v4, 0x0

    :goto_13
    if-lt v4, v5, :cond_157

    .line 331
    const-string v4, "EVENT_ID"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 332
    const-string v4, "EVENT_ID"

    iget v5, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    :cond_28
    const-string v4, "EVENT_TYPE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 336
    const-string v4, "EVENT_TYPE"

    iget v5, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    :cond_3b
    const-string v4, "EVENT_TITLE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 340
    const-string v4, "EVENT_TITLE"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_4a
    const-string v4, "E_START_TIME"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 344
    const-string v4, "E_START_TIME"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 347
    :cond_5d
    const-string v4, "E_END_TIME"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 348
    const-string v4, "E_END_TIME"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 351
    :cond_70
    const-string v4, "E_START_LATITUDE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 352
    const-string v4, "E_START_LATITUDE"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startLatitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 355
    :cond_83
    const-string v4, "E_START_LONGITUDE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_96

    .line 356
    const-string v4, "E_START_LONGITUDE"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startLongitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 359
    :cond_96
    const-string v4, "E_END_LATITUDE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 360
    const-string v4, "E_END_LATITUDE"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endLatitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 363
    :cond_a9
    const-string v4, "E_END_LONGITUDE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 364
    const-string v4, "E_END_LONGITUDE"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endLongitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 367
    :cond_bc
    const-string v4, "E_LOCALE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cb

    .line 368
    const-string v4, "E_LOCALE"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/EventInfo;->locale:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_cb
    const-string v4, "E_GEOCOUNTRYNAME"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_da

    .line 372
    const-string v4, "E_GEOCOUNTRYNAME"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_da
    const-string v4, "E_GEOADMINAREA"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    .line 376
    const-string v4, "E_GEOADMINAREA"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_e9
    const-string v4, "E_GEOLOCALITY"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f8

    .line 380
    const-string v4, "E_GEOLOCALITY"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_f8
    const-string v4, "E_GEOTHOROUGHFARE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_107

    .line 384
    const-string v4, "E_GEOTHOROUGHFARE"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoThoroughfare:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_107
    const-string v4, "E_VISIBILITY"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11a

    .line 388
    const-string v4, "E_VISIBILITY"

    iget v5, p0, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    :cond_11a
    const-string v4, "E_STATE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12d

    .line 392
    const-string v4, "E_STATE"

    iget v5, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventState:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    :cond_12d
    const-string v4, "E_VIEW_TYPE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_140

    .line 395
    const-string v4, "E_VIEW_TYPE"

    iget v5, p0, Lcom/lge/cic/eden/db/type/EventInfo;->viewType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    :cond_140
    const-string v4, "E_DELETE_FLAG"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_153

    .line 398
    const-string v4, "E_DELETE_FLAG"

    iget v5, p0, Lcom/lge/cic/eden/db/type/EventInfo;->deleteFlag:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    :cond_153
    return-object v2

    .line 323
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_154
    move-object v1, p1

    .restart local v1    # "columns":[Ljava/lang/String;
    goto/16 :goto_c

    .line 327
    .restart local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_157
    aget-object v0, v1, v4

    .line 328
    .local v0, "columnName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 327
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13
.end method

.method public getPrimaryValues()Landroid/content/ContentValues;
    .registers 4

    .prologue
    .line 406
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 407
    .local v0, "primaryValues":Landroid/content/ContentValues;
    const-string v1, "EVENT_ID"

    iget v2, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 408
    return-object v0
.end method

.method public hashCode()I
    .registers 12

    .prologue
    const/16 v10, 0x20

    const/4 v5, 0x0

    .line 452
    const/16 v0, 0x1f

    .line 453
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 454
    .local v1, "result":I
    iget v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->deleteFlag:I

    add-int/lit8 v1, v4, 0x1f

    .line 456
    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endLatitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 457
    .local v2, "temp":J
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v10

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int v1, v4, v6

    .line 458
    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endLongitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 459
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v10

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int v1, v4, v6

    .line 460
    mul-int/lit8 v4, v1, 0x1f

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    iget-wide v8, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v4, v6

    .line 461
    mul-int/lit8 v4, v1, 0x1f

    iget v6, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    add-int v1, v4, v6

    .line 462
    mul-int/lit8 v4, v1, 0x1f

    iget v6, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventState:I

    add-int v1, v4, v6

    .line 463
    mul-int/lit8 v6, v1, 0x1f

    .line 464
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    if-nez v4, :cond_ac

    move v4, v5

    .line 463
    :goto_44
    add-int v1, v6, v4

    .line 465
    mul-int/lit8 v4, v1, 0x1f

    iget v6, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventType:I

    add-int v1, v4, v6

    .line 466
    mul-int/lit8 v6, v1, 0x1f

    .line 467
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    if-nez v4, :cond_b3

    move v4, v5

    .line 466
    :goto_53
    add-int v1, v6, v4

    .line 468
    mul-int/lit8 v6, v1, 0x1f

    .line 469
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    if-nez v4, :cond_ba

    move v4, v5

    .line 468
    :goto_5c
    add-int v1, v6, v4

    .line 470
    mul-int/lit8 v6, v1, 0x1f

    .line 471
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    if-nez v4, :cond_c1

    move v4, v5

    .line 470
    :goto_65
    add-int v1, v6, v4

    .line 472
    mul-int/lit8 v6, v1, 0x1f

    .line 473
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoThoroughfare:Ljava/lang/String;

    if-nez v4, :cond_c8

    move v4, v5

    .line 472
    :goto_6e
    add-int v1, v6, v4

    .line 474
    mul-int/lit8 v4, v1, 0x1f

    iget-object v6, p0, Lcom/lge/cic/eden/db/type/EventInfo;->locale:Ljava/lang/String;

    if-nez v6, :cond_cf

    :goto_76
    add-int v1, v4, v5

    .line 475
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startLatitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 476
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v10

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v1, v4, v5

    .line 477
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 478
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v10

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v1, v4, v5

    .line 479
    mul-int/lit8 v4, v1, 0x1f

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    iget-wide v8, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v5, v6

    add-int v1, v4, v5

    .line 480
    mul-int/lit8 v4, v1, 0x1f

    iget v5, p0, Lcom/lge/cic/eden/db/type/EventInfo;->viewType:I

    add-int v1, v4, v5

    .line 481
    mul-int/lit8 v4, v1, 0x1f

    iget v5, p0, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    add-int v1, v4, v5

    .line 482
    return v1

    .line 464
    :cond_ac
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_44

    .line 467
    :cond_b3
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_53

    .line 469
    :cond_ba
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_5c

    .line 471
    :cond_c1
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_65

    .line 473
    :cond_c8
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoThoroughfare:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_6e

    .line 474
    :cond_cf
    iget-object v5, p0, Lcom/lge/cic/eden/db/type/EventInfo;->locale:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    goto :goto_76
.end method

.method public setContentValues(Landroid/content/ContentValues;)V
    .registers 6
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 184
    const-string v1, "EVENT_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 185
    const-string v1, "EVENT_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 186
    .local v0, "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_169

    .line 187
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    .line 193
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_16
    :goto_16
    const-string v1, "EVENT_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 194
    const-string v1, "EVENT_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 195
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_172

    .line 196
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventType:I

    .line 202
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_2c
    :goto_2c
    const-string v1, "EVENT_TITLE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 203
    const-string v1, "EVENT_TITLE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    .line 206
    :cond_3c
    const-string v1, "E_START_TIME"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 207
    const-string v1, "E_START_TIME"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 208
    .local v0, "temp":Ljava/lang/Long;
    if-eqz v0, :cond_17b

    .line 209
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    .line 215
    .end local v0    # "temp":Ljava/lang/Long;
    :cond_52
    :goto_52
    const-string v1, "E_END_TIME"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 216
    const-string v1, "E_END_TIME"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 217
    .restart local v0    # "temp":Ljava/lang/Long;
    if-eqz v0, :cond_184

    .line 218
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    .line 224
    .end local v0    # "temp":Ljava/lang/Long;
    :cond_68
    :goto_68
    const-string v1, "E_START_LATITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 225
    const-string v1, "E_START_LATITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 226
    .local v0, "temp":Ljava/lang/Double;
    if-eqz v0, :cond_18d

    .line 227
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startLatitude:D

    .line 233
    .end local v0    # "temp":Ljava/lang/Double;
    :cond_7e
    :goto_7e
    const-string v1, "E_START_LONGITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 234
    const-string v1, "E_START_LONGITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 235
    .restart local v0    # "temp":Ljava/lang/Double;
    if-eqz v0, :cond_196

    .line 236
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startLongitude:D

    .line 242
    .end local v0    # "temp":Ljava/lang/Double;
    :cond_94
    :goto_94
    const-string v1, "E_END_LATITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 243
    const-string v1, "E_END_LATITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 244
    .restart local v0    # "temp":Ljava/lang/Double;
    if-eqz v0, :cond_19f

    .line 245
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endLatitude:D

    .line 251
    .end local v0    # "temp":Ljava/lang/Double;
    :cond_aa
    :goto_aa
    const-string v1, "E_END_LONGITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 252
    const-string v1, "E_END_LONGITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 253
    .restart local v0    # "temp":Ljava/lang/Double;
    if-eqz v0, :cond_1a8

    .line 254
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endLongitude:D

    .line 260
    .end local v0    # "temp":Ljava/lang/Double;
    :cond_c0
    :goto_c0
    const-string v1, "E_LOCALE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 261
    const-string v1, "E_LOCALE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->locale:Ljava/lang/String;

    .line 264
    :cond_d0
    const-string v1, "E_GEOCOUNTRYNAME"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 265
    const-string v1, "E_GEOCOUNTRYNAME"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    .line 268
    :cond_e0
    const-string v1, "E_GEOADMINAREA"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 269
    const-string v1, "E_GEOADMINAREA"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    .line 272
    :cond_f0
    const-string v1, "E_GEOLOCALITY"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_100

    .line 273
    const-string v1, "E_GEOLOCALITY"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    .line 276
    :cond_100
    const-string v1, "E_GEOTHOROUGHFARE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_110

    .line 277
    const-string v1, "E_GEOTHOROUGHFARE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoThoroughfare:Ljava/lang/String;

    .line 280
    :cond_110
    const-string v1, "E_VISIBILITY"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_126

    .line 281
    const-string v1, "E_VISIBILITY"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 282
    .local v0, "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_1b1

    .line 283
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    .line 289
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_126
    :goto_126
    const-string v1, "E_STATE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13c

    .line 290
    const-string v1, "E_STATE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 291
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_1ba

    .line 292
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventState:I

    .line 297
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_13c
    :goto_13c
    const-string v1, "E_VIEW_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_152

    .line 298
    const-string v1, "E_VIEW_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 299
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_1c3

    .line 300
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->viewType:I

    .line 305
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_152
    :goto_152
    const-string v1, "E_DELETE_FLAG"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_168

    .line 306
    const-string v1, "E_DELETE_FLAG"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 307
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_1cb

    .line 308
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->deleteFlag:I

    .line 313
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_168
    :goto_168
    return-void

    .line 189
    .restart local v0    # "temp":Ljava/lang/Integer;
    :cond_169
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "EVENT_ID is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 198
    :cond_172
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "EVENT_TYPE is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 211
    .local v0, "temp":Ljava/lang/Long;
    :cond_17b
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "START_TIME is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_52

    .line 220
    :cond_184
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "END_TIME is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_68

    .line 229
    .local v0, "temp":Ljava/lang/Double;
    :cond_18d
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "START_LATITUDE is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_7e

    .line 238
    :cond_196
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "START_LONGITUDE is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_94

    .line 247
    :cond_19f
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "END_LATITUDE is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_aa

    .line 256
    :cond_1a8
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "END_LONGITUDE is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_c0

    .line 285
    .local v0, "temp":Ljava/lang/Integer;
    :cond_1b1
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "VISIBILITY is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_126

    .line 294
    :cond_1ba
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "EVENT_STATE is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_13c

    .line 302
    :cond_1c3
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "VIEW_TYPE is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_152

    .line 310
    :cond_1cb
    iget-object v1, p0, Lcom/lge/cic/eden/db/type/EventInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "DELETE_FLAG is null"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_168
.end method
