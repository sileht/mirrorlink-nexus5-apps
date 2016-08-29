.class public abstract Lorg/bouncycastle/crypto/tls/TlsProtocol;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field protected static final CS_CERTIFICATE_REQUEST:S = 0x6s

.field protected static final CS_CERTIFICATE_VERIFY:S = 0xbs

.field protected static final CS_CLIENT_CERTIFICATE:S = 0x9s

.field protected static final CS_CLIENT_CHANGE_CIPHER_SPEC:S = 0xcs

.field protected static final CS_CLIENT_FINISHED:S = 0xds

.field protected static final CS_CLIENT_HELLO:S = 0x1s

.field protected static final CS_CLIENT_KEY_EXCHANGE:S = 0xas

.field protected static final CS_CLIENT_SUPPLEMENTAL_DATA:S = 0x8s

.field protected static final CS_SERVER_CERTIFICATE:S = 0x4s

.field protected static final CS_SERVER_CHANGE_CIPHER_SPEC:S = 0xfs

.field protected static final CS_SERVER_FINISHED:S = 0x10s

.field protected static final CS_SERVER_HELLO:S = 0x2s

.field protected static final CS_SERVER_HELLO_DONE:S = 0x7s

.field protected static final CS_SERVER_KEY_EXCHANGE:S = 0x5s

.field protected static final CS_SERVER_SESSION_TICKET:S = 0xes

.field protected static final CS_SERVER_SUPPLEMENTAL_DATA:S = 0x3s

.field protected static final CS_START:S = 0x0s

.field protected static final EXT_RenegotiationInfo:Ljava/lang/Integer;

.field protected static final EXT_SessionTicket:Ljava/lang/Integer;

.field private static final TLS_ERROR_MESSAGE:Ljava/lang/String; = "Internal TLS error, this could be an attack"


# instance fields
.field private alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

.field private volatile appDataReady:Z

.field private applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

.field private changeCipherSpecQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

.field private volatile closed:Z

.field protected connection_state:S

.field protected expectSessionTicket:Z

