.class public Lcom/lge/gles/GLESAnimator;
.super Ljava/lang/Object;
.source "GLESAnimator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "quilt GLESAnimator"


# instance fields
.field private mCallback:Lcom/lge/gles/GLESAnimatorCallback;

.field private mCurrent:Lcom/lge/gles/GLESVector;

.field private mDistance:Lcom/lge/gles/GLESVector;

.field private mDuration:J

.field private mEndOffset:J

.field private mFrom:Lcom/lge/gles/GLESVector;

.field private mFromValue:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsFinished:Z

.field private mIsSetValue:Z

.field private mIsStarted:Z

.field private mStartOffset:J

.field private mStartTick:J

.field private mTo:Lcom/lge/gles/GLESVector;

.field private mToValue:F

.field private mUseVector:Z


# direct methods
.method public constructor <init>(FFLcom/lge/gles/GLESAnimatorCallback;)V
    .registers 12
    .param p1, "from"    # F
    .param p2, "to"    # F
    .param p3, "callBack"    # Lcom/lge/gles/GLESAnimatorCallback;

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v4, p0, Lcom/lge/gles/GLESAnimator;->mIsFinished:Z

    .line 15
    iput-boolean v4, p0, Lcom/lge/gles/GLESAnimator;->mIsStarted:Z

    .line 16
    iput-boolean v5, p0, Lcom/lge/gles/GLESAnimator;->mUseVector:Z

    .line 17
    iput-boolean v4, p0, Lcom/lge/gles/GLESAnimator;->mIsSetValue:Z

    .line 19
    iput-wide v0, p0, Lcom/lge/gles/GLESAnimator;->mStartOffset:J

    .line 20
    iput-wide v6, p0, Lcom/lge/gles/GLESAnimator;->mEndOffset:J

    .line 21
    iput-wide v6, p0, Lcom/lge/gles/GLESAnimator;->mDuration:J

    .line 23
    iput-wide v0, p0, Lcom/lge/gles/GLESAnimator;->mStartTick:J

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/gles/GLESAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 85
    new-instance v0, Lcom/lge/gles/GLESVector;

    invoke-direct {v0, v3, v3, v3}, Lcom/lge/gles/GLESVector;-><init>(FFF)V

    iput-object v0, p0, Lcom/lge/gles/GLESAnimator;->mCurrent:Lcom/lge/gles/GLESVector;

    .line 86
    new-instance v0, Lcom/lge/gles/GLESVector;

    invoke-direct {v0, v3, v3, v3}, Lcom/lge/gles/GLESVector;-><init>(FFF)V

    iput-object v0, p0, Lcom/lge/gles/GLESAnimator;->mDistance:Lcom/lge/gles/GLESVector;

    .line 88
    iput p1, p0, Lcom/lge/gles/GLESAnimator;->mFromValue:F

    .line 89
    iput p2, p0, Lcom/lge/gles/GLESAnimator;->mToValue:F

    .line 90
    iget-object v0, p0, Lcom/lge/gles/GLESAnimator;->mDistance:Lcom/lge/gles/GLESVector;

    iget v1, p0, Lcom/lge/gles/GLESAnimator;->mToValue:F

    iget v2, p0, Lcom/lge/gles/GLESAnimator;->mFromValue:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3, v3}, Lcom/lge/gles/GLESVector;->set(FFF)V

    .line 91
    iput-boolean v5, p0, Lcom/lge/gles/GLESAnimator;->mIsSetValue:Z

    .line 92
    iput-boolean v4, p0, Lcom/lge/gles/GLESAnimator;->mUseVector:Z

    .line 94
    iput-object p3, p0, Lcom/lge/gles/GLESAnimator;->mCallback:Lcom/lge/gles/GLESAnimatorCallback;

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/lge/gles/GLESAnimatorCallback;)V
    .registers 10
    .param p1, "callBack"    # Lcom/lge/gles/GLESAnimatorCallback;

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v2, p0, Lcom/lge/gles/GLESAnimator;->mIsFinished:Z

    .line 15
    iput-boolean v2, p0, Lcom/lge/gles/GLESAnimator;->mIsStarted:Z

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/gles/GLESAnimator;->mUseVector:Z

    .line 17
    iput-boolean v2, p0, Lcom/lge/gles/GLESAnimator;->mIsSetValue:Z

    .line 19
    iput-wide v4, p0, Lcom/lge/gles/GLESAnimator;->mStartOffset:J

    .line 20
    iput-wide v6, p0, Lcom/lge/gles/GLESAnimator;->mEndOffset:J

    .line 21
    iput-wide v6, p0, Lcom/lge/gles/GLESAnimator;->mDuration:J

    .line 23
    iput-wide v4, p0, Lcom/lge/gles/GLESAnimator;->mStartTick:J

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/gles/GLESAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 44
    new-instance v0, Lcom/lge/gles/GLESVector;

    invoke-direct {v0, v1, v1, v1}, Lcom/lge/gles/GLESVector;-><init>(FFF)V

    iput-object v0, p0, Lcom/lge/gles/GLESAnimator;->mCurrent:Lcom/lge/gles/GLESVector;

    .line 45
    new-instance v0, Lcom/lge/gles/GLESVector;

    invoke-direct {v0, v1, v1, v1}, Lcom/lge/gles/GLESVector;-><init>(FFF)V

    iput-object v0, p0, Lcom/lge/gles/GLESAnimator;->mDistance:Lcom/lge/gles/GLESVector;

    .line 46
    iput-boolean v2, p0, Lcom/lge/gles/GLESAnimator;->mIsSetValue:Z

    .line 48
    iput-object p1, p0, Lcom/lge/gles/GLESAnimator;->mCallback:Lcom/lge/gles/GLESAnimatorCallback;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/lge/gles/GLESVector;Lcom/lge/gles/GLESVector;Lcom/lge/gles/GLESAnimatorCallback;)V
    .registers 12
    .param p1, "from"    # Lcom/lge/gles/GLESVector;
    .param p2, "to"    # Lcom/lge/gles/GLESVector;
    .param p3, "callBack"    # Lcom/lge/gles/GLESAnimatorCallback;

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v0, p0, Lcom/lge/gles/GLESAnimator;->mIsFinished:Z

    .line 15
    iput-boolean v0, p0, Lcom/lge/gles/GLESAnimator;->mIsStarted:Z

    .line 16
    iput-boolean v5, p0, Lcom/lge/gles/GLESAnimator;->mUseVector:Z

    .line 17
    iput-boolean v0, p0, Lcom/lge/gles/GLESAnimator;->mIsSetValue:Z

    .line 19
    iput-wide v2, p0, Lcom/lge/gles/GLESAnimator;->mStartOffset:J

    .line 20
    iput-wide v6, p0, Lcom/lge/gles/GLESAnimator;->mEndOffset:J

    .line 21
    iput-wide v6, p0, Lcom/lge/gles/GLESAnimator;->mDuration:J

    .line 23
    iput-wide v2, p0, Lcom/lge/gles/GLESAnimator;->mStartTick:J

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/gles/GLESAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 62
    new-instance v0, Lcom/lge/gles/GLESVector;

    invoke-direct {v0, v1, v1, v1}, Lcom/lge/gles/GLESVector;-><init>(FFF)V

    iput-object v0, p0, Lcom/lge/gles/GLESAnimator;->mCurrent:Lcom/lge/gles/GLESVector;

    .line 63
    new-instance v0, Lcom/lge/gles/GLESVector;

    invoke-direct {v0, v1, v1, v1}, Lcom/lge/gles/GLESVector;-><init>(FFF)V

    iput-object v0, p0, Lcom/lge/gles/GLESAnimator;->mDistance:Lcom/lge/gles/GLESVector;

    .line 65
    iput-object p1, p0, Lcom/lge/gles/GLESAnimator;->mFrom:Lcom/lge/gles/GLESVector;

    .line 66
    iput-object p2, p0, Lcom/lge/gles/GLESAnimator;->mTo:Lcom/lge/gles/GLESVector;

    .line 67
    iget-object v0, p0, Lcom/lge/gles/GLESAnimator;->mDistance:Lcom/lge/gles/GLESVector;

    iget-object v1, p0, Lcom/lge/gles/GLESAnimator;->mTo:Lcom/lge/gles/GLESVector;

    iget v1, v1, Lcom/lge/gles/GLESVector;->mX:F

    iget-object v2, p0, Lcom/lge/gles/GLESAnimator;->mFrom:Lcom/lge/gles/GLESVector;

    iget v2, v2, Lcom/lge/gles/GLESVector;->mX:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/lge/gles/GLESAnimator;->mTo:Lcom/lge/gles/GLESVector;

    iget v2, v2, Lcom/lge/gles/GLESVector;->mY:F

    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mFrom:Lcom/lge/gles/GLESVector;

    iget v3, v3, Lcom/lge/gles/GLESVector;->mY:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mTo:Lcom/lge/gles/GLESVector;

    iget v3, v3, Lcom/lge/gles/GLESVector;->mZ:F

    iget-object v4, p0, Lcom/lge/gles/GLESAnimator;->mFrom:Lcom/lge/gles/GLESVector;

    iget v4, v4, Lcom/lge/gles/GLESVector;->mZ:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/gles/GLESVector;->set(FFF)V

    .line 68
    iput-boolean v5, p0, Lcom/lge/gles/GLESAnimator;->mIsSetValue:Z

    .line 69
    iput-boolean v5, p0, Lcom/lge/gles/GLESAnimator;->mUseVector:Z

    .line 71
    iput-object p3, p0, Lcom/lge/gles/GLESAnimator;->mCallback:Lcom/lge/gles/GLESAnimatorCallback;

    .line 72
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/gles/GLESAnimator;->mIsFinished:Z

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/gles/GLESAnimator;->mIsStarted:Z

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/gles/GLESAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 203
    iget-object v0, p0, Lcom/lge/gles/GLESAnimator;->mCallback:Lcom/lge/gles/GLESAnimatorCallback;

    if-eqz v0, :cond_12

    .line 204
    iget-object v0, p0, Lcom/lge/gles/GLESAnimator;->mCallback:Lcom/lge/gles/GLESAnimatorCallback;

    invoke-interface {v0}, Lcom/lge/gles/GLESAnimatorCallback;->onCancel()V

    .line 206
    :cond_12
    return-void
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/gles/GLESAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 106
    return-void
