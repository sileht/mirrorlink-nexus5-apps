.class public abstract Lorg/bouncycastle/crypto/tls/SRPTlsClient;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsClient;
.source "Unknown"


# static fields
.field public static final EXT_SRP:Ljava/lang/Integer;


# instance fields
.field protected identity:[B

.field protected password:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->EXT_SRP:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;[B[B)V
    .registers 5

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->identity:[B

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->password:[B

    return-void
.end method

.method public constructor <init>([B[B)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->identity:[B

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->password:[B

    return-void
.end method


# virtual methods
.method protected createSRPKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .registers 6

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->identity:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->password:[B

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;-><init>(ILjava/util/Vector;[B[B)V

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

    iget v0, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->selectedCipherSuite:I

    packed-switch v0, :pswitch_data_2e

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_e
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :pswitch_18
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :pswitch_23
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    :pswitch_data_2e
    .packed-switch 0xc01a
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method public getCipherSuites()[I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0xc021

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0xc01e

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0xc01b

    aput v2, v0, v1

    const/4 v1, 0x3

    const v2, 0xc020

    aput v2, v0, v1

    const/4 v1, 0x4

    const v2, 0xc01d

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, 0xc01a

    aput v2, v0, v1

    return-object v0
.end method

.method public getClientExtensions()Ljava/util/Hashtable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_1a

    :goto_6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->identity:[B

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    sget-object v2, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->EXT_SRP:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1a
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    goto :goto_6
.end method

.method public getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->selectedCipherSuite:I

    packed-switch v0, :pswitch_data_22

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_d
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->createSRPKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :pswitch_14
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->createSRPKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :pswitch_1b
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->createSRPKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :pswitch_data_22
    .packed-switch 0xc01a
        :pswitch_d
        :pswitch_14
        :pswitch_1b
        :pswitch_d
        :pswitch_14
        :pswitch_1b
        :pswitch_d
        :pswitch_14
        :pswitch_1b
    .end packed-switch
.end method

.method public processServerExtensions(Ljava/util/Hashtable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    sget-object v0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->EXT_SRP:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method
