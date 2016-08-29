.class public Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "Unknown"


# instance fields
.field private params:Lorg/bouncycastle/crypto/params/ElGamalParameters;


# direct methods
.method protected constructor <init>(ZLorg/bouncycastle/crypto/params/ElGamalParameters;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/bouncycastle/crypto/params/ElGamalParameters;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    if-eqz v1, :cond_16

    check-cast p1, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/bouncycastle/crypto/params/ElGamalParameters;

    if-eqz v1, :cond_17

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/bouncycastle/crypto/params/ElGamalParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_16
    return v0

    :cond_17
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v1

    if-eqz v1, :cond_1e

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method public getParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/bouncycastle/crypto/params/ElGamalParameters;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/bouncycastle/crypto/params/ElGamalParameters;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/bouncycastle/crypto/params/ElGamalParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->hashCode()I

    move-result v0

    goto :goto_5
.end method
