.class public final Lorg/bouncycastle/util/Strings;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asCharArray([B)[C
    .registers 4

    array-length v0, p0

    new-array v1, v0, [C

    const/4 v0, 0x0

    :goto_4
    array-length v2, v1

    if-ne v0, v2, :cond_8

    return-object v1

    :cond_8
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static fromByteArray([B)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->asCharArray([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static fromUTF8ByteArray([B)Ljava/lang/String;
    .registers 10

    const/16 v8, 0xf0

    const/16 v7, 0xe0

    const/16 v6, 0xc0

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_9
    array-length v3, p0

    if-lt v2, v3, :cond_18

    new-array v4, v0, [C

    move v0, v1

    :goto_f
    array-length v2, p0

    if-lt v0, v2, :cond_3a

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xf0

    if-eq v3, v8, :cond_2f

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xe0

    if-eq v3, v7, :cond_34

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xc0

    if-eq v3, v6, :cond_37

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_9

    :cond_34
    add-int/lit8 v2, v2, 0x3

    goto :goto_9

    :cond_37
    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    :cond_3a
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xf0

    if-eq v2, v8, :cond_62

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xe0

    if-eq v2, v7, :cond_9a

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xd0

    const/16 v3, 0xd0

    if-eq v2, v3, :cond_b5

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xc0

    if-eq v2, v6, :cond_c7

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x1

    move v3, v1

    :goto_5c
    add-int/lit8 v1, v3, 0x1

    int-to-char v2, v2

    aput-char v2, v4, v3

    goto :goto_f

    :cond_62
    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    const/high16 v3, 0x10000

    sub-int/2addr v2, v3

    shr-int/lit8 v3, v2, 0xa

    const v5, 0xd800

    or-int/2addr v3, v5

    int-to-char v5, v3

    and-int/lit16 v2, v2, 0x3ff

    const v3, 0xdc00

    or-int/2addr v2, v3

    int-to-char v2, v2

    add-int/lit8 v3, v1, 0x1

    int-to-char v5, v5

    aput-char v5, v4, v1

    add-int/lit8 v0, v0, 0x4

    goto :goto_5c

    :cond_9a
    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x3

    move v3, v1

    goto :goto_5c

    :cond_b5
    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    :goto_bf
    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x2

    move v3, v1

    goto :goto_5c

    :cond_c7
    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    goto :goto_bf
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x1

    move-object v2, p0

    :goto_8
    if-nez v0, :cond_14

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    :goto_10
    array-length v0, v2

    if-ne v1, v0, :cond_2d

    return-object v2

    :cond_14
    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gtz v4, :cond_1f

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_8

    :cond_1f
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_2d
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_7
    array-length v2, v1

    if-ne v0, v2, :cond_b

    return-object v1

    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static toByteArray([C)[B
    .registers 4

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_4
    array-length v2, v1

    if-ne v0, v2, :cond_8

    return-object v1

    :cond_8
    aget-char v2, p0, v0

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_6
    array-length v3, v2

    if-ne v0, v3, :cond_c

    if-nez v1, :cond_23

    return-object p0

    :cond_c
    aget-char v3, v2, v0

    const/16 v4, 0x41

    if-le v4, v3, :cond_15

    :cond_12
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_15
    const/16 v4, 0x5a

    if-lt v4, v3, :cond_12

    const/4 v1, 0x1

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    goto :goto_12

    :cond_23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static toUTF8ByteArray([CLjava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x80

    const/4 v0, 0x0

    :goto_3
    array-length v1, p0

    if-lt v0, v1, :cond_7

    return-void

    :cond_7
    aget-char v1, p0, v0

    if-lt v1, v4, :cond_2e

    const/16 v2, 0x800

    if-lt v1, v2, :cond_32

    const v2, 0xd800

    if-ge v1, v2, :cond_41

    :cond_14
    shr-int/lit8 v2, v1, 0xc

    or-int/lit16 v2, v2, 0xe0

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2e
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2b

    :cond_32
    shr-int/lit8 v2, v1, 0x6

    or-int/lit16 v2, v2, 0xc0

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2b

    :cond_41
    const v2, 0xdfff

    if-gt v1, v2, :cond_14

    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    if-ge v2, v3, :cond_7f

    add-int/lit8 v0, v0, 0x1

    aget-char v2, p0, v0

    const v3, 0xdbff

    if-gt v1, v3, :cond_88

    and-int/lit16 v1, v1, 0x3ff

    shl-int/lit8 v1, v1, 0xa

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v1, v2

    const/high16 v2, 0x10000

    add-int/2addr v1, v2

    shr-int/lit8 v2, v1, 0x12

    or-int/lit16 v2, v2, 0xf0

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v2, v1, 0xc

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2b

    :cond_7f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "invalid UTF-16 codepoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "invalid UTF-16 codepoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toUTF8ByteArray(Ljava/lang/String;)[B
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static toUTF8ByteArray([C)[B
    .registers 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    invoke-static {p0, v0}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([CLjava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_d
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cannot encode string to byte array!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_6
    array-length v3, v2

    if-ne v0, v3, :cond_c

    if-nez v1, :cond_23

    return-object p0

    :cond_c
    aget-char v3, v2, v0

    const/16 v4, 0x61

    if-le v4, v3, :cond_15

    :cond_12
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_15
    const/16 v4, 0x7a

    if-lt v4, v3, :cond_12

    const/4 v1, 0x1

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0x41

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    goto :goto_12

    :cond_23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
