.class Lorg/bouncycastle/crypto/tls/RecordStream;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static CIPHERTEXT_LIMIT:I

.field private static COMPRESSED_LIMIT:I

.field private static PLAINTEXT_LIMIT:I


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private context:Lorg/bouncycastle/crypto/tls/TlsContext;

.field private handler:Lorg/bouncycastle/crypto/tls/TlsProtocol;

.field private hash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

.field private input:Ljava/io/InputStream;

.field private output:Ljava/io/OutputStream;

.field private pendingCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

.field private pendingCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

.field private readCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

.field private readCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

.field private readSeqNo:J

.field private readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field private restrictReadVersion:Z

.field private writeCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

.field private writeCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

.field private writeSeqNo:J

.field private writeVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x4000

    sput v0, Lorg/bouncycastle/crypto/tls/RecordStream;->PLAINTEXT_LIMIT:I

    sget v0, Lorg/bouncycastle/crypto/tls/RecordStream;->PLAINTEXT_LIMIT:I

    add-int/lit16 v0, v0, 0x400

    sput v0, Lorg/bouncycastle/crypto/tls/RecordStream;->COMPRESSED_LIMIT:I

    sget v0, Lorg/bouncycastle/crypto/tls/RecordStream;->COMPRESSED_LIMIT:I

    add-int/lit16 v0, v0, 0x400

    sput v0, Lorg/bouncycastle/crypto/tls/RecordStream;->CIPHERTEXT_LIMIT:I

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 8

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iput-wide v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readSeqNo:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeSeqNo:J

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->hash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->handler:Lorg/bouncycastle/crypto/tls/TlsProtocol;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsNullCompression;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/TlsNullCompression;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsNullCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    return-void
.end method

