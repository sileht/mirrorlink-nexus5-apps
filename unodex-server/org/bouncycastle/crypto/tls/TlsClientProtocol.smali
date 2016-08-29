.class public Lorg/bouncycastle/crypto/tls/TlsClientProtocol;
.super Lorg/bouncycastle/crypto/tls/TlsProtocol;
.source "Unknown"


# instance fields
.field protected authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

.field protected certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

.field protected clientExtensions:Ljava/util/Hashtable;

.field protected keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

.field protected offeredCipherSuites:[I

.field protected offeredCompressionMethods:[S

.field protected selectedCipherSuite:I

.field protected selectedCompressionMethod:S

.field protected tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

.field protected tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4

    invoke-static {}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->createSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    return-void
.end method

.method private static createSecureRandom()Ljava/security/SecureRandom;
    .registers 4

    new-instance v0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;-><init>()V

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;->generateSeed(IZ)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->setSeed([B)V

    return-object v1
.end method


# virtual methods
.method public connect(Lorg/bouncycastle/crypto/tls/TlsClient;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    if-eqz p1, :cond_45

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    if-nez v0, :cond_4e

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    new-instance v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput v3, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->secureRandom:Ljava/security/SecureRandom;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->createRandomBlock(Ljava/security/SecureRandom;)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->secureRandom:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/tls/SecurityParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsClient;->init(Lorg/bouncycastle/crypto/tls/TlsClientContext;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendClientHelloMessage()V

    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->completeHandshake()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyHandshakeComplete()V

    return-void

    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'tlsClient\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "connect can only be called once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    return-object v0
.end method

.method protected getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    return-object v0
.end method

.method protected handleChangeCipherSpecMessage()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x28

    const/4 v1, 0x2

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v0, :pswitch_data_1a

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    :goto_b
    return-void

    :pswitch_c
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->expectSessionTicket:Z

    if-nez v0, :cond_15

    :goto_10
    :pswitch_10
    const/16 v0, 0xf

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto :goto_b

    :cond_15
    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    goto :goto_10

    nop

    :pswitch_data_1a
    .packed-switch 0xd
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method

.method protected handleHandshakeMessage(S[B)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0xc

    const/16 v5, 0xa

    const/4 v1, 0x0

    const/4 v3, 0x2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    packed-switch p1, :pswitch_data_1a6

    :pswitch_e
    invoke-virtual {p0, v3, v5}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    :cond_11
    :goto_11
    return-void

    :pswitch_12
    iget-short v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v2, :pswitch_data_1da

    invoke-virtual {p0, v3, v5}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    :goto_1a
    const/4 v0, 0x4

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto :goto_11

    :pswitch_1e
    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    :pswitch_21
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getAuthentication()Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsAuthentication;->notifyServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    goto :goto_1a

    :pswitch_3b
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v1, :pswitch_data_1e2

    invoke-virtual {p0, v3, v5}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    goto :goto_11

    :pswitch_44
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    const/16 v0, 0x10

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto :goto_11

    :pswitch_4c
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v1, :pswitch_data_1e8

    invoke-virtual {p0, v3, v5}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    goto :goto_11

    :pswitch_55
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->receiveServerHelloMessage(Ljava/io/ByteArrayInputStream;)V

    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedCipherSuite:I

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getPRFAlgorithm(I)I

    move-result v1

    iput v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedCompressionMethod:S

    int-to-short v1, v1

    iput-short v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput v6, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->notifyHelloComplete()V

    goto :goto_11

    :pswitch_75
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v1, :pswitch_data_1ee

    invoke-virtual {p0, v3, v5}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    goto :goto_11

    :pswitch_7e
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    goto :goto_11

    :pswitch_86
    iget-short v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v2, :pswitch_data_1f4

    const/16 v0, 0x28

    invoke-virtual {p0, v3, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    goto :goto_11

    :pswitch_91
    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    :pswitch_94
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    :pswitch_9b
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    :pswitch_a0
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    const/4 v0, 0x7

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientSupplementalData()Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_ff

    :goto_ae
    const/16 v0, 0x8

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-eqz v0, :cond_103

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsAuthentication;->getClientCredentials(Lorg/bouncycastle/crypto/tls/CertificateRequest;)Lorg/bouncycastle/crypto/tls/TlsCredentials;

    move-result-object v0

    if-eqz v0, :cond_10a

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v2, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendCertificateMessage(Lorg/bouncycastle/crypto/tls/Certificate;)V

    :goto_cc
    const/16 v2, 0x9

    iput-short v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendClientKeyExchangeMessage()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->establishMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCompression()Lorg/bouncycastle/crypto/tls/TlsCompression;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/crypto/tls/RecordStream;->setPendingConnectionState(Lorg/bouncycastle/crypto/tls/TlsCompression;Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    iput-short v5, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-nez v0, :cond_115

    :cond_f1
    :goto_f1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendChangeCipherSpecMessage()V

    iput-short v6, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendFinishedMessage()V

    const/16 v0, 0xd

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_11

    :cond_ff
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendSupplementalDataMessage(Ljava/util/Vector;)V

    goto :goto_ae

    :cond_103
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    move-object v0, v1

    goto :goto_cc

    :cond_10a
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    sget-object v2, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendCertificateMessage(Lorg/bouncycastle/crypto/tls/Certificate;)V

    goto :goto_cc

    :cond_115
    instance-of v2, v0, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v2, :cond_f1

    check-cast v0, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->getCurrentHash([B)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendCertificateVerifyMessage([B)V

    const/16 v0, 0xb

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto :goto_f1

    :pswitch_12d
    iget-short v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v2, :pswitch_data_202

    invoke-virtual {p0, v3, v5}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    :goto_135
    const/4 v0, 0x5

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_11

    :pswitch_13a
    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    :pswitch_13d
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    :pswitch_144
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerKeyExchange(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    goto :goto_135

    :pswitch_14d
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v1, :pswitch_data_20c

    invoke-virtual {p0, v3, v5}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    :goto_155
    const/4 v0, 0x6

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_11

    :pswitch_15a
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    :pswitch_15f
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    if-eqz v1, :cond_174

    :goto_163
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/CertificateRequest;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V

    goto :goto_155

    :cond_174
    const/16 v1, 0x28

    invoke-virtual {p0, v3, v1}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    goto :goto_163

    :pswitch_17a
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v1, :pswitch_data_214

    invoke-virtual {p0, v3, v5}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    :goto_182
    :pswitch_182
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_11

    const-string/jumbo v0, "Renegotiation not supported"

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->raiseWarning(SLjava/lang/String;)V

    goto/16 :goto_11

    :pswitch_195
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->expectSessionTicket:Z

    if-eqz v1, :cond_1a1

    :goto_199
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->receiveNewSessionTicketMessage(Ljava/io/ByteArrayInputStream;)V

    const/16 v1, 0xe

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto :goto_182

    :cond_1a1
    invoke-virtual {p0, v3, v5}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    goto :goto_199

    nop

    :pswitch_data_1a6
    .packed-switch 0x0
        :pswitch_182
        :pswitch_e
        :pswitch_4c
        :pswitch_e
        :pswitch_17a
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_12
        :pswitch_12d
        :pswitch_14d
        :pswitch_86
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_3b
        :pswitch_e
        :pswitch_e
        :pswitch_75
    .end packed-switch

    :pswitch_data_1da
    .packed-switch 0x2
        :pswitch_1e
        :pswitch_21
    .end packed-switch

    :pswitch_data_1e2
    .packed-switch 0xf
        :pswitch_44
    .end packed-switch

    :pswitch_data_1e8
    .packed-switch 0x1
        :pswitch_55
    .end packed-switch

    :pswitch_data_1ee
    .packed-switch 0x2
        :pswitch_7e
    .end packed-switch

    :pswitch_data_1f4
    .packed-switch 0x2
        :pswitch_91
        :pswitch_94
        :pswitch_9b
        :pswitch_a0
        :pswitch_a0
    .end packed-switch

    :pswitch_data_202
    .packed-switch 0x2
        :pswitch_13a
        :pswitch_13d
        :pswitch_144
    .end packed-switch

    :pswitch_data_20c
    .packed-switch 0x4
        :pswitch_15a
        :pswitch_15f
    .end packed-switch

    :pswitch_data_214
    .packed-switch 0xd
        :pswitch_195
    .end packed-switch
.end method

.method protected handleSupplementalData(Ljava/util/Vector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    const/4 v0, 0x3

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    return-void
.end method

.method protected receiveNewSessionTicketMessage(Ljava/io/ByteArrayInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/NewSessionTicket;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/NewSessionTicket;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyNewSessionTicket(Lorg/bouncycastle/crypto/tls/NewSessionTicket;)V

    return-void
.end method

.method protected receiveServerHelloMessage(Ljava/io/ByteArrayInputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x20

    const/16 v2, 0x2f

    const/4 v4, 0x2

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v1

    if-nez v1, :cond_8b

    :goto_f
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->getReadVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    :goto_1b
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_93

    :goto_29
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-static {v3, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v0

    array-length v1, v0

    if-gt v1, v3, :cond_97

    :goto_49
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySessionID([B)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedCipherSuite:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    iget v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedCipherSuite:I

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->arrayContains([II)Z

    move-result v0

    if-nez v0, :cond_9b

    :cond_5e
    invoke-virtual {p0, v4, v2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    :goto_61
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    iget v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedCipherSuite:I

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySelectedCipherSuite(I)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->arrayContains([SS)Z

    move-result v1

    if-eqz v1, :cond_a6

    :goto_74
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySelectedCompressionMethod(S)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v1

    if-nez v1, :cond_aa

    :goto_7f
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->secure_renegotiation:Z

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySecureRenegotiation(Z)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    if-nez v0, :cond_ff

    :goto_8a
    return-void

    :cond_8b
    invoke-virtual {p0, v4, v2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    goto :goto_f

    :cond_8f
    invoke-virtual {p0, v4, v2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    goto :goto_1b

    :cond_93
    invoke-virtual {p0, v4, v2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    goto :goto_29

    :cond_97
    invoke-virtual {p0, v4, v2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    goto :goto_49

    :cond_9b
    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedCipherSuite:I

    if-eqz v0, :cond_5e

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedCipherSuite:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_5e

    goto :goto_61

    :cond_a6
    invoke-virtual {p0, v4, v2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    goto :goto_74

    :cond_aa
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_ae
    :goto_ae
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_c9

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-nez v0, :cond_ea

    :cond_c0
    :goto_c0
    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->expectSessionTicket:Z

    goto :goto_7f

    :cond_c9
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v3, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ae

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    if-nez v3, :cond_e1

    :cond_db
    const/16 v0, 0x6e

    invoke-virtual {p0, v4, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    goto :goto_ae

    :cond_e1
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_db

    goto :goto_ae

    :cond_ea
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->secure_renegotiation:Z

    sget-object v2, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->createRenegotiationInfo([B)[B

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_c0

    const/16 v0, 0x28

    invoke-virtual {p0, v4, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    goto :goto_c0

    :cond_ff
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    goto :goto_8a
.end method

.method protected sendCertificateVerifyMessage([B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0xf

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    array-length v1, p1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    const/16 v3, 0x16

    invoke-virtual {p0, v3, v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->safeWriteRecord(S[BII)V

    return-void
.end method

.method protected sendClientHelloMessage()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientHelloRecordLayerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    invoke-static {v1, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v3

    if-nez v3, :cond_8a

    :goto_25
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setClientVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v0, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCipherSuites()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    if-nez v0, :cond_90

    :cond_4f
    move v0, v2

    :goto_50
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    array-length v3, v3

    if-nez v0, :cond_9c

    :goto_55
    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16Array([ILjava/io/OutputStream;)V

    if-nez v0, :cond_9f

    :goto_61
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCompressionMethods()[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    array-length v0, v0

    int-to-short v0, v0

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8Array([SLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    if-nez v0, :cond_a5

    :goto_79
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v3, v0

    add-int/lit8 v3, v3, -0x4

    invoke-static {v3, v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    array-length v2, v0

    const/16 v3, 0x16

    invoke-virtual {p0, v3, v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->safeWriteRecord(S[BII)V

    return-void

    :cond_8a
    const/16 v3, 0x50

    invoke-virtual {p0, v5, v3}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->failWithError(SS)V

    goto :goto_25

    :cond_90
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    sget-object v3, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4f

    move v0, v1

    goto :goto_50

    :cond_9c
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    :cond_9f
    const/16 v0, 0xff

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    goto :goto_61

    :cond_a5
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v4, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    goto :goto_79
.end method

.method protected sendClientKeyExchangeMessage()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x10

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generateClientKeyExchange(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x4

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    array-length v1, v0

    const/16 v2, 0x16

    invoke-virtual {p0, v2, v0, v3, v1}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->safeWriteRecord(S[BII)V

    return-void
.end method
