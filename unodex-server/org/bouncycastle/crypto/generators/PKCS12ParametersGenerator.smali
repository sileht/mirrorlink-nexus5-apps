.class public Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;
.super Lorg/bouncycastle/crypto/PBEParametersGenerator;
.source "Unknown"


# static fields
.field public static final IV_MATERIAL:I = 0x2

.field public static final KEY_MATERIAL:I = 0x1

.field public static final MAC_MATERIAL:I = 0x3


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    instance-of v0, p1, Lorg/bouncycastle/crypto/ExtendedDigest;

    if-nez v0, :cond_2e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Digest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    check-cast p1, Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    return-void
.end method

.method private adjust([BI[B)V
    .registers 8

    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p3, v0

    and-int/lit16 v0, v0, 0xff

    array-length v1, p3

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    array-length v1, p3

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    int-to-byte v2, v0

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    ushr-int/lit8 v1, v0, 0x8

    array-length v0, p3

    add-int/lit8 v0, v0, -0x2

    :goto_1f
    if-gez v0, :cond_22

    return-void

    :cond_22
    aget-byte v2, p3, v0

    and-int/lit16 v2, v2, 0xff

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int v2, p2, v0

    int-to-byte v3, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    ushr-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_1f
.end method

.method private generateDerivedKey(II)[B
    .registers 16

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v5, v0, [B

    new-array v6, p2, [B

    move v0, v1

    :goto_9
    array-length v2, v5

    if-ne v0, v2, :cond_3b

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    if-nez v0, :cond_42

    :cond_10
    new-array v0, v1, [B

    :goto_12
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    if-nez v2, :cond_6c

    :cond_16
    new-array v2, v1, [B

    :goto_18
    array-length v3, v0

    array-length v7, v2

    add-int/2addr v3, v7

    new-array v3, v3, [B

    array-length v7, v0

    invoke-static {v0, v1, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v7, v2

    invoke-static {v2, v1, v3, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v7, v0, [B

    iget v0, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    div-int v8, v0, v2

    iget v0, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    new-array v9, v0, [B

    move v2, v4

    :goto_38
    if-le v2, v8, :cond_96

    return-object v6

    :cond_3b
    int-to-byte v2, p1

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_42
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    array-length v0, v0

    if-eqz v0, :cond_10

    iget v0, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    array-length v2, v2

    iget v3, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v2, v3

    mul-int/2addr v0, v2

    new-array v2, v0, [B

    move v0, v1

    :goto_58
    array-length v3, v2

    if-ne v0, v3, :cond_5d

    move-object v0, v2

    goto :goto_12

    :cond_5d
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    array-length v7, v7

    rem-int v7, v0, v7

    aget-byte v3, v3, v7

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    :cond_6c
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    array-length v2, v2

    if-eqz v2, :cond_16

    iget v2, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    array-length v3, v3

    iget v7, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    add-int/2addr v3, v7

    add-int/lit8 v3, v3, -0x1

    iget v7, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v3, v7

    mul-int/2addr v2, v3

    new-array v3, v2, [B

    move v2, v1

    :goto_82
    array-length v7, v3

    if-ne v2, v7, :cond_87

    move-object v2, v3

    goto :goto_18

    :cond_87
    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    array-length v8, v8

    rem-int v8, v2, v8

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    :cond_96
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v10, v5

    invoke-interface {v0, v5, v1, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v10, v3

    invoke-interface {v0, v3, v1, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, v9, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move v0, v4

    :goto_a8
    iget v10, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->iterationCount:I

    if-lt v0, v10, :cond_c7

    move v0, v1

    :goto_ad
    array-length v10, v7

    if-ne v0, v10, :cond_d5

    move v0, v1

    :goto_b1
    array-length v10, v3

    iget v11, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v10, v11

    if-ne v0, v10, :cond_e0

    if-eq v2, v8, :cond_e9

    add-int/lit8 v0, v2, -0x1

    iget v10, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v0, v10

    array-length v10, v9

    invoke-static {v9, v1, v6, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_c2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_38

    :cond_c7
    iget-object v10, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v11, v9

    invoke-interface {v10, v9, v1, v11}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v10, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v10, v9, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_a8

    :cond_d5
    array-length v10, v9

    rem-int v10, v0, v10

    aget-byte v10, v9, v10

    int-to-byte v10, v10

    aput-byte v10, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_ad

    :cond_e0
    iget v10, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    mul-int/2addr v10, v0

    invoke-direct {p0, v3, v10, v7}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->adjust([BI[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b1

    :cond_e9
    add-int/lit8 v0, v2, -0x1

    iget v10, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v0, v10

    array-length v10, v6

    add-int/lit8 v11, v2, -0x1

    iget v12, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v11, v12

    sub-int/2addr v10, v11

    invoke-static {v9, v1, v6, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c2
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
    .registers 6

    div-int/lit8 v0, p1, 0x8

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v2
.end method

.method public generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
    .registers 6

    div-int/lit8 v0, p1, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v2
.end method

.method public generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;
    .registers 10

    const/4 v6, 0x0

    div-int/lit8 v0, p1, 0x8

    div-int/lit8 v1, p2, 0x8

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {p0, v3, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v5, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v5, v2, v6, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v4, v5, v3, v6, v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v4
.end method
