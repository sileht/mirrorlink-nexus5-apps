.class public Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;
.super Lorg/bouncycastle/crypto/BufferedBlockCipher;
.source "Unknown"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->forEncryption:Z

    if-nez v0, :cond_18

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    if-eq v0, v2, :cond_5d

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "last block incomplete in decryption"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    if-eq v0, v2, :cond_35

    move v0, v1

    :goto_1d
    iget v3, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    sub-int v3, v2, v3

    int-to-byte v3, v3

    :goto_22
    iget v4, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    if-lt v4, v2, :cond_4f

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    add-int v4, p2, v0

    invoke-interface {v2, v3, v1, p1, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    add-int/2addr v0, v1

    :goto_31
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->reset()V

    return v0

    :cond_35
    mul-int/lit8 v0, v2, 0x2

    add-int/2addr v0, p2

    array-length v3, p1

    if-gt v0, v3, :cond_46

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    invoke-interface {v0, v3, v1, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    iput v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    goto :goto_1d

    :cond_46
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    int-to-byte v6, v3

    aput-byte v6, v4, v5

    iget v4, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    goto :goto_22

    :cond_5d
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    invoke-interface {v0, v3, v1, v4, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    iput v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    add-int/lit8 v4, v2, -0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    if-gez v3, :cond_7c

    :cond_73
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v1, "pad block corrupted"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    if-gt v3, v2, :cond_73

    sub-int/2addr v0, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_31
.end method

.method public getOutputSize(I)I
    .registers 4

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    if-eqz v1, :cond_10

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0

    :cond_10
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->forEncryption:Z

    if-nez v1, :cond_15

    return v0

    :cond_15
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getUpdateOutputSize(I)I
    .registers 4

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    if-eqz v1, :cond_c

    sub-int/2addr v0, v1

    return v0

    :cond_c
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public processByte(B[BI)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v2, v2

    if-eq v1, v2, :cond_14

    :goto_8
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    return v0

    :cond_14
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    invoke-interface {v1, v2, v0, p2, p3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    iput v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

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

    const/4 v1, 0x0

    if-ltz p3, :cond_24

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->getBlockSize()I

    move-result v3

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->getUpdateOutputSize(I)I

    move-result v0

    if-gtz v0, :cond_2d

    :cond_d
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v0, v0

    iget v2, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    sub-int v2, v0, v2

    if-gt p3, v2, :cond_3a

    move v0, v1

    :goto_17
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    return v0

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    add-int/2addr v0, p5

    array-length v2, p4

    if-le v0, v2, :cond_d

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    invoke-interface {v0, v4, v1, p4, p5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    sub-int v1, p3, v2

    add-int/2addr v2, p2

    :goto_50
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v4, v4

    if-gt v1, v4, :cond_58

    move p3, v1

    move p2, v2

    goto :goto_17

    :cond_58
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    add-int v5, p5, v0

    invoke-interface {v4, p1, v2, p4, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v0, v4

    sub-int/2addr v1, v3

    add-int/2addr v2, v3

    goto :goto_50
.end method
