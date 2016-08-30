.class public Lcom/lge/cic/eden/clustering/manager/EventContainer;
.super Ljava/lang/Object;
.source "EventContainer.java"


# instance fields
.field public activityList:Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;

.field public eventInfo:Lcom/lge/cic/eden/db/type/EventInfo;


# direct methods
.method public constructor <init>(Lcom/lge/cic/eden/db/type/EventInfo;Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;)V
    .registers 3
    .param p1, "eventInfo"    # Lcom/lge/cic/eden/db/type/EventInfo;
    .param p2, "activityList"    # Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/lge/cic/eden/clustering/manager/EventContainer;->eventInfo:Lcom/lge/cic/eden/db/type/EventInfo;

    .line 12
    iput-object p2, p0, Lcom/lge/cic/eden/clustering/manager/EventContainer;->activityList:Lcom/lge/cic/eden/clustering/manager/TimeSortedActivityList;

    .line 13
    return-void
.end method
