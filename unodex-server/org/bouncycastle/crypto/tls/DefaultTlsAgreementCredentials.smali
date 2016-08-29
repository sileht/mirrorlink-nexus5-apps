.class public Lorg/bouncycastle/crypto/tls/DefaultTlsAgreementCredentials;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;


# instance fields
.field protected basicAgreement:Lorg/bouncycastle/crypto/BasicAgreement;

.field protected certificate:Lorg/bouncycastle/crypto/tls/Certificate;

.field protected privateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field protected truncateAgreement:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/Certificate;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    if-eqz p2, :cond_50

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_59

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    if-nez v0, :cond_62

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    if-nez v0, :cond_71

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'privateKey\' type not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'certificate\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'certificate\' cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'privateKey\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'privateKey\' must be private"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_62
    new-instance v0, Lorg/bouncycastle/crypto/agreement/DHBasicAgreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/DHBasicAgreement;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsAgreementCredentials;->basicAgreement:Lorg/bouncycastle/crypto/BasicAgreement;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsAgreementCredentials;->truncateAgreement:Z

    :goto_6c
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsAgreementCredentials;->certificate:Lorg/bouncycastle/crypto/tls/Certificate;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsAgreementCredentials;->privateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-void

    :cond_71
    new-instance v0, Lorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsAgreementCredentials;->basicAgreement:Lorg/bouncycastle/crypto/BasicAgreement;

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsAgreementCredentials;->truncateAgreement:Z

    goto :goto_6c
.end method


# virtual methods
.method public generateAgreement(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsAgreementCredentials;->basicAgreement:Lorg/bouncycastle/crypto/BasicAgreement;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsAgreementCredentials;->privateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/BasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsAgreementCredentials;->basicAgreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsAgreementCredentials;->truncateAgreement:Z

    if-nez v1, :cond_1c

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsAgreementCredentials;->basicAgreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BasicAgreement;->getFieldSize()I

    move-result v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    return-object v0

    :cond_1c
    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsAgreementCredentials;->certificate:Lorg/bouncycastle/crypto/tls/Certificate;

    return-object v0
.end method
