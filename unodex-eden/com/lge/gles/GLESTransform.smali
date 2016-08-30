.class public Lcom/lge/gles/GLESTransform;
.super Ljava/lang/Object;
.source "GLESTransform.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "quilt GLESTransform"

.field private static sIsAlphaBlending:Z


# instance fields
.field private mMMatrix:[F

.field private mMMatrixHandle:I

.field private mMatrixStack:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[F>;"
        }
    .end annotation
.end field

.field private mShader:Lcom/lge/gles/GLESShader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/gles/GLESTransform;->sIsAlphaBlending:Z

    return-void
.end method

.method public constructor <init>(Lcom/lge/gles/GLESShader;)V
    .registers 3
    .param p1, "shader"    # Lcom/lge/gles/GLESShader;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lge/gles/GLESTransform;->mMMatrix:[F

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/gles/GLESTransform;->mMMatrixHandle:I

    .line 24
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lge/gles/GLESTransform;->mMatrixStack:Ljava/util/Vector;

    .line 34
    iput-object p1, p0, Lcom/lge/gles/GLESTransform;->mShader:Lcom/lge/gles/GLESShader;

    .line 36
    iget-object v0, p0, Lcom/lge/gles/GLESTransform;->mMatrixStack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 38
    invoke-direct {p0}, Lcom/lge/gles/GLESTransform;->init()V

    .line 39
    return-void
.end method

.method public static disableAlphaBlending()V
    .registers 1

    .prologue
    .line 159
    sget-boolean v0, Lcom/lge/gles/GLESTransform;->sIsAlphaBlending:Z

    if-nez v0, :cond_5

    .line 167
    :goto_4
    return-void

    .line 163
    :cond_5
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 164
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 166
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/gles/GLESTransform;->sIsAlphaBlending:Z

    goto :goto_4
.end method

.method public static enableAlphaBlending(IIIIZ)V
    .registers 6
    .param p0, "srcColor"    # I
    .param p1, "dstColor"    # I
    .param p2, "srcAlpha"    # I
    .param p3, "dstAlpha"    # I
    .param p4, "disableDepthTest"    # Z

    .prologue
    .line 145
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 146
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glBlendFuncSeparate(IIII)V

    .line 148
    if-eqz p4, :cond_f

    .line 149
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 152
    :cond_f
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/gles/GLESTransform;->sIsAlphaBlending:Z

    .line 153
    return-void
.end method

.method public static enableAlphaBlending(Z)V
    .registers 4
    .param p0, "disableDepthTest"    # Z

    .prologue
    const/16 v2, 0x303

    const/4 v1, 0x1

    .line 118
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 119
    const/16 v0, 0x302

    invoke-static {v0, v2, v1, v2}, Landroid/opengl/GLES20;->glBlendFuncSeparate(IIII)V

    .line 122
    if-eqz p0, :cond_14

    .line 123
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 126
    :cond_14
    sput-boolean v1, Lcom/lge/gles/GLESTransform;->sIsAlphaBlending:Z

    .line 127
    return-void
.end method

.method private init()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 253
    iget-object v0, p0, Lcom/lge/gles/GLESTransform;->mShader:Lcom/lge/gles/GLESShader;

    const-string v1, "uMMatrix"

    invoke-virtual {v0, v1}, Lcom/lge/gles/GLESShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/gles/GLESTransform;->mMMatrixHandle:I

    .line 254
    iget-object v0, p0, Lcom/lge/gles/GLESTransform;->mMMatrix:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 255
    iget v0, p0, Lcom/lge/gles/GLESTransform;->mMMatrixHandle:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/gles/GLESTransform;->mMMatrix:[F

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 256
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-object v0, p0, Lcom/lge/gles/GLESTransform;->mMatrixStack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 46
    iput-object v1, p0, Lcom/lge/gles/GLESTransform;->mMatrixStack:Ljava/util/Vector;

    .line 48
    iput-object v1, p0, Lcom/lge/gles/GLESTransform;->mMMatrix:[F

    .line 49
    return-void
.end method

.method public dump(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 240
    return-void
.end method

.method public getCurrentMatrix()[F
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 205
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 206
    .local v0, "matrix":[F
    iget-object v1, p0, Lcom/lge/gles/GLESTransform;->mMMatrix:[F

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 208
    return-object v0
.end method

.method public getInverseMatrix()[F
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 227
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 228
    .local v0, "inverse":[F
    iget-object v1, p0, Lcom/lge/gles/GLESTransform;->mMMatrix:[F

    invoke-static {v0, v2, v1, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 229
    return-object v0
.end method

.method public getTransformHandle()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lcom/lge/gles/GLESTransform;->mMMatrixHandle:I

    return v0
.end method

.method public pop()V
    .registers 3

    .prologue
    .line 195
    iget-object v1, p0, Lcom/lge/gles/GLESTransform;->mMatrixStack:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 196
    .local v0, "lastIndex":I
    iget-object v1, p0, Lcom/lge/gles/GLESTransform;->mMatrixStack:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Lcom/lge/gles/GLESTransform;->mMMatrix:[F

    .line 197
    return-void
.end method

.method public push()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 185
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 186
    .local v0, "matrix":[F
    iget-object v1, p0, Lcom/lge/gles/GLESTransform;->mMMatrix:[F

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 188
    iget-object v1, p0, Lcom/lge/gles/GLESTransform;->mMatrixStack:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 189
    return-void
.end method

.method public rotate(FFFF)V
    .registers 11
    .param p1, "angle"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/gles/GLESTransform;->mMMatrix:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 86
    return-void
.end method

.method public scale(FFF)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lge/gles/GLESTransform;->mMMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 100
    return-void
.end method

.method public setIdentity()V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/gles/GLESTransform;->mMMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 56
    return-void
.end method

.method public setMatrix([F)V
    .registers 5
    .param p1, "matrix"    # [F

    .prologue
    const/4 v2, 0x0

    .line 218
    iget-object v0, p0, Lcom/lge/gles/GLESTransform;->mMMatrix:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 219
    return-void
.end method

.method public sync()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 176
    iget-object v0, p0, Lcom/lge/gles/GLESTransform;->mShader:Lcom/lge/gles/GLESShader;

    invoke-virtual {v0}, Lcom/lge/gles/GLESShader;->useProgram()V

    .line 178
    iget v0, p0, Lcom/lge/gles/GLESTransform;->mMMatrixHandle:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/gles/GLESTransform;->mMMatrix:[F

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 179
    return-void
.end method

.method public translate(FFF)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lge/gles/GLESTransform;->mMMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 70
    return-void
.end method
