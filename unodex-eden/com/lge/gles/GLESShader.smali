.class public Lcom/lge/gles/GLESShader;
.super Ljava/lang/Object;
.source "GLESShader.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "quilt GLESShader"


# instance fields
.field private mColorIndex:I

.field private final mContext:Landroid/content/Context;

.field private mFragmentShaderID:I

.field private mFragmentShaderSource:Ljava/lang/String;

.field private mNormalIndex:I

.field private mProgram:I

.field private final mRes:Landroid/content/res/Resources;

.field private mTexCoordIndex:I

.field private mUseResourceID:Z

.field private mVertexIndex:I

.field private mVertexShaderID:I

.field private mVertexShaderSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-string v0, "q3d"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/lge/gles/GLESShader;->mVertexIndex:I

    .line 26
    iput v0, p0, Lcom/lge/gles/GLESShader;->mTexCoordIndex:I

    .line 27
    iput v0, p0, Lcom/lge/gles/GLESShader;->mNormalIndex:I

    .line 28
    iput v0, p0, Lcom/lge/gles/GLESShader;->mColorIndex:I

    .line 30
    iput-object v1, p0, Lcom/lge/gles/GLESShader;->mVertexShaderSource:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/lge/gles/GLESShader;->mFragmentShaderSource:Ljava/lang/String;

    .line 33
    iput v0, p0, Lcom/lge/gles/GLESShader;->mVertexShaderID:I

    .line 34
    iput v0, p0, Lcom/lge/gles/GLESShader;->mFragmentShaderID:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/gles/GLESShader;->mUseResourceID:Z

    .line 48
    iput-object p1, p0, Lcom/lge/gles/GLESShader;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/gles/GLESShader;->mRes:Landroid/content/res/Resources;

    .line 51
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    .line 52
    iget v0, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    if-nez v0, :cond_5b

    .line 53
    const-string v0, "quilt GLESShader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glCreateProgram() error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glCreateProgram() error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_5b
    return-void
.end method

.method private compileAndLink()Z
    .registers 6

    .prologue
    const v4, 0x8b31

    const v3, 0x8b30

    const/4 v1, 0x0

    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, "res":Z
    iget-boolean v2, p0, Lcom/lge/gles/GLESShader;->mUseResourceID:Z

    if-eqz v2, :cond_25

    .line 160
    iget v2, p0, Lcom/lge/gles/GLESShader;->mVertexShaderID:I

    invoke-direct {p0, v4, v2}, Lcom/lge/gles/GLESShader;->setShaderFromResource(II)Z

    move-result v0

    .line 161
    if-nez v0, :cond_15

    .line 186
    :cond_14
    :goto_14
    return v1

    .line 165
    :cond_15
    iget v2, p0, Lcom/lge/gles/GLESShader;->mFragmentShaderID:I

    invoke-direct {p0, v3, v2}, Lcom/lge/gles/GLESShader;->setShaderFromResource(II)Z

    move-result v0

    .line 166
    if-eqz v0, :cond_14

    .line 181
    :cond_1d
    invoke-direct {p0}, Lcom/lge/gles/GLESShader;->linkProgram()Z

    move-result v0

    .line 182
    if-eqz v0, :cond_14

    .line 186
    const/4 v1, 0x1

    goto :goto_14

    .line 170
    :cond_25
    iget-object v2, p0, Lcom/lge/gles/GLESShader;->mVertexShaderSource:Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Lcom/lge/gles/GLESShader;->setShaderFromString(ILjava/lang/String;)Z

    move-result v0

    .line 171
    if-eqz v0, :cond_14

    .line 175
    iget-object v2, p0, Lcom/lge/gles/GLESShader;->mFragmentShaderSource:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/lge/gles/GLESShader;->setShaderFromString(ILjava/lang/String;)Z

    move-result v0

    .line 176
    if-nez v0, :cond_1d

    goto :goto_14
.end method

.method private getShaderCompileLog(II)Ljava/lang/String;
    .registers 7
    .param p1, "shader"    # I
    .param p2, "shaderType"    # I

    .prologue
    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "log":Ljava/lang/String;
    const-string v1, "quilt GLESShader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not compile shader "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-direct {p0, p1}, Lcom/lge/gles/GLESShader;->nGetShaderCompileLog(I)Ljava/lang/String;

    move-result-object v0

    .line 526
    return-object v0
.end method

