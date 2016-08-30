.class public abstract Lcom/lge/gles/GLESParticleController;
.super Ljava/lang/Object;
.source "GLESParticleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/gles/GLESParticleController$DummyObject;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "quilt GLESParticleController"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDisableDepthTest:Z

.field private mDstAlpha:I

.field private mDstColor:I

.field protected mDummyObject:Lcom/lge/gles/GLESParticleController$DummyObject;

.field private mEnableAlphaBlending:Z

.field protected mHeight:F

.field private mIsVisible:Z

.field protected mParticleSetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/gles/GLESParticleSet;",
            ">;"
        }
    .end annotation
.end field

.field protected mShader:Lcom/lge/gles/GLESShader;

.field private mSrcAlpha:I

.field private mSrcColor:I

.field protected mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/lge/gles/GLESParticleController;->mDummyObject:Lcom/lge/gles/GLESParticleController$DummyObject;

    .line 20
    iput-object v0, p0, Lcom/lge/gles/GLESParticleController;->mContext:Landroid/content/Context;

    .line 21
    iput-object v0, p0, Lcom/lge/gles/GLESParticleController;->mShader:Lcom/lge/gles/GLESShader;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    .line 25
    iput v2, p0, Lcom/lge/gles/GLESParticleController;->mWidth:F

    .line 26
    iput v2, p0, Lcom/lge/gles/GLESParticleController;->mHeight:F

    .line 28
    iput-boolean v1, p0, Lcom/lge/gles/GLESParticleController;->mIsVisible:Z

    .line 35
    iput-boolean v1, p0, Lcom/lge/gles/GLESParticleController;->mEnableAlphaBlending:Z

    .line 44
    iput-object p1, p0, Lcom/lge/gles/GLESParticleController;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/lge/gles/GLESParticleController$DummyObject;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/lge/gles/GLESParticleController$DummyObject;-><init>(Lcom/lge/gles/GLESParticleController;Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/lge/gles/GLESParticleController;->mDummyObject:Lcom/lge/gles/GLESParticleController$DummyObject;

    .line 47
    return-void
.end method


# virtual methods
.method public addParticleSet(Lcom/lge/gles/GLESParticleSet;)V
    .registers 3
    .param p1, "particleSet"    # Lcom/lge/gles/GLESParticleSet;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method public create(FF)V
    .registers 7
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 241
    iget-object v3, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 242
    invoke-virtual {p0}, Lcom/lge/gles/GLESParticleController;->createParticleSet()V

    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, "particleSet":Lcom/lge/gles/GLESParticleSet;
    iget-object v3, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 247
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-lt v0, v2, :cond_19

    .line 252
    const/4 v0, 0x0

    :goto_13
    if-lt v0, v2, :cond_27

    .line 257
    invoke-virtual {p0}, Lcom/lge/gles/GLESParticleController;->getUniformLocations()V

    .line 258
    return-void

    .line 248
    :cond_19
    iget-object v3, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "particleSet":Lcom/lge/gles/GLESParticleSet;
    check-cast v1, Lcom/lge/gles/GLESParticleSet;

    .line 249
    .restart local v1    # "particleSet":Lcom/lge/gles/GLESParticleSet;
    invoke-virtual {v1, p1, p2}, Lcom/lge/gles/GLESParticleSet;->create(FF)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 253
    :cond_27
    iget-object v3, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "particleSet":Lcom/lge/gles/GLESParticleSet;
    check-cast v1, Lcom/lge/gles/GLESParticleSet;

    .line 254
    .restart local v1    # "particleSet":Lcom/lge/gles/GLESParticleSet;
    iget-object v3, p0, Lcom/lge/gles/GLESParticleController;->mShader:Lcom/lge/gles/GLESShader;

    invoke-virtual {v1, v3}, Lcom/lge/gles/GLESParticleSet;->setShader(Lcom/lge/gles/GLESShader;)V

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method protected abstract createParticleSet()V
.end method

.method public drawObject()V
    .registers 9

    .prologue
    .line 192
    iget-boolean v3, p0, Lcom/lge/gles/GLESParticleController;->mIsVisible:Z

    if-eqz v3, :cond_2b

    .line 193
    iget-object v3, p0, Lcom/lge/gles/GLESParticleController;->mShader:Lcom/lge/gles/GLESShader;

    invoke-virtual {v3}, Lcom/lge/gles/GLESShader;->useProgram()V

    .line 195
    iget-boolean v3, p0, Lcom/lge/gles/GLESParticleController;->mEnableAlphaBlending:Z

    if-eqz v3, :cond_1a

    .line 196
    iget v3, p0, Lcom/lge/gles/GLESParticleController;->mSrcColor:I

    iget v4, p0, Lcom/lge/gles/GLESParticleController;->mDstColor:I

    iget v5, p0, Lcom/lge/gles/GLESParticleController;->mSrcAlpha:I

    iget v6, p0, Lcom/lge/gles/GLESParticleController;->mDstAlpha:I

    .line 197
    iget-boolean v7, p0, Lcom/lge/gles/GLESParticleController;->mDisableDepthTest:Z

    .line 196
    invoke-static {v3, v4, v5, v6, v7}, Lcom/lge/gles/GLESTransform;->enableAlphaBlending(IIIIZ)V

    .line 200
    :cond_1a
    const/4 v1, 0x0

    .line 201
    .local v1, "particleSet":Lcom/lge/gles/GLESParticleSet;
    iget-object v3, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 203
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    if-lt v0, v2, :cond_2c

    .line 209
    iget-boolean v3, p0, Lcom/lge/gles/GLESParticleController;->mEnableAlphaBlending:Z

    if-eqz v3, :cond_2b

    .line 210
    invoke-static {}, Lcom/lge/gles/GLESTransform;->disableAlphaBlending()V

    .line 213
    .end local v0    # "i":I
    .end local v1    # "particleSet":Lcom/lge/gles/GLESParticleSet;
    .end local v2    # "size":I
    :cond_2b
    return-void

    .line 204
    .restart local v0    # "i":I
    .restart local v1    # "particleSet":Lcom/lge/gles/GLESParticleSet;
    .restart local v2    # "size":I
    :cond_2c
    iget-object v3, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "particleSet":Lcom/lge/gles/GLESParticleSet;
    check-cast v1, Lcom/lge/gles/GLESParticleSet;

    .line 205
    .restart local v1    # "particleSet":Lcom/lge/gles/GLESParticleSet;
    invoke-virtual {v1}, Lcom/lge/gles/GLESParticleSet;->update()V

    .line 206
    invoke-virtual {v1}, Lcom/lge/gles/GLESParticleSet;->draw()V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_22
.end method

.method public enableAlphaBlending(IIIIZ)V
    .registers 7
    .param p1, "srcColor"    # I
    .param p2, "dstColor"    # I
    .param p3, "srcAlpha"    # I
    .param p4, "dstAlpha"    # I
    .param p5, "disableDepthTest"    # Z

    .prologue
    .line 180
    iput p1, p0, Lcom/lge/gles/GLESParticleController;->mSrcColor:I

    .line 181
    iput p3, p0, Lcom/lge/gles/GLESParticleController;->mSrcAlpha:I

    .line 182
    iput p2, p0, Lcom/lge/gles/GLESParticleController;->mDstColor:I

    .line 183
    iput p4, p0, Lcom/lge/gles/GLESParticleController;->mDstAlpha:I

    .line 184
    iput-boolean p5, p0, Lcom/lge/gles/GLESParticleController;->mDisableDepthTest:Z

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/gles/GLESParticleController;->mEnableAlphaBlending:Z

    .line 186
    return-void
.end method

.method public enableAlphaBlending(Z)V
    .registers 4
    .param p1, "disableDepthTest"    # Z

    .prologue
    const/16 v1, 0x303

    const/16 v0, 0x302

    .line 154
    iput v0, p0, Lcom/lge/gles/GLESParticleController;->mSrcColor:I

    .line 155
    iput v0, p0, Lcom/lge/gles/GLESParticleController;->mSrcAlpha:I

    .line 156
    iput v1, p0, Lcom/lge/gles/GLESParticleController;->mDstColor:I

    .line 157
    iput v1, p0, Lcom/lge/gles/GLESParticleController;->mDstAlpha:I

    .line 158
    iput-boolean p1, p0, Lcom/lge/gles/GLESParticleController;->mDisableDepthTest:Z

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/gles/GLESParticleController;->mEnableAlphaBlending:Z

    .line 160
    return-void
.end method

.method protected getParticleSetList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/gles/GLESParticleSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 280
    const-string v0, "quilt GLESParticleController"

    const-string v1, "getParticleSetList() mParticleSetList is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_b
    iget-object v0, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getShader()Lcom/lge/gles/GLESShader;
    .registers 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/lge/gles/GLESParticleController;->mShader:Lcom/lge/gles/GLESShader;

    if-nez v0, :cond_b

    .line 267
    const-string v0, "quilt GLESParticleController"

    const-string v1, "getShader() mShader is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_b
    iget-object v0, p0, Lcom/lge/gles/GLESParticleController;->mShader:Lcom/lge/gles/GLESShader;

    return-object v0
.end method

.method public getUniformLocations()V
    .registers 5

    .prologue
    .line 291
    const/4 v1, 0x0

    .line 292
    .local v1, "particleSet":Lcom/lge/gles/GLESParticleSet;
    iget-object v3, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 294
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-lt v0, v2, :cond_b

    .line 298
    return-void

    .line 295
    :cond_b
    iget-object v3, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "particleSet":Lcom/lge/gles/GLESParticleSet;
    check-cast v1, Lcom/lge/gles/GLESParticleSet;

    .line 296
    .restart local v1    # "particleSet":Lcom/lge/gles/GLESParticleSet;
    invoke-virtual {v1}, Lcom/lge/gles/GLESParticleSet;->getUniformLocations()V

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/gles/GLESParticleController;->mIsVisible:Z

    .line 131
    return-void
.end method

.method public reset()V
    .registers 5

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, "particleSet":Lcom/lge/gles/GLESParticleSet;
    iget-object v3, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 140
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-lt v0, v2, :cond_b

    .line 144
    return-void

    .line 141
    :cond_b
    iget-object v3, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "particleSet":Lcom/lge/gles/GLESParticleSet;
    check-cast v1, Lcom/lge/gles/GLESParticleSet;

    .line 142
    .restart local v1    # "particleSet":Lcom/lge/gles/GLESParticleSet;
    invoke-virtual {v1}, Lcom/lge/gles/GLESParticleSet;->reset()V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public setAlpha(F)V
    .registers 6
    .param p1, "alpha"    # F

    .prologue
    .line 307
    const/4 v1, 0x0

    .line 308
    .local v1, "particleSet":Lcom/lge/gles/GLESParticleSet;
    iget-object v3, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 310
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-lt v0, v2, :cond_b

    .line 314
    return-void

    .line 311
    :cond_b
    iget-object v3, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "particleSet":Lcom/lge/gles/GLESParticleSet;
    check-cast v1, Lcom/lge/gles/GLESParticleSet;

    .line 312
    .restart local v1    # "particleSet":Lcom/lge/gles/GLESParticleSet;
    invoke-virtual {v1, p1}, Lcom/lge/gles/GLESParticleSet;->setAlpha(F)V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public setPercentageOfSize(F)V
    .registers 6
    .param p1, "percentageOfSize"    # F

    .prologue
    .line 337
    const/4 v1, 0x0

    .line 338
    .local v1, "particleSet":Lcom/lge/gles/GLESParticleSet;
    iget-object v3, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 340
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-lt v0, v2, :cond_b

    .line 344
    return-void

    .line 341
    :cond_b
    iget-object v3, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "particleSet":Lcom/lge/gles/GLESParticleSet;
    check-cast v1, Lcom/lge/gles/GLESParticleSet;

    .line 342
    .restart local v1    # "particleSet":Lcom/lge/gles/GLESParticleSet;
    invoke-virtual {v1, p1}, Lcom/lge/gles/GLESParticleSet;->setPercentageOfSize(F)V

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public setPosition(FF)V
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 317
    const/4 v1, 0x0

    .line 318
    .local v1, "particleSet":Lcom/lge/gles/GLESParticleSet;
    iget-object v3, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 320
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-lt v0, v2, :cond_b

    .line 324
    return-void

    .line 321
    :cond_b
    iget-object v3, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "particleSet":Lcom/lge/gles/GLESParticleSet;
    check-cast v1, Lcom/lge/gles/GLESParticleSet;

    .line 322
    .restart local v1    # "particleSet":Lcom/lge/gles/GLESParticleSet;
    invoke-virtual {v1, p1, p2}, Lcom/lge/gles/GLESParticleSet;->setPosition(FF)V

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public setRadius(F)V
    .registers 6
    .param p1, "radius"    # F

    .prologue
    .line 327
    const/4 v1, 0x0

    .line 328
    .local v1, "particleSet":Lcom/lge/gles/GLESParticleSet;
    iget-object v3, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 330
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-lt v0, v2, :cond_b

    .line 334
    return-void

    .line 331
    :cond_b
    iget-object v3, p0, Lcom/lge/gles/GLESParticleController;->mParticleSetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "particleSet":Lcom/lge/gles/GLESParticleSet;
    check-cast v1, Lcom/lge/gles/GLESParticleSet;

    .line 332
    .restart local v1    # "particleSet":Lcom/lge/gles/GLESParticleSet;
    invoke-virtual {v1, p1}, Lcom/lge/gles/GLESParticleSet;->setRadius(F)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public setShader(Lcom/lge/gles/GLESShader;)V
    .registers 3
    .param p1, "shader"    # Lcom/lge/gles/GLESShader;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lge/gles/GLESParticleController;->mShader:Lcom/lge/gles/GLESShader;

    .line 58
    iget-object v0, p0, Lcom/lge/gles/GLESParticleController;->mShader:Lcom/lge/gles/GLESShader;

    invoke-virtual {v0}, Lcom/lge/gles/GLESShader;->useProgram()V

    .line 60
    iget-object v0, p0, Lcom/lge/gles/GLESParticleController;->mDummyObject:Lcom/lge/gles/GLESParticleController$DummyObject;

    invoke-virtual {v0, p1}, Lcom/lge/gles/GLESParticleController$DummyObject;->setShader(Lcom/lge/gles/GLESShader;)V

    .line 63
    return-void
.end method

.method public setupSpace(Lcom/lge/gles/GLESConfig$ProjectionType;II)V
    .registers 5
    .param p1, "projectionType"    # Lcom/lge/gles/GLESConfig$ProjectionType;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 93
    int-to-float v0, p2

    iput v0, p0, Lcom/lge/gles/GLESParticleController;->mWidth:F

    .line 94
    int-to-float v0, p3

    iput v0, p0, Lcom/lge/gles/GLESParticleController;->mHeight:F

    .line 96
    iget-object v0, p0, Lcom/lge/gles/GLESParticleController;->mDummyObject:Lcom/lge/gles/GLESParticleController$DummyObject;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/gles/GLESParticleController$DummyObject;->setupSpace(Lcom/lge/gles/GLESConfig$ProjectionType;II)V

    .line 97
    return-void
.end method

.method public setupSpace(Lcom/lge/gles/GLESConfig$ProjectionType;IIF)V
    .registers 6
    .param p1, "projectionType"    # Lcom/lge/gles/GLESConfig$ProjectionType;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "projectionScale"    # F

    .prologue
    .line 113
    int-to-float v0, p2

    iput v0, p0, Lcom/lge/gles/GLESParticleController;->mWidth:F

    .line 114
    int-to-float v0, p3

    iput v0, p0, Lcom/lge/gles/GLESParticleController;->mHeight:F

    .line 116
    iget-object v0, p0, Lcom/lge/gles/GLESParticleController;->mDummyObject:Lcom/lge/gles/GLESParticleController$DummyObject;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/gles/GLESParticleController$DummyObject;->setupSpace(Lcom/lge/gles/GLESConfig$ProjectionType;IIF)V

    .line 117
    return-void
.end method

.method public setupSpace(Lcom/lge/gles/GLESProjection;II)V
    .registers 5
    .param p1, "projection"    # Lcom/lge/gles/GLESProjection;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 76
    int-to-float v0, p2

    iput v0, p0, Lcom/lge/gles/GLESParticleController;->mWidth:F

    .line 77
    int-to-float v0, p3

    iput v0, p0, Lcom/lge/gles/GLESParticleController;->mHeight:F

    .line 79
    iget-object v0, p0, Lcom/lge/gles/GLESParticleController;->mDummyObject:Lcom/lge/gles/GLESParticleController$DummyObject;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/gles/GLESParticleController$DummyObject;->setupSpace(Lcom/lge/gles/GLESProjection;II)V

    .line 80
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/gles/GLESParticleController;->mIsVisible:Z

    .line 124
    return-void
.end method

.method public syncAll()V
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lge/gles/GLESParticleController;->mDummyObject:Lcom/lge/gles/GLESParticleController$DummyObject;

    invoke-virtual {v0}, Lcom/lge/gles/GLESParticleController$DummyObject;->syncAll()V

    .line 220
    return-void
.end method
