.class public Lorg/bouncycastle/crypto/tls/TlsBlockCipher;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsCipher;


# instance fields
.field protected context:Lorg/bouncycastle/crypto/tls/TlsContext;

.field protected decryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

.field protected encryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

.field protected randomData:[B

.field protected readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

.field protected useExplicitIV:Z

.field protected writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    const/16 v1, 0x100

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->randomData:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->randomData:[B

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v1, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    mul-int/lit8 v1, p6, 0x2

    invoke-interface/range {p4 .. p4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface/range {p5 .. p5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int/2addr v1, v2

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    if-eqz v2, :cond_bd

    move v11, v1

    :goto_35
    invoke-static {p1, v11}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateKeyBlock(Lorg/bouncycastle/crypto/tls/TlsContext;I)[B

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

    new-instance v7, Lorg/bouncycastle/crypto/params/KeyParameter;

    move/from16 v0, p6

    invoke-direct {v7, v4, v2, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    add-int v2, v2, p6

    new-instance v8, Lorg/bouncycastle/crypto/params/KeyParameter;

    move/from16 v0, p6

    invoke-direct {v8, v4, v2, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    add-int v6, v2, p6

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    if-nez v2, :cond_ca

    invoke-interface {p2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    add-int/2addr v2, v6

    invoke-static {v4, v6, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {p2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    add-int/2addr v6, v2

    invoke-interface/range {p3 .. p3}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    add-int/2addr v2, v6

    invoke-static {v4, v6, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    add-int/2addr v4, v6

    move-object v12, v2

    move v2, v4

    move-object v4, v3

    move-object v3, v12

    :goto_94
    if-ne v2, v11, :cond_da

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v2

    if-nez v2, :cond_e2

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    iput-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v2, v7, v4}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v1, v8, v3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    :goto_b0
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_bd
    invoke-interface {p2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    invoke-interface/range {p3 .. p3}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    move v11, v1

    goto/16 :goto_35

    :cond_ca
    invoke-interface {p2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    new-array v3, v2, [B

    invoke-interface/range {p3 .. p3}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    new-array v2, v2, [B

    move-object v4, v3

    move-object v3, v2

    move v2, v6

    goto :goto_94

    :cond_da
    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    :cond_e2
    iput-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v2, v8, v3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v1, v7, v4}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    goto :goto_b0
.end method


# virtual methods
.method protected checkPaddingConstantTime([BIIII)I
    .registers 13

    const/4 v3, 0x0

    add-int v5, p2, p3

    add-int/lit8 v0, v5, -0x1

    aget-byte v6, p1, v0

    and-int/lit16 v0, v6, 0xff

    add-int/lit8 v4, v0, 0x1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_17
    add-int v0, p5, v4

    if-gt v0, p3, :cond_2c

    sub-int v0, v5, v4

    move v2, v3

    :goto_1e
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    xor-int/2addr v0, v6

    or-int/2addr v0, v2

    int-to-byte v0, v0

    if-ge v1, v5, :cond_3d

    move v2, v0

    move v0, v1

    goto :goto_1e

    :cond_2a
    if-le v4, p4, :cond_17

    :cond_2c
    move v0, v3

    move v1, v3

    move v4, v3

    :goto_2f
    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->randomData:[B

    :goto_31
    const/16 v2, 0x100

    if-lt v1, v2, :cond_44

    aget-byte v1, v5, v3

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v5, v3

    return v4

    :cond_3d
    if-nez v0, :cond_41

    move v1, v4

    goto :goto_2f

    :cond_41
    move v1, v4

    move v4, v3

    goto :goto_2f

    :cond_44
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v5, v1

    xor-int/2addr v1, v6

    or-int/2addr v0, v1

    int-to-byte v0, v0

    move v1, v2

    goto :goto_31
.end method

.method protected chooseExtraPadBlocks(Ljava/security/SecureRandom;I)I
    .registers 4

    invoke-virtual {p1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->lowestBitSet(I)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public decodeCiphertext(JS[BII)[B
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    if-nez v3, :cond_62

    :goto_16
    move/from16 v0, p6

    if-lt v0, v2, :cond_64

    rem-int v2, p6, v6

    if-nez v2, :cond_6c

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    if-nez v2, :cond_74

    move/from16 v5, p6

    move/from16 v4, p5

    :goto_26
    const/4 v2, 0x0

    :goto_27
    if-lt v2, v5, :cond_89

    move-object v2, p0

    move-object/from16 v3, p4

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->checkPaddingConstantTime([BIIII)I

    move-result v3

    sub-int v2, v5, v3

    sub-int v11, v2, v7

    add-int v2, v4, v11

    add-int v6, v4, v11

    add-int/2addr v6, v7

    move-object/from16 v0, p4

    invoke-static {v0, v2, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    sub-int v12, v5, v7

    iget-object v13, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->randomData:[B

    move-object v5, v6

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move v10, v4

    invoke-virtual/range {v5 .. v13}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMacConstantTime(JS[BIII[B)[B

    move-result-object v5

    invoke-static {v5, v2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_98

    const/4 v2, 0x0

    :goto_58
    if-eqz v2, :cond_9a

    :cond_5a
    new-instance v2, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    :cond_62
    add-int/2addr v2, v6

    goto :goto_16

    :cond_64
    new-instance v2, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    :cond_6c
    new-instance v2, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    :cond_74
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v4, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v3, v4, v0, v1, v6}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[BII)V

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    add-int v4, p5, v6

    sub-int v5, p6, v6

    goto :goto_26

    :cond_89
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    add-int v8, v4, v2

    add-int v9, v4, v2

    move-object/from16 v0, p4

    move-object/from16 v1, p4

    invoke-interface {v3, v0, v8, v1, v9}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int/2addr v2, v6

    goto :goto_27

    :cond_98
    const/4 v2, 0x1

    goto :goto_58

    :cond_9a
    if-eqz v3, :cond_5a

    add-int v2, v4, v11

    move-object/from16 v0, p4

    invoke-static {v0, v4, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    return-object v2
.end method

.method public encodePlaintext(JS[BII)[B
    .registers 24

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v6

    add-int/lit8 v4, v14, -0x1

    add-int v7, p6, v5

    rem-int/2addr v7, v14

    sub-int/2addr v4, v7

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v7

    if-eqz v7, :cond_66

    :cond_24
    :goto_24
    add-int v5, v5, p6

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    if-nez v6, :cond_80

    move v12, v5

    :goto_30
    new-array v15, v12, [B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    if-nez v6, :cond_83

    move v13, v5

    :goto_3a
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v5 .. v11}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v5

    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-static {v0, v1, v15, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x0

    add-int v7, v13, p6

    array-length v8, v5

    invoke-static {v5, v6, v15, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v6, v13, p6

    array-length v5, v5

    add-int/2addr v6, v5

    const/4 v5, 0x0

    :goto_61
    if-le v5, v4, :cond_a7

    :goto_63
    if-lt v13, v12, :cond_b0

    return-object v15

    :cond_66
    invoke-virtual {v6}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v6

    if-nez v6, :cond_24

    rsub-int v6, v4, 0xff

    div-int/2addr v6, v14

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v7}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->chooseExtraPadBlocks(Ljava/security/SecureRandom;I)I

    move-result v6

    mul-int/2addr v6, v14

    add-int/2addr v4, v6

    goto :goto_24

    :cond_80
    add-int/2addr v5, v14

    move v12, v5

    goto :goto_30

    :cond_83
    new-array v5, v14, [B

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v6}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v7, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v5}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    const/4 v8, 0x1

    invoke-interface {v6, v8, v7}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v15, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v14, 0x0

    move v13, v5

    goto :goto_3a

    :cond_a7
    add-int v7, v5, v6

    int-to-byte v8, v4

    int-to-byte v8, v8

    aput-byte v8, v15, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    :cond_b0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, v15, v13, v15, v13}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int/2addr v13, v14

    goto :goto_63
.end method

.method public getPlaintextLimit(I)I
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v0

    rem-int v2, p1, v1

    sub-int v2, p1, v2

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, -0x1

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    if-nez v2, :cond_19

    :goto_18
    return v0

    :cond_19
    sub-int/2addr v0, v1

    goto :goto_18
.end method

.method public getReadMac()Lorg/bouncycastle/crypto/tls/TlsMac;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    return-object v0
.end method

.method public getWriteMac()Lorg/bouncycastle/crypto/tls/TlsMac;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    return-object v0
.end method

.method protected lowestBitSet(I)I
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    :goto_3
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_b

    return v0

    :cond_8
    const/16 v0, 0x20

    return v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 p1, p1, 0x1

    goto :goto_3
.end method