.method private getShaderFromReosurce(I)Ljava/lang/String;
    .registers 13
    .param p1, "resourceID"    # I

    .prologue
    .line 483
    const/4 v4, 0x0

    .line 484
    .local v4, "shader":Ljava/lang/String;
    iget-object v8, p0, Lcom/lge/gles/GLESShader;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 487
    .local v3, "is":Ljava/io/InputStream;
    const/16 v8, 0x400

    :try_start_9
    new-array v6, v8, [B

    .line 488
    .local v6, "str":[B
    const/4 v7, 0x0

    .line 490
    .local v7, "strLength":I
    :goto_c
    array-length v8, v6

    sub-int v1, v8, v7

    .line 491
    .local v1, "bytesLeft":I
    if-nez v1, :cond_20

    .line 492
    array-length v8, v6

    mul-int/lit8 v8, v8, 0x2

    new-array v0, v8, [B

    .line 493
    .local v0, "buf2":[B
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v6

    invoke-static {v6, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 494
    move-object v6, v0

    .line 495
    array-length v8, v6

    sub-int v1, v8, v7

    .line 497
    .end local v0    # "buf2":[B
    :cond_20
    invoke-virtual {v3, v6, v7, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_35

    move-result v2

    .line 498
    .local v2, "bytesRead":I
    if-gtz v2, :cond_33

    .line 504
    :try_start_26
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_3a

    .line 511
    :try_start_29
    new-instance v5, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "UTF-8"

    invoke-direct {v5, v6, v8, v7, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_31
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_29 .. :try_end_31} :catch_41

    .end local v4    # "shader":Ljava/lang/String;
    .local v5, "shader":Ljava/lang/String;
    move-object v4, v5

    .line 516
    .end local v5    # "shader":Ljava/lang/String;
    .restart local v4    # "shader":Ljava/lang/String;
    :goto_32
    return-object v4

    .line 501
    :cond_33
    add-int/2addr v7, v2

    .line 489
    goto :goto_c

    .line 503
    .end local v1    # "bytesLeft":I
    .end local v2    # "bytesRead":I
    .end local v6    # "str":[B
    .end local v7    # "strLength":I
    :catchall_35
    move-exception v8

    .line 504
    :try_start_36
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 505
    throw v8
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3a} :catch_3a

    .line 507
    :catch_3a
    move-exception v8

    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v8}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v8

    .line 513
    .restart local v1    # "bytesLeft":I
    .restart local v2    # "bytesRead":I
    .restart local v6    # "str":[B
    .restart local v7    # "strLength":I
    :catch_41
    move-exception v8

    const-string v8, "Renderscript shader creation"

    const-string v9, "Could not decode shader string"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method public static isSystem64Bit()I
    .registers 1

    .prologue
    .line 531
    invoke-static {}, Lcom/lge/gles/GLESShader;->nCheckSystem64Bit()I

    move-result v0

    return v0
.end method

.method private linkProgram()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 407
    iget v1, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 408
    const-string v1, "quilt GLESShader"

    const-string v2, "glLinkProgram"

    invoke-static {v1, v2}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    new-array v0, v4, [I

    .line 411
    .local v0, "linkStatus":[I
    iget v1, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    const v2, 0x8b82

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 412
    aget v1, v0, v3

    if-eq v1, v4, :cond_3d

    .line 413
    const-string v1, "quilt GLESShader"

    const-string v2, "Could not link program: "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v1, "quilt GLESShader"

    iget v2, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget v1, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 416
    iput v3, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    .line 418
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "glLinkProgram() Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    :cond_3d
    iget v1, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 422
    const-string v1, "quilt GLESShader"

    const-string v2, "glUseProgram"

    invoke-static {v1, v2}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return v4
.end method

.method private static native nCheckSystem64Bit()I
.end method

.method private native nGetShaderCompileLog(I)Ljava/lang/String;
.end method

.method private native nLoadProgramBinary(IILjava/lang/String;)I
.end method

.method private native nRetrieveProgramBinary(ILjava/lang/String;)I
.end method

.method private setShaderFromResource(II)Z
    .registers 11
    .param p1, "shaderType"    # I
    .param p2, "resourceID"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 453
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v2

    .line 454
    .local v2, "shader":I
    const-string v4, "quilt GLESShader"

    const-string v5, "glAttachShader"

    invoke-static {v4, v5}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    if-eqz v2, :cond_62

    .line 457
    invoke-direct {p0, p2}, Lcom/lge/gles/GLESShader;->getShaderFromReosurce(I)Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, "source":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 459
    const-string v4, "quilt GLESShader"

    const-string v5, "glShaderSource"

    invoke-static {v4, v5}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-static {v2}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 461
    const-string v4, "quilt GLESShader"

    const-string v5, "glCompileShader"

    invoke-static {v4, v5}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    new-array v0, v7, [I

    .line 464
    .local v0, "compiled":[I
    const v4, 0x8b81

    invoke-static {v2, v4, v0, v6}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 465
    aget v4, v0, v6

    if-nez v4, :cond_62

    .line 466
    const-string v4, "quilt GLESShader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not compile shader "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-direct {p0, v2, p1}, Lcom/lge/gles/GLESShader;->getShaderCompileLog(II)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "log":Ljava/lang/String;
    const-string v4, "quilt GLESShader"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 471
    const/4 v2, 0x0

    .line 472
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "glShaderSource() Error"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 475
    .end local v0    # "compiled":[I
    .end local v1    # "log":Ljava/lang/String;
    .end local v3    # "source":Ljava/lang/String;
    :cond_62
    iget v4, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 476
    const-string v4, "quilt GLESShader"

    const-string v5, "glAttachShader"

    invoke-static {v4, v5}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return v7
.end method

.method private setShaderFromString(ILjava/lang/String;)Z
    .registers 9
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 428
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 429
    .local v1, "shader":I
    const-string v2, "quilt GLESShader"

    const-string v3, "glUseProgram"

    invoke-static {v2, v3}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    if-eqz v1, :cond_5e

    .line 432
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 433
    const-string v2, "quilt GLESShader"

    const-string v3, "glShaderSource"

    invoke-static {v2, v3}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 435
    const-string v2, "quilt GLESShader"

    const-string v3, "glCompileShader"

    invoke-static {v2, v3}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-array v0, v5, [I

    .line 438
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 439
    aget v2, v0, v4

    if-nez v2, :cond_5e

    .line 440
    const-string v2, "quilt GLESShader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not compile shader "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-string v2, "quilt GLESShader"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 443
    const/4 v1, 0x0

    .line 444
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "glCompileShader() Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 447
    .end local v0    # "compiled":[I
    :cond_5e
    iget v2, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 448
    const-string v2, "quilt GLESShader"

    const-string v3, "glAttachShader"

    invoke-static {v2, v3}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return v5
.end method


# virtual methods
.method public getAttribLocation(Ljava/lang/String;)I
    .registers 5
    .param p1, "attribName"    # Ljava/lang/String;

    .prologue
    .line 368
    const/4 v0, -0x1

    .line 369
    .local v0, "index":I
    iget v1, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 370
    const-string v1, "quilt GLESShader"

    const-string v2, "glGetAttribLocation"

    invoke-static {v1, v2}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return v0
.end method

.method public getColorAttribIndex()I
    .registers 3

    .prologue
    .line 335
    iget v0, p0, Lcom/lge/gles/GLESShader;->mColorIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 336
    const-string v0, "quilt GLESShader"

    const-string v1, "getColorAttribIndex() mColorIndex is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_c
    iget v0, p0, Lcom/lge/gles/GLESShader;->mColorIndex:I

    return v0
.end method

.method public getNormalAttribIndex()I
    .registers 3

    .prologue
    .line 303
    iget v0, p0, Lcom/lge/gles/GLESShader;->mNormalIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 304
    const-string v0, "quilt GLESShader"

    const-string v1, "getNormalAttribIndex() mNormalIndex is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_c
    iget v0, p0, Lcom/lge/gles/GLESShader;->mNormalIndex:I

    return v0
.end method

.method public getProgram()I
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    return v0
.end method

.method public getTexCoordAttribIndex()I
    .registers 3

    .prologue
    .line 271
    iget v0, p0, Lcom/lge/gles/GLESShader;->mTexCoordIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 272
    const-string v0, "quilt GLESShader"

    const-string v1, "getTexCoordAttribIndex() mTexCoordIndex is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_c
    iget v0, p0, Lcom/lge/gles/GLESShader;->mTexCoordIndex:I

    return v0
.end method

.method public getUniformLocation(Ljava/lang/String;)I
    .registers 5
    .param p1, "uniforomName"    # Ljava/lang/String;

    .prologue
    .line 349
    const/4 v0, -0x1

    .line 350
    .local v0, "index":I
    iget v1, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 351
    const-string v1, "quilt GLESShader"

    const-string v2, "glGetUniformLocation"

    invoke-static {v1, v2}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return v0
.end method

.method public getVertexAttribIndex()I
    .registers 3

    .prologue
    .line 238
    iget v0, p0, Lcom/lge/gles/GLESShader;->mVertexIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 239
    const-string v0, "quilt GLESShader"

    const-string v1, "getVertexAttribIndex() mVertexIndex is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_c
    iget v0, p0, Lcom/lge/gles/GLESShader;->mVertexIndex:I

    return v0
.end method

.method public load()Z
    .registers 2

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/lge/gles/GLESShader;->compileAndLink()Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;)Z
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, "res":Z
    const/4 v1, 0x1

    .line 124
    .local v1, "needToCompile":Z
    sget-boolean v3, Lcom/lge/gles/GLESConfig;->sUseBinary:Z

    if-eqz v3, :cond_8

    if-nez p1, :cond_d

    .line 125
    :cond_8
    invoke-direct {p0}, Lcom/lge/gles/GLESShader;->compileAndLink()Z

    move-result v3

    .line 153
    :goto_c
    return v3

    .line 128
    :cond_d
    invoke-static {p1}, Lcom/lge/gles/GLESUtils;->checkFileExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 129
    const/4 v3, -0x1

    invoke-virtual {p0, p1, v3}, Lcom/lge/gles/GLESShader;->loadProgramBinary(Ljava/lang/String;I)I

    move-result v0

    .line 131
    .local v0, "errorNumber":I
    if-nez v0, :cond_42

    .line 132
    const-string v3, "quilt GLESShader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Link Error file="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Compile again"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v0    # "errorNumber":I
    :cond_34
    :goto_34
    if-eqz v1, :cond_40

    .line 147
    invoke-direct {p0}, Lcom/lge/gles/GLESShader;->compileAndLink()Z

    move-result v2

    .line 149
    invoke-static {p1}, Lcom/lge/gles/GLESUtils;->deleteFile(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/lge/gles/GLESShader;->retrieveProgramBinary(Ljava/lang/String;)V

    :cond_40
    move v3, v2

    .line 153
    goto :goto_c

    .line 134
    .restart local v0    # "errorNumber":I
    :cond_42
    const/4 v1, 0x0

    goto :goto_34
.end method

.method public loadProgramBinary(Ljava/lang/String;I)I
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "binaryFormat"    # I

    .prologue
    .line 403
    iget v0, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-direct {p0, v0, p2, p1}, Lcom/lge/gles/GLESShader;->nLoadProgramBinary(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public retrieveProgramBinary(Ljava/lang/String;)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 386
    iget v1, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-direct {p0, v1, p1}, Lcom/lge/gles/GLESShader;->nRetrieveProgramBinary(ILjava/lang/String;)I

    move-result v0

    .line 391
    .local v0, "binaryFormat":I
    return-void
.end method

.method public setColorAttribIndex(Ljava/lang/String;)V
    .registers 4
    .param p1, "colorAttribName"    # Ljava/lang/String;

    .prologue
    .line 321
    iget v0, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/gles/GLESShader;->mColorIndex:I

    .line 322
    const-string v0, "quilt GLESShader"

    const-string v1, "mColorIndex glGetAttribLocation"

    invoke-static {v0, v1}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public setNormalAttribIndex(Ljava/lang/String;)V
    .registers 4
    .param p1, "normalAttribName"    # Ljava/lang/String;

    .prologue
    .line 289
    iget v0, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/gles/GLESShader;->mNormalIndex:I

    .line 290
    const-string v0, "quilt GLESShader"

    const-string v1, "mNormalIndex glGetAttribLocation"

    invoke-static {v0, v1}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public setShadersFromResource(II)Z
    .registers 4
    .param p1, "vertexShaderID"    # I
    .param p2, "fragmentShaderID"    # I

    .prologue
    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/lge/gles/GLESShader;->mUseResourceID:Z

    .line 98
    iput p1, p0, Lcom/lge/gles/GLESShader;->mVertexShaderID:I

    .line 99
    iput p2, p0, Lcom/lge/gles/GLESShader;->mFragmentShaderID:I

    .line 101
    return v0
.end method

.method public setShadersFromString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/gles/GLESShader;->mUseResourceID:Z

    .line 77
    iput-object p1, p0, Lcom/lge/gles/GLESShader;->mVertexShaderSource:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/lge/gles/GLESShader;->mFragmentShaderSource:Ljava/lang/String;

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public setTexCoordAttribIndex(Ljava/lang/String;)V
    .registers 4
    .param p1, "texCoordAttribName"    # Ljava/lang/String;

    .prologue
    .line 257
    iget v0, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/gles/GLESShader;->mTexCoordIndex:I

    .line 258
    const-string v0, "quilt GLESShader"

    const-string v1, "mTexCoordIndex glGetAttribLocation"

    invoke-static {v0, v1}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public setVertexAttribIndex(Ljava/lang/String;)V
    .registers 4
    .param p1, "vertexAttribName"    # Ljava/lang/String;

    .prologue
    .line 224
    iget v0, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/gles/GLESShader;->mVertexIndex:I

    .line 225
    const-string v0, "quilt GLESShader"

    const-string v1, "mVertexIndex glGetAttribLocation"

    invoke-static {v0, v1}, Lcom/lge/gles/GLESUtils;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public useProgram()V
    .registers 2

    .prologue
    .line 210
    iget v0, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 211
    return-void
.end method
