.class public abstract Lorg/bouncycastle/crypto/tls/AbstractTlsClient;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsPeer;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsClient;


# instance fields
.field protected cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

.field protected context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

.field protected selectedCipherSuite:I

.field protected selectedCompressionMethod:S

.field protected supportedSignatureAlgorithms:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsPeer;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    return-void
.end method


# virtual methods
.method public getClientExtensions()Ljava/util/Hashtable;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsClientContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSignatureAlgorithmsExtensionAllowed(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v2

    if-nez v2, :cond_13

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x5

    new-array v3, v0, [S

    const/4 v0, 0x6

    aput-short v0, v3, v1

    const/4 v0, 0x5

    aput-short v0, v3, v5

    aput-short v6, v3, v9

    aput-short v4, v3, v4

    aput-short v9, v3, v6

    new-array v4, v5, [S

    aput-short v5, v4, v1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    move v0, v1

    :goto_2e
    array-length v2, v3

    if-lt v0, v2, :cond_46

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    new-instance v1, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    invoke-direct {v1, v9, v9}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->addSignatureAlgorithmsExtension(Ljava/util/Hashtable;Ljava/util/Vector;)V

    goto :goto_12

    :cond_46
    move v2, v1

    :goto_47
    array-length v5, v4

    if-lt v2, v5, :cond_4d

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_4d
    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    new-instance v6, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    aget-short v7, v3, v0

    aget-short v8, v4, v2

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_47
.end method

.method public getClientHelloRecordLayerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .registers 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getClientSupplementalData()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .registers 2

    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getCompression()Lorg/bouncycastle/crypto/tls/TlsCompression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->selectedCompressionMethod:S

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

.method public getCompressionMethods()[S
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [S

    aput-short v1, v0, v1

    return-object v0
.end method

.method public getMinimumVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .registers 2

    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/tls/TlsClientContext;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

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

.method public notifyNewSessionTicket(Lorg/bouncycastle/crypto/tls/NewSessionTicket;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public notifySecureRenegotiation(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    :cond_2
    return-void
.end method

.method public notifySelectedCipherSuite(I)V
    .registers 2

    iput p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->selectedCipherSuite:I

    return-void
.end method

.method public notifySelectedCompressionMethod(S)V
    .registers 3

    int-to-short v0, p1

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->selectedCompressionMethod:S

    return-void
.end method

.method public notifyServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->getMinimumVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x46

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public notifySessionID([B)V
    .registers 2

    return-void
.end method

.method public processServerExtensions(Ljava/util/Hashtable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public processServerSupplementalData(Ljava/util/Vector;)V
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
