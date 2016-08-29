.class public Lcom/lge/mirrorlink/misc/PortraitRotator;
.super Lcom/lge/mirrorlink/misc/WindowRotator;
.source "PortraitRotator.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lge/mirrorlink/misc/WindowRotator;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/mirrorlink/misc/PortraitRotator;->mRotationDegree:I

    .line 17
    return-void
.end method
