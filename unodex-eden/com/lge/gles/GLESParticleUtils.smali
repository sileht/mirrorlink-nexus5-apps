.class public Lcom/lge/gles/GLESParticleUtils;
.super Ljava/lang/Object;
.source "GLESParticleUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "quilt GLESParticleUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateIndexArray(Lcom/lge/gles/GLESParticleVertexInfo;I)V
    .registers 8
    .param p0, "vertexInfo"    # Lcom/lge/gles/GLESParticleVertexInfo;
    .param p1, "numOfParticle"    # I

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/lge/gles/GLESParticleVertexInfo;->getIndexArray()[S

    move-result-object v4

    .line 124
    .local v4, "indexArray":[S
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "idx":I
    move v2, v1

    .end local v1    # "idx":I
    .local v2, "idx":I
    :goto_7
    if-lt v0, p1, :cond_a

    .line 135
    return-void

    .line 125
    :cond_a
    mul-int/lit8 v3, v0, 0x4

    .line 127
    .local v3, "index":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    int-to-short v5, v3

    aput-short v5, v4, v2

    .line 128
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    add-int/lit8 v5, v3, 0x2

    int-to-short v5, v5

    aput-short v5, v4, v1

    .line 129
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    add-int/lit8 v5, v3, 0x1

    int-to-short v5, v5

    aput-short v5, v4, v2

    .line 131
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    add-int/lit8 v5, v3, 0x1

    int-to-short v5, v5

    aput-short v5, v4, v1

    .line 132
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    add-int/lit8 v5, v3, 0x2

    int-to-short v5, v5

    aput-short v5, v4, v2

    .line 133
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    add-int/lit8 v5, v3, 0x3

    int-to-short v5, v5

    aput-short v5, v4, v1

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static updatePositionArray(Lcom/lge/gles/GLESParticleVertexInfo;ILjava/util/ArrayList;)V
    .registers 15
    .param p0, "vertexInfo"    # Lcom/lge/gles/GLESParticleVertexInfo;
    .param p1, "numOfParticle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/gles/GLESParticleVertexInfo;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/gles/GLESParticle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "particleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/gles/GLESParticle;>;"
    const/4 v8, 0x0

    .line 58
    .local v8, "vertexArray":[F
    const/4 v9, 0x0

    .line 59
    .local v9, "vertexIndex":I
    const/4 v10, 0x0

    .line 61
    .local v10, "vertexStride":I
    invoke-virtual {p0}, Lcom/lge/gles/GLESParticleVertexInfo;->getVertexArray()[F

    move-result-object v8

    .line 62
    invoke-virtual {p0}, Lcom/lge/gles/GLESParticleVertexInfo;->getVertexStride()I

    move-result v10

    .line 64
    const/4 v4, 0x0

    .line 65
    .local v4, "particle":Lcom/lge/gles/GLESParticle;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-lt v2, p1, :cond_10

    .line 90
    return-void

    .line 66
    :cond_10
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "particle":Lcom/lge/gles/GLESParticle;
    check-cast v4, Lcom/lge/gles/GLESParticle;

    .line 68
    .restart local v4    # "particle":Lcom/lge/gles/GLESParticle;
    iget v11, v4, Lcom/lge/gles/GLESParticle;->mSize:F

    invoke-static {v11}, Lcom/lge/gles/GLESUtils;->convertScreenToSpace(F)F

    move-result v7

    .line 69
    .local v7, "trueSize":F
    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v1, v7, v11

    .line 71
    .local v1, "halfTrueSize":F
    iget v11, v4, Lcom/lge/gles/GLESParticle;->mPosX:F

    sub-float v3, v11, v1

    .line 72
    .local v3, "leftX":F
    iget v11, v4, Lcom/lge/gles/GLESParticle;->mPosX:F

    add-float v5, v11, v1

    .line 73
    .local v5, "rightX":F
    iget v11, v4, Lcom/lge/gles/GLESParticle;->mPosY:F

    add-float v6, v11, v1

    .line 74
    .local v6, "topY":F
    iget v11, v4, Lcom/lge/gles/GLESParticle;->mPosY:F

    sub-float v0, v11, v1

    .line 76
    .local v0, "bottomY":F
    mul-int v9, v2, v10

    .line 78
    add-int/lit8 v11, v9, 0x0

    aput v3, v8, v11

    .line 79
    add-int/lit8 v11, v9, 0x1

    aput v6, v8, v11

    .line 81
    add-int/lit8 v11, v9, 0x2

    aput v5, v8, v11

    .line 82
    add-int/lit8 v11, v9, 0x3

    aput v6, v8, v11

    .line 84
    add-int/lit8 v11, v9, 0x4

    aput v3, v8, v11

    .line 85
    add-int/lit8 v11, v9, 0x5

    aput v0, v8, v11

    .line 87
    add-int/lit8 v11, v9, 0x6

    aput v5, v8, v11

    .line 88
    add-int/lit8 v11, v9, 0x7

    aput v0, v8, v11

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_d
.end method

.method public static updateTextureArray(Lcom/lge/gles/GLESParticleVertexInfo;ILjava/util/ArrayList;)V
    .registers 10
    .param p0, "vertexInfo"    # Lcom/lge/gles/GLESParticleVertexInfo;
    .param p1, "numOfParticle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/gles/GLESParticleVertexInfo;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/gles/GLESParticle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "particleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/gles/GLESParticle;>;"
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "texCoordArray":[F
    const/4 v2, 0x0

    .line 96
    .local v2, "texCoordIndex":I
    const/4 v3, 0x0

    .line 98
    .local v3, "texCoordStride":I
    invoke-virtual {p0}, Lcom/lge/gles/GLESParticleVertexInfo;->getTexCoordArray()[F

    move-result-object v1

    .line 99
    invoke-virtual {p0}, Lcom/lge/gles/GLESParticleVertexInfo;->getTexCoordStride()I

    move-result v3

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-lt v0, p1, :cond_12

    .line 119
    return-void

    .line 103
    :cond_12
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/gles/GLESParticle;

    .line 105
    mul-int v2, v0, v3

    .line 107
    add-int/lit8 v4, v2, 0x0

    aput v5, v1, v4

    .line 108
    add-int/lit8 v4, v2, 0x1

    aput v5, v1, v4

    .line 110
    add-int/lit8 v4, v2, 0x2

    aput v6, v1, v4

    .line 111
    add-int/lit8 v4, v2, 0x3

    aput v5, v1, v4

    .line 113
    add-int/lit8 v4, v2, 0x4

    aput v5, v1, v4

    .line 114
    add-int/lit8 v4, v2, 0x5

    aput v6, v1, v4

    .line 116
    add-int/lit8 v4, v2, 0x6

    aput v6, v1, v4

    .line 117
    add-int/lit8 v4, v2, 0x7

    aput v6, v1, v4

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method public static updateVertexInfoArray(Lcom/lge/gles/GLESParticleVertexInfo;ILjava/util/ArrayList;)V
    .registers 4
    .param p0, "vertexInfo"    # Lcom/lge/gles/GLESParticleVertexInfo;
    .param p1, "numOfParticle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/gles/GLESParticleVertexInfo;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/gles/GLESParticle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p2, "particleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/gles/GLESParticle;>;"
    invoke-virtual {p0}, Lcom/lge/gles/GLESParticleVertexInfo;->getNumOfVertex()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 24
    :goto_7
    :pswitch_7
    return-void

    .line 16
    :pswitch_8
    invoke-static {p0, p1, p2}, Lcom/lge/gles/GLESParticleUtils;->updateVertexInfoArrayForPoint(Lcom/lge/gles/GLESParticleVertexInfo;ILjava/util/ArrayList;)V

    goto :goto_7

    .line 19
    :pswitch_c
    invoke-static {p0, p1, p2}, Lcom/lge/gles/GLESParticleUtils;->updateVertexInfoArrayForQuad(Lcom/lge/gles/GLESParticleVertexInfo;ILjava/util/ArrayList;)V

    goto :goto_7

    .line 14
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method private static updateVertexInfoArrayForPoint(Lcom/lge/gles/GLESParticleVertexInfo;ILjava/util/ArrayList;)V
    .registers 10
    .param p0, "vertexInfo"    # Lcom/lge/gles/GLESParticleVertexInfo;
    .param p1, "numOfParticle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/gles/GLESParticleVertexInfo;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/gles/GLESParticle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "particleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/gles/GLESParticle;>;"
    const/4 v2, 0x0

    .line 29
    .local v2, "vertexArray":[F
    const/4 v3, 0x0

    .line 30
    .local v3, "vertexIndex":I
    const/4 v4, 0x0

    .line 32
    .local v4, "vertexStride":I
    invoke-virtual {p0}, Lcom/lge/gles/GLESParticleVertexInfo;->getVertexArray()[F

    move-result-object v2

    .line 33
    invoke-virtual {p0}, Lcom/lge/gles/GLESParticleVertexInfo;->getVertexStride()I

    move-result v4

    .line 35
    const/4 v1, 0x0

    .line 36
    .local v1, "particle":Lcom/lge/gles/GLESParticle;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-lt v0, p1, :cond_10

    .line 44
    return-void

    .line 37
    :cond_10
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "particle":Lcom/lge/gles/GLESParticle;
    check-cast v1, Lcom/lge/gles/GLESParticle;

    .line 39
    .restart local v1    # "particle":Lcom/lge/gles/GLESParticle;
    mul-int v3, v0, v4

    .line 41
    add-int/lit8 v5, v3, 0x0

    iget v6, v1, Lcom/lge/gles/GLESParticle;->mPosX:F

    aput v6, v2, v5

    .line 42
    add-int/lit8 v5, v3, 0x1

    iget v6, v1, Lcom/lge/gles/GLESParticle;->mPosY:F

    aput v6, v2, v5

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method private static updateVertexInfoArrayForQuad(Lcom/lge/gles/GLESParticleVertexInfo;ILjava/util/ArrayList;)V
    .registers 4
    .param p0, "vertexInfo"    # Lcom/lge/gles/GLESParticleVertexInfo;
    .param p1, "numOfParticle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/gles/GLESParticleVertexInfo;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/gles/GLESParticle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "particleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/gles/GLESParticle;>;"
    invoke-static {p0, p1, p2}, Lcom/lge/gles/GLESParticleUtils;->updatePositionArray(Lcom/lge/gles/GLESParticleVertexInfo;ILjava/util/ArrayList;)V

    .line 50
    invoke-virtual {p0}, Lcom/lge/gles/GLESParticleVertexInfo;->getUseTexCoord()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 51
    invoke-static {p0, p1, p2}, Lcom/lge/gles/GLESParticleUtils;->updateTextureArray(Lcom/lge/gles/GLESParticleVertexInfo;ILjava/util/ArrayList;)V

    .line 53
    :cond_c
    return-void
.end method
