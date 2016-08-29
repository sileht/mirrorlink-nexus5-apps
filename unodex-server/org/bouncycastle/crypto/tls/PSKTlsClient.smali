.class public abstract Lorg/bouncycastle/crypto/tls/PSKTlsClient;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsClient;
.source "Unknown"


# instance fields
.field protected pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    return-void
.end method


# virtual methods
.method protected createPSKKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .registers 5

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    invoke-direct {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;)V

    return-object v0
.end method

.method public getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->selectedCipherSuite:I

    sparse-switch v0, :sswitch_data_42

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_e
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :sswitch_18
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :sswitch_23
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :sswitch_2e
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :sswitch_38
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v3, v3}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_42
    .sparse-switch
        0x2c -> :sswitch_2e
        0x2d -> :sswitch_2e
        0x2e -> :sswitch_2e
        0x8a -> :sswitch_38
        0x8b -> :sswitch_e
        0x8c -> :sswitch_18
        0x8d -> :sswitch_23
        0x8e -> :sswitch_38
        0x8f -> :sswitch_e
        0x90 -> :sswitch_18
        0x91 -> :sswitch_23
        0x92 -> :sswitch_38
        0x93 -> :sswitch_e
        0x94 -> :sswitch_18
        0x95 -> :sswitch_23
    .end sparse-switch
.end method

.method public getCipherSuites()[I
    .registers 4

    const/16 v0, 0xc

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x91

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x90

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x8f

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x8e

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x95

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x94

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x93

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x92

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x8d

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x8c

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x8b

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x8a

    aput v2, v0, v1

    return-object v0
.end method

.method public getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->selectedCipherSuite:I

    sparse-switch v0, :sswitch_data_22

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_d
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->createPSKKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :sswitch_14
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->createPSKKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :sswitch_1b
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->createPSKKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :sswitch_data_22
    .sparse-switch
        0x2c -> :sswitch_d
        0x2d -> :sswitch_1b
        0x2e -> :sswitch_14
        0x8a -> :sswitch_d
        0x8b -> :sswitch_d
        0x8c -> :sswitch_d
        0x8d -> :sswitch_d
        0x8e -> :sswitch_1b
        0x8f -> :sswitch_1b
        0x90 -> :sswitch_1b
        0x91 -> :sswitch_1b
        0x92 -> :sswitch_14
        0x93 -> :sswitch_14
        0x94 -> :sswitch_14
        0x95 -> :sswitch_14
    .end sparse-switch
.end method
