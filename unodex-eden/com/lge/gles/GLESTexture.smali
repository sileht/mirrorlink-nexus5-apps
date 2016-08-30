.class public Lcom/lge/gles/GLESTexture;
.super Ljava/lang/Object;
.source "GLESTexture.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "quilt GLESTexture"


# instance fields
.field private mFormat:I

.field private mHeight:I

.field private mTextureID:I

.field private mType:I

.field private mWidth:I

.field private mWrapMode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x1908

    iput v0, p0, Lcom/lge/gles/GLESTexture;->mFormat:I

    .line 24
    const/16 v0, 0x1401

    iput v0, p0, Lcom/lge/gles/GLESTexture;->mType:I

    .line 25
    const v0, 0x812f

    iput v0, p0, Lcom/lge/gles/GLESTexture;->mWrapMode:I

    .line 32
    return-void
.end method

.method public constructor <init>(III)V
    .registers 5
    .param p1, "texId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x1908

    iput v0, p0, Lcom/lge/gles/GLESTexture;->mFormat:I

    .line 24
    const/16 v0, 0x1401

    iput v0, p0, Lcom/lge/gles/GLESTexture;->mType:I

    .line 25
    const v0, 0x812f

    iput v0, p0, Lcom/lge/gles/GLESTexture;->mWrapMode:I

    .line 122
    iput p1, p0, Lcom/lge/gles/GLESTexture;->mTextureID:I

    .line 123
    iput p2, p0, Lcom/lge/gles/GLESTexture;->mWidth:I

    .line 124
    iput p3, p0, Lcom/lge/gles/GLESTexture;->mHeight:I

    .line 125
    return-void
.end method

.method public constructor <init>(IILandroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lge/gles/GLESTexture;-><init>(IILandroid/graphics/Bitmap;Z)V

    .line 71
    return-void
.end method

.method public constructor <init>(IILandroid/graphics/Bitmap;Z)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "needToRecycle"    # Z

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x1908

    iput v0, p0, Lcom/lge/gles/GLESTexture;->mFormat:I

    .line 24
    const/16 v0, 0x1401

    iput v0, p0, Lcom/lge/gles/GLESTexture;->mType:I

    .line 25
    const v0, 0x812f

    iput v0, p0, Lcom/lge/gles/GLESTexture;->mWrapMode:I

    .line 86
    iput p1, p0, Lcom/lge/gles/GLESTexture;->mWidth:I

    .line 87
    iput p2, p0, Lcom/lge/gles/GLESTexture;->mHeight:I

    .line 89
    invoke-direct {p0, p3, p4}, Lcom/lge/gles/GLESTexture;->makeTexture(Landroid/graphics/Bitmap;Z)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/gles/GLESTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IZ)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "wrapMode"    # I
    .param p3, "needToRecycle"    # Z

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x1908

    iput v0, p0, Lcom/lge/gles/GLESTexture;->mFormat:I

    .line 24
    const/16 v0, 0x1401

    iput v0, p0, Lcom/lge/gles/GLESTexture;->mType:I

    .line 25
    const v0, 0x812f

    iput v0, p0, Lcom/lge/gles/GLESTexture;->mWrapMode:I

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lge/gles/GLESTexture;->mWidth:I

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/gles/GLESTexture;->mHeight:I

    .line 106
    iput p2, p0, Lcom/lge/gles/GLESTexture;->mWrapMode:I

    .line 108
    invoke-direct {p0, p1, p3}, Lcom/lge/gles/GLESTexture;->makeTexture(Landroid/graphics/Bitmap;Z)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "needToRecycle"    # Z

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x1908

    iput v0, p0, Lcom/lge/gles/GLESTexture;->mFormat:I

    .line 24
    const/16 v0, 0x1401

    iput v0, p0, Lcom/lge/gles/GLESTexture;->mType:I

    .line 25
    const v0, 0x812f

    iput v0, p0, Lcom/lge/gles/GLESTexture;->mWrapMode:I

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lge/gles/GLESTexture;->mWidth:I

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/gles/GLESTexture;->mHeight:I

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/lge/gles/GLESTexture;->makeTexture(Landroid/graphics/Bitmap;Z)V

    .line 57
    return-void
.end method

