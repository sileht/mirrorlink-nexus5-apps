.class public Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private messDigestTree:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method

.method private addByteArrays([B[B)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p1

    if-lt v0, v2, :cond_6

    return-void

    :cond_6
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p2, v0

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-byte v2, v1

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private addOne([B)V
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_2
    array-length v2, p1

    if-lt v0, v2, :cond_6

    return-void

    :cond_6
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    int-to-byte v2, v1

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public nextSeed([B)[B
    .registers 5

    const/4 v2, 0x0

    array-length v0, p1

    new-array v0, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    array-length v1, p1

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->addByteArrays([B[B)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->addOne([B)V

    return-object v0
.end method
