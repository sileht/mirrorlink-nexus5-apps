.class public abstract Lcom/lge/gles/GLESParticleSet;
.super Ljava/lang/Object;
.source "GLESParticleSet.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "quilt GLESParticleSet"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mHeight:F

.field protected mHeightInSpace:F

.field private mMinParticleDuration:J

.field private mMinParticleSize:F

.field private mNumOfParticle:I

.field private mParticleDurationDeviation:J

.field protected mParticleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/gles/GLESParticle;",
            ">;"
        }
    .end annotation
.end field

.field private mParticleSizeDeviation:F

.field protected mRandom:Ljava/util/Random;

.field private mShader:Lcom/lge/gles/GLESShader;

.field private mTexture:Lcom/lge/gles/GLESTexture;

.field protected mWidth:F

.field protected mWidthInSpace:F


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/lge/gles/GLESTexture;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "count"    # I
    .param p3, "texture"    # Lcom/lge/gles/GLESTexture;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/gles/GLESParticleSet;->mParticleList:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/lge/gles/GLESParticleSet;->mRandom:Ljava/util/Random;

    .line 23
    iput v1, p0, Lcom/lge/gles/GLESParticleSet;->mWidth:F

    .line 24
    iput v1, p0, Lcom/lge/gles/GLESParticleSet;->mHeight:F

    .line 25
    iput v1, p0, Lcom/lge/gles/GLESParticleSet;->mWidthInSpace:F

    .line 26
    iput v1, p0, Lcom/lge/gles/GLESParticleSet;->mHeightInSpace:F

    .line 28
    iput-object v2, p0, Lcom/lge/gles/GLESParticleSet;->mContext:Landroid/content/Context;

    .line 29
    iput-object v2, p0, Lcom/lge/gles/GLESParticleSet;->mTexture:Lcom/lge/gles/GLESTexture;

    .line 30
    iput-object v2, p0, Lcom/lge/gles/GLESParticleSet;->mShader:Lcom/lge/gles/GLESShader;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/gles/GLESParticleSet;->mNumOfParticle:I

    .line 33
    iput v1, p0, Lcom/lge/gles/GLESParticleSet;->mMinParticleSize:F

    .line 34
    iput v1, p0, Lcom/lge/gles/GLESParticleSet;->mParticleSizeDeviation:F

    .line 36
    iput-wide v4, p0, Lcom/lge/gles/GLESParticleSet;->mMinParticleDuration:J

    .line 37
    iput-wide v4, p0, Lcom/lge/gles/GLESParticleSet;->mParticleDurationDeviation:J

    .line 50
    iput-object p1, p0, Lcom/lge/gles/GLESParticleSet;->mContext:Landroid/content/Context;

    .line 51
    iput p2, p0, Lcom/lge/gles/GLESParticleSet;->mNumOfParticle:I

    .line 52
    iput-object p3, p0, Lcom/lge/gles/GLESParticleSet;->mTexture:Lcom/lge/gles/GLESTexture;

    .line 53
    return-void
.end method


# virtual methods
.method public addParticle(Lcom/lge/gles/GLESParticle;)V
    .registers 3
    .param p1, "particle"    # Lcom/lge/gles/GLESParticle;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lge/gles/GLESParticleSet;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lge/gles/GLESParticleSet;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    return-void
.end method

.method public create(FF)V
    .registers 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 144
    iput p1, p0, Lcom/lge/gles/GLESParticleSet;->mWidth:F

    .line 145
    iput p2, p0, Lcom/lge/gles/GLESParticleSet;->mHeight:F

    .line 146
    invoke-static {p1}, Lcom/lge/gles/GLESUtils;->convertScreenToSpace(F)F

    move-result v0

    iput v0, p0, Lcom/lge/gles/GLESParticleSet;->mWidthInSpace:F

    .line 147
    invoke-static {p2}, Lcom/lge/gles/GLESUtils;->convertScreenToSpace(F)F

    move-result v0

    iput v0, p0, Lcom/lge/gles/GLESParticleSet;->mHeightInSpace:F

    .line 149
    invoke-virtual {p0}, Lcom/lge/gles/GLESParticleSet;->onCreate()V

    .line 150
    return-void
.end method

.method protected disableAlphaBlending()V
    .registers 1

    .prologue
    .line 365
    invoke-static {}, Lcom/lge/gles/GLESTransform;->disableAlphaBlending()V

    .line 366
    return-void
.end method

.method public draw()V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lge/gles/GLESParticleSet;->mShader:Lcom/lge/gles/GLESShader;

    invoke-virtual {v0}, Lcom/lge/gles/GLESShader;->useProgram()V

    .line 176
    invoke-virtual {p0}, Lcom/lge/gles/GLESParticleSet;->onDraw()V

    .line 177
    return-void
