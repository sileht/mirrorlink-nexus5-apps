.class Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/DatagramTransport;


# static fields
.field private static final MAX_FRAGMENT_LENGTH:I = 0x4000

.field private static final RECORD_HEADER_LENGTH:I = 0xd

.field private static final RETRANSMIT_TIMEOUT:J = 0x3a980L

.field private static final TCP_MSL:J = 0x1d4c0L


# instance fields
.field private volatile closed:Z

.field private final context:Lorg/bouncycastle/crypto/tls/TlsContext;

.field private currentEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

.field private volatile discoveredPeerVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field private volatile failed:Z

.field private volatile inHandshake:Z

.field private final peer:Lorg/bouncycastle/crypto/tls/TlsPeer;

.field private pendingEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

.field private readEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

.field private final recordQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

.field private retransmit:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

.field private retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

.field private retransmitExpiry:J

.field private final transport:Lorg/bouncycastle/crypto/tls/DatagramTransport;

.field private writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/tls/DatagramTransport;Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsPeer;S)V
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->closed:Z

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->failed:Z

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->discoveredPeerVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitExpiry:J

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/bouncycastle/crypto/tls/DatagramTransport;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->peer:Lorg/bouncycastle/crypto/tls/TlsPeer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    new-instance v0, Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsNullCipher;

    invoke-direct {v1, p2}, Lorg/bouncycastle/crypto/tls/TlsNullCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    invoke-direct {v0, v3, v1}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;-><init>(ILorg/bouncycastle/crypto/tls/TlsCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    return-void
.end method

.method private closeTransport()V
    .registers 3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->closed:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->failed:Z

    if-eqz v0, :cond_12

    :goto_9
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/bouncycastle/crypto/tls/DatagramTransport;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/DatagramTransport;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_18

    :goto_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->closed:Z

    goto :goto_4

    :cond_12
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_14
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->warn(SLjava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_9

    :catch_18
    move-exception v0

    goto :goto_e
.end method

.method private static getMacSequenceNumber(IJ)J
    .registers 6

    int-to-long v0, p0

    const/16 v2, 0x30

    shl-long/2addr v0, v2

    or-long/2addr v0, p1

    return-wide v0
.end method

.method private raiseAlert(SSLjava/lang/String;Ljava/lang/Exception;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->peer:Lorg/bouncycastle/crypto/tls/TlsPeer;

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

    invoke-direct {p0, v1, v0, v3, v4}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->sendRecord(S[BII)V

    return-void
.end method

.method private receiveRecord([BIII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/16 v2, 0xd

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    if-gtz v0, :cond_15

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/bouncycastle/crypto/tls/DatagramTransport;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/DatagramTransport;->receive([BIII)I

    move-result v0

    if-ge v0, v2, :cond_43

    :cond_14
    :goto_14
    return v0

    :cond_15
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    if-ge v0, v2, :cond_35

    move v0, v1

    :goto_1e
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v2

    add-int/lit8 v0, v0, 0xd

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->removeData(I)V

    return v0

    :cond_35
    new-array v0, v4, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    const/16 v3, 0xb

    invoke-virtual {v2, v0, v1, v4, v3}, Lorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v0

    goto :goto_1e

    :cond_43
    add-int/lit8 v1, p2, 0xb

    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    if-le v0, v1, :cond_14

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    add-int v3, p2, v1

    sub-int/2addr v0, v1

    invoke-virtual {v2, p1, v3, v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    move v0, v1

    goto :goto_14
.end method

.method private sendRecord(S[BII)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    move/from16 v0, p4

    if-lt v0, v2, :cond_5f

    :cond_5
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getEpoch()I

    move-result v10

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->allocateSequenceNumber()J

    move-result-wide v12

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v3

    invoke-static {v10, v12, v13}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->getMacSequenceNumber(IJ)J

    move-result-wide v4

    move v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-interface/range {v3 .. v9}, Lorg/bouncycastle/crypto/tls/TlsCipher;->encodePlaintext(JS[BII)[B

    move-result-object v3

    array-length v2, v3

    const/16 v4, 0x4000

    if-gt v2, v4, :cond_6b

    array-length v2, v3

    add-int/lit8 v2, v2, 0xd

    new-array v4, v2, [B

    const/4 v2, 0x0

    invoke-static {p1, v4, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->discoveredPeerVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    if-nez v2, :cond_73

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    :goto_3e
    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;[BI)V

    const/4 v2, 0x3

    invoke-static {v10, v4, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    const/4 v2, 0x5

    invoke-static {v12, v13, v4, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint48(J[BI)V

    array-length v2, v3

    const/16 v5, 0xb

    invoke-static {v2, v4, v5}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    const/4 v2, 0x0

    const/16 v5, 0xd

    array-length v6, v3

    invoke-static {v3, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/bouncycastle/crypto/tls/DatagramTransport;

    const/4 v3, 0x0

    array-length v5, v4

    invoke-interface {v2, v4, v3, v5}, Lorg/bouncycastle/crypto/tls/DatagramTransport;->send([BII)V

    return-void

    :cond_5f
    const/16 v2, 0x17

    if-eq p1, v2, :cond_5

    new-instance v2, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    :cond_6b
    new-instance v2, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    :cond_73
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->discoveredPeerVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    goto :goto_3e
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->closed:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-nez v0, :cond_d

    :goto_9
    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->closeTransport()V

    goto :goto_4

    :cond_d
    const-string/jumbo v0, "User canceled handshake"

    const/16 v1, 0x5a

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->warn(SLjava/lang/String;)V

    goto :goto_9
.end method

.method fail(S)V
    .registers 5

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->closed:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_8
    invoke-direct {p0, v0, p1, v1, v2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->raiseAlert(SSLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_12

    :goto_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->failed:Z

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->closeTransport()V

    goto :goto_4

    :catch_12
    move-exception v0

    goto :goto_b
.end method

.method getDiscoveredPeerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->discoveredPeerVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getReceiveLimit()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4000

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/bouncycastle/crypto/tls/DatagramTransport;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/DatagramTransport;->getReceiveLimit()I

    move-result v2

    add-int/lit8 v2, v2, -0xd

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsCipher;->getPlaintextLimit(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getSendLimit()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4000

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/bouncycastle/crypto/tls/DatagramTransport;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/DatagramTransport;->getSendLimit()I

    move-result v2

    add-int/lit8 v2, v2, -0xd

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsCipher;->getPlaintextLimit(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method handshakeSuccessful(Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    if-ne v0, v1, :cond_d

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_d
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    if-eq v0, v1, :cond_7

    if-nez p1, :cond_1f

    :goto_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iput-object v4, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    return-void

    :cond_1f
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x3a980

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitExpiry:J

    goto :goto_15
.end method

.method initPendingEpoch(Lorg/bouncycastle/crypto/tls/TlsCipher;)V
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    if-nez v0, :cond_14

    new-instance v0, Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getEpoch()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;-><init>(ILorg/bouncycastle/crypto/tls/TlsCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public receive([BIII)I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->getReceiveLimit()I

    move-result v2

    move/from16 v0, p3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v3, v2, 0xd

    if-nez v7, :cond_90

    :cond_f
    new-array v7, v3, [B

    :goto_11
    :try_start_11
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    if-nez v2, :cond_95

    :cond_15
    :goto_15
    const/4 v2, 0x0

    move/from16 v0, p4

    invoke-direct {p0, v7, v2, v3, v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->receiveRecord([BIII)I

    move-result v9

    if-ltz v9, :cond_ae

    const/16 v2, 0xd

    if-lt v9, v2, :cond_1

    const/16 v2, 0xb

    invoke-static {v7, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    if-ne v9, v2, :cond_1

    const/4 v2, 0x0

    invoke-static {v7, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v6

    packed-switch v6, :pswitch_data_128

    goto :goto_1

    :pswitch_35
    const/4 v2, 0x3

    invoke-static {v7, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v10

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getEpoch()I

    move-result v3

    if-eq v10, v3, :cond_af

    const/16 v3, 0x16

    if-eq v6, v3, :cond_b2

    :cond_47
    :goto_47
    if-eqz v2, :cond_1

    const/4 v3, 0x5

    invoke-static {v7, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint48([BI)J

    move-result-wide v12

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getReplayWindow()Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->shouldDiscard(J)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    invoke-static {v7, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readVersion([BI)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v11

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->discoveredPeerVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    if-nez v3, :cond_c1

    :goto_61
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getEpoch()I

    move-result v4

    invoke-static {v4, v12, v13}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->getMacSequenceNumber(IJ)J

    move-result-wide v4

    const/16 v8, 0xd

    add-int/lit8 v9, v9, -0xd

    invoke-interface/range {v3 .. v9}, Lorg/bouncycastle/crypto/tls/TlsCipher;->decodeCiphertext(JS[BII)[B

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getReplayWindow()Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->reportAuthenticated(J)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->discoveredPeerVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    if-eqz v2, :cond_ca

    :goto_80
    packed-switch v6, :pswitch_data_134

    :cond_83
    :goto_83
    iget-boolean v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-eqz v2, :cond_11b

    :cond_87
    :goto_87
    const/4 v2, 0x0

    array-length v4, v3

    move/from16 v0, p2

    invoke-static {v3, v2, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v3
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_8f} :catch_aa

    return v2

    :cond_90
    array-length v2, v7

    if-lt v2, v3, :cond_f

    goto/16 :goto_11

    :cond_95
    :try_start_95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitExpiry:J

    cmp-long v2, v4, v8

    if-gtz v2, :cond_ac

    const/4 v2, 0x1

    :goto_a0
    if-nez v2, :cond_15

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_a8} :catch_aa

    goto/16 :goto_15

    :catch_aa
    move-exception v2

    throw v2

    :cond_ac
    const/4 v2, 0x0

    goto :goto_a0

    :cond_ae
    return v9

    :cond_af
    :try_start_af
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    goto :goto_47

    :cond_b2
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    if-eqz v3, :cond_47

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getEpoch()I

    move-result v3

    if-ne v10, v3, :cond_47

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    goto :goto_47

    :cond_c1
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->discoveredPeerVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v3, v11}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_61

    :cond_ca
    iput-object v11, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->discoveredPeerVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    goto :goto_80

    :pswitch_cd
    array-length v2, v3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const/4 v2, 0x0

    aget-byte v2, v3, v2

    int-to-short v2, v2

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    int-to-short v3, v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->peer:Lorg/bouncycastle/crypto/tls/TlsPeer;

    invoke-interface {v4, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyAlertReceived(SS)V

    const/4 v4, 0x2

    if-eq v2, v4, :cond_e8

    if-nez v3, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->closeTransport()V

    goto/16 :goto_1

    :cond_e8
    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    new-instance v2, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    :pswitch_f1
    iget-boolean v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-nez v2, :cond_1

    goto :goto_83

    :pswitch_f6
    array-length v2, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const/4 v2, 0x0

    aget-byte v2, v3, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    goto/16 :goto_1

    :pswitch_10a
    iget-boolean v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-nez v2, :cond_83

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    const/4 v4, 0x0

    array-length v5, v3

    invoke-interface {v2, v10, v3, v4, v5}, Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;->receivedHandshakeRecord(I[BII)V

    goto/16 :goto_1

    :cond_11b
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    if-eqz v2, :cond_87

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_125} :catch_aa

    goto/16 :goto_87

    nop

    :pswitch_data_128
    .packed-switch 0x14
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch

    :pswitch_data_134
    .packed-switch 0x14
        :pswitch_f6
        :pswitch_cd
        :pswitch_10a
        :pswitch_f1
    .end packed-switch
.end method

.method resetWriteEpoch()V
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    :goto_6
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    return-void

    :cond_9
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    goto :goto_6
.end method

.method public send([BII)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v6, 0x14

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x17

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-eqz v2, :cond_17

    :cond_b
    const/16 v0, 0x16

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v2

    if-eq v2, v6, :cond_1e

    :goto_13
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->sendRecord(S[BII)V

    return-void

    :cond_17
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    if-eq v2, v3, :cond_b

    goto :goto_13

    :cond_1e
    iget-boolean v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-nez v2, :cond_35

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    if-eq v2, v3, :cond_38

    :goto_28
    if-eqz v1, :cond_3b

    new-array v2, v5, [B

    aput-byte v5, v2, v4

    array-length v3, v2

    invoke-direct {p0, v6, v2, v4, v3}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->sendRecord(S[BII)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    goto :goto_13

    :cond_35
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    goto :goto_28

    :cond_38
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    goto :goto_28

    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method warn(SLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->raiseAlert(SSLjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
