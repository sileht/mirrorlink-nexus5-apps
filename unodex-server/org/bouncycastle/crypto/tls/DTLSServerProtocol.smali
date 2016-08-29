.class public Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;
.super Lorg/bouncycastle/crypto/tls/DTLSProtocol;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;
    }
.end annotation


# instance fields
.field protected verifyRequests:Z


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/DTLSProtocol;-><init>(Ljava/security/SecureRandom;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->verifyRequests:Z

    return-void
.end method


# virtual methods
.method public accept(Lorg/bouncycastle/crypto/tls/TlsServer;Lorg/bouncycastle/crypto/tls/DatagramTransport;)Lorg/bouncycastle/crypto/tls/DTLSTransport;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x50

    if-eqz p1, :cond_39

    if-eqz p2, :cond_42

    new-instance v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->secureRandom:Ljava/security/SecureRandom;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createRandomBlock(Ljava/security/SecureRandom;)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    new-instance v1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;-><init>()V

    iput-object p1, v1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    new-instance v2, Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->secureRandom:Ljava/security/SecureRandom;

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/tls/SecurityParameters;)V

    iput-object v2, v1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    iget-object v0, v1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->init(Lorg/bouncycastle/crypto/tls/TlsServerContext;)V

    new-instance v0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    iget-object v2, v1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    const/16 v3, 0x16

    invoke-direct {v0, p2, v2, p1, v3}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;-><init>(Lorg/bouncycastle/crypto/tls/DatagramTransport;Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsPeer;S)V

    :try_start_34
    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->serverHandshake(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)Lorg/bouncycastle/crypto/tls/DTLSTransport;
    :try_end_37
    .catch Lorg/bouncycastle/crypto/tls/TlsFatalAlert; {:try_start_34 .. :try_end_37} :catch_4b
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_54
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_37} :catch_59

    move-result-object v0

    return-object v0

    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'server\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'transport\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4b
    move-exception v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    throw v1

    :catch_54
    move-exception v1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    throw v1

    :catch_59
    move-exception v1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected expectCertificateVerifyMessage(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;)Z
    .registers 4

    const/4 v0, 0x0

    iget-short v1, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificateType:S

    if-gez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-short v1, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificateType:S

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasSigningCapability(S)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method protected generateCertificateRequest(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/CertificateRequest;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p2, v0}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method protected generateNewSessionTicket(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/NewSessionTicket;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p2, v0}, Lorg/bouncycastle/crypto/tls/NewSessionTicket;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method protected generateServerHello(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x50

    const/4 v0, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;->setServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v2

    iget-object v2, v2, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    sget-object v2, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getSelectedCipherSuite()I

    move-result v2

    iput v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCipherSuite:I

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCipherSuites:[I

    iget v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCipherSuite:I

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->arrayContains([II)Z

    move-result v2

    if-nez v2, :cond_56

    :cond_4a
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_50
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_56
    iget v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCipherSuite:I

    if-eqz v2, :cond_4a

    iget v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCipherSuite:I

    const/16 v3, 0xff

    if-eq v2, v3, :cond_4a

    iget v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCipherSuite:I

    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->validateSelectedCipherSuite(IS)V

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getSelectedCompressionMethod()S

    move-result v2

    int-to-short v2, v2

    iput-short v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCompressionMethod:S

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCompressionMethods:[S

    iget-short v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCompressionMethod:S

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->arrayContains([SS)Z

    move-result v2

    if-eqz v2, :cond_97

    iget v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCipherSuite:I

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    iget-short v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCompressionMethod:S

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getServerExtensions()Ljava/util/Hashtable;

    move-result-object v2

    iput-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    iget-boolean v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->secure_renegotiation:Z

    if-nez v2, :cond_9d

    :cond_8e
    :goto_8e
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    if-nez v0, :cond_c9

    :goto_92
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_97
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_9d
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    if-nez v2, :cond_b6

    :cond_a1
    const/4 v0, 0x1

    :goto_a2
    if-eqz v0, :cond_8e

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    if-eqz v0, :cond_c1

    :goto_a8
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    sget-object v2, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    sget-object v3, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createRenegotiationInfo([B)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8e

    :cond_b6
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    sget-object v3, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    goto :goto_a2

    :cond_c1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    goto :goto_a8

    :cond_c9
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    sget-object v2, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->expectSessionTicket:Z

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    goto :goto_92
.end method

.method public getVerifyRequests()Z
    .registers 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->verifyRequests:Z

    return v0
.end method

.method protected notifyClientCertificate(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/Certificate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-eqz v0, :cond_28

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    if-nez v0, :cond_2e

    iput-object p2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getClientCertificateType(Lorg/bouncycastle/crypto/tls/Certificate;Lorg/bouncycastle/crypto/tls/Certificate;)S

    move-result v0

    int-to-short v0, v0

    iput-short v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificateType:S

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    :goto_22
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    return-void

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2e
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_36
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    goto :goto_22
.end method

.method protected processCertificateVerify(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    :try_start_c
    iget-short v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificateType:S

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createTlsSigner(S)Lorg/bouncycastle/crypto/tls/TlsSigner;

    move-result-object v0

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsSigner;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lorg/bouncycastle/crypto/tls/TlsSigner;->verifyRawSignature([BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception v0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x33

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected processClientCertificate(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    invoke-virtual {p0, p1, v1}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->notifyClientCertificate(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/Certificate;)V

    return-void
.end method

.method protected processClientHello(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x20

    const/16 v6, 0x2f

    const/4 v5, 0x1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {v4, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v2

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v3

    array-length v3, v3

    if-gt v3, v4, :cond_37

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3d

    :cond_29
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_31
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_37
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_3d
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_29

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16Array(ILjava/io/InputStream;)[I

    move-result-object v3

    iput-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCipherSuites:[I

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v3

    if-lt v3, v5, :cond_95

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8Array(ILjava/io/InputStream;)[S

    move-result-object v3

    iput-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCompressionMethods:[S

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;->setClientVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyClientVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    iput-object v2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCipherSuites:[I

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyOfferedCipherSuites([I)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCompressionMethods:[S

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyOfferedCompressionMethods([S)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCipherSuites:[I

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->arrayContains([II)Z

    move-result v0

    if-nez v0, :cond_9b

    :goto_85
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    if-nez v0, :cond_9e

    :cond_89
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-boolean v1, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->secure_renegotiation:Z

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifySecureRenegotiation(Z)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    if-nez v0, :cond_c2

    :goto_94
    return-void

    :cond_95
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_9b
    iput-boolean v5, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->secure_renegotiation:Z

    goto :goto_85

    :cond_9e
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-eqz v0, :cond_89

    iput-boolean v5, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->secure_renegotiation:Z

    sget-object v1, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createRenegotiationInfo([B)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_89

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_c2
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientExtensions(Ljava/util/Hashtable;)V

    goto :goto_94
.end method

.method protected processClientKeyExchange(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientKeyExchange(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->establishMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V

    return-void
.end method

.method protected processClientSupplementalData(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    return-void
.end method

.method public serverHandshake(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)Lorg/bouncycastle/crypto/tls/DTLSTransport;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0xc

    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v5, 0x0

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-direct {v1, v2, p2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v2

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->getDiscoveredPeerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    iget-object v4, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;->setClientVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2e

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_2e
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->processClientHello(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->generateServerHello(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    iget v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCipherSuite:I

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getPRFAlgorithm(I)I

    move-result v2

    iput v2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    iget-short v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCompressionMethod:S

    int-to-short v2, v2

    iput-short v2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    iput v8, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->notifyHelloComplete()V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getServerSupplementalData()Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_d9

    :goto_57
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCredentials()Lorg/bouncycastle/crypto/tls/TlsCredentials;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-eqz v0, :cond_e4

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->generateCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)[B

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    :goto_86
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generateServerKeyExchange()[B

    move-result-object v0

    if-nez v0, :cond_ea

    :goto_8e
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-nez v0, :cond_ee

    :cond_92
    :goto_92
    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v2

    const/16 v3, 0x17

    if-eq v2, v3, :cond_10d

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2, v5}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    :goto_aa
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-eqz v2, :cond_119

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v2

    if-eq v2, v7, :cond_11f

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v2

    if-nez v2, :cond_12b

    sget-object v2, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->notifyClientCertificate(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/Certificate;)V

    :goto_cb
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_131

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_d9
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->generateSupplementalData(Ljava/util/Vector;)[B

    move-result-object v0

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    goto/16 :goto_57

    :cond_e4
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    goto :goto_86

    :cond_ea
    invoke-virtual {v1, v8, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    goto :goto_8e

    :cond_ee
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCertificateRequest()Lorg/bouncycastle/crypto/tls/CertificateRequest;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-eqz v0, :cond_92

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->generateCertificateRequest(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/CertificateRequest;)[B

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    goto :goto_92

    :cond_10d
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->processClientSupplementalData(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    goto :goto_aa

    :cond_119
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    goto :goto_cb

    :cond_11f
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->processClientCertificate(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    goto :goto_cb

    :cond_12b
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_131
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->processClientKeyExchange(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->initPendingEpoch(Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->expectCertificateVerifyMessage(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;)Z

    move-result v0

    if-nez v0, :cond_15d

    :goto_147
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getCurrentHash()[B

    move-result-object v0

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v3

    const/16 v4, 0x14

    if-eq v3, v4, :cond_17b

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_15d
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getCurrentHash()[B

    move-result-object v0

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v3

    const/16 v4, 0xf

    if-eq v3, v4, :cond_173

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_173
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->processCertificateVerify(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B[B)V

    goto :goto_147

    :cond_17b
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    const-string/jumbo v4, "client finished"

    invoke-static {v3, v4, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->processFinished([B[B)V

    iget-boolean v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->expectSessionTicket:Z

    if-nez v0, :cond_1af

    :goto_18f
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    const-string/jumbo v2, "server finished"

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getCurrentHash()[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v0

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->finish()V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyHandshakeComplete()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/DTLSTransport;

    invoke-direct {v0, p2}, Lorg/bouncycastle/crypto/tls/DTLSTransport;-><init>(Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)V

    return-object v0

    :cond_1af
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getNewSessionTicket()Lorg/bouncycastle/crypto/tls/NewSessionTicket;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->generateNewSessionTicket(Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/crypto/tls/NewSessionTicket;)[B

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    goto :goto_18f
.end method

.method public setVerifyRequests(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;->verifyRequests:Z

    return-void
.end method
