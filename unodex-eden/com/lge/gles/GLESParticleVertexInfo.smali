.class public Lcom/lge/gles/GLESParticleVertexInfo;
.super Ljava/lang/Object;
.source "GLESParticleVertexInfo.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "quilt GLESVertexInfo"


# instance fields
.field private mIndexArray:[S

.field private mNumOfTexCoord:I

.field private mNumOfTexCoordElement:I

.field private mNumOfVertex:I

.field private mNumOfVertexElement:I

.field private mTexCoordArray:[F

.field private mTexCoordStride:I

.field private mUseTexCoord:Z

.field private mVertexArray:[F

.field private mVertexStride:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mNumOfVertexElement:I

    .line 12
    iput v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mNumOfVertex:I

    .line 13
    iput v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mVertexStride:I

    .line 15
    iput v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mNumOfTexCoordElement:I

    .line 16
    iput v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mNumOfTexCoord:I

    .line 17
    iput v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mTexCoordStride:I

    .line 19
    iput-boolean v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mUseTexCoord:Z

    .line 23
    return-void
.end method


# virtual methods
.method public createIndexArray(II)[S
    .registers 4
    .param p1, "numOfParticle"    # I
    .param p2, "numOfIndexElement"    # I

    .prologue
    .line 47
    mul-int v0, p1, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mIndexArray:[S

    .line 49
    iget-object v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mIndexArray:[S

    return-object v0
.end method

.method public createTexCoordArray(III)[F
    .registers 5
    .param p1, "numOfParticle"    # I
    .param p2, "numOfTexCoordElement"    # I
    .param p3, "numOfTexCoord"    # I

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mUseTexCoord:Z

    .line 38
    iput p2, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mNumOfTexCoordElement:I

    .line 39
    iput p3, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mNumOfTexCoord:I

    .line 40
    mul-int v0, p2, p3

    iput v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mTexCoordStride:I

    .line 41
    mul-int v0, p1, p2

    mul-int/2addr v0, p3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mTexCoordArray:[F

    .line 43
    iget-object v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mTexCoordArray:[F

    return-object v0
.end method

.method public createVertexArray(III)[F
    .registers 5
    .param p1, "numOfParticle"    # I
    .param p2, "numOfVertexElement"    # I
    .param p3, "numOfVertex"    # I

    .prologue
    .line 26
    iput p2, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mNumOfVertexElement:I

    .line 27
    iput p3, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mNumOfVertex:I

    .line 28
    mul-int v0, p2, p3

    iput v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mVertexStride:I

    .line 29
    mul-int v0, p1, p2

    mul-int/2addr v0, p3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mVertexArray:[F

    .line 31
    iget-object v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mVertexArray:[F

    return-object v0
.end method

.method public getIndexArray()[S
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mIndexArray:[S

    return-object v0
.end method

.method public getNumOfTexCoord()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mNumOfTexCoord:I

    return v0
.end method

.method public getNumOfTexCoordElement()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mNumOfTexCoordElement:I

    return v0
.end method

.method public getNumOfVertex()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mNumOfVertex:I

    return v0
.end method

.method public getNumOfVertexElement()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mNumOfVertexElement:I

    return v0
.end method

.method public getTexCoordArray()[F
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mTexCoordArray:[F

    return-object v0
.end method

.method public getTexCoordStride()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mTexCoordStride:I

    return v0
.end method

.method public getUseTexCoord()Z
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mUseTexCoord:Z

    return v0
.end method

.method public getVertexArray()[F
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mVertexArray:[F

    return-object v0
.end method

.method public getVertexStride()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/lge/gles/GLESParticleVertexInfo;->mVertexStride:I

    return v0
.end method
