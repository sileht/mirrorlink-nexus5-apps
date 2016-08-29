.class Lorg/bouncycastle/crypto/tls/CombinedHash;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;


# instance fields
.field protected context:Lorg/bouncycastle/crypto/tls/TlsContext;

.field protected md5:Lorg/bouncycastle/crypto/Digest;

.field protected sha1:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->md5:Lorg/bouncycastle/crypto/Digest;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->sha1:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/crypto/tls/CombinedHash;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/CombinedHash;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    const/4 v0, 0x1

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/CombinedHash;->md5:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->cloneHash(ILorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->md5:Lorg/bouncycastle/crypto/Digest;

    const/4 v0, 0x2

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/CombinedHash;->sha1:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->cloneHash(ILorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->sha1:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public commit()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;
    .registers 1

    return-object p0
.end method

.method public doFinal([BI)I
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    if-nez v0, :cond_14

    :cond_4
    :goto_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->md5:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->sha1:Lorg/bouncycastle/crypto/Digest;

    add-int v2, p2, v0

    invoke-interface {v1, p1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_14
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->md5:Lorg/bouncycastle/crypto/Digest;

    sget-object v1, Lorg/bouncycastle/crypto/tls/SSL3Mac;->IPAD:[B

    sget-object v2, Lorg/bouncycastle/crypto/tls/SSL3Mac;->OPAD:[B

    const/16 v3, 0x30

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/tls/CombinedHash;->ssl3Complete(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->sha1:Lorg/bouncycastle/crypto/Digest;

    sget-object v1, Lorg/bouncycastle/crypto/tls/SSL3Mac;->IPAD:[B

    sget-object v2, Lorg/bouncycastle/crypto/tls/SSL3Mac;->OPAD:[B

    const/16 v3, 0x28

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/tls/CombinedHash;->ssl3Complete(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    goto :goto_4
.end method

.method public fork()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/tls/CombinedHash;-><init>(Lorg/bouncycastle/crypto/tls/CombinedHash;)V

    return-object v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->md5:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->sha1:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestSize()I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->md5:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->sha1:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/tls/TlsContext;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    return-void
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->md5:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->sha1:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method protected ssl3Complete(Lorg/bouncycastle/crypto/Digest;[B[BI)V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    iget-object v0, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    array-length v1, v0

    invoke-interface {p1, v0, v3, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p1, p2, v3, p4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    invoke-interface {p1, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v2, v0

    invoke-interface {p1, v0, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p1, p3, v3, p4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v0, v1

    invoke-interface {p1, v1, v3, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public update(B)V
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->md5:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->sha1:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->md5:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CombinedHash;->sha1:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method
