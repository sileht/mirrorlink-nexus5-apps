.class public Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;
.super Ljava/lang/Object;
.source "GeoCoderHelper.java"


# instance fields
.field private final geoCoder:Landroid/location/Geocoder;

.field private final logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-class v0, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 26
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "GeoCoderHelper is created"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  System Locale: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 29
    new-instance v0, Landroid/location/Geocoder;

    invoke-direct {v0, p1, p2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;->geoCoder:Landroid/location/Geocoder;

    .line 30
    return-void
.end method


# virtual methods
.method public getGeoData(DDI)Lcom/lge/cic/eden/db/type/GeoData;
    .registers 19
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxTry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v2, 0x0

    .line 36
    .local v2, "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const-wide/16 v10, 0x1

    .line 37
    .local v10, "delayTime":J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    move/from16 v0, p5

    if-lt v12, v0, :cond_3e

    .line 53
    :cond_8
    if-eqz v2, :cond_10

    :try_start_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_99

    .line 54
    :cond_10
    iget-object v3, p0, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "GeoData is null."

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 55
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_1d} :catch_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_1d} :catch_96

    .line 59
    :catch_1d
    move-exception v9

    .line 60
    .local v9, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 61
    new-instance v3, Ljava/lang/InterruptedException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Interrupt in geoGeoData(), "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 39
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_3e
    :try_start_3e
    iget-object v3, p0, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;->geoCoder:Landroid/location/Geocoder;

    const/4 v8, 0x1

    move-wide v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_47} :catch_72
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_47} :catch_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3e .. :try_end_47} :catch_96

    move-result-object v2

    .line 44
    :goto_48
    if-eqz v2, :cond_50

    :try_start_4a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_8

    .line 48
    :cond_50
    iget-object v3, p0, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "retry delay time : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v10

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 49
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 50
    const/4 v3, 0x1

    shl-long/2addr v10, v3

    .line 37
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 40
    :catch_72
    move-exception v9

    .line 41
    .local v9, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  getting geocode is failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", try = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_48

    .line 62
    .end local v9    # "e":Ljava/io/IOException;
    :catch_96
    move-exception v9

    .line 63
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :goto_98
    return-object v3

    .line 57
    :cond_99
    new-instance v4, Lcom/lge/cic/eden/db/type/GeoData;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    invoke-direct {v4, v3}, Lcom/lge/cic/eden/db/type/GeoData;-><init>(Landroid/location/Address;)V
    :try_end_a5
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_a5} :catch_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_a5} :catch_96

    move-object v3, v4

    goto :goto_98
.end method

.method public getGeoDataUsingList(Ljava/util/ArrayList;I)Lcom/lge/cic/eden/db/type/GeoData;
    .registers 15
    .param p2, "maxTry"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;I)",
            "Lcom/lge/cic/eden/db/type/GeoData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "locationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    const/4 v0, 0x0

    .line 71
    .local v0, "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const-wide/16 v8, 0x1

    .line 72
    .local v8, "delayTime":J
    const/4 v11, 0x0

    .line 73
    .local v11, "retryFlag":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    if-lt v10, p2, :cond_3d

    .line 111
    :cond_7
    if-eqz v0, :cond_f

    :try_start_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_19f

    .line 112
    :cond_f
    iget-object v1, p0, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "GeoData is null."

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 113
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_1c} :catch_1c

    .line 117
    :catch_1c
    move-exception v7

    .line 118
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 119
    new-instance v1, Ljava/lang/InterruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interrupt in geoGeoData(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_3d
    const/4 v11, 0x0

    .line 76
    :try_start_3e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v10, :cond_de

    .line 77
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_10b

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_10b

    .line 78
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_10b

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_10b

    .line 79
    iget-object v2, p0, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "request geocoding : "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;->geoCoder:Landroid/location/Geocoder;

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_dc} :catch_13e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3e .. :try_end_dc} :catch_165
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_dc} :catch_182
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_dc} :catch_1c

    move-result-object v0

    .line 81
    const/4 v11, 0x1

    .line 100
    :cond_de
    :goto_de
    if-eqz v0, :cond_e6

    :try_start_e0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_7

    .line 104
    :cond_e6
    if-eqz v11, :cond_107

    .line 105
    iget-object v1, p0, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "retry delay time : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 106
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_105
    .catch Ljava/lang/InterruptedException; {:try_start_e0 .. :try_end_105} :catch_1c

    .line 107
    const/4 v1, 0x1

    shl-long/2addr v8, v1

    .line 73
    :cond_107
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 83
    :cond_10b
    :try_start_10b
    iget-object v2, p0, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "wrong coordinate : "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V
    :try_end_13d
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_13d} :catch_13e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10b .. :try_end_13d} :catch_165
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_13d} :catch_182
    .catch Ljava/lang/InterruptedException; {:try_start_10b .. :try_end_13d} :catch_1c

    goto :goto_de

    .line 86
    :catch_13e
    move-exception v7

    .line 87
    .local v7, "e":Ljava/io/IOException;
    if-eqz v7, :cond_de

    .line 88
    :try_start_141
    iget-object v1, p0, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  getting geocode is failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", try = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_de

    .line 90
    .end local v7    # "e":Ljava/io/IOException;
    :catch_165
    move-exception v7

    .line 91
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    if-eqz v7, :cond_de

    .line 92
    iget-object v1, p0, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "latitude or longitude is out of bound : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_de

    .line 94
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_182
    move-exception v7

    .line 95
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_de

    .line 96
    iget-object v1, p0, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception is occured in getGeoDataUsingList : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_de

    .line 115
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_19f
    new-instance v2, Lcom/lge/cic/eden/db/type/GeoData;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-direct {v2, v1}, Lcom/lge/cic/eden/db/type/GeoData;-><init>(Landroid/location/Address;)V
    :try_end_1ab
    .catch Ljava/lang/InterruptedException; {:try_start_141 .. :try_end_1ab} :catch_1c

    return-object v2
.end method
