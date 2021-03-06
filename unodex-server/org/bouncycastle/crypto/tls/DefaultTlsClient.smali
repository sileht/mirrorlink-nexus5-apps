.class public abstract Lorg/bouncycastle/crypto/tls/DefaultTlsClient;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsClient;
.source "Unknown"


# instance fields
.field protected clientECPointFormats:[S

.field protected namedCurves:[I

.field protected serverECPointFormats:[S


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V

    return-void
.end method


# virtual methods
.method protected createDHEKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .registers 5

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/params/DHParameters;)V

    return-object v0
.end method

.method protected createDHKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .registers 5

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/params/DHParameters;)V

    return-object v0
.end method

.method protected createECDHEKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .registers 8

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->namedCurves:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->clientECPointFormats:[S

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->serverECPointFormats:[S

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;-><init>(ILjava/util/Vector;[I[S[S)V

    return-object v0
.end method

.method protected createECDHKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .registers 8

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->namedCurves:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->clientECPointFormats:[S

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->serverECPointFormats:[S

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;-><init>(ILjava/util/Vector;[I[S[S)V

    return-object v0
.end method

.method protected createRSAKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .registers 3

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method public getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/16 v6, 0x9

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->selectedCipherSuite:I

    sparse-switch v0, :sswitch_data_b4

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_13
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :sswitch_1d
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :sswitch_28
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, v5}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :sswitch_33
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2, v4}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :sswitch_3e
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v6, v3}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :sswitch_47
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v6, v5}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :sswitch_50
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v6, v2}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :sswitch_5a
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2, v4}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :sswitch_65
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :sswitch_70
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0xd

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :sswitch_7b
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v4, v2}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :sswitch_84
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v4, v3}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :sswitch_8d
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v4, v5}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :sswitch_96
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :sswitch_9f
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v3, v3}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :sswitch_a8
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_b4
    .sparse-switch
        0x1 -> :sswitch_7b
        0x2 -> :sswitch_84
        0x4 -> :sswitch_96
        0x5 -> :sswitch_9f
        0xa -> :sswitch_13
        0xd -> :sswitch_13
        0x10 -> :sswitch_13
        0x13 -> :sswitch_13
        0x16 -> :sswitch_13
        0x2f -> :sswitch_1d
        0x30 -> :sswitch_1d
        0x31 -> :sswitch_1d
        0x32 -> :sswitch_1d
        0x33 -> :sswitch_1d
        0x35 -> :sswitch_3e
        0x36 -> :sswitch_3e
        0x37 -> :sswitch_3e
        0x38 -> :sswitch_3e
        0x39 -> :sswitch_3e
        0x3b -> :sswitch_8d
        0x3c -> :sswitch_28
        0x3d -> :sswitch_47
        0x3e -> :sswitch_28
        0x3f -> :sswitch_28
        0x40 -> :sswitch_28
        0x41 -> :sswitch_65
        0x42 -> :sswitch_65
        0x43 -> :sswitch_65
        0x44 -> :sswitch_65
        0x45 -> :sswitch_65
        0x67 -> :sswitch_28
        0x68 -> :sswitch_47
        0x69 -> :sswitch_47
        0x6a -> :sswitch_47
        0x6b -> :sswitch_47
        0x84 -> :sswitch_70
        0x85 -> :sswitch_70
        0x86 -> :sswitch_70
        0x87 -> :sswitch_70
        0x88 -> :sswitch_70
        0x96 -> :sswitch_a8
        0x97 -> :sswitch_a8
        0x98 -> :sswitch_a8
        0x99 -> :sswitch_a8
        0x9a -> :sswitch_a8
        0x9c -> :sswitch_33
        0x9d -> :sswitch_5a
        0x9e -> :sswitch_33
        0x9f -> :sswitch_5a
        0xa0 -> :sswitch_33
        0xa1 -> :sswitch_5a
        0xa2 -> :sswitch_33
        0xa3 -> :sswitch_5a
        0xa4 -> :sswitch_33
        0xa5 -> :sswitch_5a
        0xc001 -> :sswitch_84
        0xc002 -> :sswitch_9f
        0xc003 -> :sswitch_13
        0xc004 -> :sswitch_1d
        0xc005 -> :sswitch_3e
        0xc006 -> :sswitch_84
        0xc007 -> :sswitch_9f
        0xc008 -> :sswitch_13
        0xc009 -> :sswitch_1d
        0xc00a -> :sswitch_3e
        0xc00b -> :sswitch_84
        0xc00c -> :sswitch_9f
        0xc00d -> :sswitch_13
        0xc00e -> :sswitch_1d
        0xc00f -> :sswitch_3e
        0xc010 -> :sswitch_84
        0xc011 -> :sswitch_9f
        0xc012 -> :sswitch_13
        0xc013 -> :sswitch_1d
        0xc014 -> :sswitch_3e
        0xc023 -> :sswitch_28
        0xc024 -> :sswitch_50
        0xc025 -> :sswitch_28
        0xc026 -> :sswitch_50
        0xc027 -> :sswitch_28
        0xc028 -> :sswitch_50
        0xc029 -> :sswitch_28
        0xc02a -> :sswitch_50
        0xc02b -> :sswitch_33
        0xc02c -> :sswitch_5a
        0xc02d -> :sswitch_33
        0xc02e -> :sswitch_5a
        0xc02f -> :sswitch_33
        0xc030 -> :sswitch_5a
        0xc031 -> :sswitch_33
        0xc032 -> :sswitch_5a
    .end sparse-switch
.end method

.method public getCipherSuites()[I
    .registers 4

    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0xc014

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0xc013

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0xc012

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x39

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x33

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x16

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x35

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xa

    aput v2, v0, v1

    return-object v0
.end method

.method public getClientExtensions()Ljava/util/Hashtable;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->getCipherSuites()[I

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->containsECCCipherSuites([I)Z

    move-result v1

    if-nez v1, :cond_14

    :goto_13
    return-object v0

    :cond_14
    const/4 v1, 0x7

    new-array v1, v1, [I

    const/16 v2, 0x17

    aput v2, v1, v4

    const/4 v2, 0x7

    aput v2, v1, v5

    const/16 v2, 0x15

    aput v2, v1, v6

    aput v3, v1, v7

    const/16 v2, 0x13

    aput v2, v1, v3

    const/4 v2, 0x5

    const v3, 0xff02

    aput v3, v1, v2

    const/4 v2, 0x6

    const v3, 0xff01

    aput v3, v1, v2

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->namedCurves:[I

    new-array v1, v7, [S

    aput-short v6, v1, v4

    aput-short v5, v1, v5

    aput-short v4, v1, v6

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->clientECPointFormats:[S

    if-eqz v0, :cond_4d

    :goto_42
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->namedCurves:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->addSupportedEllipticCurvesExtension(Ljava/util/Hashtable;[I)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->clientECPointFormats:[S

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->addSupportedPointFormatsExtension(Ljava/util/Hashtable;[S)V

    goto :goto_13

    :cond_4d
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    goto :goto_42
.end method

.method public getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->selectedCipherSuite:I

    sparse-switch v0, :sswitch_data_48

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_d
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createDHKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :sswitch_13
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createDHKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :sswitch_1a
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createDHEKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :sswitch_20
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createDHEKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :sswitch_26
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createECDHKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :sswitch_2d
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createECDHKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :sswitch_34
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createECDHEKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :sswitch_3b
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createECDHEKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :sswitch_42
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createRSAKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_48
    .sparse-switch
        0x1 -> :sswitch_42
        0x2 -> :sswitch_42
        0x4 -> :sswitch_42
        0x5 -> :sswitch_42
        0xa -> :sswitch_42
        0xd -> :sswitch_d
        0x10 -> :sswitch_13
        0x13 -> :sswitch_1a
        0x16 -> :sswitch_20
        0x2f -> :sswitch_42
        0x30 -> :sswitch_d
        0x31 -> :sswitch_13
        0x32 -> :sswitch_1a
        0x33 -> :sswitch_20
        0x35 -> :sswitch_42
        0x36 -> :sswitch_d
        0x37 -> :sswitch_13
        0x38 -> :sswitch_1a
        0x39 -> :sswitch_20
        0x3b -> :sswitch_42
        0x3c -> :sswitch_42
        0x3d -> :sswitch_42
        0x3e -> :sswitch_d
        0x3f -> :sswitch_13
        0x40 -> :sswitch_1a
        0x41 -> :sswitch_42
        0x42 -> :sswitch_d
        0x43 -> :sswitch_13
        0x44 -> :sswitch_1a
        0x45 -> :sswitch_20
        0x67 -> :sswitch_20
        0x68 -> :sswitch_d
        0x69 -> :sswitch_13
        0x6a -> :sswitch_1a
        0x6b -> :sswitch_20
        0x84 -> :sswitch_42
        0x85 -> :sswitch_d
        0x86 -> :sswitch_13
        0x87 -> :sswitch_1a
        0x88 -> :sswitch_20
        0x96 -> :sswitch_42
        0x97 -> :sswitch_d
        0x98 -> :sswitch_13
        0x99 -> :sswitch_1a
        0x9a -> :sswitch_20
        0x9c -> :sswitch_42
        0x9d -> :sswitch_42
        0x9e -> :sswitch_20
        0x9f -> :sswitch_20
        0xa0 -> :sswitch_13
        0xa1 -> :sswitch_13
        0xa2 -> :sswitch_1a
        0xa3 -> :sswitch_1a
        0xa4 -> :sswitch_d
        0xa5 -> :sswitch_d
        0xc001 -> :sswitch_26
        0xc002 -> :sswitch_26
        0xc003 -> :sswitch_26
        0xc004 -> :sswitch_26
        0xc005 -> :sswitch_26
        0xc006 -> :sswitch_34
        0xc007 -> :sswitch_34
        0xc008 -> :sswitch_34
        0xc009 -> :sswitch_34
        0xc00a -> :sswitch_34
        0xc00b -> :sswitch_2d
        0xc00c -> :sswitch_2d
        0xc00d -> :sswitch_2d
        0xc00e -> :sswitch_2d
        0xc00f -> :sswitch_2d
        0xc010 -> :sswitch_3b
        0xc011 -> :sswitch_3b
        0xc012 -> :sswitch_3b
        0xc013 -> :sswitch_3b
        0xc014 -> :sswitch_3b
        0xc023 -> :sswitch_34
        0xc024 -> :sswitch_34
        0xc025 -> :sswitch_26
        0xc026 -> :sswitch_26
        0xc027 -> :sswitch_3b
        0xc028 -> :sswitch_3b
        0xc029 -> :sswitch_2d
        0xc02a -> :sswitch_2d
        0xc02b -> :sswitch_34
        0xc02c -> :sswitch_34
        0xc02d -> :sswitch_26
        0xc02e -> :sswitch_26
        0xc02f -> :sswitch_3b
        0xc030 -> :sswitch_3b
        0xc031 -> :sswitch_2d
        0xc032 -> :sswitch_2d
    .end sparse-switch
.end method

.method public processServerExtensions(Ljava/util/Hashtable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x2f

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    if-nez p1, :cond_8

    :cond_7
    return-void

    :cond_8
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->getSupportedEllipticCurvesExtension(Ljava/util/Hashtable;)[I

    move-result-object v0

    if-nez v0, :cond_26

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->getSupportedPointFormatsExtension(Ljava/util/Hashtable;)[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->serverECPointFormats:[S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->serverECPointFormats:[S

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->selectedCipherSuite:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->isECCCipherSuite(I)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_26
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method
