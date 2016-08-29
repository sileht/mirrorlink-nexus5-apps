.class public Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiDigestCipher;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private forEncrypting:Z

.field private final mcElieceCCA2Cipher:Lorg/bouncycastle/pqc/crypto/MessageEncryptor;

.field private final messDigest:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/MessageEncryptor;Lorg/bouncycastle/crypto/Digest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiDigestCipher;->mcElieceCCA2Cipher:Lorg/bouncycastle/pqc/crypto/MessageEncryptor;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiDigestCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 5

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiDigestCipher;->forEncrypting:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-nez v0, :cond_16

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    :goto_9
    if-nez p1, :cond_20

    :cond_b
    if-eqz p1, :cond_2f

    :cond_d
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiDigestCipher;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiDigestCipher;->mcElieceCCA2Cipher:Lorg/bouncycastle/pqc/crypto/MessageEncryptor;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/MessageEncryptor;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_16
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_9

    :cond_20
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Encrypting Requires Public Key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Decrypting Requires Private Key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public messageDecrypt([B)[B
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiDigestCipher;->forEncrypting:Z

    if-nez v0, :cond_c

    :try_start_5
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiDigestCipher;->mcElieceCCA2Cipher:Lorg/bouncycastle/pqc/crypto/MessageEncryptor;

    invoke-interface {v0, p1}, Lorg/bouncycastle/pqc/crypto/MessageEncryptor;->messageDecrypt([B)[B
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_15

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "McElieceKobaraImaiDigestCipher not initialised for decrypting."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_b
.end method

.method public messageEncrypt()[B
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiDigestCipher;->forEncrypting:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiDigestCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiDigestCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/4 v1, 0x0

    :try_start_13
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiDigestCipher;->mcElieceCCA2Cipher:Lorg/bouncycastle/pqc/crypto/MessageEncryptor;

    invoke-interface {v2, v0}, Lorg/bouncycastle/pqc/crypto/MessageEncryptor;->messageEncrypt([B)[B
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_23

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "McElieceKobaraImaiDigestCipher not initialised for encrypting."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_19
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiDigestCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiDigestCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiDigestCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method
