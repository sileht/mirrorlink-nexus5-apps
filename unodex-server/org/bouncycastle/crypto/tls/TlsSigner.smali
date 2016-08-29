.class public interface abstract Lorg/bouncycastle/crypto/tls/TlsSigner;
.super Ljava/lang/Object;
.source "Unknown"


# virtual methods
.method public abstract createSigner(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/Signer;
.end method

.method public abstract createVerifyer(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/Signer;
.end method

.method public abstract generateRawSignature(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation
.end method

.method public abstract init(Lorg/bouncycastle/crypto/tls/TlsContext;)V
.end method

.method public abstract isValidPublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Z
.end method

.method public abstract verifyRawSignature([BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation
.end method