.end method

.method protected enableAlphaBlending(IIIIZ)V
    .registers 6
    .param p1, "srcColor"    # I
    .param p2, "dstColor"    # I
    .param p3, "srcAlpha"    # I
    .param p4, "dstAlpha"    # I
    .param p5, "disableDepthTest"    # Z

    .prologue
    .line 357
    invoke-static {p1, p2, p3, p4, p5}, Lcom/lge/gles/GLESTransform;->enableAlphaBlending(IIIIZ)V

    .line 358
    return-void
.end method

.method protected enableAlphaBlending(Z)V
    .registers 2
    .param p1, "disableDepthTest"    # Z

    .prologue
    .line 337
    invoke-static {p1}, Lcom/lge/gles/GLESTransform;->enableAlphaBlending(Z)V

    .line 338
    return-void
.end method

.method public getNumOfParticle()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lcom/lge/gles/GLESParticleSet;->mNumOfParticle:I

    return v0
.end method

.method protected getParticleDuration()J
    .registers 7

    .prologue
    .line 322
    iget-wide v0, p0, Lcom/lge/gles/GLESParticleSet;->mParticleDurationDeviation:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 323
    iget-wide v0, p0, Lcom/lge/gles/GLESParticleSet;->mMinParticleDuration:J

    .line 325
    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/lge/gles/GLESParticleSet;->mMinParticleDuration:J

    iget-object v2, p0, Lcom/lge/gles/GLESParticleSet;->mRandom:Ljava/util/Random;

    iget-wide v4, p0, Lcom/lge/gles/GLESParticleSet;->mParticleDurationDeviation:J

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_a
.end method

.method public getParticleList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/gles/GLESParticle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lge/gles/GLESParticleSet;->mParticleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getParticleSize()F
    .registers 4

    .prologue
    .line 304
    iget v0, p0, Lcom/lge/gles/GLESParticleSet;->mMinParticleSize:F

    iget-object v1, p0, Lcom/lge/gles/GLESParticleSet;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget v2, p0, Lcom/lge/gles/GLESParticleSet;->mParticleSizeDeviation:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method protected getParticleSize(F)F
    .registers 8
    .param p1, "factor"    # F

    .prologue
    .line 317
    iget-object v1, p0, Lcom/lge/gles/GLESParticleSet;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    float-to-double v2, v1

    float-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 318
    .local v0, "random":F
    iget v1, p0, Lcom/lge/gles/GLESParticleSet;->mMinParticleSize:F

    iget v2, p0, Lcom/lge/gles/GLESParticleSet;->mParticleSizeDeviation:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method public getShader()Lcom/lge/gles/GLESShader;
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lge/gles/GLESParticleSet;->mShader:Lcom/lge/gles/GLESShader;

    if-nez v0, :cond_b

    .line 85
    const-string v0, "quilt GLESParticleSet"

    const-string v1, "getShader() mShader is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_b
    iget-object v0, p0, Lcom/lge/gles/GLESParticleSet;->mShader:Lcom/lge/gles/GLESShader;

    return-object v0
.end method

.method public getSpaceHeight()F
    .registers 2

    .prologue
    .line 274
    iget v0, p0, Lcom/lge/gles/GLESParticleSet;->mHeightInSpace:F

    return v0
.end method

.method public getSpaceWidth()F
    .registers 2

    .prologue
    .line 264
    iget v0, p0, Lcom/lge/gles/GLESParticleSet;->mWidthInSpace:F

    return v0
.end method

.method public getSurfaceHeight()F
    .registers 2

    .prologue
    .line 254
    iget v0, p0, Lcom/lge/gles/GLESParticleSet;->mHeight:F

    return v0
.end method

.method public getSurfaceWidth()F
    .registers 2

    .prologue
    .line 245
    iget v0, p0, Lcom/lge/gles/GLESParticleSet;->mWidth:F

    return v0
.end method

.method public getTexture()Lcom/lge/gles/GLESTexture;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lge/gles/GLESParticleSet;->mTexture:Lcom/lge/gles/GLESTexture;

    return-object v0
.end method

.method public getUniformLocations()V
    .registers 1

    .prologue
    .line 279
    return-void
.end method

.method protected abstract onCreate()V
.end method

.method protected abstract onDraw()V
.end method

.method protected abstract onReset()V
.end method

.method protected abstract onUpdate()V
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/lge/gles/GLESParticleSet;->onReset()V

    .line 158
    return-void
.end method

.method public setAlpha(F)V
    .registers 2
    .param p1, "alpha"    # F

    .prologue
    .line 291
    return-void
.end method

