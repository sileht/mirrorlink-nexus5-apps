.class Lorg/bouncycastle/math/ec/WTauNafMultiplier;
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

.method private static multiplyFromWTnaf(Lorg/bouncycastle/math/ec/ECPoint$F2m;[BLorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/ECPoint$F2m;
    .registers 7

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->byteValue()B

    move-result v0

    if-nez p2, :cond_31

    :cond_14
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/Tnaf;->getPreComp(Lorg/bouncycastle/math/ec/ECPoint$F2m;B)[Lorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;-><init>([Lorg/bouncycastle/math/ec/ECPoint$F2m;)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->setPreCompInfo(Lorg/bouncycastle/math/ec/PreCompInfo;)V

    :goto_20
    move-object v1, v0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    array-length v2, p1

    :cond_2c
    :goto_2c
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_3c

    return-object v0

    :cond_31
    instance-of v1, p2, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;

    if-eqz v1, :cond_14

    check-cast p2, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    goto :goto_20

    :cond_3c
    invoke-static {v0}, Lorg/bouncycastle/math/ec/Tnaf;->tau(Lorg/bouncycastle/math/ec/ECPoint$F2m;)Lorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    aget-byte v3, p1, v2

    if-eqz v3, :cond_2c

    aget-byte v3, p1, v2

    if-gtz v3, :cond_52

    aget-byte v3, p1, v2

    neg-int v3, v3

    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->subtractSimple(Lorg/bouncycastle/math/ec/ECPoint$F2m;)Lorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    goto :goto_2c

    :cond_52
    aget-byte v3, p1, v2

    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lorg/bouncycastle/math/ec/ECPoint$F2m;)Lorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    goto :goto_2c
.end method

.method private multiplyWTnaf(Lorg/bouncycastle/math/ec/ECPoint$F2m;Lorg/bouncycastle/math/ec/ZTauElement;Lorg/bouncycastle/math/ec/PreCompInfo;BB)Lorg/bouncycastle/math/ec/ECPoint$F2m;
    .registers 12

    const/4 v2, 0x4

    if-eqz p4, :cond_1a

    sget-object v5, Lorg/bouncycastle/math/ec/Tnaf;->alpha1:[Lorg/bouncycastle/math/ec/ZTauElement;

    :goto_5
    invoke-static {p5, v2}, Lorg/bouncycastle/math/ec/Tnaf;->getTw(BI)Ljava/math/BigInteger;

    move-result-object v4

    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    move v0, p5

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/Tnaf;->tauAdicWNaf(BLorg/bouncycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lorg/bouncycastle/math/ec/ZTauElement;)[B

    move-result-object v0

    invoke-static {p1, v0, p3}, Lorg/bouncycastle/math/ec/WTauNafMultiplier;->multiplyFromWTnaf(Lorg/bouncycastle/math/ec/ECPoint$F2m;[BLorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0

    :cond_1a
    sget-object v5, Lorg/bouncycastle/math/ec/Tnaf;->alpha0:[Lorg/bouncycastle/math/ec/ZTauElement;

    goto :goto_5
.end method


# virtual methods
.method public multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/ECPoint;
    .registers 15

    instance-of v0, p1, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    if-eqz v0, :cond_35

    move-object v6, p1

    check-cast v6, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->byteValue()B

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->getMu()B

    move-result v4

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->getSi()[Ljava/math/BigInteger;

    move-result-object v3

    const/16 v5, 0xa

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/Tnaf;->partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lorg/bouncycastle/math/ec/ZTauElement;

    move-result-object v7

    move-object v5, p0

    move-object v8, p3

    move v9, v2

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/math/ec/WTauNafMultiplier;->multiplyWTnaf(Lorg/bouncycastle/math/ec/ECPoint$F2m;Lorg/bouncycastle/math/ec/ZTauElement;Lorg/bouncycastle/math/ec/PreCompInfo;BB)Lorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0

    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only ECPoint.F2m can be used in WTauNafMultiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