.end method

.method public doAnimation()Z
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 267
    iget-boolean v7, p0, Lcom/lge/gles/GLESAnimator;->mIsStarted:Z

    if-nez v7, :cond_8

    .line 315
    :goto_7
    return v3

    .line 271
    :cond_8
    iget-boolean v7, p0, Lcom/lge/gles/GLESAnimator;->mIsFinished:Z

    if-eqz v7, :cond_18

    .line 272
    iget-object v7, p0, Lcom/lge/gles/GLESAnimator;->mCallback:Lcom/lge/gles/GLESAnimatorCallback;

    if-eqz v7, :cond_18

    .line 273
    iget-object v6, p0, Lcom/lge/gles/GLESAnimator;->mCallback:Lcom/lge/gles/GLESAnimatorCallback;

    invoke-interface {v6}, Lcom/lge/gles/GLESAnimatorCallback;->onFinished()V

    .line 274
    iput-boolean v3, p0, Lcom/lge/gles/GLESAnimator;->mIsStarted:Z

    goto :goto_7

    .line 280
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 282
    .local v0, "currentTick":J
    iget-wide v8, p0, Lcom/lge/gles/GLESAnimator;->mStartTick:J

    sub-long v8, v0, v8

    iget-wide v10, p0, Lcom/lge/gles/GLESAnimator;->mStartOffset:J

    cmp-long v3, v8, v10

    if-gez v3, :cond_28

    move v3, v6

    .line 283
    goto :goto_7

    .line 286
    :cond_28
    iget-wide v8, p0, Lcom/lge/gles/GLESAnimator;->mStartTick:J

    iget-wide v10, p0, Lcom/lge/gles/GLESAnimator;->mStartOffset:J

    add-long v4, v8, v10

    .line 288
    .local v4, "startTick":J
    sub-long v8, v0, v4

    long-to-float v3, v8

    iget-wide v8, p0, Lcom/lge/gles/GLESAnimator;->mDuration:J

    long-to-float v7, v8

    div-float v2, v3, v7

    .line 290
    .local v2, "normalizedDuration":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_40

    .line 291
    const/high16 v2, 0x3f800000    # 1.0f

    .line 292
    iput-boolean v6, p0, Lcom/lge/gles/GLESAnimator;->mIsFinished:Z

    .line 295
    :cond_40
    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v3, :cond_4b

    .line 296
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v3, p0, Lcom/lge/gles/GLESAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 299
    :cond_4b
    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 301
    iget-boolean v3, p0, Lcom/lge/gles/GLESAnimator;->mUseVector:Z

    if-eqz v3, :cond_8d

    .line 302
    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mCurrent:Lcom/lge/gles/GLESVector;

    iget-object v7, p0, Lcom/lge/gles/GLESAnimator;->mFrom:Lcom/lge/gles/GLESVector;

    iget v7, v7, Lcom/lge/gles/GLESVector;->mX:F

    iget-object v8, p0, Lcom/lge/gles/GLESAnimator;->mDistance:Lcom/lge/gles/GLESVector;

    iget v8, v8, Lcom/lge/gles/GLESVector;->mX:F

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    iput v7, v3, Lcom/lge/gles/GLESVector;->mX:F

    .line 303
    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mCurrent:Lcom/lge/gles/GLESVector;

    iget-object v7, p0, Lcom/lge/gles/GLESAnimator;->mFrom:Lcom/lge/gles/GLESVector;

    iget v7, v7, Lcom/lge/gles/GLESVector;->mY:F

    iget-object v8, p0, Lcom/lge/gles/GLESAnimator;->mDistance:Lcom/lge/gles/GLESVector;

    iget v8, v8, Lcom/lge/gles/GLESVector;->mY:F

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    iput v7, v3, Lcom/lge/gles/GLESVector;->mY:F

    .line 304
    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mCurrent:Lcom/lge/gles/GLESVector;

    iget-object v7, p0, Lcom/lge/gles/GLESAnimator;->mFrom:Lcom/lge/gles/GLESVector;

    iget v7, v7, Lcom/lge/gles/GLESVector;->mZ:F

    iget-object v8, p0, Lcom/lge/gles/GLESAnimator;->mDistance:Lcom/lge/gles/GLESVector;

    iget v8, v8, Lcom/lge/gles/GLESVector;->mZ:F

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    iput v7, v3, Lcom/lge/gles/GLESVector;->mZ:F

    .line 311
    :goto_7f
    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mCallback:Lcom/lge/gles/GLESAnimatorCallback;

    if-eqz v3, :cond_8a

    .line 312
    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mCallback:Lcom/lge/gles/GLESAnimatorCallback;

    iget-object v7, p0, Lcom/lge/gles/GLESAnimator;->mCurrent:Lcom/lge/gles/GLESVector;

    invoke-interface {v3, v7}, Lcom/lge/gles/GLESAnimatorCallback;->onAnimation(Lcom/lge/gles/GLESVector;)V

    :cond_8a
    move v3, v6

    .line 315
    goto/16 :goto_7

    .line 306
    :cond_8d
    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mCurrent:Lcom/lge/gles/GLESVector;

    iget v7, p0, Lcom/lge/gles/GLESAnimator;->mFromValue:F

    iget-object v8, p0, Lcom/lge/gles/GLESAnimator;->mDistance:Lcom/lge/gles/GLESVector;

    iget v8, v8, Lcom/lge/gles/GLESVector;->mX:F

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    iput v7, v3, Lcom/lge/gles/GLESVector;->mX:F

    .line 307
    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mCurrent:Lcom/lge/gles/GLESVector;

    iput v12, v3, Lcom/lge/gles/GLESVector;->mY:F

    .line 308
    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mCurrent:Lcom/lge/gles/GLESVector;

    iput v12, v3, Lcom/lge/gles/GLESVector;->mZ:F

    goto :goto_7f
