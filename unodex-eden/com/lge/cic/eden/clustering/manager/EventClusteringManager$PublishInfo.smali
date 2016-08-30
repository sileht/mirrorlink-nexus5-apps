.class public Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;
.super Ljava/lang/Object;
.source "EventClusteringManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cic/eden/clustering/manager/EventClusteringManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PublishInfo"
.end annotation


# instance fields
.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public entry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->data:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->entry:Ljava/util/Map;

    .line 167
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/lge/cic/eden/clustering/manager/EventClusteringManager$PublishInfo;->entry:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 171
    :cond_10
    const/4 v0, 0x1

    .line 173
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
