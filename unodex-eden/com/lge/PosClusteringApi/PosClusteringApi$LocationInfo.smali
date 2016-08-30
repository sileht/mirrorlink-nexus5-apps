.class public Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;
.super Ljava/lang/Object;
.source "PosClusteringApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/PosClusteringApi/PosClusteringApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationInfo"
.end annotation


# instance fields
.field clusterId:I

.field location:Landroid/location/Location;

.field final synthetic this$0:Lcom/lge/PosClusteringApi/PosClusteringApi;


# direct methods
.method public constructor <init>(Lcom/lge/PosClusteringApi/PosClusteringApi;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;->this$0:Lcom/lge/PosClusteringApi/PosClusteringApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/lge/PosClusteringApi/PosClusteringApi;ILandroid/location/Location;)V
    .registers 4
    .param p2, "clusterId"    # I
    .param p3, "location"    # Landroid/location/Location;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;->this$0:Lcom/lge/PosClusteringApi/PosClusteringApi;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p2, p0, Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;->clusterId:I

    .line 74
    iput-object p3, p0, Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;->location:Landroid/location/Location;

    .line 75
    return-void
.end method


# virtual methods
.method public getClusterId()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;->clusterId:I

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;->location:Landroid/location/Location;

    return-object v0
.end method

.method public setClusterId(I)V
    .registers 2
    .param p1, "clusterId"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;->clusterId:I

    .line 88
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .registers 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;->location:Landroid/location/Location;

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;->clusterId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;->location:Landroid/location/Location;

    if-nez v0, :cond_20

    const-string v0, "null"

    .line 93
    :goto_17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    iget-object v2, p0, Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    iget-object v2, p0, Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method