.field private expected_verify_data:[B

.field private volatile failedWithError:Z

.field private handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

.field protected recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

.field protected secureRandom:Ljava/security/SecureRandom;

.field protected secure_renegotiation:Z

.field protected securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

.field private tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

.field private tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOutputStream;

.field private volatile writeExtraEmptyRecords:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0xff01

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    const/16 v0, 0x23

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->changeCipherSpecQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOutputStream;

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->writeExtraEmptyRecords:Z

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->secure_renegotiation:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expectSessionTicket:Z

    new-instance v0, Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/crypto/tls/RecordStream;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->secureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method protected static arrayContains([II)Z
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    array-length v2, p0

    if-lt v0, v2, :cond_6

    return v1

    :cond_6
    aget v2, p0, v0

    if-eq v2, p1, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method protected static arrayContains([SS)Z
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    array-length v2, p0

    if-lt v0, v2, :cond_6

    return v1

    :cond_6
    aget-short v2, p0, v0

    if-eq v2, p1, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method protected static assertEmpty(Ljava/io/ByteArrayInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected static createRandomBlock(Ljava/security/SecureRandom;)[B
    .registers 3

    const/16 v0, 0x20

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeGMTUnixTime([BI)V

    return-object v0
.end method

.method protected static createRenegotiationInfo([B)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method protected static establishMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generatePremasterSecret()[B

    move-result-object v1

    :try_start_5
    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;[B)[B

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_16

    if-nez v1, :cond_12

    :goto_11
    return-void

    :cond_12
    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    goto :goto_11

    :catchall_16
    move-exception v0

    if-nez v1, :cond_1a

    :goto_19
    throw v0

    :cond_1a
    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    goto :goto_19
.end method

.method protected static getPRFAlgorithm(I)I
    .registers 2

    sparse-switch p0, :sswitch_data_a

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x1

    return v0

    :sswitch_7
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_a
    .sparse-switch
        0x3b -> :sswitch_5
        0x3c -> :sswitch_5
        0x3d -> :sswitch_5
        0x3e -> :sswitch_5
        0x3f -> :sswitch_5
        0x40 -> :sswitch_5
        0x67 -> :sswitch_5
        0x68 -> :sswitch_5
        0x69 -> :sswitch_5
        0x6a -> :sswitch_5
        0x6b -> :sswitch_5
        0x9c -> :sswitch_5
        0x9d -> :sswitch_7
        0x9e -> :sswitch_5
        0x9f -> :sswitch_7
        0xa0 -> :sswitch_5
        0xa1 -> :sswitch_7
        0xa2 -> :sswitch_5
        0xa3 -> :sswitch_7
        0xa4 -> :sswitch_5
        0xa5 -> :sswitch_7
        0xc023 -> :sswitch_5
        0xc024 -> :sswitch_7
        0xc025 -> :sswitch_5
        0xc026 -> :sswitch_7
        0xc027 -> :sswitch_5
        0xc028 -> :sswitch_7
        0xc029 -> :sswitch_5
        0xc02a -> :sswitch_7
        0xc02b -> :sswitch_5
        0xc02c -> :sswitch_7
        0xc02d -> :sswitch_5
        0xc02e -> :sswitch_7
        0xc02f -> :sswitch_5
        0xc030 -> :sswitch_7
        0xc031 -> :sswitch_5
        0xc032 -> :sswitch_7
    .end sparse-switch
.end method

.method private processAlert()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    :goto_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    if-ge v0, v4, :cond_c

    return-void

    :cond_c
    new-array v0, v4, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, v0, v3, v4, v3}, Lorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/crypto/tls/ByteQueue;->removeData(I)V

    aget-byte v1, v0, v3

    int-to-short v1, v1

    aget-byte v0, v0, v5

    int-to-short v0, v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyAlertReceived(SS)V

    if-eq v1, v4, :cond_2d

    if-eqz v0, :cond_3f

    :goto_29
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handleWarningMessage(S)V

    goto :goto_3

    :cond_2d
    iput-boolean v5, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    iput-boolean v5, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    :try_start_31
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_43

    :goto_36
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handleClose(Z)V

    goto :goto_29

    :catch_43
    move-exception v0

    goto :goto_36
.end method

.method private processApplicationData()V
    .registers 1

    return-void
.end method

.method private processChangeCipherSpec()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->changeCipherSpecQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    if-gtz v0, :cond_b

    return-void

    :cond_b
    new-array v0, v3, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->changeCipherSpecQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, v0, v2, v3, v2}, Lorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->changeCipherSpecQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/tls/ByteQueue;->removeData(I)V

    aget-byte v0, v0, v2

    if-ne v0, v3, :cond_24

    :goto_1b
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->receivedReadCipherSpec()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handleChangeCipherSpecMessage()V

    goto :goto_2

    :cond_24
    const/4 v0, 0x2

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SS)V

    goto :goto_1b
.end method

.method private processHandshake()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v8, 0x4

    const/4 v1, 0x0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    if-ge v0, v8, :cond_f

    :cond_b
    move v0, v1

    :goto_c
    if-nez v0, :cond_3

    return-void

    :cond_f
    new-array v3, v8, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, v3, v1, v8, v1}, Lorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v4

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    add-int/lit8 v6, v5, 0x4

    if-lt v0, v6, :cond_b

    new-array v6, v5, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, v6, v1, v5, v8}, Lorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    add-int/lit8 v7, v5, 0x4

    invoke-virtual {v0, v7}, Lorg/bouncycastle/crypto/tls/ByteQueue;->removeData(I)V

    sparse-switch v4, :sswitch_data_66

    :cond_3e
    :goto_3e
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0, v3, v1, v8}, Lorg/bouncycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0, v6, v1, v5}, Lorg/bouncycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    :sswitch_48
    invoke-virtual {p0, v4, v6}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handleHandshakeMessage(S[B)V

    move v0, v2

    goto :goto_c

    :sswitch_4d
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->isServer()Z

    move-result v0

    if-eqz v0, :cond_63

    move v0, v1

    :goto_5c
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createVerifyData(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    goto :goto_3e

    :cond_63
    move v0, v2

    goto :goto_5c

    nop

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_48
        0x14 -> :sswitch_4d
    .end sparse-switch
.end method

.method protected static readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_20

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    :cond_19
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-gtz v2, :cond_21

    return-object v0

    :cond_20
    return-object v2

    :cond_21
    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v2

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_19

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected static readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque24(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_11
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-gtz v2, :cond_18

    return-object v0

    :cond_18
    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v2

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/crypto/tls/SupplementalDataEntry;

    invoke-direct {v4, v2, v3}, Lorg/bouncycastle/crypto/tls/SupplementalDataEntry;-><init>(I[B)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_11
.end method

.method protected static writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    return-void

    :cond_17
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    goto :goto_9
.end method

.method protected static writeSupplementalData(Ljava/io/OutputStream;Ljava/util/Vector;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_15

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque24([BLjava/io/OutputStream;)V

    return-void

    :cond_15
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/SupplementalDataEntry;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SupplementalDataEntry;->getDataType()I

    move-result v3

    invoke-static {v3, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SupplementalDataEntry;->getData()[B

    move-result-object v0

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handleClose(Z)V

    return-void
.end method

.method protected completeHandshake()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    :goto_3
    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->finaliseHandshake()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->writeExtraEmptyRecords:Z

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    if-eqz v0, :cond_27

    :goto_22
    return-void

    :cond_23
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeReadRecord()V

    goto :goto_3

    :cond_27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsInputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsInputStream;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsOutputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsOutputStream;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOutputStream;

    goto :goto_22
.end method

.method protected createVerifyData(Z)[B
    .registers 6

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    if-nez p1, :cond_16

    const-string/jumbo v1, "client finished"

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    sget-object v3, Lorg/bouncycastle/crypto/tls/TlsUtils;->SSL_CLIENT:[B

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/tls/RecordStream;->getCurrentHash([B)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0

    :cond_16
    const-string/jumbo v1, "server finished"

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    sget-object v3, Lorg/bouncycastle/crypto/tls/TlsUtils;->SSL_SERVER:[B

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/tls/RecordStream;->getCurrentHash([B)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected failWithError(SS)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eq p1, v2, :cond_1f

    :goto_14
    invoke-virtual {p0, p1, p2, v3, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->raiseAlert(SSLjava/lang/String;Ljava/lang/Exception;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->close()V

    if-eq p1, v2, :cond_22

    return-void

    :cond_1f
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    goto :goto_14

    :cond_22
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->flush()V

    return-void
.end method

.method protected abstract getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOutputStream;

    return-object v0
.end method

.method protected abstract getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;
.end method

.method protected abstract handleChangeCipherSpecMessage()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected handleClose(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    if-nez p1, :cond_d

    :cond_8
    :goto_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SS)V

    goto :goto_5

    :cond_d
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    if-nez v0, :cond_8

    const-string/jumbo v0, "User canceled handshake"

    const/16 v1, 0x5a

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->raiseWarning(SLjava/lang/String;)V

    goto :goto_8
.end method

.method protected abstract handleHandshakeMessage(S[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected handleWarningMessage(S)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected processFinishedMessage(Ljava/io/ByteArrayInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    array-length v0, v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_13

    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x2

    const/16 v1, 0x33

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SS)V

    goto :goto_12
.end method

.method protected processRecord(S[BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_34

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->changeCipherSpecQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->processChangeCipherSpec()V

    goto :goto_3

    :pswitch_d
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->processAlert()V

    goto :goto_3

    :pswitch_16
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->processHandshake()V

    goto :goto_3

    :pswitch_1f
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    if-eqz v0, :cond_2c

    :goto_23
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->processApplicationData()V

    goto :goto_3

    :cond_2c
    const/4 v0, 0x2

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SS)V

    goto :goto_23

    nop

    :pswitch_data_34
    .packed-switch 0x14
        :pswitch_4
        :pswitch_d
        :pswitch_16
        :pswitch_1f
    .end packed-switch
.end method

.method protected raiseAlert(SSLjava/lang/String;Ljava/lang/Exception;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Exception;)V

    new-array v0, v4, [B

    int-to-byte v1, p1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    int-to-byte v2, p2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    invoke-virtual {p0, v1, v0, v3, v4}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    return-void
.end method

.method protected raiseWarning(SLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->raiseAlert(SSLjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method protected readApplicationData([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x1

    if-lt p3, v0, :cond_21

    :goto_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->removeData(I)V

    return v0

    :cond_21
    return v2

    :cond_22
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeReadRecord()V

    goto :goto_4

    :cond_2a
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    if-nez v0, :cond_30

    const/4 v0, -0x1

    return v0

    :cond_30
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected safeReadRecord()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x50

    const/4 v2, 0x2

    :try_start_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->readRecord()V
    :try_end_8
    .catch Lorg/bouncycastle/crypto/tls/TlsFatalAlert; {:try_start_3 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_8} :catch_21

    return-void

    :catch_9
    move-exception v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eqz v1, :cond_f

    :goto_e
    throw v0

    :cond_f
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v1

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SS)V

    goto :goto_e

    :catch_17
    move-exception v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eqz v1, :cond_1d

    :goto_1c
    throw v0

    :cond_1d
    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SS)V

    goto :goto_1c

    :catch_21
    move-exception v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eqz v1, :cond_27

    :goto_26
    throw v0

    :cond_27
    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SS)V

    goto :goto_26
.end method

.method protected safeWriteRecord(S[BII)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x50

    const/4 v2, 0x2

    :try_start_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/RecordStream;->writeRecord(S[BII)V
    :try_end_8
    .catch Lorg/bouncycastle/crypto/tls/TlsFatalAlert; {:try_start_3 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_8} :catch_21

    return-void

    :catch_9
    move-exception v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eqz v1, :cond_f

    :goto_e
    throw v0

    :cond_f
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v1

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SS)V

    goto :goto_e

    :catch_17
    move-exception v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eqz v1, :cond_1d

    :goto_1c
    throw v0

    :cond_1d
    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SS)V

    goto :goto_1c

    :catch_21
    move-exception v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eqz v1, :cond_27

    :goto_26
    throw v0

    :cond_27
    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SS)V

    goto :goto_26
.end method

.method protected sendCertificateMessage(Lorg/bouncycastle/crypto/tls/Certificate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_2b

    :goto_3
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/Certificate;->getLength()I

    move-result v0

    if-eqz v0, :cond_2e

    :cond_9
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0xb

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/Certificate;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x4

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    array-length v1, v0

    const/16 v2, 0x16

    invoke-virtual {p0, v2, v0, v3, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    return-void

    :cond_2b
    sget-object p1, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    goto :goto_3

    :cond_2e
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " client didn\'t provide credentials"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->raiseWarning(SLjava/lang/String;)V

    return-void
.end method

.method protected sendChangeCipherSpecMessage()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v3, 0x0

    new-array v0, v1, [B

    aput-byte v1, v0, v3

    array-length v1, v0

    const/16 v2, 0x14

    invoke-virtual {p0, v2, v0, v3, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->sentWriteCipherSpec()V

    return-void
.end method

.method protected sendFinishedMessage()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->isServer()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createVerifyData(Z)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x14

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    array-length v2, v0

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    const/16 v3, 0x16

    invoke-virtual {p0, v3, v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    return-void
.end method

.method protected sendSupplementalDataMessage(Ljava/util/Vector;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x17

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->writeSupplementalData(Ljava/io/OutputStream;Ljava/util/Vector;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x4

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    array-length v1, v0

    const/16 v2, 0x16

    invoke-virtual {p0, v2, v0, v3, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    return-void
.end method

.method protected writeData([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x17

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_a

    :goto_7
    if-gtz p3, :cond_20

    return-void

    :cond_a
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    if-nez v0, :cond_17

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Sorry, connection has been closed, you cannot write more data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->writeExtraEmptyRecords:Z

    if-nez v0, :cond_30

    :goto_24
    const/16 v0, 0x4000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v2, p1, p2, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_7

    :cond_30
    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-virtual {p0, v2, v0, v1, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    goto :goto_24
.end method
