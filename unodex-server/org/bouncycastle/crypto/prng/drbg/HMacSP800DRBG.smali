.class public Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;


# static fields
.field private static final MAX_BITS_REQUEST:I = 0x40000

.field private static final RESEED_MAX:J = 0x800000000000L


# instance fields
.field private _K:[B

.field private _V:[B

.field private _entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

.field private _hMac:Lorg/bouncycastle/crypto/Mac;

.field private _reseedCounter:J


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Mac;ILorg/bouncycastle/crypto/prng/EntropySource;[B[B)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->getMaxSecurityStrength(Lorg/bouncycastle/crypto/Mac;)I

    move-result v0

    if-gt p2, v0, :cond_38

    invoke-interface {p3}, Lorg/bouncycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v0

    if-lt v0, p2, :cond_41

    iput-object p3, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p3}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    invoke-static {v0, p5, p4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    return-void

    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Requested security strength is not supported by the derivation function"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not enough entropy for security strength required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hmac_DRBG_Update([B)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update_Func([BB)V

    if-nez p1, :cond_7

    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update_Func([BB)V

    goto :goto_6
.end method

.method private hmac_DRBG_Update_Func([BB)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p2}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    if-nez p1, :cond_43

    :goto_1e
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    return-void

    :cond_43
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    array-length v1, p1

    invoke-interface {v0, p1, v3, v1}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    goto :goto_1e
.end method


# virtual methods
.method public generate([B[BZ)I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v2, p1

    mul-int/lit8 v3, v2, 0x8

    const/high16 v2, 0x40000

    if-gt v3, v2, :cond_19

    iget-wide v4, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    const-wide v6, 0x800000000000L

    cmp-long v2, v4, v6

    if-gtz v2, :cond_22

    const/4 v2, 0x1

    :goto_15
    if-nez v2, :cond_24

    const/4 v0, -0x1

    return v0

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number of bits per request limited to 262144"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    move v2, v1

    goto :goto_15

    :cond_24
    if-nez p3, :cond_56

    :goto_26
    if-nez p2, :cond_5b

    :goto_28
    array-length v0, p1

    new-array v2, v0, [B

    array-length v0, p1

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v4, v4

    div-int v4, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    new-instance v5, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-direct {v5, v6}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v5}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    move v0, v1

    :goto_3e
    if-lt v0, v4, :cond_5f

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v0, v0

    mul-int/2addr v0, v4

    array-length v5, v2

    if-lt v0, v5, :cond_7f

    :goto_47
    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    iget-wide v4, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    array-length v0, p1

    invoke-static {v2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v3

    :cond_56
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->reseed([B)V

    move-object p2, v0

    goto :goto_26

    :cond_5b
    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    goto :goto_28

    :cond_5f
    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v7, v7

    invoke-interface {v5, v6, v1, v7}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    invoke-interface {v5, v6, v1}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v6, v6

    mul-int/2addr v6, v0

    iget-object v7, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v7, v7

    invoke-static {v5, v1, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_7f
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v6, v6

    invoke-interface {v0, v5, v1, v6}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    invoke-interface {v0, v5, v1}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v5, v5

    mul-int/2addr v5, v4

    array-length v6, v2

    iget-object v7, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v7, v7

    mul-int/2addr v4, v7

    sub-int v4, v6, v4

    invoke-static {v0, v1, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_47
.end method

.method public reseed([B)V
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    return-void
.end method
