.class public Lorg/bouncycastle/crypto/tls/TlsUtils;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static EMPTY_BYTES:[B

.field public static final EXT_signature_algorithms:Ljava/lang/Integer;

.field static final SSL3_CONST:[[B

.field static final SSL_CLIENT:[B

.field static final SSL_SERVER:[B


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v2, [B

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    const/16 v0, 0xd

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    new-array v0, v6, [B

    const/16 v1, 0x43

    aput-byte v1, v0, v2

    const/16 v1, 0x4c

    aput-byte v1, v0, v3

    const/16 v1, 0x4e

    aput-byte v1, v0, v4

    const/16 v1, 0x54

    aput-byte v1, v0, v5

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->SSL_CLIENT:[B

    new-array v0, v6, [B

    const/16 v1, 0x53

    aput-byte v1, v0, v2

    const/16 v1, 0x52

    aput-byte v1, v0, v3

    const/16 v1, 0x56

    aput-byte v1, v0, v4

    const/16 v1, 0x52

    aput-byte v1, v0, v5

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->SSL_SERVER:[B

    invoke-static {}, Lorg/bouncycastle/crypto/tls/TlsUtils;->genConst()[[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->SSL3_CONST:[[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PRF(Lorg/bouncycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B
    .registers 9

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, p3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v3

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getPrfAlgorithm()I

    move-result v0

    if-eqz v0, :cond_2f

    :goto_1c
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createPRFHash(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    new-array v1, p4, [B

    invoke-static {v0, p1, v3, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/bouncycastle/crypto/Digest;[B[B[B)V

    return-object v1

    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No PRF available for SSLv3 session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    goto :goto_1c

    :cond_3d
    invoke-static {p1, v2, v3, p4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->PRF_legacy([B[B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method static PRF_legacy([B[B[BI)[B
    .registers 10

    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    new-array v3, v1, [B

    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p0

    sub-int/2addr v4, v1

    invoke-static {p0, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, p3, [B

    new-array v4, p3, [B

    new-instance v5, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-static {v5, v2, p2, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/bouncycastle/crypto/Digest;[B[B[B)V

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-static {v2, v3, p2, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/bouncycastle/crypto/Digest;[B[B[B)V

    :goto_26
    if-lt v0, p3, :cond_29

    return-object v1

    :cond_29
    aget-byte v2, v1, v0

    aget-byte v3, v4, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method

.method public static addSignatureAlgorithmsExtension(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createSignatureAlgorithmsExtension(Ljava/util/Vector;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static calculateKeyBlock(Lorg/bouncycastle/crypto/tls/TlsContext;I)[B
    .registers 5

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getMasterSecret()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v0

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v2

    if-nez v2, :cond_26

    const-string/jumbo v2, "key expansion"

    invoke-static {p0, v1, v2, v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->PRF(Lorg/bouncycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object v0

    return-object v0

    :cond_26
    invoke-static {v1, v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateKeyBlock_SSL([B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method static calculateKeyBlock_SSL([B[BI)[B
    .registers 13

    const/4 v1, 0x0

    new-instance v3, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    new-instance v4, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v6, v0, [B

    add-int v0, p2, v5

    new-array v7, v0, [B

    move v0, v1

    move v2, v1

    :goto_1b
    if-lt v0, p2, :cond_23

    new-array v0, p2, [B

    invoke-static {v7, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_23
    sget-object v8, Lorg/bouncycastle/crypto/tls/TlsUtils;->SSL3_CONST:[[B

    aget-object v8, v8, v2

    array-length v9, v8

    invoke-interface {v4, v8, v1, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v8, p0

    invoke-interface {v4, p0, v1, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v8, p1

    invoke-interface {v4, p1, v1, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v4, v6, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v8, p0

    invoke-interface {v3, p0, v1, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v8, v6

    invoke-interface {v3, v6, v1, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v3, v7, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/2addr v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b
.end method

.method static calculateMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;[B)[B
    .registers 5

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v0

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v0

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v1

    if-nez v1, :cond_24

    const-string/jumbo v1, "master secret"

    const/16 v2, 0x30

    invoke-static {p0, p1, v1, v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->PRF(Lorg/bouncycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object v0

    return-object v0

    :cond_24
    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateMasterSecret_SSL([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static calculateMasterSecret_SSL([B[B)[B
    .registers 12

    const/4 v1, 0x0

    new-instance v3, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    new-instance v4, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v6, v0, [B

    mul-int/lit8 v0, v5, 0x3

    new-array v7, v0, [B

    move v0, v1

    move v2, v1

    :goto_1b
    const/4 v8, 0x3

    if-lt v0, v8, :cond_1f

    return-object v7

    :cond_1f
    sget-object v8, Lorg/bouncycastle/crypto/tls/TlsUtils;->SSL3_CONST:[[B

    aget-object v8, v8, v0

    array-length v9, v8

    invoke-interface {v4, v8, v1, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v8, p0

    invoke-interface {v4, p0, v1, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v8, p1

    invoke-interface {v4, p1, v1, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v4, v6, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v8, p0

    invoke-interface {v3, p0, v1, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v8, v6

    invoke-interface {v3, v6, v1, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v3, v7, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method

.method static calculateVerifyData(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B
    .registers 5

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getMasterSecret()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getVerifyDataLength()I

    move-result v0

    invoke-static {p0, v1, p1, p2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->PRF(Lorg/bouncycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object v0

    return-object v0

    :cond_1b
    return-object p2
.end method

.method public static final cloneHash(ILorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;
    .registers 4

    packed-switch p0, :pswitch_data_3c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown HashAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    new-instance v0, Lorg/bouncycastle/crypto/digests/MD5Digest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>(Lorg/bouncycastle/crypto/digests/MD5Digest;)V

    return-object v0

    :pswitch_14
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA1Digest;)V

    return-object v0

    :pswitch_1c
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA224Digest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/digests/SHA224Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA224Digest;)V

    return-object v0

    :pswitch_24
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA256Digest;)V

    return-object v0

    :pswitch_2c
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/digests/SHA384Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA384Digest;)V

    return-object v0

    :pswitch_34
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA512Digest;)V

    return-object v0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_c
        :pswitch_14
        :pswitch_1c
        :pswitch_24
        :pswitch_2c
        :pswitch_34
    .end packed-switch
.end method

.method public static final clonePRFHash(ILorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;
    .registers 3

    packed-switch p0, :pswitch_data_14

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getHashAlgorithmForPRFAlgorithm(I)S

    move-result v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->cloneHash(ILorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0

    :pswitch_c
    new-instance v0, Lorg/bouncycastle/crypto/tls/CombinedHash;

    check-cast p1, Lorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/tls/CombinedHash;-><init>(Lorg/bouncycastle/crypto/tls/CombinedHash;)V

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method static concat([B[B)[B
    .registers 6

    const/4 v3, 0x0

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static final createHash(I)Lorg/bouncycastle/crypto/Digest;
    .registers 3

    packed-switch p0, :pswitch_data_30

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown HashAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    new-instance v0, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    return-object v0

    :pswitch_12
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    return-object v0

    :pswitch_18
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA224Digest;-><init>()V

    return-object v0

    :pswitch_1e
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    return-object v0

    :pswitch_24
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA384Digest;-><init>()V

    return-object v0

    :pswitch_2a
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    return-object v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_1e
        :pswitch_24
        :pswitch_2a
    .end packed-switch
.end method

.method public static final createPRFHash(I)Lorg/bouncycastle/crypto/Digest;
    .registers 2

    packed-switch p0, :pswitch_data_12

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getHashAlgorithmForPRFAlgorithm(I)S

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0

    :pswitch_c
    new-instance v0, Lorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/CombinedHash;-><init>()V

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method public static createSignatureAlgorithmsExtension(Ljava/util/Vector;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_b

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'supportedSignatureAlgorithms\' must have length from 1 to (2^15 - 1)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const v1, 0x8000

    if-ge v0, v1, :cond_2

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_2b
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_36

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_36
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2b
.end method

.method public static createTlsSigner(S)Lorg/bouncycastle/crypto/tls/TlsSigner;
    .registers 3

    sparse-switch p0, :sswitch_data_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'clientCertificateType\' is not a type with signing capability"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_c
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsDSSSigner;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/TlsDSSSigner;-><init>()V

    return-object v0

    :sswitch_12
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsECDSASigner;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/TlsECDSASigner;-><init>()V

    return-object v0

    :sswitch_18
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsRSASigner;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/TlsRSASigner;-><init>()V

    return-object v0

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_18
        0x2 -> :sswitch_c
        0x40 -> :sswitch_12
    .end sparse-switch
.end method

.method private static genConst()[[B
    .registers 5

    const/16 v4, 0xa

    new-array v1, v4, [[B

    const/4 v0, 0x0

    :goto_5
    if-lt v0, v4, :cond_8

    return-object v1

    :cond_8
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [B

    add-int/lit8 v3, v0, 0x41

    int-to-byte v3, v3

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method static getClientCertificateType(Lorg/bouncycastle/crypto/tls/Certificate;Lorg/bouncycastle/crypto/tls/Certificate;)S
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    :try_start_f
    invoke-static {v1}, Lorg/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v2

    if-nez v2, :cond_2f

    instance-of v2, v1, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    if-nez v2, :cond_39

    instance-of v2, v1, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    if-nez v2, :cond_40

    instance-of v1, v1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_23} :catch_37

    if-nez v1, :cond_47

    :goto_25
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2b

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_2d
    const/4 v0, -0x1

    return v0

    :cond_2f
    :try_start_2f
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :catch_37
    move-exception v0

    goto :goto_25

    :cond_39
    const/16 v1, 0x80

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/bouncycastle/asn1/x509/Certificate;I)V

    const/4 v0, 0x1

    return v0

    :cond_40
    const/16 v1, 0x80

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/bouncycastle/asn1/x509/Certificate;I)V

    const/4 v0, 0x2

    return v0

    :cond_47
    const/16 v1, 0x80

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/bouncycastle/asn1/x509/Certificate;I)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_4c} :catch_37

    const/16 v0, 0x40

    return v0
.end method

.method public static getDefaultDSSSignatureAlgorithms()Ljava/util/Vector;
    .registers 2

    const/4 v1, 0x2

    new-instance v0, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    invoke-direct {v0, v1, v1}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultECDSASignatureAlgorithms()Ljava/util/Vector;
    .registers 3

    new-instance v0, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultRSASignatureAlgorithms()Ljava/util/Vector;
    .registers 3

    new-instance v0, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static final getHashAlgorithmForPRFAlgorithm(I)S
    .registers 3

    packed-switch p0, :pswitch_data_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown PRFAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "legacy PRF not a valid algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    const/4 v0, 0x4

    return v0

    :pswitch_17
    const/4 v0, 0x5

    return v0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_c
        :pswitch_15
        :pswitch_17
    .end packed-switch
.end method

.method public static getOIDForHashAlgorithm(I)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 3

    packed-switch p0, :pswitch_data_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown HashAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    :pswitch_f
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    :pswitch_12
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    :pswitch_15
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    :pswitch_18
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    :pswitch_1b
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
    .end packed-switch
.end method

.method public static getSignatureAlgorithmsExtension(Ljava/util/Hashtable;)Ljava/util/Vector;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_14

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-eqz v0, :cond_15

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readSignatureAlgorithmsExtension([B)Ljava/util/Vector;

    move-result-object v0

    return-object v0

    :cond_14
    return-object v1

    :cond_15
    return-object v1
.end method

.method public static hasSigningCapability(S)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x40 -> :sswitch_5
    .end sparse-switch
.end method

.method static hmac_hash(Lorg/bouncycastle/crypto/Digest;[B[B[B)V
    .registers 15

    const/4 v1, 0x0

    new-instance v4, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v4, p0}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    new-instance v5, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v5, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    array-length v0, p3

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    div-int v7, v0, v6

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v0

    new-array v3, v0, [B

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v0

    new-array v8, v0, [B

    move v0, v1

    move-object v2, p2

    :goto_23
    if-lt v0, v7, :cond_26

    return-void

    :cond_26
    invoke-virtual {v4, v5}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    array-length v9, v2

    invoke-virtual {v4, v2, v1, v9}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    invoke-virtual {v4, v3, v1}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    invoke-virtual {v4, v5}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    array-length v2, v3

    invoke-virtual {v4, v3, v1, v2}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    array-length v2, p2

    invoke-virtual {v4, p2, v1, v2}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    invoke-virtual {v4, v8, v1}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    mul-int v2, v6, v0

    array-length v9, p3

    mul-int v10, v6, v0

    sub-int/2addr v9, v10

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v8, v1, p3, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    move-object v2, v3

    goto :goto_23
.end method

.method public static isSignatureAlgorithmsExtensionAllowed(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z
    .registers 3

    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static isValidUint16(I)Z
    .registers 2

    const v0, 0xffff

    and-int/2addr v0, p0

    if-eq v0, p0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static isValidUint24(I)Z
    .registers 2

    const v0, 0xffffff

    and-int/2addr v0, p0

    if-eq v0, p0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static isValidUint32(J)Z
    .registers 4

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    cmp-long v0, v0, p0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isValidUint48(J)Z
    .registers 4

    const-wide v0, 0xffffffffffffL

    and-long/2addr v0, p0

    cmp-long v0, v0, p0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isValidUint64(J)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public static isValidUint8(S)Z
    .registers 2

    and-int/lit16 v0, p0, 0xff

    if-eq v0, p0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static readFully([BLjava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    if-gtz v0, :cond_4

    :cond_3
    return-void

    :cond_4
    invoke-static {p1, p0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public static readFully(ILjava/io/InputStream;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p0, v0, :cond_c

    new-array v0, p0, [B

    invoke-static {p1, v0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    if-ne p0, v1, :cond_f

    return-object v0

    :cond_c
    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    return-object v0

    :cond_f
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public static readOpaque16(Ljava/io/InputStream;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readOpaque24(Ljava/io/InputStream;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readOpaque8(Ljava/io/InputStream;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readSignatureAlgorithmsExtension([B)Ljava/util/Vector;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_20

    :cond_f
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'extensionValue\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_f

    div-int/lit8 v2, v2, 0x2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v2}, Ljava/util/Vector;-><init>(I)V

    :goto_2b
    if-lt v0, v2, :cond_31

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-object v3

    :cond_31
    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b
.end method

.method public static readUint16(Ljava/io/InputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_e

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0

    :cond_e
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public static readUint16([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static readUint16Array(ILjava/io/InputStream;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v1, p0, [I

    const/4 v0, 0x0

    :goto_3
    if-lt v0, p0, :cond_6

    return-object v1

    :cond_6
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static readUint24(Ljava/io/InputStream;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ltz v2, :cond_15

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0

    :cond_15
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public static readUint24([BI)I
    .registers 5

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static readUint32(Ljava/io/InputStream;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_23

    int-to-long v4, v0

    const/16 v0, 0x18

    shl-long/2addr v4, v0

    int-to-long v0, v1

    const/16 v6, 0x10

    shl-long/2addr v0, v6

    or-long/2addr v0, v4

    int-to-long v4, v2

    const/16 v2, 0x8

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    int-to-long v2, v3

    or-long/2addr v0, v2

    return-wide v0

    :cond_23
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public static readUint48(Ljava/io/InputStream;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ltz v5, :cond_35

    int-to-long v6, v0

    const/16 v0, 0x28

    shl-long/2addr v6, v0

    int-to-long v0, v1

    const/16 v8, 0x20

    shl-long/2addr v0, v8

    or-long/2addr v0, v6

    int-to-long v6, v2

    const/16 v2, 0x18

    shl-long/2addr v6, v2

    or-long/2addr v0, v6

    int-to-long v2, v3

    const/16 v6, 0x10

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    int-to-long v2, v4

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    or-long/2addr v0, v2

    return-wide v0

    :cond_35
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public static readUint48([BI)J
    .registers 8

    const-wide v4, 0xffffffffL

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v0

    add-int/lit8 v1, p1, 0x3

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v1

    int-to-long v2, v0

    and-long/2addr v2, v4

    const/16 v0, 0x18

    shl-long/2addr v2, v0

    int-to-long v0, v1

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static readUint8(Ljava/io/InputStream;)S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_8

    int-to-short v0, v0

    return v0

    :cond_8
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public static readUint8([BI)S
    .registers 3

    aget-byte v0, p0, p1

    int-to-short v0, v0

    return v0
.end method

.method public static readUint8Array(ILjava/io/InputStream;)[S
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v1, p0, [S

    const/4 v0, 0x0

    :goto_3
    if-lt v0, p0, :cond_6

    return-object v1

    :cond_6
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_f

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->get(II)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public static readVersion([BI)Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->get(II)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public static readVersionRaw(Ljava/io/InputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_e

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0

    :cond_e
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method static validateKeyUsage(Lorg/bouncycastle/asn1/x509/Certificate;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    return-void

    :cond_b
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/KeyUsage;->fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/KeyUsage;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/KeyUsage;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    and-int/2addr v0, p1

    if-eq v0, p1, :cond_a

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method private static vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;
    .registers 3

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static writeGMTUnixTime([BI)V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    shr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, p1, 0x2

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, p1, 0x3

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    return-void
.end method

.method public static writeOpaque16([BLjava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeOpaque24([BLjava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeOpaque8([BLjava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    int-to-short v0, v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeUint16(ILjava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint16(I[BI)V
    .registers 5

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, p0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method public static writeUint16Array([ILjava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    aget v1, p0, v0

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static writeUint24(ILjava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p0, 0x10

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint24(I[BI)V
    .registers 5

    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    int-to-byte v1, p0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method public static writeUint32(JLjava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    long-to-int v0, p0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint32(J[BI)V
    .registers 8

    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x10

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x8

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    long-to-int v1, p0

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method public static writeUint48(J[BI)V
    .registers 8

    const/16 v0, 0x28

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x20

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x18

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x10

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x8

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    long-to-int v1, p0

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method public static writeUint64(JLjava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x38

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    long-to-int v0, p0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint64(J[BI)V
    .registers 8

    const/16 v0, 0x38

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x30

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x28

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x20

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x18

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x10

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x6

    const/16 v1, 0x8

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x7

    long-to-int v1, p0

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method public static writeUint8(SLjava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint8(S[BI)V
    .registers 4

    int-to-byte v0, p0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    return-void
.end method

.method public static writeUint8Array([SLjava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    aget-short v1, p0, v0

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;[BI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method
