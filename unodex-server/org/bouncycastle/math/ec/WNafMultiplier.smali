.class Lorg/bouncycastle/math/ec/WNafMultiplier;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/math/ec/ECMultiplier;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/ECPoint;
    .registers 12

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    if-nez p3, :cond_5d

    :cond_6
    new-instance p3, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {p3}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    :goto_b
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v4, 0xd

    if-lt v3, v4, :cond_64

    const/16 v4, 0x29

    if-lt v3, v4, :cond_66

    const/16 v1, 0x79

    if-lt v3, v1, :cond_6b

    const/16 v0, 0x151

    if-lt v3, v0, :cond_6d

    const/16 v0, 0x381

    if-lt v3, v0, :cond_71

    const/16 v0, 0x901

    if-lt v3, v0, :cond_75

    const/16 v1, 0x8

    const/16 v0, 0x7f

    :goto_2b
    invoke-virtual {p3}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {p3}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getTwiceP()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    if-eqz v4, :cond_79

    array-length v2, v4

    :goto_36
    move-object v7, v4

    move v4, v2

    move-object v2, v7

    if-eqz v3, :cond_7e

    :goto_3b
    move-object v5, v3

    if-lt v4, v0, :cond_83

    move-object v0, v2

    :goto_3f
    invoke-virtual {p0, v1, p2}, Lorg/bouncycastle/math/ec/WNafMultiplier;->windowNaf(BLjava/math/BigInteger;)[B

    move-result-object v3

    array-length v1, v3

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    move v7, v1

    move-object v1, v2

    move v2, v7

    :goto_51
    if-gez v2, :cond_9a

    invoke-virtual {p3, v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {p3, v5}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setTwiceP(Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {p1, p3}, Lorg/bouncycastle/math/ec/ECPoint;->setPreCompInfo(Lorg/bouncycastle/math/ec/PreCompInfo;)V

    return-object v1

    :cond_5d
    instance-of v3, p3, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v3, :cond_6

    check-cast p3, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    goto :goto_b

    :cond_64
    move v0, v2

    goto :goto_2b

    :cond_66
    const/4 v0, 0x3

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_2b

    :cond_6b
    move v1, v0

    goto :goto_2b

    :cond_6d
    const/4 v1, 0x5

    const/16 v0, 0x8

    goto :goto_2b

    :cond_71
    const/4 v1, 0x6

    const/16 v0, 0x10

    goto :goto_2b

    :cond_75
    const/4 v1, 0x7

    const/16 v0, 0x20

    goto :goto_2b

    :cond_79
    new-array v4, v2, [Lorg/bouncycastle/math/ec/ECPoint;

    aput-object p1, v4, v6

    goto :goto_36

    :cond_7e
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_3b

    :cond_83
    new-array v3, v0, [Lorg/bouncycastle/math/ec/ECPoint;

    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v4

    :goto_89
    if-lt v2, v0, :cond_8d

    move-object v0, v3

    goto :goto_3f

    :cond_8d
    add-int/lit8 v4, v2, -0x1

    aget-object v4, v3, v4

    invoke-virtual {v5, v4}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    :cond_9a
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    aget-byte v4, v3, v2

    if-nez v4, :cond_a5

    :goto_a2
    add-int/lit8 v2, v2, -0x1

    goto :goto_51

    :cond_a5
    aget-byte v4, v3, v2

    if-gtz v4, :cond_b7

    aget-byte v4, v3, v2

    neg-int v4, v4

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v1, v4}, Lorg/bouncycastle/math/ec/ECPoint;->subtract(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    goto :goto_a2

    :cond_b7
    aget-byte v4, v3, v2

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v1, v4}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    goto :goto_a2
.end method

.method public windowNaf(BLjava/math/BigInteger;)[B
    .registers 12

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [B

    shl-int v0, v8, p1

    int-to-short v4, v0

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    move v0, v1

    move v2, v1

    :goto_14
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-gtz v6, :cond_22

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_22
    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-nez v6, :cond_31

    aput-byte v1, v3, v2

    :goto_2a
    invoke-virtual {p2, v8}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_31
    invoke-virtual {p2, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-nez v6, :cond_52

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v3, v2

    :goto_45
    aget-byte v0, v3, v2

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    move v0, v2

    goto :goto_2a

    :cond_52
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    sub-int/2addr v0, v4

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v3, v2

    goto :goto_45
.end method
