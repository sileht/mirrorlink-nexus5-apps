.class public abstract Lorg/bouncycastle/crypto/tls/AbstractTlsServer;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsPeer;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsServer;


# instance fields
.field protected cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

.field protected clientECPointFormats:[S

.field protected clientExtensions:Ljava/util/Hashtable;

.field protected clientVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field protected context:Lorg/bouncycastle/crypto/tls/TlsServerContext;

.field protected eccCipherSuitesOffered:Z

.field protected namedCurves:[I

.field protected offeredCipherSuites:[I

.field protected offeredCompressionMethods:[S

.field protected selectedCipherSuite:I

.field protected selectedCompressionMethod:S

.field protected serverECPointFormats:[S

.field protected serverExtensions:Ljava/util/Hashtable;

.field protected serverVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field protected supportedSignatureAlgorithms:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsPeer;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    return-void
.end method


# virtual methods
.method public getCertificateRequest()Lorg/bouncycastle/crypto/tls/CertificateRequest;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCipherSuites()[I
.end method

.method public getCompression()Lorg/bouncycastle/crypto/tls/TlsCompression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->selectedCompressionMethod:S

    packed-switch v0, :pswitch_data_14

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_d
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsNullCompression;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/TlsNullCompression;-><init>()V

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method protected getCompressionMethods()[S
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [S

    aput-short v1, v0, v1

    return-object v0
.end method

.method protected getMaximumVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .registers 2

    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method protected getMinimumVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .registers 2

    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getNewSessionTicket()Lorg/bouncycastle/crypto/tls/NewSessionTicket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/NewSessionTicket;

    const-wide/16 v2, 0x0

    sget-object v1, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-direct {v0, v2, v3, v1}, Lorg/bouncycastle/crypto/tls/NewSessionTicket;-><init>(J[B)V

    return-object v0
.end method

.method public getSelectedCipherSuite()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->namedCurves:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->clientECPointFormats:[S

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->supportsClientECCCapabilities([I[S)Z

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->getCipherSuites()[I

    move-result-object v2

    :goto_d
    array-length v3, v2

    if-lt v0, v3, :cond_18

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_18
    aget v3, v2, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->offeredCipherSuites:[I

    invoke-static {v4, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->arrayContains([II)Z

    move-result v4

    if-nez v4, :cond_25

    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_25
    if-eqz v1, :cond_2a

    :cond_27
    iput v3, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->selectedCipherSuite:I

    return v3

    :cond_2a
    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->isECCCipherSuite(I)Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_22
.end method

.method public getSelectedCompressionMethod()S
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->getCompressionMethods()[S

    move-result-object v1

    :goto_5
    array-length v2, v1

    if-lt v0, v2, :cond_10

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_10
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->offeredCompressionMethods:[S

    aget-short v3, v1, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->arrayContains([SS)Z

    move-result v2

    if-nez v2, :cond_1d

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1d
    aget-short v0, v1, v0

    int-to-short v1, v0

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->selectedCompressionMethod:S

    return v0
.end method

.method public getServerExtensions()Ljava/util/Hashtable;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->clientECPointFormats:[S

    if-nez v0, :cond_9

    :cond_8
    return-object v4

    :cond_9
    iget v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->selectedCipherSuite:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->isECCCipherSuite(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    new-array v0, v0, [S

    aput-short v3, v0, v1

    aput-short v2, v0, v2

    aput-short v1, v0, v3

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->serverECPointFormats:[S

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->serverExtensions:Ljava/util/Hashtable;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->serverExtensions:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->serverECPointFormats:[S

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->addSupportedPointFormatsExtension(Ljava/util/Hashtable;[S)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->serverExtensions:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getServerSupplementalData()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->getMinimumVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->clientVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_c
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x46

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_14
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->getMaximumVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->clientVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->clientVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isLaterVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->serverVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0

    :cond_2b
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->clientVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->serverVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/tls/TlsServerContext;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->context:Lorg/bouncycastle/crypto/tls/TlsServerContext;

    return-void
.end method

.method public notifyClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V
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

.method public notifyClientVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->clientVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-void
.end method

.method public notifyHandshakeComplete()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public notifyOfferedCipherSuites([I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->offeredCipherSuites:[I

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->offeredCipherSuites:[I

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->containsECCCipherSuites([I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->eccCipherSuitesOffered:Z

    return-void
.end method

.method public notifyOfferedCompressionMethods([S)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->offeredCompressionMethods:[S

    return-void
.end method

.method public notifySecureRenegotiation(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public processClientExtensions(Ljava/util/Hashtable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x2f

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->clientExtensions:Ljava/util/Hashtable;

    if-nez p1, :cond_b

    :goto_6
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->eccCipherSuitesOffered:Z

    if-eqz v0, :cond_30

    :goto_a
    return-void

    :cond_b
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getSignatureAlgorithmsExtension(Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->supportedSignatureAlgorithms:Ljava/util/Vector;

    if-nez v0, :cond_22

    :cond_15
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->getSupportedEllipticCurvesExtension(Ljava/util/Hashtable;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->namedCurves:[I

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->getSupportedPointFormatsExtension(Ljava/util/Hashtable;)[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->clientECPointFormats:[S

    goto :goto_6

    :cond_22
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->clientVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSignatureAlgorithmsExtensionAllowed(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_30
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->namedCurves:[I

    if-eqz v0, :cond_3a

    :cond_34
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_3a
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;->clientECPointFormats:[S

    if-nez v0, :cond_34

    goto :goto_a
.end method

.method public processClientSupplementalData(Ljava/util/Vector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected supportsClientECCCapabilities([I[S)Z
    .registers 7

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    move v0, v1

    :goto_4
    array-length v2, p1

    if-lt v0, v2, :cond_d

    return v1

    :cond_8
    invoke-static {}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->hasAnySupportedNamedCurves()Z

    move-result v0

    return v0

    :cond_d
    aget v2, p1, v0

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/NamedCurve;->refersToASpecificNamedCurve(I)Z

    move-result v3

    if-nez v3, :cond_17

    :cond_15
    const/4 v0, 0x1

    return v0

    :cond_17
    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->isSupportedNamedCurve(I)Z

    move-result v2

    if-nez v2, :cond_15

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method