.method public setParticleDurationRange(JJ)V
    .registers 8
    .param p1, "min"    # J
    .param p3, "max"    # J

    .prologue
    .line 227
    cmp-long v0, p3, p1

    if-gez v0, :cond_c

    .line 228
    const-string v0, "quilt GLESParticleSet"

    const-string v1, "setParticleDuration() max is smaller than min"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_b
    return-void

    .line 232
    :cond_c
    iput-wide p1, p0, Lcom/lge/gles/GLESParticleSet;->mMinParticleDuration:J

    .line 233
    sub-long v0, p3, p1

    iput-wide v0, p0, Lcom/lge/gles/GLESParticleSet;->mParticleDurationDeviation:J

    goto :goto_b
.end method

.method public setParticleSize(F)V
    .registers 3
    .param p1, "size"    # F

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lge/gles/GLESParticleSet;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/lge/gles/GLESUtils;->getPixelFromDpi(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/lge/gles/GLESParticleSet;->mMinParticleSize:F

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/gles/GLESParticleSet;->mParticleSizeDeviation:F

    .line 188
    return-void
.end method

.method public setParticleSizeRange(FF)V
    .registers 5
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 200
    cmpg-float v0, p2, p1

    if-gez v0, :cond_c

    .line 201
    const-string v0, "quilt GLESParticleSet"

    const-string v1, "setSizeRange() max is smaller than min"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_b
    return-void

    .line 205
    :cond_c
    iget-object v0, p0, Lcom/lge/gles/GLESParticleSet;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/lge/gles/GLESUtils;->getPixelFromDpi(Landroid/content/Context;F)F

    move-result p1

    .line 206
    iget-object v0, p0, Lcom/lge/gles/GLESParticleSet;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/lge/gles/GLESUtils;->getPixelFromDpi(Landroid/content/Context;F)F

    move-result p2

    .line 208
    iput p1, p0, Lcom/lge/gles/GLESParticleSet;->mMinParticleSize:F

    .line 209
    sub-float v0, p2, p1

    iput v0, p0, Lcom/lge/gles/GLESParticleSet;->mParticleSizeDeviation:F

    goto :goto_b
.end method

.method public setParticleSizeRangeByPercentageOfBitmap(FF)V
    .registers 6
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    const v2, 0x3c23d70a    # 0.01f

    .line 213
    cmpg-float v0, p2, p1

    if-gez v0, :cond_f

    .line 214
    const-string v0, "quilt GLESParticleSet"

    const-string v1, "setParticleSizeRangeByPercentageOfBitmap() max is smaller than min"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_e
    return-void

    .line 218
    :cond_f
    iget-object v0, p0, Lcom/lge/gles/GLESParticleSet;->mTexture:Lcom/lge/gles/GLESTexture;

    invoke-virtual {v0}, Lcom/lge/gles/GLESTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v1, p1, v2

    mul-float p1, v0, v1

    .line 219
    iget-object v0, p0, Lcom/lge/gles/GLESParticleSet;->mTexture:Lcom/lge/gles/GLESTexture;

    invoke-virtual {v0}, Lcom/lge/gles/GLESTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v1, p2, v2

    mul-float p2, v0, v1

    .line 221
    iput p1, p0, Lcom/lge/gles/GLESParticleSet;->mMinParticleSize:F

    .line 222
    sub-float v0, p2, p1

    iput v0, p0, Lcom/lge/gles/GLESParticleSet;->mParticleSizeDeviation:F

    goto :goto_e
.end method

.method public setPercentageOfSize(F)V
    .registers 2
    .param p1, "percentageOfSize"    # F

    .prologue
    .line 295
    return-void
.end method

.method public setPosition(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 287
    return-void
.end method

.method public setRadius(F)V
    .registers 2
    .param p1, "radius"    # F

    .prologue
    .line 283
    return-void
.end method

.method public setShader(Lcom/lge/gles/GLESShader;)V
    .registers 2
    .param p1, "shader"    # Lcom/lge/gles/GLESShader;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lge/gles/GLESParticleSet;->mShader:Lcom/lge/gles/GLESShader;

    .line 76
    return-void
.end method

.method public setupSpace(FF)V
    .registers 3
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 64
    iput p1, p0, Lcom/lge/gles/GLESParticleSet;->mWidth:F

    .line 65
    iput p2, p0, Lcom/lge/gles/GLESParticleSet;->mHeight:F

    .line 66
    return-void
.end method

.method public update()V
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lge/gles/GLESParticleSet;->mShader:Lcom/lge/gles/GLESShader;

    invoke-virtual {v0}, Lcom/lge/gles/GLESShader;->useProgram()V

    .line 166
    invoke-virtual {p0}, Lcom/lge/gles/GLESParticleSet;->onUpdate()V

    .line 167
    return-void
.end method
