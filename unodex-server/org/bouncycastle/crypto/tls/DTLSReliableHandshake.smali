.class Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;
    }
.end annotation


# static fields
.field private static final MAX_RECEIVE_AHEAD:I = 0xa


# instance fields
.field private currentInboundFlight:Ljava/util/Hashtable;

.field private hash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

.field private message_seq:I

.field private next_receive_seq:I

.field private outboundFlight:Ljava/util/Vector;

.field private previousInboundFlight:Ljava/util/Hashtable;

.field private final recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

.field private sending:Z


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/DeferredHash;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/DeferredHash;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->hash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->outboundFlight:Ljava/util/Vector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sending:Z

    iput v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->message_seq:I

    iput v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->hash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    return-void
.end method

.method static synthetic access$100(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;)I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    return v0
.end method

.method static synthetic access$200(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;)Ljava/util/Hashtable;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/Hashtable;)Z
    .registers 2

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->checkAll(Ljava/util/Hashtable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->resendOutboundFlight()V

    return-void
.end method

.method static synthetic access$500(Ljava/util/Hashtable;)V
    .registers 1

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->resetAll(Ljava/util/Hashtable;)V

    return-void
.end method

.method private static checkAll(Ljava/util/Hashtable;)Z
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->getBodyIfComplete()[B

    move-result-object v0

    if-nez v0, :cond_5

    return v2
.end method

.method private checkInboundFlight()V
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    if-ge v0, v2, :cond_6

    goto :goto_6
.end method

.method private prepareInboundFlight()V
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->resetAll(Ljava/util/Hashtable;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    return-void
.end method

.method private resendOutboundFlight()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->resetWriteEpoch()V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->outboundFlight:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->outboundFlight:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->writeMessage(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7
.end method

.method private static resetAll(Ljava/util/Hashtable;)V
    .registers 3

    invoke-virtual {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->reset()V

    goto :goto_4
.end method

.method private updateHandshakeMessagesDigest(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;)Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-object p1

    :cond_8
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    const/16 v1, 0xc

    new-array v1, v1, [B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v2

    invoke-static {v2, v1, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    array-length v2, v0

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getSeq()I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    const/4 v2, 0x6

    invoke-static {v4, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    array-length v2, v0

    const/16 v3, 0x9

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->hash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    array-length v3, v1

    invoke-interface {v2, v1, v4, v3}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->hash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    array-length v2, v0

    invoke-interface {v1, v0, v4, v2}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->update([BII)V

    goto :goto_7
.end method

.method private writeHandshakeFragment(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v1

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getSeq()I

    move-result v1

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-static {p3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->send([BII)V

    return-void
.end method

.method private writeMessage(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->getSendLimit()I

    move-result v0

    add-int/lit8 v1, v0, -0xc

    const/4 v0, 0x1

    if-lt v1, v0, :cond_1e

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    array-length v2, v0

    const/4 v0, 0x0

    :cond_11
    sub-int v3, v2, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {p0, p1, v0, v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->writeHandshakeFragment(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;II)V

    add-int/2addr v0, v3

    if-lt v0, v2, :cond_11

    return-void

    :cond_1e
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method


# virtual methods
.method finish()V
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sending:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    if-nez v1, :cond_13

    :goto_9
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->handshakeSuccessful(Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;)V

    return-void

    :cond_f
    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->checkInboundFlight()V

    goto :goto_9

    :cond_13
    new-instance v0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;-><init>(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;)V

    goto :goto_9
.end method

.method getCurrentHash()[B
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->hash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->fork()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->doFinal([BI)I

    return-object v1
.end method

.method notifyHelloComplete()V
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->hash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->commit()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->hash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    return-void
.end method

.method receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v12, 0xea60

    const/16 v11, 0xc

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sending:Z

    if-nez v0, :cond_78

    :goto_b
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    iget v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;

    if-nez v0, :cond_7e

    :cond_1b
    const/16 v0, 0x3e8

    :goto_1d
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->getReceiveLimit()I

    move-result v8

    if-nez v3, :cond_9a

    :cond_25
    new-array v3, v8, [B

    :goto_27
    move v7, v0

    :cond_28
    :try_start_28
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v8, v7}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->receive([BIII)I

    move-result v0

    if-ltz v0, :cond_d5

    if-lt v0, v11, :cond_28

    const/16 v1, 0x9

    invoke-static {v3, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v6

    add-int/lit8 v1, v6, 0xc

    if-ne v0, v1, :cond_28

    const/4 v0, 0x4

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v9

    iget v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    add-int/lit8 v0, v0, 0xa

    if-gt v9, v0, :cond_28

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v1

    const/4 v0, 0x1

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v2

    const/4 v0, 0x6

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v5

    add-int v0, v5, v6

    if-gt v0, v2, :cond_28

    iget v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    if-lt v9, v0, :cond_9e

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    invoke-static {v9}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;

    if-eqz v0, :cond_e0

    :goto_6d
    const/16 v4, 0xc

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->contributeFragment(SI[BIII)V

    iget v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_74} :catch_d4

    if-eq v9, v1, :cond_f0

    move v0, v7

    goto :goto_27

    :cond_78
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sending:Z

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->prepareInboundFlight()V

    goto :goto_b

    :cond_7e
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->getBodyIfComplete()[B

    move-result-object v1

    if-eqz v1, :cond_1b

    iput-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    new-instance v2, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    iget v4, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->getType()S

    move-result v0

    invoke-direct {v2, v4, v0, v1, v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;-><init>(IS[BLorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;)V

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->updateHandshakeMessagesDigest(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;)Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    return-object v0

    :cond_9a
    array-length v1, v3

    if-lt v1, v8, :cond_25

    goto :goto_27

    :cond_9e
    :try_start_9e
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    if-nez v0, :cond_a4

    move v0, v7

    goto :goto_27

    :cond_a4
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    invoke-static {v9}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;

    if-nez v0, :cond_b5

    :cond_b2
    :goto_b2
    move v0, v7

    goto/16 :goto_27

    :cond_b5
    const/16 v4, 0xc

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->contributeFragment(SI[BIII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->checkAll(Ljava/util/Hashtable;)Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->resendOutboundFlight()V

    mul-int/lit8 v0, v7, 0x2

    const v1, 0xea60

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->resetAll(Ljava/util/Hashtable;)V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_d3} :catch_d4

    goto :goto_b2

    :catch_d4
    move-exception v0

    :cond_d5
    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->resendOutboundFlight()V

    mul-int/lit8 v0, v7, 0x2

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_1d

    :cond_e0
    :try_start_e0
    new-instance v0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/DTLSReassembler;-><init>(SI)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    invoke-static {v9}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6d

    :cond_f0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->getBodyIfComplete()[B

    move-result-object v1

    if-nez v1, :cond_f9

    move v0, v7

    goto/16 :goto_27

    :cond_f9
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    new-instance v2, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    iget v4, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->getType()S

    move-result v0

    const/4 v5, 0x0

    invoke-direct {v2, v4, v0, v1, v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;-><init>(IS[BLorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;)V

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->updateHandshakeMessagesDigest(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;)Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_10f} :catch_d4

    move-result-object v0

    return-object v0
.end method

.method resetHandshakeMessagesDigest()V
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->hash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->reset()V

    return-void
.end method

.method sendMessage(S[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sending:Z

    if-eqz v0, :cond_1c

    :goto_4
    new-instance v0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    iget v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->message_seq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->message_seq:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;-><init>(IS[BLorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->outboundFlight:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->writeMessage(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->updateHandshakeMessagesDigest(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;)Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    return-void

    :cond_1c
    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->checkInboundFlight()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sending:Z

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->outboundFlight:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_4
.end method
