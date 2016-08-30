.class public Lcom/lge/cic/eden/clustering/types/ClusterInfo;
.super Ljava/lang/Object;
.source "ClusterInfo.java"


# instance fields
.field public activityInfo:Lcom/lge/cic/eden/db/type/ActivityInfo;

.field public clusterEntry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public clusterId:I

.field public clusterItem:Lcom/lge/cic/eden/db/type/MediaInfo;

.field public countryName:Ljava/lang/String;

.field public endLoc:Landroid/location/Location;

.field public startLoc:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterEntry:Ljava/util/ArrayList;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterId:I

    .line 22
    iput-object v1, p0, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterItem:Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 23
    iput-object v1, p0, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->countryName:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->startLoc:Landroid/location/Location;

    .line 25
    iput-object v1, p0, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->endLoc:Landroid/location/Location;

    .line 26
    return-void
.end method

.method public constructor <init>(ILcom/lge/cic/eden/db/type/MediaInfo;)V
    .registers 3
    .param p1, "cid"    # I
    .param p2, "clusterItem"    # Lcom/lge/cic/eden/db/type/MediaInfo;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterItem:Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 35
    iput p1, p0, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterId:I

    .line 36
    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .registers 4
    .param p1, "cid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "resultLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterEntry:Ljava/util/ArrayList;

    .line 30
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterEntry:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    iput p1, p0, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->clusterId:I

    .line 32
    return-void
.end method
