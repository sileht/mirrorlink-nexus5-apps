.class Lorg/bouncycastle/crypto/tls/DeferredHash;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;


# instance fields
.field private buf:Ljava/io/ByteArrayOutputStream;

.field protected context:Lorg/bouncycastle/crypto/tls/TlsContext;

.field private hash:Lorg/bouncycastle/crypto/Digest;

.field private prfAlgorithm:I


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Ljava/io/ByteArrayOutputStream;

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->prfAlgorithm:I

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hash:Lorg/bouncycastle/crypto/Digest;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Ljava/io/ByteArrayOutputStream;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hash:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Ljava/io/ByteArrayOutputStream;

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->prfAlgorithm:I

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hash:Lorg/bouncycastle/crypto/Digest;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hash:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method protected checkHash()V
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hash:Lorg/bouncycastle/crypto/Digest;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No hash algorithm has been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public commit()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getPrfAlgorithm()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createPRFHash(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v3, v2

    invoke-interface {v0, v2, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    instance-of v2, v0, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    if-nez v2, :cond_25

    iput v1, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->prfAlgorithm:I

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hash:Lorg/bouncycastle/crypto/Digest;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Ljava/io/ByteArrayOutputStream;

    return-object p0

    :cond_25
    check-cast v0, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->commit()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    return-object v0
.end method

.method public doFinal([BI)I
    .registers 4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DeferredHash;->checkHash()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v0

    return v0
.end method

.method public fork()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;
    .registers 4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DeferredHash;->checkHash()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/DeferredHash;

    iget v1, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->prfAlgorithm:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hash:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->clonePRFHash(ILorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/DeferredHash;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    return-object v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DeferredHash;->checkHash()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestSize()I
    .registers 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DeferredHash;->checkHash()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/tls/TlsContext;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    return-void
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hash:Lorg/bouncycastle/crypto/Digest;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_9
.end method

.method public update(B)V
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hash:Lorg/bouncycastle/crypto/Digest;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_9
.end method

.method public update([BII)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hash:Lorg/bouncycastle/crypto/Digest;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9
.end method
