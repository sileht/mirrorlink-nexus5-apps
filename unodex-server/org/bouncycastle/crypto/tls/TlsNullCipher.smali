.class public Lorg/bouncycastle/crypto/tls/TlsNullCipher;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsCipher;


# instance fields
.field protected context:Lorg/bouncycastle/crypto/tls/TlsContext;

.field protected readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

.field protected writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v11, 0x50

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_20

    move v2, v4

    :goto_b
    if-eqz p3, :cond_e

    move v1, v4

    :cond_e
    if-ne v2, v1, :cond_22

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    if-nez p2, :cond_28

    move-object v4, v0

    :cond_15
    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v1

    if-nez v1, :cond_60

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    iput-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    :goto_1f
    return-void

    :cond_20
    move v2, v1

    goto :goto_b

    :cond_22
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_28
    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    add-int v10, v0, v1

    invoke-static {p1, v10}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateKeyBlock(Lorg/bouncycastle/crypto/tls/TlsContext;I)[B

    move-result-object v3

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/TlsMac;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;[BII)V

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    add-int/lit8 v8, v1, 0x0

    new-instance v4, Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    move-object v5, p1

    move-object v6, p3

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/crypto/tls/TlsMac;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;[BII)V

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    add-int/2addr v1, v8

    if-eq v1, v10, :cond_15

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_60
    iput-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    goto :goto_1f
.end method


# virtual methods
.method public decodeCiphertext(JS[BII)[B
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v0

    if-lt p6, v0, :cond_34

    sub-int v7, p6, v0

    add-int v0, p5, v7

    add-int v1, p5, p6

    invoke-static {p4, v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_3c

    add-int v0, p5, v7

    invoke-static {p4, p5, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    :cond_2d
    add-int v0, p5, p6

    invoke-static {p4, p5, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    :cond_34
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_3c
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public encodePlaintext(JS[BII)[B
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v0

    array-length v1, v0

    add-int/2addr v1, p6

    new-array v1, v1, [B

    invoke-static {p4, p5, v1, v8, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v0

    invoke-static {v0, v8, v1, p6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1c
    add-int v0, p5, p6

    invoke-static {p4, p5, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public getPlaintextLimit(I)I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    if-nez v0, :cond_5

    :goto_4
    return p1

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_4
.end method
