.class public Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private counterStart:I

.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private iv:[B

.field private shared:[B


# direct methods
.method protected constructor <init>(ILorg/bouncycastle/crypto/Digest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p1

    array-length v2, v0

    sub-int v2, v2, p3

    move/from16 v0, p2

    if-lt v2, v0, :cond_29

    move/from16 v0, p3

    int-to-long v6, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    const-wide v2, 0x1ffffffffL

    cmp-long v2, v6, v2

    if-gtz v2, :cond_32

    const/4 v2, 0x1

    :goto_1e
    if-nez v2, :cond_34

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Output length too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_29
    new-instance v2, Lorg/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v3, "output buffer too small"

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_32
    const/4 v2, 0x0

    goto :goto_1e

    :cond_34
    int-to-long v2, v8

    add-long/2addr v2, v6

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    int-to-long v4, v8

    div-long/2addr v2, v4

    long-to-int v9, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v10, v2, [B

    const/4 v2, 0x4

    new-array v11, v2, [B

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    const/4 v3, 0x0

    invoke-static {v2, v11, v3}, Lorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    and-int/lit16 v4, v2, -0x100

    const/4 v2, 0x0

    move v5, v2

    move/from16 v3, p2

    move/from16 v2, p3

    :goto_5d
    if-lt v5, v9, :cond_68

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->reset()V

    long-to-int v2, v6

    return v2

    :cond_68
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    array-length v15, v15

    invoke-interface {v12, v13, v14, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v13, 0x0

    array-length v14, v11

    invoke-interface {v12, v11, v13, v14}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    if-nez v12, :cond_a7

    :goto_88
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v13, 0x0

    invoke-interface {v12, v10, v13}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    if-gt v2, v8, :cond_b9

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v10, v12, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_98
    const/4 v12, 0x3

    aget-byte v12, v11, v12

    add-int/lit8 v12, v12, 0x1

    int-to-byte v12, v12

    const/4 v13, 0x3

    int-to-byte v14, v12

    aput-byte v14, v11, v13

    if-eqz v12, :cond_c2

    :goto_a4
    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    :cond_a7
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    array-length v15, v15

    invoke-interface {v12, v13, v14, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_88

    :cond_b9
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v10, v12, v0, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v8

    sub-int/2addr v2, v8

    goto :goto_98

    :cond_c2
    add-int/lit16 v4, v4, 0x100

    const/4 v12, 0x0

    invoke-static {v4, v11, v12}, Lorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    goto :goto_a4
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .registers 4

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KDFParameters;

    if-nez v0, :cond_11

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "KDF parameters required for KDF2Generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    check-cast p1, Lorg/bouncycastle/crypto/params/KDFParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFParameters;->getSharedSecret()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFParameters;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    :goto_1f
    return-void

    :cond_20
    check-cast p1, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;->getSeed()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    goto :goto_1f
.end method
