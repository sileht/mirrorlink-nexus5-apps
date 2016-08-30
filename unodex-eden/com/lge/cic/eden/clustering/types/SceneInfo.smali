.class public Lcom/lge/cic/eden/clustering/types/SceneInfo;
.super Ljava/lang/Object;
.source "SceneInfo.java"


# instance fields
.field public activityId:I

.field public eventId:I

.field public eventType:I

.field public foodCount:I

.field public landscapeCount:I

.field public otherCount:I

.field public peopleCount:I

.field public petCount:I

.field public storyId:Ljava/lang/String;

.field public textCount:I

.field public totalCount:I


# direct methods
.method public constructor <init>()V
    .registers 13

    .prologue
    const/4 v1, -0x1

    .line 19
    const-string v10, ""

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, v1

    move v11, v1

    invoke-direct/range {v0 .. v11}, Lcom/lge/cic/eden/clustering/types/SceneInfo;-><init>(IIIIIIIIILjava/lang/String;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(IIIIIIIIILjava/lang/String;I)V
    .registers 12
    .param p1, "actId"    # I
    .param p2, "eventId"    # I
    .param p3, "peopleCount"    # I
    .param p4, "foodCount"    # I
    .param p5, "textCount"    # I
    .param p6, "landscapeCount"    # I
    .param p7, "petCount"    # I
    .param p8, "otherCount"    # I
    .param p9, "totalCount"    # I
    .param p10, "storyId"    # Ljava/lang/String;
    .param p11, "eventType"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/lge/cic/eden/clustering/types/SceneInfo;->activityId:I

    .line 25
    iput p2, p0, Lcom/lge/cic/eden/clustering/types/SceneInfo;->eventId:I

    .line 26
    iput p3, p0, Lcom/lge/cic/eden/clustering/types/SceneInfo;->peopleCount:I

    .line 27
    iput p4, p0, Lcom/lge/cic/eden/clustering/types/SceneInfo;->foodCount:I

    .line 28
    iput p5, p0, Lcom/lge/cic/eden/clustering/types/SceneInfo;->textCount:I

    .line 29
    iput p6, p0, Lcom/lge/cic/eden/clustering/types/SceneInfo;->landscapeCount:I

    .line 30
    iput p7, p0, Lcom/lge/cic/eden/clustering/types/SceneInfo;->petCount:I

    .line 31
    iput p8, p0, Lcom/lge/cic/eden/clustering/types/SceneInfo;->otherCount:I

    .line 32
    iput p9, p0, Lcom/lge/cic/eden/clustering/types/SceneInfo;->totalCount:I

    .line 33
    iput-object p10, p0, Lcom/lge/cic/eden/clustering/types/SceneInfo;->storyId:Ljava/lang/String;

    .line 34
    iput p11, p0, Lcom/lge/cic/eden/clustering/types/SceneInfo;->eventType:I

    .line 35
    return-void
.end method
