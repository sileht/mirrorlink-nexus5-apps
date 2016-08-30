.class Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$3;
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

.field private final synthetic val$maxCountry:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;Landroid/util/Pair;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$3;->this$0:Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;

    iput-object p2, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$3;->val$maxCountry:Landroid/util/Pair;

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem(Lcom/lge/cic/eden/db/type/ActivityInfo;)Ljava/lang/String;
    .registers 4
    .param p1, "activityInfo"    # Lcom/lge/cic/eden/db/type/ActivityInfo;

    .prologue
    .line 708
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$3;->val$maxCountry:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoCountryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 709
    iget-object v0, p1, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoAdminArea:Ljava/lang/String;

    .line 711
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
