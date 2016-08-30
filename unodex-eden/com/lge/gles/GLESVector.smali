.class public Lcom/lge/gles/GLESVector;
.super Ljava/lang/Object;
.source "GLESVector.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "quilt GLESVector"


# instance fields
.field public mX:F

.field public mY:F

.field public mZ:F


# direct methods
.method public constructor <init>(FFF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/lge/gles/GLESVector;->mX:F

    .line 11
    iput v0, p0, Lcom/lge/gles/GLESVector;->mY:F

    .line 12
    iput v0, p0, Lcom/lge/gles/GLESVector;->mZ:F

    .line 25
    iput p1, p0, Lcom/lge/gles/GLESVector;->mX:F

    .line 26
    iput p2, p0, Lcom/lge/gles/GLESVector;->mY:F

    .line 27
    iput p3, p0, Lcom/lge/gles/GLESVector;->mZ:F

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/lge/gles/GLESVector;)V
    .registers 3
    .param p1, "vec"    # Lcom/lge/gles/GLESVector;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/lge/gles/GLESVector;->mX:F

    .line 11
    iput v0, p0, Lcom/lge/gles/GLESVector;->mY:F

    .line 12
    iput v0, p0, Lcom/lge/gles/GLESVector;->mZ:F

    .line 37
    iget v0, p1, Lcom/lge/gles/GLESVector;->mX:F

    iput v0, p0, Lcom/lge/gles/GLESVector;->mX:F

    .line 38
    iget v0, p1, Lcom/lge/gles/GLESVector;->mY:F

    iput v0, p0, Lcom/lge/gles/GLESVector;->mY:F

    .line 39
    iget v0, p1, Lcom/lge/gles/GLESVector;->mZ:F

    iput v0, p0, Lcom/lge/gles/GLESVector;->mZ:F

    .line 40
    return-void
.end method

