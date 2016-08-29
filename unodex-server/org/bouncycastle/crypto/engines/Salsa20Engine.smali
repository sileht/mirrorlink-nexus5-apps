.class public Lorg/bouncycastle/crypto/engines/Salsa20Engine;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# static fields
.field private static final STATE_SIZE:I = 0x10

.field private static final sigma:[B

.field private static final tau:[B


# instance fields
.field private cW0:I

.field private cW1:I

.field private cW2:I

.field private engineState:[I

.field private index:I

.field private initialised:Z

.field private keyStream:[B

.field private workingIV:[B

.field private workingKey:[B

.field private x:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "expand 32-byte k"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->sigma:[B

    const-string/jumbo v0, "expand 16-byte k"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->tau:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/16 v2, 0x10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    new-array v0, v2, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    return-void
.end method

.method private generateKeyStream([B)V
    .registers 5

    const/16 v0, 0x14

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->salsaCore(I[I[I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/crypto/util/Pack;->intToLittleEndian([I[BI)V

    return-void
.end method

.method private limitExceeded()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-eqz v1, :cond_a

    :cond_9
    return v0

    :cond_a
    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez v1, :cond_9

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_1d

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x1

    goto :goto_1c
.end method

.method private limitExceeded(I)Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-lt v1, p1, :cond_b

    :cond_a
    return v0

    :cond_b
    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-ltz v1, :cond_a

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez v1, :cond_a

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_22

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x1

    goto :goto_21
.end method

.method private resetCounter()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    return-void
.end method

.method private static rotl(II)I
    .registers 4

    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static salsaCore(I[I[I)V
    .registers 12

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/16 v7, 0xd

    const/16 v6, 0x9

    const/4 v5, 0x7

    array-length v1, p1

    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_b
    if-gtz p0, :cond_12

    :goto_d
    const/16 v1, 0x10

    if-lt v0, v1, :cond_26e

    return-void

    :cond_12
    const/4 v1, 0x4

    const/4 v2, 0x4

    aget v2, p2, v2

    aget v3, p2, v0

    const/16 v4, 0xc

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/16 v1, 0x8

    const/16 v2, 0x8

    aget v2, p2, v2

    const/4 v3, 0x4

    aget v3, p2, v3

    aget v4, p2, v0

    add-int/2addr v3, v4

    invoke-static {v3, v6}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/16 v1, 0xc

    const/16 v2, 0xc

    aget v2, p2, v2

    const/16 v3, 0x8

    aget v3, p2, v3

    const/4 v4, 0x4

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    aget v1, p2, v0

    const/16 v2, 0xc

    aget v2, p2, v2

    const/16 v3, 0x8

    aget v3, p2, v3

    add-int/2addr v2, v3

    const/16 v3, 0x12

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v0

    aget v1, p2, v6

    const/4 v2, 0x5

    aget v2, p2, v2

    aget v3, p2, v8

    add-int/2addr v2, v3

    invoke-static {v2, v5}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v6

    aget v1, p2, v7

    aget v2, p2, v6

    const/4 v3, 0x5

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v6}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v7

    aget v1, p2, v8

    aget v2, p2, v7

    aget v3, p2, v6

    add-int/2addr v2, v3

    invoke-static {v2, v7}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v8

    const/4 v1, 0x5

    const/4 v2, 0x5

    aget v2, p2, v2

    aget v3, p2, v8

    aget v4, p2, v7

    add-int/2addr v3, v4

    const/16 v4, 0x12

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/16 v1, 0xe

    const/16 v2, 0xe

    aget v2, p2, v2

    const/16 v3, 0xa

    aget v3, p2, v3

    const/4 v4, 0x6

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/4 v1, 0x2

    const/4 v2, 0x2

    aget v2, p2, v2

    const/16 v3, 0xe

    aget v3, p2, v3

    const/16 v4, 0xa

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v6}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    const/16 v4, 0xe

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/16 v1, 0xa

    const/16 v2, 0xa

    aget v2, p2, v2

    const/4 v3, 0x6

    aget v3, p2, v3

    const/4 v4, 0x2

    aget v4, p2, v4

    add-int/2addr v3, v4

    const/16 v4, 0x12

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/4 v1, 0x3

    const/4 v2, 0x3

    aget v2, p2, v2

    const/16 v3, 0xf

    aget v3, p2, v3

    const/16 v4, 0xb

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    aget v1, p2, v5

    const/4 v2, 0x3

    aget v2, p2, v2

    const/16 v3, 0xf

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v6}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v5

    const/16 v1, 0xb

    const/16 v2, 0xb

    aget v2, p2, v2

    aget v3, p2, v5

    const/4 v4, 0x3

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/16 v1, 0xf

    const/16 v2, 0xf

    aget v2, p2, v2

    const/16 v3, 0xb

    aget v3, p2, v3

    aget v4, p2, v5

    add-int/2addr v3, v4

    const/16 v4, 0x12

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    aget v1, p2, v8

    aget v2, p2, v0

    const/4 v3, 0x3

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v5}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v8

    const/4 v1, 0x2

    const/4 v2, 0x2

    aget v2, p2, v2

    aget v3, p2, v8

    aget v4, p2, v0

    add-int/2addr v3, v4

    invoke-static {v3, v6}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/4 v1, 0x3

    const/4 v2, 0x3

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    aget v4, p2, v8

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    aget v1, p2, v0

    const/4 v2, 0x3

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    add-int/2addr v2, v3

    const/16 v3, 0x12

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v0

    const/4 v1, 0x6

    const/4 v2, 0x6

    aget v2, p2, v2

    const/4 v3, 0x5

    aget v3, p2, v3

    const/4 v4, 0x4

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    aget v1, p2, v5

    const/4 v2, 0x6

    aget v2, p2, v2

    const/4 v3, 0x5

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v6}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v5

    const/4 v1, 0x4

    const/4 v2, 0x4

    aget v2, p2, v2

    aget v3, p2, v5

    const/4 v4, 0x6

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/4 v1, 0x5

    const/4 v2, 0x5

    aget v2, p2, v2

    const/4 v3, 0x4

    aget v3, p2, v3

    aget v4, p2, v5

    add-int/2addr v3, v4

    const/16 v4, 0x12

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/16 v1, 0xb

    const/16 v2, 0xb

    aget v2, p2, v2

    const/16 v3, 0xa

    aget v3, p2, v3

    aget v4, p2, v6

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/16 v1, 0x8

    const/16 v2, 0x8

    aget v2, p2, v2

    const/16 v3, 0xb

    aget v3, p2, v3

    const/16 v4, 0xa

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v6}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    aget v1, p2, v6

    const/16 v2, 0x8

    aget v2, p2, v2

    const/16 v3, 0xb

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v7}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v6

    const/16 v1, 0xa

    const/16 v2, 0xa

    aget v2, p2, v2

    aget v3, p2, v6

    const/16 v4, 0x8

    aget v4, p2, v4

    add-int/2addr v3, v4

    const/16 v4, 0x12

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/16 v1, 0xc

    const/16 v2, 0xc

    aget v2, p2, v2

    const/16 v3, 0xf

    aget v3, p2, v3

    const/16 v4, 0xe

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    aget v1, p2, v7

    const/16 v2, 0xc

    aget v2, p2, v2

    const/16 v3, 0xf

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v6}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v7

    const/16 v1, 0xe

    const/16 v2, 0xe

    aget v2, p2, v2

    aget v3, p2, v7

    const/16 v4, 0xc

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/16 v1, 0xf

    const/16 v2, 0xf

    aget v2, p2, v2

    const/16 v3, 0xe

    aget v3, p2, v3

    aget v4, p2, v7

    add-int/2addr v3, v4

    const/16 v4, 0x12

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    add-int/lit8 p0, p0, -0x2

    goto/16 :goto_b

    :cond_26e
    aget v1, p2, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d
.end method

.method private setKey([B[B)V
    .registers 14

    const/4 v10, 0x1

    const/16 v9, 0xc

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v2, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    iput v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->resetCounter()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, v0, v10

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v1, 0x2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-static {v3, v7}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v1, 0x3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-static {v3, v8}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-static {v1, v9}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, v0, v7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    array-length v0, v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_c0

    sget-object v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->tau:[B

    move v1, v2

    :goto_44
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v4, 0xb

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-static {v5, v1}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    aput v5, v3, v4

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    add-int/lit8 v5, v1, 0x4

    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v3, v9

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v4, 0xd

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    add-int/lit8 v6, v1, 0x8

    invoke-static {v5, v6}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    aput v5, v3, v4

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v4, 0xe

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    add-int/lit8 v1, v1, 0xc

    invoke-static {v5, v1}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, v3, v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x5

    invoke-static {v0, v7}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v1, v3

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xa

    invoke-static {v0, v8}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v1, v3

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xf

    invoke-static {v0, v9}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    aput v0, v1, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v1, 0x6

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    invoke-static {v3, v2}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v1, 0x7

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    invoke-static {v3, v7}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0x9

    aput v2, v1, v3

    aput v2, v0, v8

    iput-boolean v10, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    return-void

    :cond_c0
    sget-object v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->sigma:[B

    const/16 v1, 0x10

    goto :goto_44
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "Salsa20"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_15

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    if-nez v1, :cond_1e

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Salsa20 requires exactly 8 bytes of IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Salsa20 Init parameters must include an IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    array-length v0, v1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_c

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_41

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    return-void

    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Salsa20 Init parameters must include a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBytes([BII[BI)V
    .registers 12

    const/16 v5, 0x9

    const/16 v4, 0x8

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-eqz v1, :cond_1c

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_3a

    add-int v1, p5, p3

    array-length v2, p4

    if-gt v1, v2, :cond_43

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->limitExceeded(I)Z

    move-result v1

    if-nez v1, :cond_4c

    :goto_19
    if-lt v0, p3, :cond_55

    return-void

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

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

    :cond_3a
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    new-instance v0, Lorg/bouncycastle/crypto/MaxBytesExceededException;

    const-string/jumbo v1, "2^70 byte limit per IV would be exceeded; Change IV"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    if-eqz v1, :cond_75

    :cond_59
    :goto_59
    add-int v1, v0, p5

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v2, v2, v3

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_75
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    if-nez v2, :cond_59

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v2, v1, v5

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v5

    goto :goto_59
.end method

.method public reset()V
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    return-void
.end method

.method public returnByte(B)B
    .registers 6

    const/16 v3, 0x9

    const/16 v2, 0x8

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->limitExceeded()Z

    move-result v0

    if-nez v0, :cond_1f

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    if-eqz v0, :cond_28

    :cond_e
    :goto_e
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    return v0

    :cond_1f
    new-instance v0, Lorg/bouncycastle/crypto/MaxBytesExceededException;

    const-string/jumbo v1, "2^70 byte limit per IV; Change IV"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v2

    if-nez v1, :cond_e

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    goto :goto_e
.end method
