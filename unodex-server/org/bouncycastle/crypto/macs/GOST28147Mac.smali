.class public Lorg/bouncycastle/crypto/macs/GOST28147Mac;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field private S:[B

.field private blockSize:I

.field private buf:[B

.field private bufOff:I

.field private firstStep:Z

.field private mac:[B

.field private macSize:I

.field private workingKey:[I


# direct methods
.method public constructor <init>()V
    .registers 9

    const/4 v7, 0x2

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    iput v5, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->macSize:I

    iput-boolean v4, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    const/16 v0, 0x80

    new-array v0, v0, [B

    const/16 v1, 0x9

    aput-byte v1, v0, v3

    const/4 v1, 0x6

    aput-byte v1, v0, v4

    const/4 v1, 0x3

    aput-byte v1, v0, v7

    const/4 v1, 0x3

    aput-byte v7, v0, v1

    aput-byte v6, v0, v5

    const/4 v1, 0x5

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v4, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aput-byte v1, v0, v6

    const/16 v1, 0x9

    aput-byte v5, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v3, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    aput-byte v6, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    aput-byte v7, v0, v1

    const/16 v1, 0x1a

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    aput-byte v5, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    aput-byte v4, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    aput-byte v5, v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    aput-byte v7, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    aput-byte v6, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    aput-byte v4, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    aput-byte v4, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    aput-byte v3, v0, v1

    const/16 v1, 0x39

    aput-byte v7, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    aput-byte v5, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    aput-byte v6, v0, v1

    const/16 v1, 0x3e

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    aput-byte v4, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    aput-byte v6, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    aput-byte v3, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    aput-byte v5, v0, v1

    const/16 v1, 0x4a

    aput-byte v7, v0, v1

    const/16 v1, 0x4b

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    aput-byte v4, v0, v1

    const/16 v1, 0x55

    aput-byte v7, v0, v1

    const/16 v1, 0x56

    aput-byte v3, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    aput-byte v5, v0, v1

    const/16 v1, 0x5c

    aput-byte v6, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    aput-byte v4, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    aput-byte v7, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    aput-byte v3, v0, v1

    const/16 v1, 0x68

    aput-byte v6, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    aput-byte v5, v0, v1

    const/16 v1, 0x6b

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    aput-byte v3, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    aput-byte v6, v0, v1

    const/16 v1, 0x78

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    aput-byte v7, v0, v1

    const/16 v1, 0x7a

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    aput-byte v4, v0, v1

    const/16 v1, 0x7d

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    aput-byte v5, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    iget v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    iget v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iput v3, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    return-void
.end method

.method private CM5func([BI[B)[B
    .registers 8

    const/4 v0, 0x0

    array-length v1, p1

    sub-int/2addr v1, p2

    new-array v1, v1, [B

    array-length v2, p3

    invoke-static {p1, p2, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_9
    array-length v2, p3

    if-ne v0, v2, :cond_d

    return-object v1

    :cond_d
    aget-byte v2, v1, v0

    aget-byte v3, p3, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method private bytesToint([BI)I
    .registers 6

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private generateWorkingKey([B)[I
    .registers 6

    const/16 v3, 0x8

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_d

    new-array v1, v3, [I

    const/4 v0, 0x0

    :goto_a
    if-ne v0, v3, :cond_16

    return-object v1

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Key length invalid. Key needs to be 32 byte - 256 bit!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    mul-int/lit8 v2, v0, 0x4

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bytesToint([BI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method private gost28147MacFunc([I[BI[BI)V
    .registers 13

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bytesToint([BI)I

    move-result v3

    add-int/lit8 v0, p3, 0x4

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bytesToint([BI)I

    move-result v0

    move v4, v1

    :goto_c
    const/4 v2, 0x2

    if-lt v4, v2, :cond_18

    invoke-direct {p0, v3, p4, p5}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->intTobytes(I[BI)V

    add-int/lit8 v1, p5, 0x4

    invoke-direct {p0, v0, p4, v1}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->intTobytes(I[BI)V

    return-void

    :cond_18
    move v2, v0

    move v0, v1

    :goto_1a
    const/16 v5, 0x8

    if-lt v0, v5, :cond_23

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_c

    :cond_23
    aget v5, p1, v0

    invoke-direct {p0, v3, v5}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->gost28147_mainStep(II)I

    move-result v5

    xor-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_1a
.end method

.method private gost28147_mainStep(II)I
    .registers 7

    add-int v0, p2, p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v2, v0, 0x0

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, 0x0

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v3, v0, 0x4

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x10

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v3, v0, 0x8

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x20

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x30

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0xc

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v3, v0, 0x10

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x40

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v3, v0, 0x14

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x50

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x14

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v3, v0, 0x18

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x60

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x18

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v0, v0, 0x1c

    and-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, 0x70

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x1c

    add-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0xb

    ushr-int/lit8 v0, v0, 0x15

    or-int/2addr v0, v1

    return v0
.end method

.method private intTobytes(I[BI)V
    .registers 6

    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    int-to-byte v0, p1

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v3, 0x0

    :goto_1
    iget v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    iget v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    if-lt v0, v1, :cond_3e

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v0, v0

    new-array v2, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    array-length v1, v1

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    if-nez v0, :cond_4b

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    invoke-direct {p0, v0, v3, v1}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->CM5func([BI[B)[B

    move-result-object v2

    :goto_20
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->gost28147MacFunc([I[BI[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->macSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->macSize:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->reset()V

    iget v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->macSize:I

    return v0

    :cond_3e
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    aput-byte v3, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    goto :goto_1

    :cond_4b
    iput-boolean v3, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    goto :goto_20
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "GOST28147Mac"

    return-object v0
.end method

.method public getMacSize()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->macSize:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->reset()V

    iget v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    if-nez v0, :cond_34

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_5c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid parameter passed to GOST28147 init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    check-cast p1, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;->getSBox()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;->getSBox()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    if-nez v0, :cond_4b

    :goto_4a
    return-void

    :cond_4b
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->generateWorkingKey([B)[I

    move-result-object v0

    :goto_59
    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    goto :goto_4a

    :cond_5c
    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->generateWorkingKey([B)[I

    move-result-object v0

    goto :goto_59
.end method

.method public reset()V
    .registers 4

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v2, v2

    if-lt v0, v2, :cond_d

    iput v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    return-void

    :cond_d
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public update(B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v1, v1

    if-eq v0, v1, :cond_14

    :goto_8
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void

    :cond_14
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v0, v0

    new-array v2, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    array-length v1, v1

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    if-nez v0, :cond_39

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    invoke-direct {p0, v0, v3, v1}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->CM5func([BI[B)[B

    move-result-object v2

    :goto_2d
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->gost28147MacFunc([I[BI[BI)V

    iput v3, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    goto :goto_8

    :cond_39
    iput-boolean v3, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    goto :goto_2d
.end method

.method public update([BII)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v3, 0x0

    if-ltz p3, :cond_18

    iget v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    iget v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    sub-int v6, v0, v1

    if-gt p3, v6, :cond_21

    :goto_b
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    invoke-static {p1, p2, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v0, v0

    new-array v2, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    array-length v1, v1

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    if-nez v0, :cond_59

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    invoke-direct {p0, v0, v3, v1}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->CM5func([BI[B)[B

    move-result-object v2

    :goto_41
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->gost28147MacFunc([I[BI[BI)V

    iput v3, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    sub-int v0, p3, v6

    add-int v1, p2, v6

    move v6, v0

    move v7, v1

    :goto_52
    iget v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    if-gt v6, v0, :cond_5c

    move p3, v6

    move p2, v7

    goto :goto_b

    :cond_59
    iput-boolean v3, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    goto :goto_41

    :cond_5c
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    invoke-direct {p0, p1, v7, v0}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->CM5func([BI[B)[B

    move-result-object v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->gost28147MacFunc([I[BI[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    sub-int v0, v6, v0

    iget v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    add-int/2addr v1, v7

    move v6, v0

    move v7, v1

    goto :goto_52
.end method
