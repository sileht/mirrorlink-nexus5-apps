.class public Lorg/bouncycastle/crypto/macs/BlockCipherMac;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private mac:[B

.field private macSize:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .registers 3

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/macs/BlockCipherMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;I)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_26

    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->macSize:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->mac:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iput v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    return-void

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    :goto_7
    iget v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    if-lt v1, v0, :cond_21

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->mac:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->mac:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->macSize:I

    invoke-static {v0, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->reset()V

    iget v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->macSize:I

    return v0

    :cond_21
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    aput-byte v3, v1, v2

    iget v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    goto :goto_7
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->macSize:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .registers 4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public reset()V
    .registers 4

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    array-length v2, v2

    if-lt v0, v2, :cond_f

    iput v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    return-void

    :cond_f
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public update(B)V
    .registers 6

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    array-length v1, v1

    if-eq v0, v1, :cond_14

    :goto_8
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void

    :cond_14
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->mac:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iput v3, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    goto :goto_8
.end method

.method public update([BII)V
    .registers 10

    const/4 v5, 0x0

    if-ltz p3, :cond_1c

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iget v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    sub-int v2, v1, v0

    if-gt p3, v2, :cond_25

    :cond_f
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    return-void

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->mac:[B

    invoke-interface {v0, v3, v5, v4, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iput v5, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    :goto_3c
    if-le p3, v1, :cond_f

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/BlockCipherMac;->mac:[B

    invoke-interface {v2, p1, p2, v3, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    goto :goto_3c
.end method