.end method

.method public getCurrentValue()Lcom/lge/gles/GLESVector;
    .registers 12

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 223
    iget-boolean v6, p0, Lcom/lge/gles/GLESAnimator;->mIsFinished:Z

    if-eqz v6, :cond_7

    .line 258
    :cond_6
    :goto_6
    return-object v3

    .line 227
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 229
    .local v0, "currentTick":J
    iget-wide v6, p0, Lcom/lge/gles/GLESAnimator;->mStartTick:J

    sub-long v6, v0, v6

    iget-wide v8, p0, Lcom/lge/gles/GLESAnimator;->mStartOffset:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_6

    .line 233
    iget-wide v6, p0, Lcom/lge/gles/GLESAnimator;->mStartTick:J

    iget-wide v8, p0, Lcom/lge/gles/GLESAnimator;->mStartOffset:J

    add-long v4, v6, v8

    .line 235
    .local v4, "startTick":J
    sub-long v6, v0, v4

    long-to-float v3, v6

    iget-wide v6, p0, Lcom/lge/gles/GLESAnimator;->mDuration:J

    long-to-float v6, v6

    div-float v2, v3, v6

    .line 237
    .local v2, "normalizedDuration":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2e

    .line 238
    const/high16 v2, 0x3f800000    # 1.0f

    .line 239
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/gles/GLESAnimator;->mIsFinished:Z

    .line 242
    :cond_2e
    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v3, :cond_39

    .line 243
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v3, p0, Lcom/lge/gles/GLESAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 246
    :cond_39
    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 248
    iget-boolean v3, p0, Lcom/lge/gles/GLESAnimator;->mUseVector:Z

    if-eqz v3, :cond_70

    .line 249
    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mCurrent:Lcom/lge/gles/GLESVector;

    iget-object v6, p0, Lcom/lge/gles/GLESAnimator;->mFrom:Lcom/lge/gles/GLESVector;

    iget v6, v6, Lcom/lge/gles/GLESVector;->mX:F

    iget-object v7, p0, Lcom/lge/gles/GLESAnimator;->mDistance:Lcom/lge/gles/GLESVector;

    iget v7, v7, Lcom/lge/gles/GLESVector;->mX:F

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    iput v6, v3, Lcom/lge/gles/GLESVector;->mX:F

    .line 250
    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mCurrent:Lcom/lge/gles/GLESVector;

    iget-object v6, p0, Lcom/lge/gles/GLESAnimator;->mFrom:Lcom/lge/gles/GLESVector;

    iget v6, v6, Lcom/lge/gles/GLESVector;->mY:F

    iget-object v7, p0, Lcom/lge/gles/GLESAnimator;->mDistance:Lcom/lge/gles/GLESVector;

    iget v7, v7, Lcom/lge/gles/GLESVector;->mY:F

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    iput v6, v3, Lcom/lge/gles/GLESVector;->mY:F

    .line 251
    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mCurrent:Lcom/lge/gles/GLESVector;

    iget-object v6, p0, Lcom/lge/gles/GLESAnimator;->mFrom:Lcom/lge/gles/GLESVector;

    iget v6, v6, Lcom/lge/gles/GLESVector;->mZ:F

    iget-object v7, p0, Lcom/lge/gles/GLESAnimator;->mDistance:Lcom/lge/gles/GLESVector;

    iget v7, v7, Lcom/lge/gles/GLESVector;->mZ:F

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    iput v6, v3, Lcom/lge/gles/GLESVector;->mZ:F

    .line 258
    :goto_6d
    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mCurrent:Lcom/lge/gles/GLESVector;

    goto :goto_6

    .line 253
    :cond_70
    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mCurrent:Lcom/lge/gles/GLESVector;

    iget v6, p0, Lcom/lge/gles/GLESAnimator;->mFromValue:F

    iget-object v7, p0, Lcom/lge/gles/GLESAnimator;->mDistance:Lcom/lge/gles/GLESVector;

    iget v7, v7, Lcom/lge/gles/GLESVector;->mX:F

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    iput v6, v3, Lcom/lge/gles/GLESVector;->mX:F

    .line 254
    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mCurrent:Lcom/lge/gles/GLESVector;

    iput v10, v3, Lcom/lge/gles/GLESVector;->mY:F

    .line 255
    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mCurrent:Lcom/lge/gles/GLESVector;

    iput v10, v3, Lcom/lge/gles/GLESVector;->mZ:F

    goto :goto_6d
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/lge/gles/GLESAnimator;->mIsFinished:Z

    return v0
