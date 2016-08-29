.class public Lorg/bouncycastle/crypto/engines/NoekeonEngine;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final genericSize:I = 0x10

.field private static final nullVector:[I

.field private static final roundConstants:[I


# instance fields
.field private _forEncryption:Z

.field private _initialised:Z

.field private decryptKeys:[I

.field private state:[I

.field private subKeys:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v6, [I

    aput v2, v0, v2

    aput v2, v0, v3

    aput v2, v0, v4

    aput v2, v0, v5

    sput-object v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->nullVector:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    const/16 v1, 0x80

    aput v1, v0, v2

    const/16 v1, 0x1b

    aput v1, v0, v3

    const/16 v1, 0x36

    aput v1, v0, v4

    const/16 v1, 0x6c

    aput v1, v0, v5

    const/16 v1, 0xd8

    aput v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0xab

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x4d

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x9a

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x5e

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xbc

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x63

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xc6

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x35

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x6a

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xd4

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->roundConstants:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->decryptKeys:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->_initialised:Z

    return-void
.end method

.method private bytesToIntBig([BI)I
    .registers 6

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private decryptBlock([BI[BI)I
    .registers 14

    const/16 v1, 0x10

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0x4

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0x8

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0xc

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->decryptKeys:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    array-length v3, v3

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->decryptKeys:[I

    sget-object v2, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->nullVector:[I

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->theta([I[I)V

    move v0, v1

    :goto_3e
    if-gtz v0, :cond_75

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->decryptKeys:[I

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->theta([I[I)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v3, v2, v5

    sget-object v4, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->roundConstants:[I

    aget v0, v4, v0

    xor-int/2addr v0, v3

    aput v0, v2, v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v0, v0, v5

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v0, v0, v6

    add-int/lit8 v2, p4, 0x4

    invoke-direct {p0, v0, p3, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v0, v0, v7

    add-int/lit8 v2, p4, 0x8

    invoke-direct {p0, v0, p3, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v0, v0, v8

    add-int/lit8 v2, p4, 0xc

    invoke-direct {p0, v0, p3, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    return v1

    :cond_75
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->decryptKeys:[I

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->theta([I[I)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v3, v2, v5

    sget-object v4, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->roundConstants:[I

    aget v4, v4, v0

    xor-int/2addr v3, v4

    aput v3, v2, v5

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->pi1([I)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->gamma([I)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->pi2([I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3e
.end method

.method private encryptBlock([BI[BI)I
    .registers 14

    const/16 v8, 0x10

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0x4

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0x8

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0xc

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v7

    move v0, v1

    :goto_2d
    if-lt v0, v8, :cond_64

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v3, v2, v1

    sget-object v4, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->roundConstants:[I

    aget v0, v4, v0

    xor-int/2addr v0, v3

    aput v0, v2, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->theta([I[I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v0, v0, v1

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v0, v0, v5

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v0, v0, v6

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v0, v0, v7

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    return v8

    :cond_64
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v3, v2, v1

    sget-object v4, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->roundConstants:[I

    aget v4, v4, v0

    xor-int/2addr v3, v4

    aput v3, v2, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->theta([I[I)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->pi1([I)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->gamma([I)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->pi2([I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d
.end method

.method private gamma([I)V
    .registers 9

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    aget v0, p1, v4

    aget v1, p1, v6

    xor-int/lit8 v1, v1, -0x1

    aget v2, p1, v5

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p1, v4

    aget v0, p1, v3

    aget v1, p1, v5

    aget v2, p1, v4

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p1, v3

    aget v0, p1, v6

    aget v1, p1, v3

    aput v1, p1, v6

    aput v0, p1, v3

    aget v0, p1, v5

    aget v1, p1, v3

    aget v2, p1, v4

    xor-int/2addr v1, v2

    aget v2, p1, v6

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p1, v5

    aget v0, p1, v4

    aget v1, p1, v6

    xor-int/lit8 v1, v1, -0x1

    aget v2, p1, v5

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p1, v4

    aget v0, p1, v3

    aget v1, p1, v5

    aget v2, p1, v4

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p1, v3

    return-void
.end method

.method private intToBytesBig(I[BI)V
    .registers 7

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    int-to-byte v1, p1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method private pi1([I)V
    .registers 6

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    aget v0, p1, v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v1

    aget v0, p1, v2

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v2

    aget v0, p1, v3

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v3

    return-void
.end method

.method private pi2([I)V
    .registers 7

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    aget v0, p1, v2

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v2

    aget v0, p1, v3

    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v3

    aget v0, p1, v4

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v4

    return-void
.end method

.method private rotl(II)I
    .registers 5

    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private setKey([B)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    const/4 v1, 0x3

    const/16 v2, 0xc

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v1

    return-void
.end method

.method private theta([I[I)V
    .registers 11

    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    aget v0, p1, v1

    aget v2, p1, v5

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v2

    const/16 v3, 0x18

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    xor-int/2addr v0, v2

    aget v2, p1, v4

    xor-int/2addr v2, v0

    aput v2, p1, v4

    aget v2, p1, v6

    xor-int/2addr v0, v2

    aput v0, p1, v6

    move v0, v1

    :goto_22
    const/4 v2, 0x4

    if-lt v0, v2, :cond_41

    aget v0, p1, v4

    aget v2, p1, v6

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v2

    const/16 v3, 0x18

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    xor-int/2addr v0, v2

    aget v2, p1, v1

    xor-int/2addr v2, v0

    aput v2, p1, v1

    aget v1, p1, v5

    xor-int/2addr v0, v1

    aput v0, p1, v5

    return-void

    :cond_41
    aget v2, p1, v0

    aget v3, p2, v0

    xor-int/2addr v2, v3

    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_22
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "Noekeon"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_13

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->_forEncryption:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->_initialised:Z

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->setKey([B)V

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid parameter passed to Noekeon init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .registers 8

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->_initialised:Z

    if-eqz v0, :cond_17

    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_35

    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_3e

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->_forEncryption:Z

    if-nez v0, :cond_47

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->decryptBlock([BI[BI)I

    move-result v0

    :goto_16
    return v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->encryptBlock([BI[BI)I

    move-result v0

    goto :goto_16
.end method

.method public reset()V
    .registers 1

    return-void
.end method