.method public constructor <init>([F)V
    .registers 3
    .param p1, "vec"    # [F

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/lge/gles/GLESVector;->mX:F

    .line 11
    iput v0, p0, Lcom/lge/gles/GLESVector;->mY:F

    .line 12
    iput v0, p0, Lcom/lge/gles/GLESVector;->mZ:F

    .line 49
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/lge/gles/GLESVector;->mX:F

    .line 50
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/lge/gles/GLESVector;->mY:F

    .line 51
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/lge/gles/GLESVector;->mZ:F

    .line 52
    return-void
.end method

.method public static add(Lcom/lge/gles/GLESVector;Lcom/lge/gles/GLESVector;)Lcom/lge/gles/GLESVector;
    .registers 7
    .param p0, "a"    # Lcom/lge/gles/GLESVector;
    .param p1, "b"    # Lcom/lge/gles/GLESVector;

    .prologue
    .line 189
    new-instance v0, Lcom/lge/gles/GLESVector;

    iget v1, p0, Lcom/lge/gles/GLESVector;->mX:F

    iget v2, p1, Lcom/lge/gles/GLESVector;->mX:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lge/gles/GLESVector;->mY:F

    iget v3, p1, Lcom/lge/gles/GLESVector;->mY:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lge/gles/GLESVector;->mZ:F

    iget v4, p1, Lcom/lge/gles/GLESVector;->mZ:F

    add-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/gles/GLESVector;-><init>(FFF)V

    return-object v0
.end method

.method public static cross(Lcom/lge/gles/GLESVector;Lcom/lge/gles/GLESVector;)Lcom/lge/gles/GLESVector;
    .registers 8
    .param p0, "a"    # Lcom/lge/gles/GLESVector;
    .param p1, "b"    # Lcom/lge/gles/GLESVector;

    .prologue
    .line 175
    new-instance v0, Lcom/lge/gles/GLESVector;

    iget v1, p0, Lcom/lge/gles/GLESVector;->mY:F

    iget v2, p1, Lcom/lge/gles/GLESVector;->mZ:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/lge/gles/GLESVector;->mZ:F

    iget v3, p1, Lcom/lge/gles/GLESVector;->mY:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/lge/gles/GLESVector;->mZ:F

    iget v3, p1, Lcom/lge/gles/GLESVector;->mX:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/lge/gles/GLESVector;->mX:F

    iget v4, p1, Lcom/lge/gles/GLESVector;->mZ:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/lge/gles/GLESVector;->mX:F

    iget v4, p1, Lcom/lge/gles/GLESVector;->mY:F

    mul-float/2addr v3, v4

    .line 176
    iget v4, p0, Lcom/lge/gles/GLESVector;->mY:F

    iget v5, p1, Lcom/lge/gles/GLESVector;->mX:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 175
    invoke-direct {v0, v1, v2, v3}, Lcom/lge/gles/GLESVector;-><init>(FFF)V

    return-object v0
.end method

.method public static dot(Lcom/lge/gles/GLESVector;Lcom/lge/gles/GLESVector;)F
    .registers 5
    .param p0, "a"    # Lcom/lge/gles/GLESVector;
    .param p1, "b"    # Lcom/lge/gles/GLESVector;

    .prologue
    .line 162
    iget v0, p0, Lcom/lge/gles/GLESVector;->mX:F

    iget v1, p1, Lcom/lge/gles/GLESVector;->mX:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/lge/gles/GLESVector;->mY:F

    iget v2, p1, Lcom/lge/gles/GLESVector;->mY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lge/gles/GLESVector;->mZ:F

    iget v2, p1, Lcom/lge/gles/GLESVector;->mZ:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static getNomalVector(Lcom/lge/gles/GLESVector;Lcom/lge/gles/GLESVector;)Lcom/lge/gles/GLESVector;
    .registers 3
    .param p0, "vec1"    # Lcom/lge/gles/GLESVector;
    .param p1, "vec2"    # Lcom/lge/gles/GLESVector;

    .prologue
    .line 236
    invoke-static {p0, p1}, Lcom/lge/gles/GLESVector;->cross(Lcom/lge/gles/GLESVector;Lcom/lge/gles/GLESVector;)Lcom/lge/gles/GLESVector;

    move-result-object v0

    .line 237
    .local v0, "normal":Lcom/lge/gles/GLESVector;
    invoke-virtual {v0}, Lcom/lge/gles/GLESVector;->normalize()Lcom/lge/gles/GLESVector;

    .line 239
    return-object v0
.end method

.method public static getNomalVector([F[F[F)Lcom/lge/gles/GLESVector;
    .registers 13
    .param p0, "p0"    # [F
    .param p1, "p1"    # [F
    .param p2, "p2"    # [F

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 217
    new-instance v1, Lcom/lge/gles/GLESVector;

    aget v3, p1, v7

    aget v4, p0, v7

    sub-float/2addr v3, v4

    aget v4, p1, v8

    aget v5, p0, v8

    sub-float/2addr v4, v5

    aget v5, p1, v9

    aget v6, p0, v9

    sub-float/2addr v5, v6

    invoke-direct {v1, v3, v4, v5}, Lcom/lge/gles/GLESVector;-><init>(FFF)V

    .line 218
    .local v1, "vec1":Lcom/lge/gles/GLESVector;
    new-instance v2, Lcom/lge/gles/GLESVector;

    aget v3, p2, v7

    aget v4, p0, v7

    sub-float/2addr v3, v4

    aget v4, p2, v8

    aget v5, p0, v8

    sub-float/2addr v4, v5

    aget v5, p2, v9

    aget v6, p0, v9

    sub-float/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/lge/gles/GLESVector;-><init>(FFF)V

    .line 220
    .local v2, "vec2":Lcom/lge/gles/GLESVector;
    invoke-static {v1, v2}, Lcom/lge/gles/GLESVector;->cross(Lcom/lge/gles/GLESVector;Lcom/lge/gles/GLESVector;)Lcom/lge/gles/GLESVector;

    move-result-object v0

    .line 221
    .local v0, "normal":Lcom/lge/gles/GLESVector;
    invoke-virtual {v0}, Lcom/lge/gles/GLESVector;->normalize()Lcom/lge/gles/GLESVector;

    .line 223
    return-object v0
.end method

.method public static subtract(Lcom/lge/gles/GLESVector;Lcom/lge/gles/GLESVector;)Lcom/lge/gles/GLESVector;
    .registers 7
    .param p0, "a"    # Lcom/lge/gles/GLESVector;
    .param p1, "b"    # Lcom/lge/gles/GLESVector;

    .prologue
    .line 202
    new-instance v0, Lcom/lge/gles/GLESVector;

    iget v1, p0, Lcom/lge/gles/GLESVector;->mX:F

    iget v2, p1, Lcom/lge/gles/GLESVector;->mX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/lge/gles/GLESVector;->mY:F

    iget v3, p1, Lcom/lge/gles/GLESVector;->mY:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/lge/gles/GLESVector;->mZ:F

    iget v4, p1, Lcom/lge/gles/GLESVector;->mZ:F

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/gles/GLESVector;-><init>(FFF)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/lge/gles/GLESVector;)Lcom/lge/gles/GLESVector;
    .registers 4
    .param p1, "v"    # Lcom/lge/gles/GLESVector;

    .prologue
    .line 107
    iget v0, p0, Lcom/lge/gles/GLESVector;->mX:F

    iget v1, p1, Lcom/lge/gles/GLESVector;->mX:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/gles/GLESVector;->mX:F

    .line 108
    iget v0, p0, Lcom/lge/gles/GLESVector;->mY:F

    iget v1, p1, Lcom/lge/gles/GLESVector;->mY:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/gles/GLESVector;->mY:F

    .line 109
    iget v0, p0, Lcom/lge/gles/GLESVector;->mZ:F

    iget v1, p1, Lcom/lge/gles/GLESVector;->mZ:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/gles/GLESVector;->mZ:F

    .line 111
    return-object p0
.end method

.method public get()[F
    .registers 4

    .prologue
    .line 76
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 77
    .local v0, "res":[F
    const/4 v1, 0x0

    iget v2, p0, Lcom/lge/gles/GLESVector;->mX:F

    aput v2, v0, v1

    .line 78
    const/4 v1, 0x1

    iget v2, p0, Lcom/lge/gles/GLESVector;->mY:F

    aput v2, v0, v1

    .line 79
    const/4 v1, 0x2

    iget v2, p0, Lcom/lge/gles/GLESVector;->mZ:F

    aput v2, v0, v1

    .line 81
    return-object v0
.end method

.method public length()F
    .registers 4

    .prologue
    .line 149
    iget v0, p0, Lcom/lge/gles/GLESVector;->mX:F

    iget v1, p0, Lcom/lge/gles/GLESVector;->mX:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/lge/gles/GLESVector;->mY:F

    iget v2, p0, Lcom/lge/gles/GLESVector;->mY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lge/gles/GLESVector;->mZ:F

    iget v2, p0, Lcom/lge/gles/GLESVector;->mZ:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public multiply(F)Lcom/lge/gles/GLESVector;
    .registers 3
    .param p1, "s"    # F

    .prologue
    .line 92
    iget v0, p0, Lcom/lge/gles/GLESVector;->mX:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/lge/gles/GLESVector;->mX:F

    .line 93
    iget v0, p0, Lcom/lge/gles/GLESVector;->mY:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/lge/gles/GLESVector;->mY:F

    .line 94
    iget v0, p0, Lcom/lge/gles/GLESVector;->mZ:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/lge/gles/GLESVector;->mZ:F

    .line 96
    return-object p0
.end method

.method public normalize()Lcom/lge/gles/GLESVector;
    .registers 4

    .prologue
    .line 135
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/lge/gles/GLESVector;->length()F

    move-result v2

    div-float v0, v1, v2

    .line 136
    .local v0, "scale":F
    iget v1, p0, Lcom/lge/gles/GLESVector;->mX:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/lge/gles/GLESVector;->mX:F

    .line 137
    iget v1, p0, Lcom/lge/gles/GLESVector;->mY:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/lge/gles/GLESVector;->mY:F

    .line 138
    iget v1, p0, Lcom/lge/gles/GLESVector;->mZ:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/lge/gles/GLESVector;->mZ:F

    .line 140
    return-object p0
.end method

.method public set(FFF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 65
    iput p1, p0, Lcom/lge/gles/GLESVector;->mX:F

    .line 66
    iput p2, p0, Lcom/lge/gles/GLESVector;->mY:F

    .line 67
    iput p3, p0, Lcom/lge/gles/GLESVector;->mZ:F

    .line 68
    return-void
.end method

.method public subtract(Lcom/lge/gles/GLESVector;)Lcom/lge/gles/GLESVector;
    .registers 4
    .param p1, "v"    # Lcom/lge/gles/GLESVector;

    .prologue
    .line 122
    iget v0, p0, Lcom/lge/gles/GLESVector;->mX:F

    iget v1, p1, Lcom/lge/gles/GLESVector;->mX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/gles/GLESVector;->mX:F

    .line 123
    iget v0, p0, Lcom/lge/gles/GLESVector;->mY:F

    iget v1, p1, Lcom/lge/gles/GLESVector;->mY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/gles/GLESVector;->mY:F

    .line 124
    iget v0, p0, Lcom/lge/gles/GLESVector;->mZ:F

    iget v1, p1, Lcom/lge/gles/GLESVector;->mZ:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/gles/GLESVector;->mZ:F

    .line 126
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "quilt GLESVector mX="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/lge/gles/GLESVector;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/gles/GLESVector;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/gles/GLESVector;->mZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
