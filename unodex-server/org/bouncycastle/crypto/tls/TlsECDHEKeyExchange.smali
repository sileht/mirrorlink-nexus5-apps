.class public Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;
.super Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;
.source "Unknown"


# instance fields
.field protected serverCredentials:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;


# direct methods
.method public constructor <init>(ILjava/util/Vector;[I[S[S)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;-><init>(ILjava/util/Vector;[I[S[S)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    return-void
.end method


# virtual methods
.method public generateServerKeyExchange()[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x17

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->namedCurves:[I

    if-eqz v0, :cond_8e

    move v0, v1

    :goto_a
    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->namedCurves:[I

    array-length v4, v4

    if-lt v0, v4, :cond_90

    :goto_f
    if-gez v3, :cond_a1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->namedCurves:[I

    const v4, 0xff01

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->arrayContains([II)Z

    move-result v0

    if-nez v0, :cond_a7

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->namedCurves:[I

    const v4, 0xff02

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->arrayContains([II)Z

    move-result v0

    if-nez v0, :cond_ac

    :goto_27
    if-eqz v2, :cond_b2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->generateECKeyPair(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/ECDomainParameters;)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->ecAgreeServerPrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->clientECPointFormats:[S

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-static {v5, v0}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->serializeECPublicKey([SLorg/bouncycastle/crypto/params/ECPublicKeyParameters;)[B

    move-result-object v0

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-ltz v3, :cond_ba

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->writeNamedECParameters(ILjava/io/OutputStream;)V

    :goto_51
    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/tls/CombinedHash;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v3

    iget-object v5, v3, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v6, v3, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    array-length v6, v6

    invoke-interface {v2, v5, v1, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, v3, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iget-object v3, v3, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    array-length v3, v3

    invoke-interface {v2, v5, v1, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v3, v0

    invoke-interface {v2, v0, v1, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-interface {v2, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v0

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_8e
    move v3, v5

    goto :goto_f

    :cond_90
    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->namedCurves:[I

    aget v4, v4, v0

    invoke-static {v4}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->isSupportedNamedCurve(I)Z

    move-result v6

    if-nez v6, :cond_9e

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    :cond_9e
    move v3, v4

    goto/16 :goto_f

    :cond_a1
    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->getParametersForNamedCurve(I)Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    :goto_a5
    move-object v2, v0

    goto :goto_27

    :cond_a7
    invoke-static {v5}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->getParametersForNamedCurve(I)Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    goto :goto_a5

    :cond_ac
    const/4 v0, 0x7

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->getParametersForNamedCurve(I)Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    goto :goto_a5

    :cond_b2
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_ba
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->clientECPointFormats:[S

    invoke-static {v3, v2, v4}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->writeExplicitECParameters([SLorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/io/OutputStream;)V

    goto :goto_51
.end method

.method protected initVerifyer(Lorg/bouncycastle/crypto/tls/TlsSigner;Lorg/bouncycastle/crypto/tls/SecurityParameters;)Lorg/bouncycastle/crypto/Signer;
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsSigner;->createVerifyer(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    iget-object v1, p2, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v2, p2, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    iget-object v1, p2, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iget-object v2, p2, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    return-object v0
.end method

.method public processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    if-nez v0, :cond_c

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_c
    return-void
.end method

.method public processServerCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v0, :cond_10

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    check-cast p1, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    return-void

    :cond_10
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->initVerifyer(Lorg/bouncycastle/crypto/tls/TlsSigner;Lorg/bouncycastle/crypto/tls/SecurityParameters;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/io/SignerInputStream;

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/crypto/io/SignerInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/Signer;)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->namedCurves:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->clientECPointFormats:[S

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->readECParameters([I[SLjava/io/InputStream;)Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/bouncycastle/crypto/Signer;->verifySignature([B)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->clientECPointFormats:[S

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->deserializeECPublicKey([SLorg/bouncycastle/crypto/params/ECDomainParameters;[B)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->validateECPublicKey(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;->ecAgreeServerPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-void

    :cond_34
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x33

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public validateCertificateRequest(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->getCertificateTypes()[S

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    array-length v2, v1

    if-lt v0, v2, :cond_9

    return-void

    :cond_9
    aget-short v2, v1, v0

    sparse-switch v2, :sswitch_data_1a

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    nop

    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_16
        0x2 -> :sswitch_16
        0x40 -> :sswitch_16
    .end sparse-switch
.end method