.method private static checkLength(IIS)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gt p0, p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method private static checkType(SS)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_a

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_9
    return-void

    :pswitch_data_a
    .packed-switch 0x14
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private static doFinal(Lorg/bouncycastle/crypto/Digest;)[B
    .registers 3

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method private getBufferContents()[B
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-object v0
.end method


# virtual methods
.method protected close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_11

    :goto_6
    :try_start_6
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_f

    :goto_b
    if-nez v0, :cond_e

    return-void

    :cond_e
    throw v0

    :catch_f
    move-exception v0

    goto :goto_b

    :catch_11
    move-exception v0

    goto :goto_6
.end method

.method protected decodeAndVerify(SLjava/io/InputStream;I)[B
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x16

    const/4 v6, 0x0

    sget v0, Lorg/bouncycastle/crypto/tls/RecordStream;->CIPHERTEXT_LIMIT:I

    invoke-static {p3, v0, v10}, Lorg/bouncycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    invoke-static {p3, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iget-wide v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readSeqNo:J

    const-wide/16 v8, 0x1

    add-long/2addr v8, v2

    iput-wide v8, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readSeqNo:J

    array-length v7, v5

    move v4, p1

    invoke-interface/range {v1 .. v7}, Lorg/bouncycastle/crypto/tls/TlsCipher;->decodeCiphertext(JS[BII)[B

    move-result-object v0

    array-length v1, v0

    sget v2, Lorg/bouncycastle/crypto/tls/RecordStream;->COMPRESSED_LIMIT:I

    invoke-static {v1, v2, v10}, Lorg/bouncycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsCompression;->decompress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    if-ne v1, v2, :cond_36

    :goto_2d
    array-length v1, v0

    sget v2, Lorg/bouncycastle/crypto/tls/RecordStream;->PLAINTEXT_LIMIT:I

    const/16 v3, 0x1e

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    return-object v0

    :cond_36
    array-length v2, v0

    invoke-virtual {v1, v0, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/RecordStream;->getBufferContents()[B

    move-result-object v0

    goto :goto_2d
.end method

.method finaliseHandshake()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    if-eq v0, v1, :cond_f

    :cond_7
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_f
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    if-ne v0, v1, :cond_7

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    return-void
.end method

.method protected flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method getCurrentHash([B)[B
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->hash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->fork()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v1

    if-nez v1, :cond_18

    :cond_13
    :goto_13
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->doFinal(Lorg/bouncycastle/crypto/Digest;)[B

    move-result-object v0

    return-object v0

    :cond_18
    if-eqz p1, :cond_13

    array-length v1, p1

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->update([BII)V

    goto :goto_13
.end method

.method getReadVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method init(Lorg/bouncycastle/crypto/tls/TlsContext;)V
    .registers 3

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    new-instance v0, Lorg/bouncycastle/crypto/tls/DeferredHash;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/DeferredHash;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->hash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->hash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    return-void
.end method

.method notifyHelloComplete()V
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->hash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->commit()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->hash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    return-void
.end method

.method public readRecord()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x2f

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->checkType(SS)V

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    if-eqz v1, :cond_37

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    if-eqz v2, :cond_49

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    :cond_24
    :goto_24
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->decodeAndVerify(SLjava/io/InputStream;I)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->handler:Lorg/bouncycastle/crypto/tls/TlsProtocol;

    array-length v3, v1

    invoke-virtual {v2, v0, v1, v4, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->processRecord(S[BII)V

    return-void

    :cond_37
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readVersionRaw(Ljava/io/InputStream;)I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    const/16 v2, 0x300

    if-eq v1, v2, :cond_24

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_49
    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    goto :goto_24

    :cond_4c
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method receivedReadCipherSpec()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    if-nez v0, :cond_c

    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_c
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readSeqNo:J

    return-void
.end method

.method sentWriteCipherSpec()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    if-nez v0, :cond_c

    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_c
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeSeqNo:J

    return-void
.end method

.method setPendingConnectionState(Lorg/bouncycastle/crypto/tls/TlsCompression;Lorg/bouncycastle/crypto/tls/TlsCipher;)V
    .registers 3

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    return-void
.end method

.method setReadVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-void
.end method

.method setRestrictReadVersion(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    return-void
.end method

.method setWriteVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-void
.end method

.method updateHandshakeData([BII)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->hash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->update([BII)V

    return-void
.end method

.method protected writeRecord(S[BII)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x50

    invoke-static {p1, v8}, Lorg/bouncycastle/crypto/tls/RecordStream;->checkType(SS)V

    sget v0, Lorg/bouncycastle/crypto/tls/RecordStream;->PLAINTEXT_LIMIT:I

    invoke-static {p4, v0, v8}, Lorg/bouncycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    if-lt p4, v10, :cond_66

    :cond_10
    const/16 v0, 0x16

    if-eq p1, v0, :cond_70

    :goto_14
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsCompression;->compress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    if-eq v0, v1, :cond_74

    invoke-virtual {v0, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/RecordStream;->getBufferContents()[B

    move-result-object v5

    array-length v0, v5

    add-int/lit16 v1, p4, 0x400

    invoke-static {v0, v1, v8}, Lorg/bouncycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iget-wide v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeSeqNo:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeSeqNo:J

    array-length v7, v5

    move v4, p1

    move v6, v9

    invoke-interface/range {v1 .. v7}, Lorg/bouncycastle/crypto/tls/TlsCipher;->encodePlaintext(JS[BII)[B

    move-result-object v0

    :goto_3e
    array-length v1, v0

    sget v2, Lorg/bouncycastle/crypto/tls/RecordStream;->CIPHERTEXT_LIMIT:I

    invoke-static {v1, v2, v8}, Lorg/bouncycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    array-length v1, v0

    add-int/lit8 v1, v1, 0x5

    new-array v1, v1, [B

    invoke-static {p1, v1, v9}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-static {v2, v1, v10}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;[BI)V

    array-length v2, v0

    const/4 v3, 0x3

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    const/4 v2, 0x5

    array-length v3, v0

    invoke-static {v0, v9, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void

    :cond_66
    const/16 v0, 0x17

    if-eq p1, v0, :cond_10

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_70
    invoke-virtual {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    goto :goto_14

    :cond_74
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iget-wide v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeSeqNo:J

    add-long v4, v2, v6

    iput-wide v4, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeSeqNo:J

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lorg/bouncycastle/crypto/tls/TlsCipher;->encodePlaintext(JS[BII)[B

    move-result-object v0

    goto :goto_3e
.end method
