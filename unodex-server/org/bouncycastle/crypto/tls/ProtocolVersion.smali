.class public final Lorg/bouncycastle/crypto/tls/ProtocolVersion;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final DTLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field public static final DTLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field public static final SSLv3:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field public static final TLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field public static final TLSv11:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field public static final TLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;


# instance fields
.field private name:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    const/16 v1, 0x300

    const-string/jumbo v2, "SSL 3.0"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->SSLv3:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    const/16 v1, 0x301

    const-string/jumbo v2, "TLS 1.0"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    const/16 v1, 0x302

    const-string/jumbo v2, "TLS 1.1"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    const/16 v1, 0x303

    const-string/jumbo v2, "TLS 1.2"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    const v1, 0xfeff

    const-string/jumbo v2, "DTLS 1.0"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->DTLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    const v1, 0xfefd

    const-string/jumbo v2, "DTLS 1.2"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->version:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->name:Ljava/lang/String;

    return-void
.end method

.method public static get(II)Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sparse-switch p0, :sswitch_data_24

    :goto_3
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_b
    packed-switch p1, :pswitch_data_2e

    :sswitch_e
    packed-switch p1, :pswitch_data_3a

    :pswitch_11
    goto :goto_3

    :pswitch_12
    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0

    :pswitch_15
    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->SSLv3:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0

    :pswitch_18
    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0

    :pswitch_1b
    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0

    :pswitch_1e
    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0

    :pswitch_21
    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->DTLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0

    :sswitch_data_24
    .sparse-switch
        0x3 -> :sswitch_b
        0xfe -> :sswitch_e
    .end sparse-switch

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
    .end packed-switch

    :pswitch_data_3a
    .packed-switch 0xfd
        :pswitch_12
        :pswitch_11
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public getEquivalentTLSVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .registers 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->DTLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    if-eq p0, v0, :cond_e

    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0

    :cond_d
    return-object p0

    :cond_e
    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getFullVersion()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->version:I

    return v0
.end method

.method public getMajorVersion()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->version:I

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getMinorVersion()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->version:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->version:I

    return v0
.end method

.method public isDTLS()Z
    .registers 3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    const/16 v1, 0xfe

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v3

    if-ne v2, v3, :cond_1e

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v3

    if-nez v3, :cond_1f

    if-gez v2, :cond_21

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    return v0

    :cond_1f
    if-gtz v2, :cond_1d

    :cond_21
    move v0, v1

    goto :goto_1d
.end method

.method public isLaterVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v3

    if-ne v2, v3, :cond_1e

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v3

    if-nez v3, :cond_1f

    if-ltz v2, :cond_21

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    return v0

    :cond_1f
    if-lez v2, :cond_1d

    :cond_21
    move v0, v1

    goto :goto_1d
.end method

.method public isSSL()Z
    .registers 2

    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->SSLv3:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    if-eq p0, v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->name:Ljava/lang/String;

    return-object v0
.end method
