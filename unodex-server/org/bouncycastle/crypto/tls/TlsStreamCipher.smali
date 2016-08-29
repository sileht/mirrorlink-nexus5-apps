.class public Lorg/bouncycastle/crypto/tls/TlsStreamCipher;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsCipher;


# instance fields
.field protected context:Lorg/bouncycastle/crypto/tls/TlsContext;

.field protected decryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

.field protected encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

.field protected readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

.field protected writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/StreamCipher;Lorg/bouncycastle/crypto/StreamCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v11

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    mul-int/lit8 v1, p6, 0x2

    invoke-interface/range {p4 .. p4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface/range {p5 .. p5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int v12, v1, v2

    invoke-static {p1, v12}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateKeyBlock(Lorg/bouncycastle/crypto/tls/TlsContext;I)[B

    move-result-object v4

    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsMac;

    const/4 v5, 0x0

    invoke-interface/range {p4 .. p4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    move-object v2, p1

    move-object/from16 v3, p4

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/tls/TlsMac;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;[BII)V

    invoke-interface/range {p4 .. p4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int/lit8 v9, v2, 0x0

    new-instance v5, Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-interface/range {p5 .. p5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v10

    move-object v6, p1

    move-object/from16 v7, p5

    move-object v8, v4

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/crypto/tls/TlsMac;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;[BII)V

    invoke-interface/range {p5 .. p5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int/2addr v2, v9

    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    move/from16 v0, p6

    invoke-direct {v3, v4, v2, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    add-int v6, v2, p6

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    move/from16 v0, p6

    invoke-direct {v2, v4, v6, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    add-int v4, v6, p6

    if-ne v4, v12, :cond_73

    if-nez v11, :cond_7b

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    iput-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    move-object v1, v2

    :goto_66
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v4, 0x1

    invoke-interface {v2, v4, v3}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_73
    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    :cond_7b
    iput-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    move-object v1, v3

    move-object v3, v2

    goto :goto_66
.end method


# virtual methods
.method public decodeCiphertext(JS[BII)[B
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v7

    if-lt p6, v7, :cond_2c

    new-array v5, p6, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    move-object v2, p4

    move v3, p5

    move v4, p6

    invoke-interface/range {v1 .. v6}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    sub-int v7, p6, v7

    invoke-static {v5, v7, p6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v1

    invoke-static {v8, v1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {v5, v6, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1

    :cond_2c
    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    :cond_34
    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1
.end method

.method public encodePlaintext(JS[BII)[B
    .registers 16

    const/4 v8, 0x0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v6

    array-length v0, v6

    add-int/2addr v0, p6

    new-array v4, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    move-object v1, p4

    move v2, p5

    move v3, p6

    move v5, v8

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    array-length v3, v6

    move-object v1, v6

    move v2, v8

    move v5, p6

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    return-object v4
.end method

.method public getPlaintextLimit(I)I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method
