.class public Lcom/lge/cic/eden/clustering/types/FaceFrequencyInfo;
.super Ljava/lang/Object;
.source "FaceFrequencyInfo.java"


# instance fields
.field public faceFrequency:I

.field public faceGroupId:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 8
    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/lge/cic/eden/clustering/types/FaceFrequencyInfo;-><init>(JI)V

    .line 9
    return-void
.end method

.method public constructor <init>(JI)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "freq"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/lge/cic/eden/clustering/types/FaceFrequencyInfo;->faceGroupId:J

    .line 13
    iput p3, p0, Lcom/lge/cic/eden/clustering/types/FaceFrequencyInfo;->faceFrequency:I

    .line 14
    return-void
.end method
