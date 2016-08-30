.class public Lcom/lge/gles/GLESParticle;
.super Ljava/lang/Object;
.source "GLESParticle.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "quilt GLESParticle"


# instance fields
.field public mAlpha:F

.field public mDurationInMS:J

.field public mIndex:I

.field public mIsSetDefaultValue:Z

.field public mPosX:F

.field public mPosY:F

.field public mPosZ:F

.field public mSize:F

.field public mVecX:F

.field public mVecY:F

.field public mVelocityX:F

.field public mVelocityY:F


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v2, p0, Lcom/lge/gles/GLESParticle;->mIndex:I

    .line 15
    iput v0, p0, Lcom/lge/gles/GLESParticle;->mPosX:F

    .line 16
    iput v0, p0, Lcom/lge/gles/GLESParticle;->mPosY:F

    .line 17
    iput v0, p0, Lcom/lge/gles/GLESParticle;->mPosZ:F

    .line 19
    iput v0, p0, Lcom/lge/gles/GLESParticle;->mSize:F

    .line 21
    iput v0, p0, Lcom/lge/gles/GLESParticle;->mVecX:F

    .line 22
    iput v0, p0, Lcom/lge/gles/GLESParticle;->mVecY:F

    .line 24
    iput v0, p0, Lcom/lge/gles/GLESParticle;->mVelocityX:F

    .line 25
    iput v0, p0, Lcom/lge/gles/GLESParticle;->mVelocityY:F

    .line 27
    iput v0, p0, Lcom/lge/gles/GLESParticle;->mAlpha:F

    .line 29
    iput-boolean v2, p0, Lcom/lge/gles/GLESParticle;->mIsSetDefaultValue:Z

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/gles/GLESParticle;->mDurationInMS:J

    .line 40
    iput p1, p0, Lcom/lge/gles/GLESParticle;->mIndex:I

    .line 42
    iput-boolean v2, p0, Lcom/lge/gles/GLESParticle;->mIsSetDefaultValue:Z

    .line 43
    return-void
.end method

.method public constructor <init>(ILcom/lge/gles/GLESParticle;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "defaultParticle"    # Lcom/lge/gles/GLESParticle;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v1, p0, Lcom/lge/gles/GLESParticle;->mIndex:I

    .line 15
    iput v0, p0, Lcom/lge/gles/GLESParticle;->mPosX:F

    .line 16
    iput v0, p0, Lcom/lge/gles/GLESParticle;->mPosY:F

    .line 17
    iput v0, p0, Lcom/lge/gles/GLESParticle;->mPosZ:F

    .line 19
    iput v0, p0, Lcom/lge/gles/GLESParticle;->mSize:F

    .line 21
    iput v0, p0, Lcom/lge/gles/GLESParticle;->mVecX:F

    .line 22
    iput v0, p0, Lcom/lge/gles/GLESParticle;->mVecY:F

    .line 24
    iput v0, p0, Lcom/lge/gles/GLESParticle;->mVelocityX:F

    .line 25
    iput v0, p0, Lcom/lge/gles/GLESParticle;->mVelocityY:F

    .line 27
    iput v0, p0, Lcom/lge/gles/GLESParticle;->mAlpha:F

    .line 29
    iput-boolean v1, p0, Lcom/lge/gles/GLESParticle;->mIsSetDefaultValue:Z

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/gles/GLESParticle;->mDurationInMS:J

    .line 54
    iput p1, p0, Lcom/lge/gles/GLESParticle;->mIndex:I

    .line 56
    invoke-virtual {p0, p2}, Lcom/lge/gles/GLESParticle;->copy(Lcom/lge/gles/GLESParticle;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/gles/GLESParticle;->mIsSetDefaultValue:Z

    .line 59
    return-void
.end method


# virtual methods
.method public copy(Lcom/lge/gles/GLESParticle;)V
    .registers 3
    .param p1, "particle"    # Lcom/lge/gles/GLESParticle;

    .prologue
    .line 128
    iget v0, p1, Lcom/lge/gles/GLESParticle;->mPosX:F

    iput v0, p0, Lcom/lge/gles/GLESParticle;->mPosX:F

    .line 129
    iget v0, p1, Lcom/lge/gles/GLESParticle;->mPosY:F

    iput v0, p0, Lcom/lge/gles/GLESParticle;->mPosY:F

    .line 130
    iget v0, p1, Lcom/lge/gles/GLESParticle;->mPosZ:F

    iput v0, p0, Lcom/lge/gles/GLESParticle;->mPosZ:F

    .line 132
    iget v0, p1, Lcom/lge/gles/GLESParticle;->mSize:F

    iput v0, p0, Lcom/lge/gles/GLESParticle;->mSize:F

    .line 134
    iget v0, p1, Lcom/lge/gles/GLESParticle;->mVecX:F

    iput v0, p0, Lcom/lge/gles/GLESParticle;->mVecX:F

    .line 135
    iget v0, p1, Lcom/lge/gles/GLESParticle;->mVecY:F

    iput v0, p0, Lcom/lge/gles/GLESParticle;->mVecY:F

    .line 137
    iget v0, p1, Lcom/lge/gles/GLESParticle;->mVelocityX:F

    iput v0, p0, Lcom/lge/gles/GLESParticle;->mVelocityX:F

    .line 138
    iget v0, p1, Lcom/lge/gles/GLESParticle;->mVelocityY:F

    iput v0, p0, Lcom/lge/gles/GLESParticle;->mVelocityY:F

    .line 140
    iget v0, p1, Lcom/lge/gles/GLESParticle;->mAlpha:F

    iput v0, p0, Lcom/lge/gles/GLESParticle;->mAlpha:F

    .line 141
    return-void
.end method

.method public setAlpha(F)V
    .registers 2
    .param p1, "alpha"    # F

    .prologue
    .line 118
    iput p1, p0, Lcom/lge/gles/GLESParticle;->mAlpha:F

    .line 119
    return-void
.end method

.method public setDirection(FF)V
    .registers 3
    .param p1, "vecX"    # F
    .param p2, "vecY"    # F

    .prologue
    .line 96
    iput p1, p0, Lcom/lge/gles/GLESParticle;->mVecX:F

    .line 97
    iput p2, p0, Lcom/lge/gles/GLESParticle;->mVecY:F

    .line 98
    return-void
.end method

.method public setPosition(FFF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 82
    iput p1, p0, Lcom/lge/gles/GLESParticle;->mPosX:F

    .line 83
    iput p2, p0, Lcom/lge/gles/GLESParticle;->mPosY:F

    .line 84
    iput p3, p0, Lcom/lge/gles/GLESParticle;->mPosZ:F

    .line 85
    return-void
.end method

.method public setSize(F)V
    .registers 2
    .param p1, "size"    # F

    .prologue
    .line 68
    iput p1, p0, Lcom/lge/gles/GLESParticle;->mSize:F

    .line 69
    return-void
.end method

.method public setVelocity(FF)V
    .registers 3
    .param p1, "velX"    # F
    .param p2, "velY"    # F

    .prologue
    .line 107
    iput p1, p0, Lcom/lge/gles/GLESParticle;->mVelocityX:F

    .line 108
    iput p2, p0, Lcom/lge/gles/GLESParticle;->mVelocityY:F

    .line 109
    return-void
.end method
