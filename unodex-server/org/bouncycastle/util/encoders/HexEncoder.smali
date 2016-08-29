.class public Lorg/bouncycastle/util/encoders/HexEncoder;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final decodingTable:[B

.field protected final encodingTable:[B


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    invoke-virtual {p0}, Lorg/bouncycastle/util/encoders/HexEncoder;->initialiseDecodingTable()V

    return-void
.end method

.method private static ignore(C)Z
    .registers 2

    const/16 v0, 0xa

    if-ne p0, v0, :cond_6

    :cond_4
    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0xd

    if-eq p0, v0, :cond_4

    const/16 v0, 0x9

    if-eq p0, v0, :cond_4

    const/16 v0, 0x20

    if-eq p0, v0, :cond_4

    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v3, v1

    :goto_6
    if-gtz v3, :cond_c

    :cond_8
    move v2, v0

    :goto_9
    if-lt v0, v3, :cond_67

    return v2

    :cond_c
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v1

    if-eqz v1, :cond_8

    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_6

    :cond_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :goto_1f
    if-lt v1, v3, :cond_46

    :goto_21
    iget-object v4, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-byte v4, v4, v1

    :goto_2b
    if-lt v0, v3, :cond_51

    :cond_2d
    iget-object v5, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget-byte v0, v5, v0

    or-int v5, v4, v0

    if-ltz v5, :cond_5e

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v0, v4

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_9

    :cond_46
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_21

    :cond_51
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v1

    if-eqz v1, :cond_2d

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_5e
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "invalid characters encountered in Hex string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    move v1, v0

    goto :goto_1f
.end method

.method public decode([BIILjava/io/OutputStream;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    add-int v1, p2, p3

    move v3, v1

    :goto_4
    if-gt v3, p2, :cond_b

    :cond_6
    move v2, v0

    move v0, p2

    :goto_8
    if-lt v0, v3, :cond_5f

    return v2

    :cond_b
    add-int/lit8 v1, v3, -0x1

    aget-byte v1, p1, v1

    int-to-char v1, v1

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_4

    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :goto_1d
    if-lt v1, v3, :cond_40

    :goto_1f
    iget-object v4, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    aget-byte v1, v4, v1

    :goto_27
    if-lt v0, v3, :cond_4a

    :cond_29
    iget-object v4, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    aget-byte v0, v4, v0

    or-int v4, v1, v0

    if-ltz v4, :cond_56

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, p2

    goto :goto_8

    :cond_40
    aget-byte v0, p1, v1

    int-to-char v0, v0

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_1f

    :cond_4a
    aget-byte v4, p1, v0

    int-to-char v4, v4

    invoke-static {v4}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v4

    if-eqz v4, :cond_29

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_56
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "invalid characters encountered in Hex data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    move v1, v0

    goto :goto_1d
.end method

.method public encode([BIILjava/io/OutputStream;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p2

    :goto_1
    add-int v1, p2, p3

    if-lt v0, v1, :cond_8

    mul-int/lit8 v0, p3, 0x2

    return v0

    :cond_8
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    ushr-int/lit8 v3, v1, 0x4

    aget-byte v2, v2, v3

    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    and-int/lit8 v1, v1, 0xf

    aget-byte v1, v2, v1

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected initialiseDecodingTable()V
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    array-length v2, v2

    if-lt v0, v2, :cond_5b

    :goto_7
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    array-length v0, v0

    if-lt v1, v0, :cond_63

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v1, 0x41

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v3, 0x61

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v1, 0x42

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v3, 0x62

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v1, 0x43

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v3, 0x63

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v1, 0x44

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v3, 0x64

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v1, 0x45

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v3, 0x65

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v1, 0x46

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v3, 0x66

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void

    :cond_5b
    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_63
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    aget-byte v2, v2, v1

    int-to-byte v3, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method
