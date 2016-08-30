.class public Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;
.super Ljava/lang/Object;
.source "InternalMediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo$MakeMediaInfoType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public activityId:I

.field public dateTaken:J

.field public loc:Landroid/location/Location;

.field private final logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/lge/cic/eden/clustering/types/ClusterInfo;I)V
    .registers 11
    .param p1, "clusterInfo"    # Lcom/lge/cic/eden/clustering/types/ClusterInfo;
    .param p2, "type"    # I

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, -0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v1, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 24
    packed-switch p2, :pswitch_data_bc

    .line 54
    :goto_11
    return-void

    .line 27
    :pswitch_12
    :try_start_12
    iget-object v1, p1, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterEntry:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterEntry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v2, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    iput-wide v2, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->dateTaken:J

    .line 28
    iget-object v1, p1, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->endLoc:Landroid/location/Location;

    iput-object v1, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    .line 29
    iget-object v1, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    iget-object v2, p1, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->countryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 30
    iget-object v1, p1, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterEntry:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterEntry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v1, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    iput v1, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->activityId:I
    :try_end_45
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_45} :catch_46

    goto :goto_11

    .line 32
    :catch_46
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Landroid/location/Location;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    .line 34
    iput-wide v6, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->dateTaken:J

    .line 35
    iput v4, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->activityId:I

    .line 36
    iget-object v1, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IndexOutOfBoundsException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_11

    .line 41
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :pswitch_6d
    :try_start_6d
    iget-object v1, p1, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterEntry:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v2, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    iput-wide v2, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->dateTaken:J

    .line 42
    iget-object v1, p1, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->startLoc:Landroid/location/Location;

    iput-object v1, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    .line 43
    iget-object v1, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    iget-object v2, p1, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->countryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 44
    iget-object v1, p1, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterEntry:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v1, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    iput v1, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->activityId:I
    :try_end_92
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6d .. :try_end_92} :catch_94

    goto/16 :goto_11

    .line 46
    :catch_94
    move-exception v0

    .line 47
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Landroid/location/Location;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    .line 48
    iput-wide v6, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->dateTaken:J

    .line 49
    iput v4, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->activityId:I

    .line 50
    iget-object v1, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IndexOutOfBoundsException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 24
    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_12
        :pswitch_6d
    .end packed-switch
.end method

.method public constructor <init>(Lcom/lge/cic/eden/db/type/MediaInfo;)V
    .registers 6
    .param p1, "mInfo"    # Lcom/lge/cic/eden/db/type/MediaInfo;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 57
    iget-wide v0, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    iput-wide v0, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->dateTaken:J

    .line 58
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    .line 59
    iget-object v0, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 60
    iget-object v0, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->loc:Landroid/location/Location;

    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/cic/eden/clusteirng/logic/type/InternalMediaInfo;->activityId:I

    .line 62
    return-void
.end method
