.class Lorg/bouncycastle/asn1/StreamUtil;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final MAX_MEMORY:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    sput-wide v0, Lorg/bouncycastle/asn1/StreamUtil;->MAX_MEMORY:J

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateBodyLength(I)I
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x7f

    if-gt p0, v1, :cond_6

    :cond_5
    return v0

    :cond_6
    move v1, v0

    :goto_7
    ushr-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_18

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x8

    :goto_f
    if-ltz v1, :cond_5

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v1, -0x8

    move v1, v0

    move v0, v2

    goto :goto_f

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method static calculateTagLength(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x1f

    if-ge p0, v1, :cond_6

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0x80

    if-lt p0, v0, :cond_2c

    const/4 v0, 0x5

    new-array v1, v0, [B

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v2, p0, 0x7f

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :cond_16
    shr-int/lit8 p0, p0, 0x7

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v2, p0, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v2, 0x7f

    if-gt p0, v2, :cond_16

    array-length v1, v1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_2c
    const/4 v0, 0x2

    goto :goto_5
.end method

.method static findLimit(Ljava/io/InputStream;)I
    .registers 8

    const/4 v4, 0x1

    const-wide/32 v2, 0x7fffffff

    const/4 v5, 0x0

    instance-of v0, p0, Lorg/bouncycastle/asn1/LimitedInputStream;

    if-nez v0, :cond_22

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;

    if-nez v0, :cond_29

    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_30

    instance-of v0, p0, Ljava/io/FileInputStream;

    if-nez v0, :cond_37

    :cond_15
    :goto_15
    sget-wide v0, Lorg/bouncycastle/asn1/StreamUtil;->MAX_MEMORY:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_50

    move v0, v4

    :goto_1c
    if-nez v0, :cond_52

    const v0, 0x7fffffff

    return v0

    :cond_22
    check-cast p0, Lorg/bouncycastle/asn1/LimitedInputStream;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/LimitedInputStream;->getRemaining()I

    move-result v0

    return v0

    :cond_29
    check-cast p0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->getLimit()I

    move-result v0

    return v0

    :cond_30
    check-cast p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    return v0

    :cond_37
    :try_start_37
    check-cast p0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    if-nez v0, :cond_49

    move-wide v0, v2

    :goto_40
    cmp-long v6, v0, v2

    if-ltz v6, :cond_4e

    move v6, v4

    :goto_45
    if-nez v6, :cond_15

    long-to-int v0, v0

    return v0

    :cond_49
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_4c} :catch_56

    move-result-wide v0

    goto :goto_40

    :cond_4e
    move v6, v5

    goto :goto_45

    :cond_50
    move v0, v5

    goto :goto_1c

    :cond_52
    sget-wide v0, Lorg/bouncycastle/asn1/StreamUtil;->MAX_MEMORY:J

    long-to-int v0, v0

    return v0

    :catch_56
    move-exception v0

    goto :goto_15
.end method