.method private makeTexture(Landroid/graphics/Bitmap;Z)V
    .registers 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "needToRecycle"    # Z

    .prologue
    const/4 v2, 0x1

    const v5, 0x46180400    # 9729.0f

    const/4 v4, 0x0

    const/16 v3, 0xde1

    .line 244
    if-nez p1, :cond_11

    .line 245
    const-string v1, "quilt GLESTexture"

    const-string v2, "makeTexture() bitmap is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_10
    :goto_10
    return-void

    .line 249
    :cond_11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/lge/gles/GLESTexture;->mWidth:I

    .line 250
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/lge/gles/GLESTexture;->mHeight:I

    .line 257
    new-array v0, v2, [I

    .line 258
    .local v0, "textureIds":[I
    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 259
    const-string v1, "quilt GLESTexture"

    const-string v2, "glGenTextures"

    invoke-static {v1, v2}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    aget v1, v0, v4

    iput v1, p0, Lcom/lge/gles/GLESTexture;->mTextureID:I

    .line 262
    iget v1, p0, Lcom/lge/gles/GLESTexture;->mTextureID:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 263
    invoke-static {v3, v4, p1, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 264
    const-string v1, "quilt GLESTexture"

    const-string v2, "texImage2D"

    invoke-static {v1, v2}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/16 v1, 0x2802

    iget v2, p0, Lcom/lge/gles/GLESTexture;->mWrapMode:I

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 266
    const/16 v1, 0x2803

    iget v2, p0, Lcom/lge/gles/GLESTexture;->mWrapMode:I

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 267
    const-string v1, "quilt GLESTexture"

    const-string v2, "glTexParameteri"

    invoke-static {v1, v2}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/16 v1, 0x2801

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 269
    const/16 v1, 0x2800

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 270
    const-string v1, "quilt GLESTexture"

    const-string v2, "glTexParameterf"

    invoke-static {v1, v2}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 274
    if-eqz p2, :cond_10

    .line 275
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_10
.end method


# virtual methods
.method public changeTexture(Landroid/graphics/Bitmap;Z)V
    .registers 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "needToRecycle"    # Z

    .prologue
    const/4 v4, 0x1

    const/16 v7, 0xde1

    const/4 v6, 0x0

    .line 166
    if-nez p1, :cond_e

    .line 167
    const-string v3, "quilt GLESTexture"

    const-string v4, "changeTexture() bitmap is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_d
    :goto_d
    return-void

    .line 171
    :cond_e
    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 173
    iget v3, p0, Lcom/lge/gles/GLESTexture;->mTextureID:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 175
    .local v2, "width":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 178
    .local v0, "height":F
    iget v3, p0, Lcom/lge/gles/GLESTexture;->mWidth:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_63

    iget v3, p0, Lcom/lge/gles/GLESTexture;->mHeight:I

    int-to-float v3, v3

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_63

    .line 184
    iget v3, p0, Lcom/lge/gles/GLESTexture;->mTextureID:I

    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 185
    const-string v3, "quilt GLESTexture"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "glBindTexture mTextureID="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/lge/gles/GLESTexture;->mTextureID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {v7, v6, v6, v6, p1}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 187
    const-string v3, "quilt GLESTexture"

    const-string v4, "texSubImage2D"

    invoke-static {v3, v4}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 190
    if-eqz p2, :cond_d

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_d

    .line 200
    :cond_63
    new-array v1, v4, [I

    .line 201
    .local v1, "textures":[I
    iget v3, p0, Lcom/lge/gles/GLESTexture;->mTextureID:I

    aput v3, v1, v6

    .line 202
    invoke-static {v4, v1, v6}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 203
    const-string v3, "quilt GLESTexture"

    const-string v4, "glDeleteTextures"

    invoke-static {v3, v4}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/lge/gles/GLESTexture;->makeTexture(Landroid/graphics/Bitmap;Z)V

    goto :goto_d

    .line 211
    .end local v0    # "height":F
    .end local v1    # "textures":[I
    .end local v2    # "width":F
    :cond_77
    invoke-direct {p0, p1, p2}, Lcom/lge/gles/GLESTexture;->makeTexture(Landroid/graphics/Bitmap;Z)V

    goto :goto_d
.end method

.method public destroy()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    iget v1, p0, Lcom/lge/gles/GLESTexture;->mTextureID:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 132
    new-array v0, v3, [I

    .line 133
    .local v0, "textures":[I
    iget v1, p0, Lcom/lge/gles/GLESTexture;->mTextureID:I

    aput v1, v0, v2

    .line 134
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 135
    const-string v1, "quilt GLESTexture"

    const-string v2, "glDeleteTextures"

    invoke-static {v1, v2}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v0    # "textures":[I
    :cond_1a
    return-void
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 236
    iget v0, p0, Lcom/lge/gles/GLESTexture;->mHeight:I

    return v0
.end method

.method public getTextureID()I
    .registers 3

    .prologue
    .line 145
    iget v0, p0, Lcom/lge/gles/GLESTexture;->mTextureID:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 146
    const-string v0, "quilt GLESTexture"

    const-string v1, "mTextureID is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, -0x1

    .line 150
    :goto_10
    return v0

    :cond_11
    iget v0, p0, Lcom/lge/gles/GLESTexture;->mTextureID:I

    goto :goto_10
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 224
    iget v0, p0, Lcom/lge/gles/GLESTexture;->mWidth:I

    return v0
.end method

.method public makeSubTexture(IIZLandroid/graphics/Bitmap;)V
    .registers 10
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I
    .param p3, "needToRecyle"    # Z
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xde1

    .line 296
    if-nez p4, :cond_d

    .line 297
    const-string v0, "quilt GLESTexture"

    const-string v1, "makeSubTexture() bitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_c
    :goto_c
    return-void

    .line 301
    :cond_d
    iget v0, p0, Lcom/lge/gles/GLESTexture;->mTextureID:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 302
    const-string v0, "quilt GLESTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glBindTexture mTextureID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lge/gles/GLESTexture;->mTextureID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {v3, v4, p1, p2, p4}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 304
    const-string v0, "quilt GLESTexture"

    const-string v1, "texSubImage2D"

    invoke-static {v0, v1}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 308
    if-eqz p3, :cond_c

    .line 309
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_c
.end method
