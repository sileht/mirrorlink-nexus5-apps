.class public Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;
.super Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;
.source "Unknown"


# instance fields
.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/ElGamalParameters;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;-><init>(ZLorg/bouncycastle/crypto/params/ElGamalParameters;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;->y:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;->y:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_14
    move v0, v1

    :goto_15
    return v0

    :cond_16
    return v1

    :cond_17
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15
.end method

.method public getY()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;->y:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;->y:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-super {p0}, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method