.end method

.method public setDuration(JJ)V
    .registers 8
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 117
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_21

    .line 118
    const-string v0, "quilt GLESAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDuration() start="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_20
    return-void

    .line 122
    :cond_21
    iput-wide p1, p0, Lcom/lge/gles/GLESAnimator;->mStartOffset:J

    .line 123
    iput-wide p3, p0, Lcom/lge/gles/GLESAnimator;->mEndOffset:J

    .line 124
    sub-long v0, p3, p1

    iput-wide v0, p0, Lcom/lge/gles/GLESAnimator;->mDuration:J

    goto :goto_20
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2
    .param p1, "intepolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/lge/gles/GLESAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 135
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/lge/gles/GLESAnimator;->mIsSetValue:Z

    if-nez v0, :cond_c

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "quilt GLESAnimatorstart() should use start(from, to)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/gles/GLESAnimator;->mIsFinished:Z

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/gles/GLESAnimator;->mIsStarted:Z

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/gles/GLESAnimator;->mStartTick:J

    .line 192
    return-void
.end method

.method public start(FF)V
    .registers 8
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 168
    iput-boolean v4, p0, Lcom/lge/gles/GLESAnimator;->mUseVector:Z

    .line 170
    iput p1, p0, Lcom/lge/gles/GLESAnimator;->mFromValue:F

    .line 171
    iput p2, p0, Lcom/lge/gles/GLESAnimator;->mToValue:F

    .line 173
    iget-object v0, p0, Lcom/lge/gles/GLESAnimator;->mDistance:Lcom/lge/gles/GLESVector;

    iget v1, p0, Lcom/lge/gles/GLESAnimator;->mToValue:F

    iget v2, p0, Lcom/lge/gles/GLESAnimator;->mFromValue:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3, v3}, Lcom/lge/gles/GLESVector;->set(FFF)V

    .line 175
    iput-boolean v4, p0, Lcom/lge/gles/GLESAnimator;->mIsFinished:Z

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/gles/GLESAnimator;->mIsStarted:Z

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/gles/GLESAnimator;->mStartTick:J

    .line 179
    return-void
