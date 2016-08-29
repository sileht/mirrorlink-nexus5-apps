.class public Lorg/bouncycastle/crypto/tls/TlsSRTPUtils;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final EXT_use_srtp:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xe

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsSRTPUtils;->EXT_use_srtp:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addUseSRTPExtension(Ljava/util/Hashtable;Lorg/bouncycastle/crypto/tls/UseSRTPData;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsSRTPUtils;->EXT_use_srtp:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsSRTPUtils;->createUseSRTPExtension(Lorg/bouncycastle/crypto/tls/UseSRTPData;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static createUseSRTPExtension(Lorg/bouncycastle/crypto/tls/UseSRTPData;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_20

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/UseSRTPData;->getProtectionProfiles()[I

    move-result-object v1

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16Array([ILjava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/UseSRTPData;->getMki()[B

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'useSRTPData\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUseSRTPExtension(Ljava/util/Hashtable;)Lorg/bouncycastle/crypto/tls/UseSRTPData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_14

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsSRTPUtils;->EXT_use_srtp:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-eqz v0, :cond_15

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsSRTPUtils;->readUseSRTPExtension([B)Lorg/bouncycastle/crypto/tls/UseSRTPData;

    move-result-object v0

    return-object v0

    :cond_14
    return-object v1

    :cond_15
    return-object v1
.end method

.method public static readUseSRTPExtension([B)Lorg/bouncycastle/crypto/tls/UseSRTPData;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_16

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1f

    :cond_e
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'extensionValue\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_e

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16Array(ILjava/io/InputStream;)[I

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    new-instance v0, Lorg/bouncycastle/crypto/tls/UseSRTPData;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/UseSRTPData;-><init>([I[B)V

    return-object v0
.end method
