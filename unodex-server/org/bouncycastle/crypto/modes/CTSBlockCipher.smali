.class public Lorg/bouncycastle/crypto/modes/CTSBlockCipher;
.super Lorg/bouncycastle/crypto/BufferedBlockCipher;
.source "Unknown"


# instance fields
.field private blockSize:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;

    if-eqz v0, :cond_11

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "CTSBlockCipher can only accept ECB, or CBC ciphers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    instance-of v0, p1, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    if-nez v0, :cond_8

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iput v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v8, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_40

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    sub-int v2, v0, v1

    new-array v3, v1, [B

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->forEncryption:Z

    if-nez v0, :cond_49

    new-array v4, v1, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    instance-of v0, v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    if-nez v0, :cond_a6

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v0, v5, v8, v3, v8}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_26
    move v0, v1

    :goto_27
    iget v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-ne v0, v5, :cond_b5

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-static {v0, v1, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v3, v8, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int v0, p2, v1

    invoke-static {v4, v8, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3a
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->reset()V

    return v0

    :cond_40
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "output buffer to small in doFinal"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v0, v4, v8, v3, v8}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-lt v0, v1, :cond_73

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    :goto_56
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v4, v4

    if-ne v0, v4, :cond_7c

    move v0, v1

    :goto_5c
    iget v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-ne v0, v4, :cond_88

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    instance-of v0, v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    if-nez v0, :cond_98

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v0, v4, v1, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_6d
    add-int v0, p2, v1

    invoke-static {v3, v8, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3a

    :cond_73
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "need at least one block of input for CTS"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    sub-int v5, v0, v1

    aget-byte v5, v3, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    :cond_88
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    aget-byte v5, v4, v0

    sub-int v6, v0, v1

    aget-byte v6, v3, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    :cond_98
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    check-cast v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v0, v4, v1, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_6d

    :cond_a6
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    check-cast v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v0, v5, v8, v3, v8}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto/16 :goto_26

    :cond_b5
    sub-int v5, v0, v1

    sub-int v6, v0, v1

    aget-byte v6, v3, v6

    iget-object v7, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    aget-byte v7, v7, v0

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_27
.end method

.method public getOutputSize(I)I
    .registers 3

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getUpdateOutputSize(I)I
    .registers 4

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    if-eqz v1, :cond_c

    sub-int/2addr v0, v1

    return v0

    :cond_c
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public processByte(B[BI)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v2, v2

    if-eq v1, v2, :cond_14

    :goto_8
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    return v0

    :cond_14
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v1, v2, v0, p2, p3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    iput v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    move v0, v1

    goto :goto_8
.end method

.method public processBytes([BII[BI)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p3, :cond_23

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->getBlockSize()I

    move-result v2

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    if-gtz v1, :cond_2c

    :cond_d
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v1, v1

    iget v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    sub-int v3, v1, v3

    if-gt p3, v3, :cond_39

    :goto_16
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    return v0

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    add-int/2addr v1, p5

    array-length v3, p4

    if-le v1, v3, :cond_d

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v1, v4, v0, p4, p5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-static {v4, v2, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    sub-int/2addr p3, v3

    add-int/2addr p2, v3

    :goto_55
    if-gt p3, v2, :cond_59

    move v0, v1

    goto :goto_16

    :cond_59
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    add-int v5, p5, v1

    invoke-interface {v3, v4, v0, p4, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-static {v3, v2, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    goto :goto_55
.end method
