.class public Lcom/lge/mirrorlink/misc/LandscapeRotator;
.super Lcom/lge/mirrorlink/misc/WindowRotator;
.source "LandscapeRotator.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lge/mirrorlink/misc/WindowRotator;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/mirrorlink/misc/LandscapeRotator;->mRotationDegree:I

    .line 17
    return-void
.end method
