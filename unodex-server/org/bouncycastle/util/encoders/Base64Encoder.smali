.class public Lorg/bouncycastle/util/encoders/Base64Encoder;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final decodingTable:[B

.field protected final encodingTable:[B

.field protected padding:B


# direct methods
.method public constructor <init>()V
    .registers 9

    const/16 v7, 0x32

    const/16 v6, 0x31

    const/16 v5, 0x30

    const/16 v4, 0x2f

    const/16 v3, 0x2b

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    aput-byte v1, v0, v3

    const/16 v1, 0x2c

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    aput-byte v1, v0, v4

    const/16 v1, 0x77

    aput-byte v1, v0, v5

    const/16 v1, 0x78

    aput-byte v1, v0, v6

    const/16 v1, 0x79

    aput-byte v1, v0, v7

    const/16 v1, 0x33

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    aput-byte v5, v0, v1

    const/16 v1, 0x35

    aput-byte v6, v0, v1

    const/16 v1, 0x36

    aput-byte v7, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v4, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    const/16 v0, 0x3d

    iput-byte v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->padding:B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    invoke-virtual {p0}, Lorg/bouncycastle/util/encoders/Base64Encoder;->initialiseDecodingTable()V

    return-void
.end method

.method private decodeLastBlock(Ljava/io/OutputStream;CCCC)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->padding:B

    if-eq p4, v0, :cond_36

    iget-byte v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->padding:B

    if-eq p5, v0, :cond_55

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v1, p3

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v2, p4

    iget-object v3, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v3, v3, p5

    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_81

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v4, v1, 0x4

    or-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v1, 0x4

    shr-int/lit8 v1, v2, 0x2

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v2, 0x6

    or-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x3

    return v0

    :cond_36
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v1, p3

    or-int v2, v0, v1

    if-ltz v2, :cond_4c

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x1

    return v0

    :cond_4c
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "invalid characters encountered at end of base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v1, p3

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v2, p4

    or-int v3, v0, v1

    or-int/2addr v3, v2

    if-ltz v3, :cond_78

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v3, v1, 0x4

    or-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v1, 0x4

    shr-int/lit8 v1, v2, 0x2

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x2

    return v0

    :cond_78
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "invalid characters encountered at end of base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_81
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "invalid characters encountered at end of base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ignore(C)Z
    .registers 3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    :cond_4
    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0xd

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9

    if-eq p1, v0, :cond_4

    const/16 v0, 0x20

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    goto :goto_5
.end method

.method private nextI(Ljava/lang/String;II)I
    .registers 5

    :goto_0
    if-lt p2, p3, :cond_3

    :cond_2
    return p2

    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private nextI([BII)I
    .registers 5

    :goto_0
    if-lt p2, p3, :cond_3

    :cond_2
    return p2

    :cond_3
    aget-byte v0, p1, p2

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v5, v0

    :goto_6
    if-gtz v5, :cond_31

    :cond_8
    add-int/lit8 v2, v5, -0x4

    invoke-direct {p0, p1, v1, v2}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v0

    :goto_e
    move v6, v1

    if-lt v0, v2, :cond_41

    add-int/lit8 v0, v5, -0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v0, v5, -0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v0, v5, -0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v0

    add-int/2addr v0, v6

    return v0

    :cond_31
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_6

    :cond_41
    iget-object v1, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget-byte v0, v1, v0

    invoke-direct {p0, p1, v3, v2}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v1

    iget-object v3, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-byte v1, v3, v1

    invoke-direct {p0, p1, v4, v2}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v3, v4, v3

    invoke-direct {p0, p1, v7, v2}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v4

    iget-object v7, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v4, v7, v4

    or-int v7, v0, v1

    or-int/2addr v7, v3

    or-int/2addr v7, v4

    if-ltz v7, :cond_99

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v7, v1, 0x4

    or-int/2addr v0, v7

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v1, 0x4

    shr-int/lit8 v1, v3, 0x2

    or-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v3, 0x6

    or-int/2addr v0, v4

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v6, 0x3

    invoke-direct {p0, p1, v8, v2}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v0

    goto/16 :goto_e

    :cond_99
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "invalid characters encountered in base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode([BIILjava/io/OutputStream;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    add-int v0, p2, p3

    move v5, v0

    :goto_4
    if-gt v5, p2, :cond_2b

    :cond_6
    add-int/lit8 v2, v5, -0x4

    invoke-direct {p0, p1, p2, v2}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v0

    :goto_c
    move v6, v1

    if-lt v0, v2, :cond_3a

    add-int/lit8 v0, v5, -0x4

    aget-byte v0, p1, v0

    int-to-char v2, v0

    add-int/lit8 v0, v5, -0x3

    aget-byte v0, p1, v0

    int-to-char v3, v0

    add-int/lit8 v0, v5, -0x2

    aget-byte v0, p1, v0

    int-to-char v4, v0

    add-int/lit8 v0, v5, -0x1

    aget-byte v0, p1, v0

    int-to-char v5, v0

    move-object v0, p0

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v0

    add-int/2addr v0, v6

    return v0

    :cond_2b
    add-int/lit8 v0, v5, -0x1

    aget-byte v0, p1, v0

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_4

    :cond_3a
    iget-object v1, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p1, v0

    aget-byte v0, v1, v0

    invoke-direct {p0, p1, v3, v2}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v1

    iget-object v3, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p1, v1

    aget-byte v1, v3, v1

    invoke-direct {p0, p1, v4, v2}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v7, v3, 0x1

    aget-byte v3, p1, v3

    aget-byte v3, v4, v3

    invoke-direct {p0, p1, v7, v2}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v4

    iget-object v7, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, p1, v4

    aget-byte v4, v7, v4

    or-int v7, v0, v1

    or-int/2addr v7, v3

    or-int/2addr v7, v4

    if-ltz v7, :cond_89

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v7, v1, 0x4

    or-int/2addr v0, v7

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v1, 0x4

    shr-int/lit8 v1, v3, 0x2

    or-int/2addr v0, v1

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v3, 0x6

    or-int/2addr v0, v4

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v6, 0x3

    invoke-direct {p0, p1, v8, v2}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v0

    goto :goto_c

    :cond_89
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "invalid characters encountered in base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode([BIILjava/io/OutputStream;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    rem-int/lit8 v2, p3, 0x3

    sub-int v3, p3, v2

    move v1, p2

    :goto_6
    add-int v4, p2, v3

    if-lt v1, v4, :cond_16

    packed-switch v2, :pswitch_data_ba

    :goto_d
    :pswitch_d
    div-int/lit8 v1, v3, 0x3

    mul-int/lit8 v1, v1, 0x4

    if-eqz v2, :cond_14

    const/4 v0, 0x4

    :cond_14
    add-int/2addr v0, v1

    return v0

    :cond_16
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    iget-object v7, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v8, v4, 0x2

    and-int/lit8 v8, v8, 0x3f

    aget-byte v7, v7, v8

    invoke-virtual {p4, v7}, Ljava/io/OutputStream;->write(I)V

    iget-object v7, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v4, v4, 0x4

    ushr-int/lit8 v8, v5, 0x4

    or-int/2addr v4, v8

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v7, v4

    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v5, v5, 0x2

    ushr-int/lit8 v7, v6, 0x6

    or-int/2addr v5, v7

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    and-int/lit8 v5, v6, 0x3f

    aget-byte v4, v4, v5

    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_6

    :pswitch_59
    add-int v1, p2, v3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v4, v1, 0x2

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3f

    iget-object v5, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v4, v5, v4

    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v1, v4, v1

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write(I)V

    iget-byte v1, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->padding:B

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write(I)V

    iget-byte v1, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->padding:B

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_d

    :pswitch_80
    add-int v1, p2, v3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int v4, p2, v3

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v5, v1, 0x2

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v1, v1, 0x4

    ushr-int/lit8 v6, v4, 0x4

    or-int/2addr v1, v6

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    iget-object v6, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v5, v6, v5

    invoke-virtual {p4, v5}, Ljava/io/OutputStream;->write(I)V

    iget-object v5, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v1, v5, v1

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v1, v1, v4

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write(I)V

    iget-byte v1, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->padding:B

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_d

    nop

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_d
        :pswitch_59
        :pswitch_80
    .end packed-switch
.end method

.method protected initialiseDecodingTable()V
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    array-length v2, v2

    if-lt v0, v2, :cond_d

    :goto_7
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    array-length v0, v0

    if-lt v1, v0, :cond_15

    return-void

    :cond_d
    iget-object v2, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_15
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v2, v2, v1

    int-to-byte v3, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method
