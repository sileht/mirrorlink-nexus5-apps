.class public Lorg/bouncycastle/crypto/prng/FixedSecureRandom;
.super Ljava/security/SecureRandom;
.source "Unknown"


# instance fields
.field private _data:[B

.field private _index:I

.field private _intPad:I


# direct methods
.method public constructor <init>(Z[B)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;-><init>(Z[[B)V

    return-void
.end method

.method public constructor <init>(Z[[B)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_9
    array-length v2, p2

    if-ne v0, v2, :cond_15

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_data:[B

    if-nez p1, :cond_27

    :goto_14
    return-void

    :cond_15
    :try_start_15
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_1d

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :catch_1d
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "can\'t save value array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_data:[B

    array-length v0, v0

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    goto :goto_14
.end method

.method public constructor <init>([B)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [[B

    aput-object p1, v0, v1

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;-><init>(Z[[B)V

    return-void
.end method

.method public constructor <init>([[B)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;-><init>(Z[[B)V

    return-void
.end method

.method private nextValue()I
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_data:[B

    iget v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public isExhausted()Z
    .registers 3

    iget v0, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_index:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_data:[B

    array-length v1, v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public nextBytes([B)V
    .registers 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_data:[B

    iget v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_index:I

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_index:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_index:I

    return-void
.end method

.method public nextInt()I
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    or-int/lit8 v0, v0, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_26

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    :goto_1b
    iget v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2d

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v1

    or-int/2addr v0, v1

    :goto_25
    return v0

    :cond_26
    iget v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    goto :goto_1b

    :cond_2d
    iget v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    goto :goto_25
.end method

.method public nextLong()J
    .registers 6

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const-wide/16 v2, 0x0

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method
