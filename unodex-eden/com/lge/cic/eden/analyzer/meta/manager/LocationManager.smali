.class public Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# instance fields
.field geoCoderHelper:Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;

.field private maxTry:I

.field systemLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;->geoCoderHelper:Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;

    .line 15
    iput-object v0, p0, Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;->systemLocale:Ljava/util/Locale;

    .line 19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;->systemLocale:Ljava/util/Locale;

    .line 20
    new-instance v0, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;

    iget-object v1, p0, Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;->systemLocale:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;->geoCoderHelper:Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;

    .line 22
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;->setMaxTry(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public getGeoData(DD)Lcom/lge/cic/eden/db/type/GeoData;
    .registers 12
    .param p1, "lat"    # D
    .param p3, "lon"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 27
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    :try_start_3
    invoke-static {v2, v3, v1}, Ljava/lang/Thread;->sleep(JI)V

    .line 28
    iget-object v1, p0, Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;->geoCoderHelper:Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;

    iget v6, p0, Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;->maxTry:I

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;->getGeoData(DDI)Lcom/lge/cic/eden/db/type/GeoData;
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_f} :catch_11

    move-result-object v1

    return-object v1

    .line 29
    :catch_11
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 31
    new-instance v1, Ljava/lang/InterruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interrupt in getGeoData(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getGeoDataUsingList(Ljava/util/ArrayList;)Lcom/lge/cic/eden/db/type/GeoData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;)",
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
    .line 37
    .local p1, "locationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    :try_start_3
    invoke-static {v2, v3, v1}, Ljava/lang/Thread;->sleep(JI)V

    .line 38
    iget-object v1, p0, Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;->geoCoderHelper:Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;

    iget v2, p0, Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;->maxTry:I

    invoke-virtual {v1, p1, v2}, Lcom/lge/cic/eden/clustering/utils/GeoCoderHelper;->getGeoDataUsingList(Ljava/util/ArrayList;I)Lcom/lge/cic/eden/db/type/GeoData;
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_d} :catch_f

    move-result-object v1

    return-object v1

    .line 39
    :catch_f
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 41
    new-instance v1, Ljava/lang/InterruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interrupt in getGeoData(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;->systemLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMaxTry()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;->maxTry:I

    return v0
.end method

.method public setMaxTry(I)V
    .registers 2
    .param p1, "maxTry"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/lge/cic/eden/analyzer/meta/manager/LocationManager;->maxTry:I

    .line 51
    return-void
.end method
