.class public Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;
.source "Unknown"


# instance fields
.field protected dhAgreeClientPrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

.field protected dhAgreeServerPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

.field protected premasterSecret:[B

.field protected pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

.field protected psk_identity_hint:[B

.field protected rsaServerPublicKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

.field protected serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# direct methods
.method public constructor <init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;-><init>(ILjava/util/Vector;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreeServerPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreeClientPrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->rsaServerPublicKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    packed-switch p1, :pswitch_data_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unsupported key exchange algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1a
    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0xd
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method


# virtual methods
.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;->notifyIdentityHint([B)V

    :goto_b
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;->getPSKIdentity()[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_27

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_32

    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;->skipIdentityHint()V

    goto :goto_b

    :cond_27
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->rsaServerPublicKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/TlsRSAUtils;->generateEncryptedPreMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/params/RSAKeyParameters;Ljava/io/OutputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->premasterSecret:[B

    goto :goto_20

    :cond_32
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreeServerPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->generateEphemeralClientKeyExchange(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreeClientPrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    goto :goto_20
.end method

.method protected generateOtherSecret(I)[B
    .registers 4

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_f

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_18

    new-array v0, p1, [B

    return-object v0

    :cond_f
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreeServerPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreeClientPrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->calculateDHBasicAgreement(Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;)[B

    move-result-object v0

    return-object v0

    :cond_18
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->premasterSecret:[B

    return-object v0
.end method

.method public generatePremasterSecret()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;->getPSK()[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->generateOtherSecret(I)[B

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v3, v1

    add-int/lit8 v3, v3, 0x4

    array-length v4, v0

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_36

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p1, v2}, Lorg/bouncycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    :try_start_15
    invoke-static {v0}, Lorg/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_1b} :catch_46

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->validateRSAPublicKey(Lorg/bouncycastle/crypto/params/RSAKeyParameters;)Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->rsaServerPublicKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    const/16 v0, 0x20

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/bouncycastle/asn1/x509/Certificate;I)V

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    return-void

    :cond_36
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_3e
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :catch_46
    move-exception v0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2b

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_4f
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_e

    :goto_d
    return-void

    :cond_e
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    new-instance v4, Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-direct {v4, v3, v0}, Lorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, v1, v4}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHParameters;)V

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->validateDHPublicKey(Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;)Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreeServerPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    goto :goto_d
.end method

.method public requiresServerKeyExchange()Z
    .registers 3

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public skipServerCredentials()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_7

    return-void

    :cond_7
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public validateCertificateRequest(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected validateRSAPublicKey(Lorg/bouncycastle/crypto/params/RSAKeyParameters;)Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object p1

    :cond_c
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method
