.class public Lcom/lge/gles/GLESProjection;
.super Ljava/lang/Object;
.source "GLESProjection.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_PROJ_SCALE:F = 4.0f

.field private static final PROJECTION_FAR:F = 128.0f

.field private static final PROJECTION_NEAR:F = 4.0f

.field private static final TAG:Ljava/lang/String; = "quilt GLESProjection"


# instance fields
.field private mHeight:I

.field private mPMatrix:[F

.field private mPMatrixHandle:I

.field private mProjectScale:F

.field private mProjectionType:Lcom/lge/gles/GLESConfig$ProjectionType;

.field private mShader:Lcom/lge/gles/GLESShader;

.field private mVMatrix:[F

.field private mVMatrixHandle:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/lge/gles/GLESShader;Lcom/lge/gles/GLESConfig$ProjectionType;II)V
    .registers 11
    .param p1, "shader"    # Lcom/lge/gles/GLESShader;
    .param p2, "projectionType"    # Lcom/lge/gles/GLESConfig$ProjectionType;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 48
    const/high16 v5, 0x40800000    # 4.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/gles/GLESProjection;-><init>(Lcom/lge/gles/GLESShader;Lcom/lge/gles/GLESConfig$ProjectionType;IIF)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/lge/gles/GLESShader;Lcom/lge/gles/GLESConfig$ProjectionType;IIF)V
    .registers 8
    .param p1, "shader"    # Lcom/lge/gles/GLESShader;
    .param p2, "projectionType"    # Lcom/lge/gles/GLESConfig$ProjectionType;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "projScale"    # F

    .prologue
    const/16 v1, 0x10

    const/4 v0, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/lge/gles/GLESProjection;->mPMatrixHandle:I

    .line 30
    iput v0, p0, Lcom/lge/gles/GLESProjection;->mVMatrixHandle:I

    .line 32
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/lge/gles/GLESProjection;->mPMatrix:[F

    .line 33
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/lge/gles/GLESProjection;->mVMatrix:[F

    .line 67
    iput-object p1, p0, Lcom/lge/gles/GLESProjection;->mShader:Lcom/lge/gles/GLESShader;

    .line 68
    iput-object p2, p0, Lcom/lge/gles/GLESProjection;->mProjectionType:Lcom/lge/gles/GLESConfig$ProjectionType;

    .line 70
    iput p3, p0, Lcom/lge/gles/GLESProjection;->mWidth:I

    .line 71
    iput p4, p0, Lcom/lge/gles/GLESProjection;->mHeight:I

    .line 73
    iput p5, p0, Lcom/lge/gles/GLESProjection;->mProjectScale:F

    .line 75
    invoke-direct {p0}, Lcom/lge/gles/GLESProjection;->buildProjection()V

    .line 76
    return-void
.end method

.method private buildProjection()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lcom/lge/gles/GLESProjection;->mShader:Lcom/lge/gles/GLESShader;

    invoke-virtual {v0}, Lcom/lge/gles/GLESShader;->useProgram()V

    .line 263
    iget-object v0, p0, Lcom/lge/gles/GLESProjection;->mShader:Lcom/lge/gles/GLESShader;

    const-string v6, "uPMatrix"

    invoke-virtual {v0, v6}, Lcom/lge/gles/GLESShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/gles/GLESProjection;->mPMatrixHandle:I

    .line 264
    iget-object v0, p0, Lcom/lge/gles/GLESProjection;->mShader:Lcom/lge/gles/GLESShader;

    const-string v6, "uVMatrix"

    invoke-virtual {v0, v6}, Lcom/lge/gles/GLESShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/gles/GLESProjection;->mVMatrixHandle:I

    .line 266
    iget-object v0, p0, Lcom/lge/gles/GLESProjection;->mProjectionType:Lcom/lge/gles/GLESConfig$ProjectionType;

    sget-object v6, Lcom/lge/gles/GLESConfig$ProjectionType;->ORTHO:Lcom/lge/gles/GLESConfig$ProjectionType;

    if-ne v0, v6, :cond_53

    .line 267
    iget v0, p0, Lcom/lge/gles/GLESProjection;->mWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v7

    invoke-static {v0}, Lcom/lge/gles/GLESUtils;->convertScreenToSpace(F)F

    move-result v3

    .line 268
    .local v3, "right":F
    neg-float v2, v3

    .line 269
    .local v2, "left":F
    iget v0, p0, Lcom/lge/gles/GLESProjection;->mHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v7

    invoke-static {v0}, Lcom/lge/gles/GLESUtils;->convertScreenToSpace(F)F

    move-result v5

    .line 270
    .local v5, "top":F
    neg-float v4, v5

    .line 276
    .local v4, "bottom":F
    iget-object v0, p0, Lcom/lge/gles/GLESProjection;->mPMatrix:[F

    const/high16 v6, -0x3d380000    # -100.0f

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 277
    iget v0, p0, Lcom/lge/gles/GLESProjection;->mPMatrixHandle:I

    iget-object v6, p0, Lcom/lge/gles/GLESProjection;->mPMatrix:[F

    invoke-static {v0, v9, v1, v6, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 279
    iget-object v0, p0, Lcom/lge/gles/GLESProjection;->mVMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 280
    iget v0, p0, Lcom/lge/gles/GLESProjection;->mVMatrixHandle:I

    iget-object v6, p0, Lcom/lge/gles/GLESProjection;->mVMatrix:[F

    invoke-static {v0, v9, v1, v6, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 302
    :goto_52
    return-void

    .line 281
    .end local v2    # "left":F
    .end local v3    # "right":F
    .end local v4    # "bottom":F
    .end local v5    # "top":F
    :cond_53
    iget-object v0, p0, Lcom/lge/gles/GLESProjection;->mProjectionType:Lcom/lge/gles/GLESConfig$ProjectionType;

    sget-object v6, Lcom/lge/gles/GLESConfig$ProjectionType;->FRUSTUM:Lcom/lge/gles/GLESConfig$ProjectionType;

    if-ne v0, v6, :cond_9b

    .line 282
    iget v0, p0, Lcom/lge/gles/GLESProjection;->mWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v7

    iget v6, p0, Lcom/lge/gles/GLESProjection;->mProjectScale:F

    div-float/2addr v0, v6

    invoke-static {v0}, Lcom/lge/gles/GLESUtils;->convertScreenToSpace(F)F

    move-result v3

    .line 283
    .restart local v3    # "right":F
    neg-float v2, v3

    .line 284
    .restart local v2    # "left":F
    iget v0, p0, Lcom/lge/gles/GLESProjection;->mHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v7

    iget v6, p0, Lcom/lge/gles/GLESProjection;->mProjectScale:F

    div-float/2addr v0, v6

    invoke-static {v0}, Lcom/lge/gles/GLESUtils;->convertScreenToSpace(F)F

    move-result v5

    .line 285
    .restart local v5    # "top":F
    neg-float v4, v5

    .line 291
    .restart local v4    # "bottom":F
    iget-object v0, p0, Lcom/lge/gles/GLESProjection;->mPMatrix:[F

    const/high16 v6, 0x40800000    # 4.0f

    .line 292
    iget v7, p0, Lcom/lge/gles/GLESProjection;->mProjectScale:F

    const/high16 v8, 0x41000000    # 8.0f

    mul-float/2addr v7, v8

    .line 291
    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 293
    iget v0, p0, Lcom/lge/gles/GLESProjection;->mPMatrixHandle:I

    iget-object v6, p0, Lcom/lge/gles/GLESProjection;->mPMatrix:[F

    invoke-static {v0, v9, v1, v6, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 295
    iget-object v0, p0, Lcom/lge/gles/GLESProjection;->mVMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 296
    iget-object v0, p0, Lcom/lge/gles/GLESProjection;->mVMatrix:[F

    const/high16 v6, -0x3f800000    # -4.0f

    iget v7, p0, Lcom/lge/gles/GLESProjection;->mProjectScale:F

    mul-float/2addr v6, v7

    invoke-static {v0, v1, v10, v10, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 297
    iget v0, p0, Lcom/lge/gles/GLESProjection;->mVMatrixHandle:I

    iget-object v6, p0, Lcom/lge/gles/GLESProjection;->mVMatrix:[F

    invoke-static {v0, v9, v1, v6, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    goto :goto_52

    .line 300
    .end local v2    # "left":F
    .end local v3    # "right":F
    .end local v4    # "bottom":F
    .end local v5    # "top":F
    :cond_9b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buildProjection() invalid projection type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/lge/gles/GLESProjection;->mPMatrix:[F

    .line 83
    iput-object v0, p0, Lcom/lge/gles/GLESProjection;->mVMatrix:[F

    .line 84
    return-void
.end method

.method public dump(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 236
    return-void
.end method

.method public getProjectionMatrix()[F
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 139
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 140
    .local v0, "matrix":[F
    iget-object v1, p0, Lcom/lge/gles/GLESProjection;->mPMatrix:[F

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 141
    return-object v0
.end method

.method public getProjectionScale()F
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/lge/gles/GLESProjection;->mProjectScale:F

    return v0
.end method

.method public getProjectionType()Lcom/lge/gles/GLESConfig$ProjectionType;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lge/gles/GLESProjection;->mProjectionType:Lcom/lge/gles/GLESConfig$ProjectionType;

    return-object v0
.end method

.method public getViewMatrix()[F
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 187
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 188
    .local v0, "matrix":[F
    iget-object v1, p0, Lcom/lge/gles/GLESProjection;->mVMatrix:[F

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 190
    return-object v0
.end method

.method public setFrustum(Lcom/lge/gles/GLESConfig$ProjectionType;FFFFFF)V
    .registers 16
    .param p1, "projType"    # Lcom/lge/gles/GLESConfig$ProjectionType;
    .param p2, "left"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "top"    # F
    .param p6, "near"    # F
    .param p7, "far"    # F

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/lge/gles/GLESProjection;->mPMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 126
    sget-object v0, Lcom/lge/gles/GLESConfig$ProjectionType;->FRUSTUM:Lcom/lge/gles/GLESConfig$ProjectionType;

    if-ne p1, v0, :cond_16

    .line 127
    iget-object v0, p0, Lcom/lge/gles/GLESProjection;->mPMatrix:[F

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 131
    :goto_15
    return-void

    .line 129
    :cond_16
    iget-object v0, p0, Lcom/lge/gles/GLESProjection;->mPMatrix:[F

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_15
.end method

.method public setProjectionMatrix(Lcom/lge/gles/GLESConfig$ProjectionType;FFFFFF)V
    .registers 16
    .param p1, "projType"    # Lcom/lge/gles/GLESConfig$ProjectionType;
    .param p2, "left"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "top"    # F
    .param p6, "near"    # F
    .param p7, "far"    # F

    .prologue
    const/4 v1, 0x0

    .line 174
    sget-object v0, Lcom/lge/gles/GLESConfig$ProjectionType;->FRUSTUM:Lcom/lge/gles/GLESConfig$ProjectionType;

    if-ne p1, v0, :cond_11

    .line 175
    iget-object v0, p0, Lcom/lge/gles/GLESProjection;->mPMatrix:[F

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 179
    :goto_10
    return-void

    .line 177
    :cond_11
    iget-object v0, p0, Lcom/lge/gles/GLESProjection;->mPMatrix:[F

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_10
.end method

.method public setProjectionMatrix([F)V
    .registers 5
    .param p1, "matrix"    # [F

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lcom/lge/gles/GLESProjection;->mPMatrix:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 152
    return-void
.end method

.method public setViewMatrix(FFF)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcom/lge/gles/GLESProjection;->mVMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 215
    iget-object v0, p0, Lcom/lge/gles/GLESProjection;->mVMatrix:[F

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 216
    return-void
.end method

.method public setViewMatrix([F)V
    .registers 5
    .param p1, "matrix"    # [F

    .prologue
    const/4 v2, 0x0

    .line 200
    iget-object v0, p0, Lcom/lge/gles/GLESProjection;->mVMatrix:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 201
    return-void
.end method

.method public sync()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 222
    iget-object v0, p0, Lcom/lge/gles/GLESProjection;->mShader:Lcom/lge/gles/GLESShader;

    invoke-virtual {v0}, Lcom/lge/gles/GLESShader;->useProgram()V

    .line 224
    iget v0, p0, Lcom/lge/gles/GLESProjection;->mPMatrixHandle:I

    iget-object v1, p0, Lcom/lge/gles/GLESProjection;->mPMatrix:[F

    invoke-static {v0, v3, v2, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 225
    iget v0, p0, Lcom/lge/gles/GLESProjection;->mVMatrixHandle:I

    iget-object v1, p0, Lcom/lge/gles/GLESProjection;->mVMatrix:[F

    invoke-static {v0, v3, v2, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 226
    return-void
.end method
