.class public Lorg/bouncycastle/crypto/tls/TlsServerProtocol;
.super Lorg/bouncycastle/crypto/tls/TlsProtocol;
.source "Unknown"


# instance fields
.field protected certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

.field protected certificateVerifyHash:[B

.field protected clientCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

.field protected clientCertificateType:S

.field protected clientExtensions:Ljava/util/Hashtable;

.field protected keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

.field protected offeredCipherSuites:[I

.field protected offeredCompressionMethods:[S

.field protected selectedCipherSuite:I

.field protected selectedCompressionMethod:S

.field protected serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

.field protected serverExtensions:Ljava/util/Hashtable;

.field protected tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

.field protected tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    const/4 v0, -0x1

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateVerifyHash:[B

    return-void
.end method


# virtual methods
.method public accept(Lorg/bouncycastle/crypto/tls/TlsServer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_45

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    if-nez v0, :cond_4e

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    new-instance v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput v3, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->secureRandom:Ljava/security/SecureRandom;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->createRandomBlock(Ljava/security/SecureRandom;)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->secureRandom:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/tls/SecurityParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->init(Lorg/bouncycastle/crypto/tls/TlsServerContext;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/tls/RecordStream;->setRestrictReadVersion(Z)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->completeHandshake()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyHandshakeComplete()V

    return-void

    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'tlsServer\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "accept can only be called once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected expectCertificateVerifyMessage()Z
    .registers 3

    const/4 v0, 0x0

    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    if-gez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasSigningCapability(S)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method protected getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    return-object v0
.end method

.method protected getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    return-object v0
.end method

.method protected handleChangeCipherSpecMessage()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x2

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v0, :pswitch_data_1c

    const/16 v0, 0x28

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->failWithError(SS)V

    :goto_b
    return-void

    :pswitch_c
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateVerifyHash:[B

    if-nez v0, :cond_15

    :goto_10
    :pswitch_10
    const/16 v0, 0xc

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto :goto_b

    :cond_15
    const/16 v0, 0xa

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->failWithError(SS)V

    goto :goto_10

    nop

    :pswitch_data_1c
    .packed-switch 0xa
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method

.method protected handleHandshakeMessage(S[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v4, 0xa

    const/4 v3, 0x2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    packed-switch p1, :pswitch_data_18e

    :pswitch_c
    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->failWithError(SS)V

    :goto_f
    return-void

    :pswitch_10
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v1, :pswitch_data_1c2

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->failWithError(SS)V

    goto :goto_f

    :pswitch_19
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->receiveClientHelloMessage(Ljava/io/ByteArrayInputStream;)V

    const/4 v0, 0x1

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendServerHelloMessage()V

    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->selectedCipherSuite:I

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getPRFAlgorithm(I)I

    move-result v1

    iput v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->selectedCompressionMethod:S

    int-to-short v1, v1

    iput-short v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    const/16 v1, 0xc

    iput v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->notifyHelloComplete()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getServerSupplementalData()Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_95

    :goto_48
    const/4 v0, 0x3

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCredentials()Lorg/bouncycastle/crypto/tls/TlsCredentials;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendCertificateMessage(Lorg/bouncycastle/crypto/tls/Certificate;)V

    :goto_78
    const/4 v0, 0x4

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generateServerKeyExchange()[B

    move-result-object v0

    if-nez v0, :cond_9f

    :goto_83
    const/4 v0, 0x5

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-nez v0, :cond_a3

    :cond_8a
    :goto_8a
    const/4 v0, 0x6

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendServerHelloDoneMessage()V

    const/4 v0, 0x7

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto/16 :goto_f

    :cond_95
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendSupplementalDataMessage(Ljava/util/Vector;)V

    goto :goto_48

    :cond_99
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    goto :goto_78

    :cond_9f
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendServerKeyExchangeMessage([B)V

    goto :goto_83

    :cond_a3
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCertificateRequest()Lorg/bouncycastle/crypto/tls/CertificateRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendCertificateRequestMessage(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V

    goto :goto_8a

    :pswitch_bc
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v1, :pswitch_data_1c8

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->failWithError(SS)V

    goto/16 :goto_f

    :pswitch_c6
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    const/16 v0, 0x8

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto/16 :goto_f

    :pswitch_d5
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v1, :pswitch_data_1ce

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->failWithError(SS)V

    goto/16 :goto_f

    :pswitch_df
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    :pswitch_e4
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-eqz v1, :cond_f1

    :goto_e8
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->receiveCertificateMessage(Ljava/io/ByteArrayInputStream;)V

    const/16 v0, 0x9

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto/16 :goto_f

    :cond_f1
    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->failWithError(SS)V

    goto :goto_e8

    :pswitch_f5
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v1, :pswitch_data_1d6

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->failWithError(SS)V

    goto/16 :goto_f

    :pswitch_ff
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    :pswitch_104
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-eqz v1, :cond_12e

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v2

    if-nez v2, :cond_134

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v1

    if-nez v1, :cond_138

    sget-object v1, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    :cond_127
    :goto_127
    :pswitch_127
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->receiveClientKeyExchangeMessage(Ljava/io/ByteArrayInputStream;)V

    iput-short v4, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto/16 :goto_f

    :cond_12e
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    goto :goto_127

    :cond_134
    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->failWithError(SS)V

    goto :goto_127

    :cond_138
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    if-nez v1, :cond_127

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->failWithError(SS)V

    goto :goto_127

    :pswitch_140
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v1, :pswitch_data_1e0

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->failWithError(SS)V

    goto/16 :goto_f

    :pswitch_14a
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateVerifyHash:[B

    if-eqz v1, :cond_157

    :goto_14e
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->receiveCertificateVerifyMessage(Ljava/io/ByteArrayInputStream;)V

    const/16 v0, 0xb

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto/16 :goto_f

    :cond_157
    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->failWithError(SS)V

    goto :goto_14e

    :pswitch_15b
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v1, :pswitch_data_1e6

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->failWithError(SS)V

    goto/16 :goto_f

    :pswitch_165
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    const/16 v0, 0xd

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->expectSessionTicket:Z

    if-nez v0, :cond_184

    :goto_170
    const/16 v0, 0xe

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendChangeCipherSpecMessage()V

    const/16 v0, 0xf

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendFinishedMessage()V

    const/16 v0, 0x10

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto/16 :goto_f

    :cond_184
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getNewSessionTicket()Lorg/bouncycastle/crypto/tls/NewSessionTicket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendNewSessionTicketMessage(Lorg/bouncycastle/crypto/tls/NewSessionTicket;)V

    goto :goto_170

    :pswitch_data_18e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_10
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d5
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_140
        :pswitch_f5
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_15b
        :pswitch_c
        :pswitch_c
        :pswitch_bc
    .end packed-switch

    :pswitch_data_1c2
    .packed-switch 0x0
        :pswitch_19
    .end packed-switch

    :pswitch_data_1c8
    .packed-switch 0x7
        :pswitch_c6
    .end packed-switch

    :pswitch_data_1ce
    .packed-switch 0x7
        :pswitch_df
        :pswitch_e4
    .end packed-switch

    :pswitch_data_1d6
    .packed-switch 0x7
        :pswitch_ff
        :pswitch_104
        :pswitch_127
    .end packed-switch

    :pswitch_data_1e0
    .packed-switch 0xa
        :pswitch_14a
    .end packed-switch

    :pswitch_data_1e6
    .packed-switch 0xc
        :pswitch_165
    .end packed-switch
.end method

.method protected handleWarningMessage(S)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_20

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handleWarningMessage(S)V

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-eqz v0, :cond_6

    sget-object v0, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    goto :goto_6

    nop

    :pswitch_data_20
    .packed-switch 0x29
        :pswitch_7
    .end packed-switch
.end method

.method protected notifyClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    if-nez v0, :cond_2e

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getClientCertificateType(Lorg/bouncycastle/crypto/tls/Certificate;Lorg/bouncycastle/crypto/tls/Certificate;)S

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    :goto_22
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

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
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    goto :goto_22
.end method

.method protected receiveCertificateMessage(Ljava/io/ByteArrayInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    return-void
.end method

.method protected receiveCertificateVerifyMessage(Ljava/io/ByteArrayInputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    :try_start_7
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createTlsSigner(S)Lorg/bouncycastle/crypto/tls/TlsSigner;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsSigner;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateVerifyHash:[B

    invoke-interface {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsSigner;->verifyRawSignature([BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception v0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x33

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected receiveClientHelloMessage(Ljava/io/ByteArrayInputStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x2f

    const/4 v5, 0x1

    const/4 v4, 0x2

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v1

    if-nez v1, :cond_7a

    :goto_e
    const/16 v1, 0x20

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x20

    if-gt v2, v3, :cond_7e

    :goto_1d
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v2

    if-ge v2, v4, :cond_82

    :cond_23
    const/16 v3, 0x32

    invoke-virtual {p0, v4, v3}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->failWithError(SS)V

    :goto_28
    div-int/lit8 v2, v2, 0x2

    invoke-static {v2, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16Array(ILjava/io/InputStream;)[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->offeredCipherSuites:[I

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v2

    if-lt v2, v5, :cond_87

    :goto_36
    invoke-static {v2, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8Array(ILjava/io/InputStream;)[S

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->offeredCompressionMethods:[S

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setClientVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyClientVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput-object v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->offeredCipherSuites:[I

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyOfferedCipherSuites([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->offeredCompressionMethods:[S

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyOfferedCompressionMethods([S)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->offeredCipherSuites:[I

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->arrayContains([II)Z

    move-result v0

    if-nez v0, :cond_8b

    :goto_6a
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    if-nez v0, :cond_8e

    :cond_6e
    :goto_6e
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->secure_renegotiation:Z

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifySecureRenegotiation(Z)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    if-nez v0, :cond_b0

    :goto_79
    return-void

    :cond_7a
    invoke-virtual {p0, v4, v6}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->failWithError(SS)V

    goto :goto_e

    :cond_7e
    invoke-virtual {p0, v4, v6}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->failWithError(SS)V

    goto :goto_1d

    :cond_82
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_23

    goto :goto_28

    :cond_87
    invoke-virtual {p0, v4, v6}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->failWithError(SS)V

    goto :goto_36

    :cond_8b
    iput-boolean v5, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->secure_renegotiation:Z

    goto :goto_6a

    :cond_8e
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-eqz v0, :cond_6e

    iput-boolean v5, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->secure_renegotiation:Z

    sget-object v1, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->createRenegotiationInfo([B)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_6e

    const/16 v0, 0x28

    invoke-virtual {p0, v4, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->failWithError(SS)V

    goto :goto_6e

    :cond_b0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientExtensions(Ljava/util/Hashtable;)V

    goto :goto_79
.end method

.method protected receiveClientKeyExchangeMessage(Ljava/io/ByteArrayInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientKeyExchange(Ljava/io/InputStream;)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->establishMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCompression()Lorg/bouncycastle/crypto/tls/TlsCompression;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/RecordStream;->setPendingConnectionState(Lorg/bouncycastle/crypto/tls/TlsCompression;Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->expectCertificateVerifyMessage()Z

    move-result v0

    if-nez v0, :cond_29

    :goto_28
    return-void

    :cond_29
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->getCurrentHash([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateVerifyHash:[B

    goto :goto_28
.end method

.method protected sendCertificateRequestMessage(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0xd

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x4

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    array-length v1, v0

    const/16 v2, 0x16

    invoke-virtual {p0, v2, v0, v3, v1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->safeWriteRecord(S[BII)V

    return-void
.end method

.method protected sendNewSessionTicketMessage(Lorg/bouncycastle/crypto/tls/NewSessionTicket;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_24

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/NewSessionTicket;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x4

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    array-length v1, v0

    const/16 v2, 0x16

    invoke-virtual {p0, v2, v0, v3, v1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->safeWriteRecord(S[BII)V

    return-void

    :cond_24
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected sendServerHelloDoneMessage()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v1, 0xe

    invoke-static {v1, v0, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    const/4 v1, 0x1

    invoke-static {v3, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    array-length v1, v0

    const/16 v2, 0x16

    invoke-virtual {p0, v2, v0, v3, v1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->safeWriteRecord(S[BII)V

    return-void
.end method

.method protected sendServerHelloMessage()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x50

    const/4 v2, 0x1

    const/4 v5, 0x2

    const/4 v1, 0x0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v5, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v4

    if-eqz v4, :cond_9c

    :goto_24
    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v4, v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->setReadVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v4, v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v4, v2}, Lorg/bouncycastle/crypto/tls/RecordStream;->setRestrictReadVersion(Z)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v0, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getSelectedCipherSuite()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->selectedCipherSuite:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->offeredCipherSuites:[I

    iget v4, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->selectedCipherSuite:I

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->arrayContains([II)Z

    move-result v0

    if-nez v0, :cond_a0

    :cond_5b
    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->failWithError(SS)V

    :goto_5e
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getSelectedCompressionMethod()S

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->selectedCompressionMethod:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->offeredCompressionMethods:[S

    iget-short v4, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->selectedCompressionMethod:S

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->arrayContains([SS)Z

    move-result v0

    if-eqz v0, :cond_ab

    :goto_71
    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->selectedCipherSuite:I

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->selectedCompressionMethod:S

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getServerExtensions()Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->secure_renegotiation:Z

    if-nez v0, :cond_af

    :cond_87
    :goto_87
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    if-nez v0, :cond_dc

    :goto_8b
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v3, v0

    add-int/lit8 v3, v3, -0x4

    invoke-static {v3, v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    array-length v2, v0

    const/16 v3, 0x16

    invoke-virtual {p0, v3, v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->safeWriteRecord(S[BII)V

    return-void

    :cond_9c
    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->failWithError(SS)V

    goto :goto_24

    :cond_a0
    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->selectedCipherSuite:I

    if-eqz v0, :cond_5b

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->selectedCipherSuite:I

    const/16 v4, 0xff

    if-eq v0, v4, :cond_5b

    goto :goto_5e

    :cond_ab
    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->failWithError(SS)V

    goto :goto_71

    :cond_af
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    if-nez v0, :cond_c8

    :cond_b3
    move v0, v2

    :goto_b4
    if-eqz v0, :cond_87

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    if-eqz v0, :cond_d4

    :goto_ba
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v4, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    sget-object v5, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v5}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->createRenegotiationInfo([B)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_87

    :cond_c8
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v4, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    move v0, v1

    goto :goto_b4

    :cond_d4
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    goto :goto_ba

    :cond_dc
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v4, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->expectSessionTicket:Z

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    goto :goto_8b
.end method

.method protected sendServerKeyExchangeMessage([B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    array-length v1, p1

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    const/16 v3, 0x16

    invoke-virtual {p0, v3, v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->safeWriteRecord(S[BII)V

    return-void
.end method
