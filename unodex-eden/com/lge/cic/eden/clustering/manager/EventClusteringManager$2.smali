.class Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$2;
.super Ljava/lang/Object;
.source "EventClusteringManager.java"

# interfaces
.implements Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$ActivityMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->calculateGeoData(Ljava/util/ArrayList;)Lcom/lge/cic/eden/db/type/GeoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;


# direct methods
.method constructor <init>(Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$2;->this$0:Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem(Lcom/lge/cic/eden/db/type/ActivityInfo;)Ljava/lang/String;
    .registers 3
    .param p1, "activityInfo"    # Lcom/lge/cic/eden/db/type/ActivityInfo;

    .prologue
    .line 700
    iget-object v0, p1, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoCountryName:Ljava/lang/String;

    return-object v0
.end method
