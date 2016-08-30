.class Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$6;
.super Ljava/lang/Object;
.source "EventClusteringManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;->makeClusterInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lge/cic/eden/clustering/types/ClusterInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;


# direct methods
.method constructor <init>(Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$6;->this$0:Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lge/cic/eden/clustering/types/ClusterInfo;Lcom/lge/cic/eden/clustering/types/ClusterInfo;)I
    .registers 7
    .param p1, "lhs"    # Lcom/lge/cic/eden/clustering/types/ClusterInfo;
    .param p2, "rhs"    # Lcom/lge/cic/eden/clustering/types/ClusterInfo;

    .prologue
    .line 792
    iget-object v0, p1, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->activityInfo:Lcom/lge/cic/eden/db/type/ActivityInfo;

    iget-wide v0, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startTime:J

    iget-object v2, p2, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->activityInfo:Lcom/lge/cic/eden/db/type/ActivityInfo;

    iget-wide v2, v2, Lcom/lge/cic/eden/db/type/ActivityInfo;->startTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    .line 793
    const/4 v0, -0x1

    .line 798
    :goto_d
    return v0

    .line 795
    :cond_e
    iget-object v0, p1, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->activityInfo:Lcom/lge/cic/eden/db/type/ActivityInfo;

    iget-wide v0, v0, Lcom/lge/cic/eden/db/type/ActivityInfo;->startTime:J

    iget-object v2, p2, Lcom/lge/cic/eden/clustering/types/ClusterInfo;->activityInfo:Lcom/lge/cic/eden/db/type/ActivityInfo;

    iget-wide v2, v2, Lcom/lge/cic/eden/db/type/ActivityInfo;->startTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    .line 796
    const/4 v0, 0x1

    goto :goto_d

    .line 798
    :cond_1c
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Lcom/lge/cic/eden/clustering/types/ClusterInfo;

    check-cast p2, Lcom/lge/cic/eden/clustering/types/ClusterInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$6;->compare(Lcom/lge/cic/eden/clustering/types/ClusterInfo;Lcom/lge/cic/eden/clustering/types/ClusterInfo;)I

    move-result v0

    return v0
.end method
