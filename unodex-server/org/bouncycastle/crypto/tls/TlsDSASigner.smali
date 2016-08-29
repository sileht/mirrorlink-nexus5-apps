.class public abstract Lorg/bouncycastle/crypto/tls/TlsDSASigner;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsSigner;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsSigner;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createDSAImpl()Lorg/bouncycastle/crypto/DSA;
.end method

.method public createSigner(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/Signer;
    .registers 5

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsDSASigner;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/tls/TlsDSASigner;->makeSigner(Lorg/bouncycastle/crypto/Digest;ZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    return-object v0
.end method

.method public createVerifyer(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/Signer;
    .registers 4

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/tls/TlsDSASigner;->makeSigner(Lorg/bouncycastle/crypto/Digest;ZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    return-object v0
.end method

.method public generateRawSignature(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/digests/NullDigest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/NullDigest;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsDSASigner;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/tls/TlsDSASigner;->makeSigner(Lorg/bouncycastle/crypto/Digest;ZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    const/16 v1, 0x10

    const/16 v2, 0x14

    invoke-interface {v0, p2, v1, v2}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Signer;->generateSignature()[B

    move-result-object v0

    return-object v0
.end method

.method protected makeSigner(Lorg/bouncycastle/crypto/Digest;ZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/Signer;
    .registers 6

    new-instance v0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsDSASigner;->createDSAImpl()Lorg/bouncycastle/crypto/DSA;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;-><init>(Lorg/bouncycastle/crypto/DSA;Lorg/bouncycastle/crypto/Digest;)V

    invoke-interface {v0, p2, p3}, Lorg/bouncycastle/crypto/Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-object v0
.end method

.method public verifyRawSignature([BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/digests/NullDigest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/NullDigest;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lorg/bouncycastle/crypto/tls/TlsDSASigner;->makeSigner(Lorg/bouncycastle/crypto/Digest;ZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    const/16 v1, 0x10

    const/16 v2, 0x14

    invoke-interface {v0, p3, v1, v2}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Signer;->verifySignature([B)Z

    move-result v0

    return v0
.end method
