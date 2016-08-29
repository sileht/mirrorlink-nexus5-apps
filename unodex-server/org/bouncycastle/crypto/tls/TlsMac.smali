.class public Lorg/bouncycastle/crypto/tls/TlsMac;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field protected context:Lorg/bouncycastle/crypto/tls/TlsContext;

.field protected digestBlockSize:I

.field protected digestOverhead:I

.field protected mac:Lorg/bouncycastle/crypto/Mac;

.field protected secret:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;[BII)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p3, p4, p5}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->secret:[B

    instance-of v1, p2, Lorg/bouncycastle/crypto/digests/LongDigest;

    if-nez v1, :cond_37

    const/16 v1, 0x40

    iput v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestBlockSize:I

    const/16 v1, 0x8

    iput v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestOverhead:I

    :goto_20
    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v1

    if-nez v1, :cond_40

    new-instance v1, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v1, p2}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    :cond_31
    :goto_31
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_37
    const/16 v1, 0x80

    iput v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestBlockSize:I

    const/16 v1, 0x10

    iput v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestOverhead:I

    goto :goto_20

    :cond_40
    new-instance v1, Lorg/bouncycastle/crypto/tls/SSL3Mac;

    invoke-direct {v1, p2}, Lorg/bouncycastle/crypto/tls/SSL3Mac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_31

    const/4 v1, 0x4

    iput v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestOverhead:I

    goto :goto_31
.end method

.method private getDigestBlockCount(I)I
    .registers 4

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestOverhead:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestBlockSize:I

    div-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public calculateMac(JS[BII)[B
    .registers 12

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_3c

    const/16 v0, 0xd

    :goto_11
    invoke-direct {v3, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_14
    invoke-static {p1, p2, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint64(JLjava/io/OutputStream;)V

    invoke-static {p3, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    if-eqz v2, :cond_3f

    :goto_1c
    invoke-static {p6, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1f} :catch_43

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v2, v0

    invoke-interface {v1, v0, v4, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p4, p5, p6}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v1, v0, v4}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    return-object v0

    :cond_3c
    const/16 v0, 0xb

    goto :goto_11

    :cond_3f
    :try_start_3f
    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_1c

    :catch_43
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Internal error during mac calculation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public calculateMacConstantTime(JS[BIII[B)[B
    .registers 14

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p6}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v0

    if-nez v0, :cond_31

    const/16 v0, 0xd

    :goto_13
    add-int v2, v0, p7

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/tls/TlsMac;->getDigestBlockCount(I)I

    move-result v2

    add-int/2addr v0, p6

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsMac;->getDigestBlockCount(I)I

    move-result v0

    sub-int v0, v2, v0

    :goto_20
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_34

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    aget-byte v2, p8, v4

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->reset()V

    return-object v1

    :cond_31
    const/16 v0, 0xb

    goto :goto_13

    :cond_34
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    iget v3, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestBlockSize:I

    invoke-interface {v2, p8, v4, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    goto :goto_20
.end method

.method public getMACSecret()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->secret:[B

    return-object v0
.end method

.method public getSize()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    return v0
.end method
