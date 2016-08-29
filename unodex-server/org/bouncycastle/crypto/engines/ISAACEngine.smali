.class public Lorg/bouncycastle/crypto/engines/ISAACEngine;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private engineState:[I

.field private index:I

.field private initialised:Z

.field private keyStream:[B

.field private results:[I

.field private final sizeL:I

.field private final stateArraySize:I

.field private workingKey:[B


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->sizeL:I

    const/16 v0, 0x100

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->stateArraySize:I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->c:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->keyStream:[B

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->workingKey:[B

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->initialised:Z

    return-void
.end method

.method private isaac()V
    .registers 6

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    const/4 v0, 0x0

    :goto_c
    const/16 v1, 0x100

    if-lt v0, v1, :cond_11

    return-void

    :cond_11
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    aget v1, v1, v0

    and-int/lit8 v2, v0, 0x3

    packed-switch v2, :pswitch_data_74

    :goto_1a
    iget v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    add-int/lit16 v4, v0, 0x80

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    ushr-int/lit8 v4, v1, 0x2

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    add-int/2addr v3, v4

    aput v3, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    ushr-int/lit8 v3, v3, 0xa

    and-int/lit16 v3, v3, 0xff

    aget v3, v4, v3

    add-int/2addr v1, v3

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :pswitch_4b
    iget v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    shl-int/lit8 v3, v3, 0xd

    xor-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    goto :goto_1a

    :pswitch_55
    iget v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    ushr-int/lit8 v3, v3, 0x6

    xor-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    goto :goto_1a

    :pswitch_5f
    iget v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    shl-int/lit8 v3, v3, 0x2

    xor-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    goto :goto_1a

    :pswitch_69
    iget v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    ushr-int/lit8 v3, v3, 0x10

    xor-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    goto :goto_1a

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_55
        :pswitch_5f
        :pswitch_69
    .end packed-switch
.end method

.method private mix([I)V
    .registers 10

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    aget v0, p1, v3

    aget v1, p1, v4

    shl-int/lit8 v1, v1, 0xb

    xor-int/2addr v0, v1

    aput v0, p1, v3

    aget v0, p1, v6

    aget v1, p1, v3

    add-int/2addr v0, v1

    aput v0, p1, v6

    aget v0, p1, v4

    aget v1, p1, v5

    add-int/2addr v0, v1

    aput v0, p1, v4

    aget v0, p1, v4

    aget v1, p1, v5

    ushr-int/lit8 v1, v1, 0x2

    xor-int/2addr v0, v1

    aput v0, p1, v4

    aget v0, p1, v7

    aget v1, p1, v4

    add-int/2addr v0, v1

    aput v0, p1, v7

    aget v0, p1, v5

    aget v1, p1, v6

    add-int/2addr v0, v1

    aput v0, p1, v5

    aget v0, p1, v5

    aget v1, p1, v6

    shl-int/lit8 v1, v1, 0x8

    xor-int/2addr v0, v1

    aput v0, p1, v5

    const/4 v0, 0x5

    const/4 v1, 0x5

    aget v1, p1, v1

    aget v2, p1, v5

    add-int/2addr v1, v2

    aput v1, p1, v0

    aget v0, p1, v6

    aget v1, p1, v7

    add-int/2addr v0, v1

    aput v0, p1, v6

    aget v0, p1, v6

    aget v1, p1, v7

    ushr-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    aput v0, p1, v6

    const/4 v0, 0x6

    const/4 v1, 0x6

    aget v1, p1, v1

    aget v2, p1, v6

    add-int/2addr v1, v2

    aput v1, p1, v0

    aget v0, p1, v7

    const/4 v1, 0x5

    aget v1, p1, v1

    add-int/2addr v0, v1

    aput v0, p1, v7

    aget v0, p1, v7

    const/4 v1, 0x5

    aget v1, p1, v1

    shl-int/lit8 v1, v1, 0xa

    xor-int/2addr v0, v1

    aput v0, p1, v7

    const/4 v0, 0x7

    const/4 v1, 0x7

    aget v1, p1, v1

    aget v2, p1, v7

    add-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x5

    const/4 v1, 0x5

    aget v1, p1, v1

    const/4 v2, 0x6

    aget v2, p1, v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x5

    const/4 v1, 0x5

    aget v1, p1, v1

    const/4 v2, 0x6

    aget v2, p1, v2

    ushr-int/lit8 v2, v2, 0x4

    xor-int/2addr v1, v2

    aput v1, p1, v0

    aget v0, p1, v3

    const/4 v1, 0x5

    aget v1, p1, v1

    add-int/2addr v0, v1

    aput v0, p1, v3

    const/4 v0, 0x6

    const/4 v1, 0x6

    aget v1, p1, v1

    const/4 v2, 0x7

    aget v2, p1, v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x6

    const/4 v1, 0x6

    aget v1, p1, v1

    const/4 v2, 0x7

    aget v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    xor-int/2addr v1, v2

    aput v1, p1, v0

    aget v0, p1, v4

    const/4 v1, 0x6

    aget v1, p1, v1

    add-int/2addr v0, v1

    aput v0, p1, v4

    const/4 v0, 0x7

    const/4 v1, 0x7

    aget v1, p1, v1

    aget v2, p1, v3

    add-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x7

    const/4 v1, 0x7

    aget v1, p1, v1

    aget v2, p1, v3

    ushr-int/lit8 v2, v2, 0x9

    xor-int/2addr v1, v2

    aput v1, p1, v0

    aget v0, p1, v5

    const/4 v1, 0x7

    aget v1, p1, v1

    add-int/2addr v0, v1

    aput v0, p1, v5

    aget v0, p1, v3

    aget v1, p1, v4

    add-int/2addr v0, v1

    aput v0, p1, v3

    return-void
.end method

.method private setKey([B)V
    .registers 13

    const/4 v10, 0x1

    const/16 v9, 0x100

    const/16 v8, 0x8

    const/4 v1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->workingKey:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    if-eqz v0, :cond_3d

    :goto_c
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    if-eqz v0, :cond_42

    :goto_10
    move v0, v1

    :goto_11
    if-lt v0, v9, :cond_47

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->c:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    array-length v0, p1

    array-length v2, p1

    and-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    new-array v2, v0, [B

    array-length v0, p1

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_27
    array-length v3, v2

    if-lt v0, v3, :cond_52

    new-array v5, v8, [I

    move v0, v1

    :goto_2d
    if-lt v0, v8, :cond_5f

    move v0, v1

    :goto_30
    const/4 v2, 0x4

    if-lt v0, v2, :cond_67

    move v4, v1

    :goto_34
    const/4 v0, 0x2

    if-lt v4, v0, :cond_6d

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ISAACEngine;->isaac()V

    iput-boolean v10, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->initialised:Z

    return-void

    :cond_3d
    new-array v0, v9, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    goto :goto_c

    :cond_42
    new-array v0, v9, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    goto :goto_10

    :cond_47
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    aput v1, v3, v0

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_52
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    ushr-int/lit8 v4, v0, 0x2

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x4

    goto :goto_27

    :cond_5f
    const v2, -0x61c88647

    aput v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_67
    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/ISAACEngine;->mix([I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_6d
    move v3, v1

    :goto_6e
    if-lt v3, v9, :cond_74

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_34

    :cond_74
    move v2, v1

    :goto_75
    if-lt v2, v8, :cond_81

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/ISAACEngine;->mix([I)V

    move v0, v1

    :goto_7b
    if-lt v0, v8, :cond_99

    add-int/lit8 v0, v3, 0x8

    move v3, v0

    goto :goto_6e

    :cond_81
    aget v6, v5, v2

    if-lt v4, v10, :cond_92

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    add-int v7, v3, v2

    aget v0, v0, v7

    :goto_8b
    add-int/2addr v0, v6

    aput v0, v5, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_75

    :cond_92
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    add-int v7, v3, v2

    aget v0, v0, v7

    goto :goto_8b

    :cond_99
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    add-int v6, v3, v0

    aget v7, v5, v0

    aput v7, v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_7b
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ISAAC"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_e

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ISAACEngine;->setKey([B)V

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid parameter passed to ISAAC init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBytes([BII[BI)V
    .registers 10

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->initialised:Z

    if-eqz v1, :cond_12

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_30

    add-int v1, p5, p3

    array-length v2, p4

    if-gt v1, v2, :cond_39

    :goto_f
    if-lt v0, p3, :cond_42

    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAACEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    iget v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    if-eqz v1, :cond_62

    :goto_46
    add-int v1, v0, p5

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->keyStream:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    aget-byte v2, v2, v3

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0x3ff

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_62
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ISAACEngine;->isaac()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/Pack;->intToBigEndian([I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->keyStream:[B

    goto :goto_46
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->workingKey:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ISAACEngine;->setKey([B)V

    return-void
.end method

.method public returnByte(B)B
    .registers 4

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    if-eqz v0, :cond_15

    :goto_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->keyStream:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0x3ff

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    return v0

    :cond_15
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ISAACEngine;->isaac()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    invoke-static {v0}, Lorg/bouncycastle/crypto/util/Pack;->intToBigEndian([I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->keyStream:[B

    goto :goto_4
.end method