.end method

.method public start(Lcom/lge/gles/GLESVector;Lcom/lge/gles/GLESVector;)V
    .registers 9
    .param p1, "from"    # Lcom/lge/gles/GLESVector;
    .param p2, "to"    # Lcom/lge/gles/GLESVector;

    .prologue
    const/4 v5, 0x1

    .line 146
    iput-boolean v5, p0, Lcom/lge/gles/GLESAnimator;->mUseVector:Z

    .line 148
    iput-object p1, p0, Lcom/lge/gles/GLESAnimator;->mFrom:Lcom/lge/gles/GLESVector;

    .line 149
    iput-object p2, p0, Lcom/lge/gles/GLESAnimator;->mTo:Lcom/lge/gles/GLESVector;

    .line 151
    iget-object v0, p0, Lcom/lge/gles/GLESAnimator;->mDistance:Lcom/lge/gles/GLESVector;

    iget-object v1, p0, Lcom/lge/gles/GLESAnimator;->mTo:Lcom/lge/gles/GLESVector;

    iget v1, v1, Lcom/lge/gles/GLESVector;->mX:F

    iget-object v2, p0, Lcom/lge/gles/GLESAnimator;->mFrom:Lcom/lge/gles/GLESVector;

    iget v2, v2, Lcom/lge/gles/GLESVector;->mX:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/lge/gles/GLESAnimator;->mTo:Lcom/lge/gles/GLESVector;

    iget v2, v2, Lcom/lge/gles/GLESVector;->mY:F

    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mFrom:Lcom/lge/gles/GLESVector;

    iget v3, v3, Lcom/lge/gles/GLESVector;->mY:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/lge/gles/GLESAnimator;->mTo:Lcom/lge/gles/GLESVector;

    iget v3, v3, Lcom/lge/gles/GLESVector;->mZ:F

    iget-object v4, p0, Lcom/lge/gles/GLESAnimator;->mFrom:Lcom/lge/gles/GLESVector;

    iget v4, v4, Lcom/lge/gles/GLESVector;->mZ:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/gles/GLESVector;->set(FFF)V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/gles/GLESAnimator;->mIsFinished:Z

    .line 154
    iput-boolean v5, p0, Lcom/lge/gles/GLESAnimator;->mIsStarted:Z

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/gles/GLESAnimator;->mStartTick:J

    .line 157
    return-void
.end method
