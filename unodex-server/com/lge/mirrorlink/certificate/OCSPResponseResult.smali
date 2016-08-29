.class public Lcom/lge/mirrorlink/certificate/OCSPResponseResult;
.super Ljava/lang/Object;
.source "OCSPResponseResult.java"


# instance fields
.field baseGrace:I

.field driveGrace:I

.field queryPeriod:I

.field thisUpdate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->queryPeriod:I

    .line 9
    iput v0, p0, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->driveGrace:I

    .line 10
    iput v0, p0, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->baseGrace:I

    .line 5
    return-void
.end method
