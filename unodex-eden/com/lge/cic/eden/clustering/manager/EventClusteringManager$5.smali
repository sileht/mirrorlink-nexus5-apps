.class Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$5;
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

.field private final synthetic val$maxAdminArea:Landroid/util/Pair;

.field private final synthetic val$maxCountry:Landroid/util/Pair;

.field private final synthetic val$maxLocality:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;Landroid/util/Pair;Landroid/util/Pair;Landroid/util/Pair;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$5;->this$0:Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;

    iput-object p2, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$5;->val$maxCountry:Landroid/util/Pair;

    iput-object p3, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$5;->val$maxAdminArea:Landroid/util/Pair;

    iput-object p4, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$5;->val$maxLocality:Landroid/util/Pair;

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem(Lcom/lge/cic/eden/db/type/ActivityInfo;)Ljava/lang/String;
    .registers 4
    .param p1, "activityInfo"    # Lcom/lge/cic/eden/db/type/ActivityInfo;

    .prologue
    .line 731
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$5;->val$maxCountry:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoCountryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 732
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$5;->val$maxAdminArea:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoAdminArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 733
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$5;->val$maxLocality:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoLocality:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 734
    iget-object v0, p1, Lcom/lge/cic/eden/db/type/ActivityInfo;->geoThoroughfare:Ljava/lang/String;

    .line 736
    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method
