.class public Lorg/bouncycastle/crypto/generators/SCrypt;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BlockMix([I[I[I[II)V
    .registers 12

    const/16 v6, 0x10

    const/4 v2, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x10

    invoke-static {p0, v0, p1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p0

    ushr-int/lit8 v4, v0, 0x1

    mul-int/lit8 v0, p4, 0x2

    move v1, v2

    move v3, v2

    :goto_10
    if-gtz v0, :cond_17

    array-length v0, p3

    invoke-static {p3, v2, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_17
    invoke-static {p1, p0, v3, p2}, Lorg/bouncycastle/crypto/generators/SCrypt;->Xor([I[II[I)V

    const/16 v5, 0x8

    invoke-static {v5, p2, p1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->salsaCore(I[I[I)V

    invoke-static {p1, v2, p3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v5, v4, v3

    sub-int v1, v5, v1

    add-int/lit8 v3, v3, 0x10

    add-int/lit8 v0, v0, -0x1

    goto :goto_10
.end method

.method private static Clear([B)V
    .registers 2

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    goto :goto_2
.end method

.method private static Clear([I)V
    .registers 2

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Arrays;->fill([II)V

    goto :goto_2
.end method

.method private static ClearAll([[I)V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    aget-object v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/generators/SCrypt;->Clear([I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static MFcrypt([B[BIIII)[B
    .registers 12

    const/4 v0, 0x0

    mul-int/lit16 v2, p3, 0x80

    mul-int v1, p4, v2

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/crypto/generators/SCrypt;->SingleIterationPBKDF2([B[BI)[B

    move-result-object v3

    const/4 v1, 0x0

    :try_start_a
    array-length v4, v3

    ushr-int/lit8 v4, v4, 0x2

    new-array v1, v4, [I

    const/4 v5, 0x0

    invoke-static {v3, v5, v1}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI[I)V

    ushr-int/lit8 v2, v2, 0x2

    :goto_15
    if-lt v0, v4, :cond_26

    const/4 v0, 0x0

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/crypto/util/Pack;->intToLittleEndian([I[BI)V

    invoke-static {p0, v3, p5}, Lorg/bouncycastle/crypto/generators/SCrypt;->SingleIterationPBKDF2([B[BI)[B
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_2b

    move-result-object v0

    invoke-static {v3}, Lorg/bouncycastle/crypto/generators/SCrypt;->Clear([B)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/generators/SCrypt;->Clear([I)V

    return-object v0

    :cond_26
    :try_start_26
    invoke-static {v1, v0, p2, p3}, Lorg/bouncycastle/crypto/generators/SCrypt;->SMix([IIII)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2b

    add-int/2addr v0, v2

    goto :goto_15

    :catchall_2b
    move-exception v0

    invoke-static {v3}, Lorg/bouncycastle/crypto/generators/SCrypt;->Clear([B)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/generators/SCrypt;->Clear([I)V

    throw v0
.end method

.method private static SMix([IIII)V
    .registers 14

    mul-int/lit8 v1, p3, 0x20

    const/16 v0, 0x10

    new-array v2, v0, [I

    const/16 v0, 0x10

    new-array v3, v0, [I

    new-array v4, v1, [I

    new-array v5, v1, [I

    new-array v6, p2, [[I

    const/4 v0, 0x0

    :try_start_11
    invoke-static {p0, p1, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_15
    if-lt v0, p2, :cond_36

    add-int/lit8 v7, p2, -0x1

    const/4 v0, 0x0

    :goto_1a
    if-lt v0, p2, :cond_42

    const/4 v0, 0x0

    invoke-static {v5, v0, p0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_53

    invoke-static {v6}, Lorg/bouncycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    aput-object v5, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    return-void

    :cond_36
    :try_start_36
    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v2, v3, v4, p3}, Lorg/bouncycastle/crypto/generators/SCrypt;->BlockMix([I[I[I[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_42
    add-int/lit8 v8, v1, -0x10

    aget v8, v5, v8

    and-int/2addr v8, v7

    aget-object v8, v6, v8

    const/4 v9, 0x0

    invoke-static {v5, v8, v9, v5}, Lorg/bouncycastle/crypto/generators/SCrypt;->Xor([I[II[I)V

    invoke-static {v5, v2, v3, v4, p3}, Lorg/bouncycastle/crypto/generators/SCrypt;->BlockMix([I[I[I[II)V
    :try_end_50
    .catchall {:try_start_36 .. :try_end_50} :catchall_53

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :catchall_53
    move-exception v0

    invoke-static {v6}, Lorg/bouncycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    const/4 v1, 0x4

    new-array v1, v1, [[I

    const/4 v6, 0x0

    aput-object v5, v1, v6

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v4, v1, v2

    invoke-static {v1}, Lorg/bouncycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    throw v0
.end method

.method private static SingleIterationPBKDF2([B[BI)[B
    .registers 5

    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    mul-int/lit8 v1, p2, 0x8

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    return-object v0
.end method

.method private static Xor([I[II[I)V
    .registers 7

    array-length v0, p3

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_6

    return-void

    :cond_6
    aget v1, p0, v0

    add-int v2, p2, v0

    aget v2, p1, v2

    xor-int/2addr v1, v2

    aput v1, p3, v0

    goto :goto_1
.end method

.method public static generate([B[BIIII)[B
    .registers 7

    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/crypto/generators/SCrypt;->MFcrypt([B[BIIII)[B

    move-result-object v0

    return-object v0
.end method
