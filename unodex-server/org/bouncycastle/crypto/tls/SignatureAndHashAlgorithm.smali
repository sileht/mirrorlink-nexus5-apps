.class public Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private hash:S

.field private signature:S


# direct methods
.method public constructor <init>(SS)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isValidUint8(S)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isValidUint8(S)Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p2, :cond_2a

    int-to-short v0, p1

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->hash:S

    int-to-short v0, p2

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->signature:S

    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'hash\' should be a uint8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'signature\' should be a uint8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'signature\' MUST NOT be \"anonymous\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v1

    new-instance v2, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    return-object v2
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->hash:S

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->signature:S

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    if-eqz v1, :cond_12

    check-cast p1, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v2

    if-eq v1, v2, :cond_13

    :cond_11
    :goto_11
    return v0

    :cond_12
    return v0

    :cond_13
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v2

    if-ne v1, v2, :cond_11

    const/4 v0, 0x1

    goto :goto_11
.end method

.method public getHash()S
    .registers 2

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->hash:S

    return v0
.end method

.method public getSignature()S
    .registers 2

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->signature:S

    return v0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method
