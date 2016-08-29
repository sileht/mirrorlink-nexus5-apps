.class public abstract Lorg/bouncycastle/crypto/PBEParametersGenerator;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field protected iterationCount:I

.field protected password:[B

.field protected salt:[B


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PKCS12PasswordToBytes([C)[B
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_6

    :cond_3
    new-array v0, v0, [B

    return-object v0

    :cond_6
    array-length v1, p0

    if-lez v1, :cond_3

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    :goto_10
    array-length v2, p0

    if-ne v0, v2, :cond_14

    return-object v1

    :cond_14
    mul-int/lit8 v2, v0, 0x2

    aget-char v3, p0, v0

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-char v3, p0, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public static PKCS5PasswordToBytes([C)[B
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_6

    new-array v0, v0, [B

    return-object v0

    :cond_6
    array-length v1, p0

    new-array v1, v1, [B

    :goto_9
    array-length v2, v1

    if-ne v0, v2, :cond_d

    return-object v1

    :cond_d
    aget-char v2, p0, v0

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public static PKCS5PasswordToUTF8Bytes([C)[B
    .registers 2

    if-nez p0, :cond_6

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    :cond_6
    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
.end method

.method public abstract generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
.end method

.method public abstract generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;
.end method

.method public getIterationCount()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    return v0
.end method

.method public getPassword()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    return-object v0
.end method

.method public getSalt()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    return-object v0
.end method

.method public init([B[BI)V
    .registers 4

    iput-object p1, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    iput p3, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    return-void
.end method
