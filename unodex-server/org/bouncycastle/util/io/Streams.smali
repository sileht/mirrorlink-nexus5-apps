.class public final Lorg/bouncycastle/util/io/Streams;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static BUFFER_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x200

    sput v0, Lorg/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drain(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    sget v0, Lorg/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    new-array v0, v0, [B

    :cond_5
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_5

    return-void
.end method

.method public static pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    sget v0, Lorg/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    new-array v0, v0, [B

    :goto_5
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_d

    return-void

    :cond_d
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5
.end method

.method public static pipeAllLimited(Ljava/io/InputStream;JLjava/io/OutputStream;)J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    sget v2, Lorg/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    new-array v4, v2, [B

    :goto_7
    array-length v2, v4

    invoke-virtual {p0, v4, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gez v5, :cond_f

    return-wide v0

    :cond_f
    int-to-long v6, v5

    add-long/2addr v0, v6

    cmp-long v2, v0, p1

    if-gtz v2, :cond_21

    const/4 v2, 0x1

    :goto_16
    if-nez v2, :cond_23

    new-instance v0, Lorg/bouncycastle/util/io/StreamOverflowException;

    const-string/jumbo v1, "Data Overflow"

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/io/StreamOverflowException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    move v2, v3

    goto :goto_16

    :cond_23
    invoke-virtual {p3, v4, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_7
.end method

.method public static readAll(Ljava/io/InputStream;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Lorg/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static readAllLimited(Ljava/io/InputStream;I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    int-to-long v2, p1

    invoke-static {p0, v2, v3, v0}, Lorg/bouncycastle/util/io/Streams;->pipeAllLimited(Ljava/io/InputStream;JLjava/io/OutputStream;)J

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static readFully(Ljava/io/InputStream;[B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    return v0
.end method

.method public static readFully(Ljava/io/InputStream;[BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-lt v0, p3, :cond_4

    :cond_3
    return v0

    :cond_4
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_3

    add-int/2addr v0, v1

    goto :goto_1
.end method
