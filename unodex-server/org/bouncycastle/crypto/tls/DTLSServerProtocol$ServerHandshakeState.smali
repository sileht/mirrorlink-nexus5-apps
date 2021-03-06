.class public Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/tls/DTLSServerProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ServerHandshakeState"
.end annotation


# instance fields
.field certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

.field clientCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

.field clientCertificateType:S

.field clientExtensions:Ljava/util/Hashtable;

.field expectSessionTicket:Z

.field keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

.field offeredCipherSuites:[I

.field offeredCompressionMethods:[S

.field secure_renegotiation:Z

.field selectedCipherSuite:I

.field selectedCompressionMethod:S

.field server:Lorg/bouncycastle/crypto/tls/TlsServer;

.field serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

.field serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

.field serverExtensions:Ljava/util/Hashtable;


# direct methods
.method protected constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/crypto/tls/TlsServer;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    iput v1, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCipherSuite:I

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCompressionMethod:S

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->secure_renegotiation:Z

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->expectSessionTicket:Z

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificateType:S

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    return-void
.end method
