.class public Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsCipherFactory;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsCipherFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAEADBlockCipher_AES_GCM()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;
    .registers 3

    new-instance v0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected createAESBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .registers 3

    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected createAESCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsBlockCipher;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAESBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAESBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V

    return-object v0
.end method

.method protected createCamelliaBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .registers 3

    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/CamelliaEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected createCamelliaCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsBlockCipher;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V

    return-object v0
.end method

.method public createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x20

    const/16 v0, 0x10

    packed-switch p2, :pswitch_data_42

    :pswitch_7
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_f
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createDESedeCipher(Lorg/bouncycastle/crypto/tls/TlsContext;I)Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    return-object v0

    :pswitch_14
    invoke-virtual {p0, p1, v0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAESCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    return-object v0

    :pswitch_19
    invoke-virtual {p0, p1, v0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_GCM(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    return-object v0

    :pswitch_1e
    invoke-virtual {p0, p1, v1, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAESCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    return-object v0

    :pswitch_23
    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_GCM(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    return-object v0

    :pswitch_28
    invoke-virtual {p0, p1, v0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    return-object v0

    :pswitch_2d
    invoke-virtual {p0, p1, v1, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    return-object v0

    :pswitch_32
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createNullCipher(Lorg/bouncycastle/crypto/tls/TlsContext;I)Lorg/bouncycastle/crypto/tls/TlsNullCipher;

    move-result-object v0

    return-object v0

    :pswitch_37
    invoke-virtual {p0, p1, v0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createRC4Cipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsStreamCipher;

    move-result-object v0

    return-object v0

    :pswitch_3c
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createSEEDCipher(Lorg/bouncycastle/crypto/tls/TlsContext;I)Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_32
        :pswitch_7
        :pswitch_37
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_f
        :pswitch_14
        :pswitch_1e
        :pswitch_19
        :pswitch_23
        :pswitch_28
        :pswitch_2d
        :pswitch_3c
    .end packed-switch
.end method

.method protected createCipher_AES_GCM(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsAEADCipher;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_AES_GCM()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_AES_GCM()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    move-result-object v3

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;II)V

    return-object v0
.end method

.method protected createDESedeBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .registers 3

    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected createDESedeCipher(Lorg/bouncycastle/crypto/tls/TlsContext;I)Lorg/bouncycastle/crypto/tls/TlsBlockCipher;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createDESedeBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createDESedeBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    const/16 v6, 0x18

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V

    return-object v0
.end method

.method protected createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_2c

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_b
    const/4 v0, 0x0

    return-object v0

    :pswitch_d
    new-instance v0, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    return-object v0

    :pswitch_13
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    return-object v0

    :pswitch_19
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    return-object v0

    :pswitch_1f
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA384Digest;-><init>()V

    return-object v0

    :pswitch_25
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_d
        :pswitch_13
        :pswitch_19
        :pswitch_1f
        :pswitch_25
    .end packed-switch
.end method

.method protected createNullCipher(Lorg/bouncycastle/crypto/tls/TlsContext;I)Lorg/bouncycastle/crypto/tls/TlsNullCipher;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsNullCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;)V

    return-object v0
.end method

.method protected createRC4Cipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsStreamCipher;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createRC4StreamCipher()Lorg/bouncycastle/crypto/StreamCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createRC4StreamCipher()Lorg/bouncycastle/crypto/StreamCipher;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/StreamCipher;Lorg/bouncycastle/crypto/StreamCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V

    return-object v0
.end method

.method protected createRC4StreamCipher()Lorg/bouncycastle/crypto/StreamCipher;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/engines/RC4Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/RC4Engine;-><init>()V

    return-object v0
.end method

.method protected createSEEDBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .registers 3

    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/SEEDEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/SEEDEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected createSEEDCipher(Lorg/bouncycastle/crypto/tls/TlsContext;I)Lorg/bouncycastle/crypto/tls/TlsBlockCipher;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createSEEDBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createSEEDBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    const/16 v6, 0x10

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V

    return-object v0
.end method
