.class public Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;
.super Lorg/bouncycastle/crypto/tls/DTLSProtocol;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/DTLSProtocol;-><init>(Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected static parseHelloVerifyRequest(Lorg/bouncycastle/crypto/tls/TlsContext;[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-object v1

    :cond_1b
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected static patchClientHelloWithCookie([B[B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v0, 0x22

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v0

    add-int/lit8 v0, v0, 0x23

    add-int/lit8 v1, v0, 0x1

    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    int-to-short v3, v3

    invoke-static {v3, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    array-length v0, p1

    invoke-static {p1, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    add-int/2addr v0, v1

    array-length v3, p0

    sub-int/2addr v3, v1

    invoke-static {p0, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method protected clientHandshake(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)Lorg/bouncycastle/crypto/tls/DTLSTransport;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0xb

    const/4 v8, 0x1

    const/16 v7, 0xa

    const/4 v1, 0x0

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-direct {v3, v0, p2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->generateClientHello(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/TlsClient;)[B

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->getDiscoveredPeerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v5

    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v6

    if-eqz v6, :cond_4e

    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v6, v5}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->setServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v6, v5}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    :goto_3a
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_56

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6f

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_4e
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_56
    iget-object v5, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    invoke-static {v5, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->parseHelloVerifyRequest(Lorg/bouncycastle/crypto/tls/TlsContext;[B)[B

    move-result-object v0

    invoke-static {v4, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->patchClientHelloWithCookie([B[B)[B

    move-result-object v0

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->resetHandshakeMessagesDigest()V

    invoke-virtual {v3, v8, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    goto :goto_3a

    :cond_6f
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processServerHello(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    iget v4, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    invoke-static {v4}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getPRFAlgorithm(I)I

    move-result v4

    iput v4, v2, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    iget-short v4, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCompressionMethod:S

    int-to-short v4, v4

    iput-short v4, v2, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    const/16 v4, 0xc

    iput v4, v2, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->notifyHelloComplete()V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v2

    const/16 v4, 0x17

    if-eq v2, v4, :cond_d8

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v2, v1}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    :goto_9b
    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsClient;->getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v2

    iput-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v4, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-interface {v2, v4}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v2

    if-eq v2, v9, :cond_e4

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    :goto_b5
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v2

    const/16 v4, 0xc

    if-eq v2, v4, :cond_f0

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    :goto_c2
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v2

    const/16 v4, 0xd

    if-eq v2, v4, :cond_fc

    :goto_ca
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v2

    const/16 v4, 0xe

    if-eq v2, v4, :cond_108

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_d8
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processServerSupplementalData(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    goto :goto_9b

    :cond_e4
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processServerCertificate(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    goto :goto_b5

    :cond_f0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processServerKeyExchange(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    goto :goto_c2

    :cond_fc
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processCertificateRequest(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    goto :goto_ca

    :cond_108
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_178

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientSupplementalData()Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_180

    :goto_117
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-nez v0, :cond_18a

    :goto_11b
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-nez v0, :cond_1ae

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    :goto_124
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->generateClientKeyExchange(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;)[B

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v3, v1, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->establishMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    instance-of v0, v0, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    if-nez v0, :cond_1b7

    :goto_13a
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->initPendingEpoch(Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    const-string/jumbo v1, "client finished"

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getCurrentHash()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v3, v1, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    iget-boolean v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->expectSessionTicket:Z

    if-nez v0, :cond_1ce

    :goto_159
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    const-string/jumbo v1, "server finished"

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getCurrentHash()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v2

    const/16 v4, 0x14

    if-eq v2, v4, :cond_1e8

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_178
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_180
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->generateSupplementalData(Ljava/util/Vector;)[B

    move-result-object v0

    const/16 v2, 0x17

    invoke-virtual {v3, v2, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    goto :goto_117

    :cond_18a
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsAuthentication;->getClientCredentials(Lorg/bouncycastle/crypto/tls/CertificateRequest;)Lorg/bouncycastle/crypto/tls/TlsCredentials;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-nez v0, :cond_1a4

    move-object v0, v1

    :goto_199
    if-eqz v0, :cond_1ab

    :goto_19b
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->generateCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)[B

    move-result-object v0

    invoke-virtual {v3, v9, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    goto/16 :goto_11b

    :cond_1a4
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    goto :goto_199

    :cond_1ab
    sget-object v0, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    goto :goto_19b

    :cond_1ae
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V

    goto/16 :goto_124

    :cond_1b7
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    check-cast v0, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getCurrentHash()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->generateCertificateVerify(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)[B

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v3, v1, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    goto/16 :goto_13a

    :cond_1ce
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1df

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1df
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processNewSessionTicket(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    goto/16 :goto_159

    :cond_1e8
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processFinished([B[B)V

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->finish()V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyHandshakeComplete()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/DTLSTransport;

    invoke-direct {v0, p2}, Lorg/bouncycastle/crypto/tls/DTLSTransport;-><init>(Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)V

    return-object v0
.end method

.method public connect(Lorg/bouncycastle/crypto/tls/TlsClient;Lorg/bouncycastle/crypto/tls/DatagramTransport;)Lorg/bouncycastle/crypto/tls/DTLSTransport;
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

    const/4 v1, 0x1

    iput v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->secureRandom:Ljava/security/SecureRandom;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createRandomBlock(Ljava/security/SecureRandom;)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    new-instance v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;-><init>()V

    iput-object p1, v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    new-instance v2, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->secureRandom:Ljava/security/SecureRandom;

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/tls/SecurityParameters;)V

    iput-object v2, v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iget-object v0, v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->init(Lorg/bouncycastle/crypto/tls/TlsClientContext;)V

    new-instance v0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    iget-object v2, v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    const/16 v3, 0x16

    invoke-direct {v0, p2, v2, p1, v3}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;-><init>(Lorg/bouncycastle/crypto/tls/DatagramTransport;Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsPeer;S)V

    :try_start_34
    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->clientHandshake(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)Lorg/bouncycastle/crypto/tls/DTLSTransport;
    :try_end_37
    .catch Lorg/bouncycastle/crypto/tls/TlsFatalAlert; {:try_start_34 .. :try_end_37} :catch_4b
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_54
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_37} :catch_59

    move-result-object v0

    return-object v0

    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'client\' cannot be null"

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

.method protected generateCertificateVerify(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method protected generateClientHello(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/TlsClient;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v3

    if-eqz v3, :cond_6d

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->setClientVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCipherSuites()[I

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    if-nez v0, :cond_75

    :cond_40
    move v0, v2

    :goto_41
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    array-length v3, v3

    if-nez v0, :cond_81

    :goto_46
    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16Array([ILjava/io/OutputStream;)V

    if-nez v0, :cond_84

    :goto_52
    new-array v0, v2, [S

    aput-short v1, v0, v1

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCompressionMethods:[S

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCompressionMethods:[S

    array-length v0, v0

    int-to-short v0, v0

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCompressionMethods:[S

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8Array([SLjava/io/OutputStream;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    if-nez v0, :cond_8a

    :goto_68
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_6d
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_75
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    sget-object v3, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_40

    move v0, v1

    goto :goto_41

    :cond_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_84
    const/16 v0, 0xff

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    goto :goto_52

    :cond_8a
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v4, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    goto :goto_68
.end method

.method protected generateClientKeyExchange(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generateClientKeyExchange(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method protected processCertificateRequest(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/CertificateRequest;

    move-result-object v1

    iput-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V

    return-void

    :cond_1a
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected processNewSessionTicket(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/NewSessionTicket;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/NewSessionTicket;

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyNewSessionTicket(Lorg/bouncycastle/crypto/tls/NewSessionTicket;)V

    return-void
.end method

.method protected processServerCertificate(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
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

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getAuthentication()Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsAuthentication;->notifyServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    return-void
.end method

.method protected processServerHello(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x20

    const/16 v4, 0x2f

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-static {v5, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v0

    array-length v2, v0

    if-gt v2, v5, :cond_4d

    iget-object v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v2, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySessionID([B)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    iget v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->arrayContains([II)Z

    move-result v0

    if-nez v0, :cond_53

    :cond_41
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_47
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_4d
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_53
    iget v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    if-eqz v0, :cond_41

    iget v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_41

    iget v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->validateSelectedCipherSuite(IS)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    iget v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySelectedCipherSuite(I)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    int-to-short v0, v0

    iput-short v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCompressionMethod:S

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCompressionMethods:[S

    iget-short v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCompressionMethod:S

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->arrayContains([SS)Z

    move-result v0

    if-eqz v0, :cond_93

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    iget-short v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCompressionMethod:S

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySelectedCompressionMethod(S)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v1

    if-nez v1, :cond_99

    :goto_87
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    iget-boolean v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->secure_renegotiation:Z

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySecureRenegotiation(Z)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    if-nez v0, :cond_f2

    :goto_92
    return-void

    :cond_93
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_99
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_9d
    :goto_9d
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_b8

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-nez v0, :cond_db

    :cond_af
    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->expectSessionTicket:Z

    goto :goto_87

    :cond_b8
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v3, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9d

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    if-nez v3, :cond_d2

    :cond_ca
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x6e

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_d2
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ca

    goto :goto_9d

    :cond_db
    const/4 v2, 0x1

    iput-boolean v2, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->secure_renegotiation:Z

    sget-object v2, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createRenegotiationInfo([B)[B

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_af

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_f2
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    goto :goto_92
.end method

.method protected processServerKeyExchange(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerKeyExchange(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-void
.end method

.method protected processServerSupplementalData(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
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

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    return-void
.end method
