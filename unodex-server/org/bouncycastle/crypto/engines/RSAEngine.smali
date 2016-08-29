.class public Lorg/bouncycastle/crypto/engines/RSAEngine;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private core:Lorg/bouncycastle/crypto/engines/RSACoreEngine;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputBlockSize()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RSAEngine;->core:Lorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v0

    return v0
.end method

.method public getOutputBlockSize()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RSAEngine;->core:Lorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RSAEngine;->core:Lorg/bouncycastle/crypto/engines/RSACoreEngine;

    if-eqz v0, :cond_a

    :goto_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RSAEngine;->core:Lorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_a
    new-instance v0, Lorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/RSACoreEngine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RSAEngine;->core:Lorg/bouncycastle/crypto/engines/RSACoreEngine;

    goto :goto_4
.end method

.method public processBlock([BII)[B
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RSAEngine;->core:Lorg/bouncycastle/crypto/engines/RSACoreEngine;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RSAEngine;->core:Lorg/bouncycastle/crypto/engines/RSACoreEngine;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RSAEngine;->core:Lorg/bouncycastle/crypto/engines/RSACoreEngine;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RSAEngine;->core:Lorg/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v2, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->convertInput([BII)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->convertOutput(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RSA engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
