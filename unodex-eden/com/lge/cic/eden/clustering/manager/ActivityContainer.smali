.class public Lcom/lge/cic/eden/clustering/manager/ActivityContainer;
.super Ljava/lang/Object;
.source "ActivityContainer.java"


# instance fields
.field public activityInfo:Lcom/lge/cic/eden/db/type/ActivityInfo;

.field public mediaList:Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;


# direct methods
.method public constructor <init>(Lcom/lge/cic/eden/db/type/ActivityInfo;Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;)V
    .registers 3
    .param p1, "activityInfo"    # Lcom/lge/cic/eden/db/type/ActivityInfo;
    .param p2, "mediaList"    # Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/lge/cic/eden/clustering/manager/ActivityContainer;->activityInfo:Lcom/lge/cic/eden/db/type/ActivityInfo;

    .line 11
    iput-object p2, p0, Lcom/lge/cic/eden/clustering/manager/ActivityContainer;->mediaList:Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;

    .line 12
    return-void
.end method
