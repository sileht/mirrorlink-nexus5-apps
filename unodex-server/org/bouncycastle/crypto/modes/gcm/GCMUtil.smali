.class abstract Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asBytes([I)[B
    .registers 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/util/Pack;->intToBigEndian([I[BI)V

    return-object v0
.end method

.method static asInts([B[I)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI[I)V

    return-void
.end method

.method static asInts([B)[I
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI[I)V

    return-object v0
.end method

.method static multiply([B[B)V
    .registers 11

    const/4 v2, 0x1

    const/16 v8, 0x10

    const/4 v1, 0x0

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v5

    new-array v6, v8, [B

    move v4, v1

    :goto_b
    if-lt v4, v8, :cond_11

    invoke-static {v6, v1, p0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_11
    aget-byte v7, p1, v4

    const/4 v0, 0x7

    move v3, v0

    :goto_15
    if-gez v3, :cond_1b

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_b

    :cond_1b
    shl-int v0, v2, v3

    and-int/2addr v0, v7

    if-nez v0, :cond_32

    :goto_20
    const/16 v0, 0xf

    aget-byte v0, v5, v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_36

    move v0, v1

    :goto_29
    invoke-static {v5}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([B)V

    if-nez v0, :cond_38

    :goto_2e
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_15

    :cond_32
    invoke-static {v6, v5}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    goto :goto_20

    :cond_36
    move v0, v2

    goto :goto_29

    :cond_38
    aget-byte v0, v5, v1

    xor-int/lit8 v0, v0, -0x1f

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v5, v1

    goto :goto_2e
.end method

.method static multiplyP([I)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x3

    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_f

    move v0, v1

    :goto_9
    invoke-static {p0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([I)V

    if-nez v0, :cond_11

    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x1

    goto :goto_9

    :cond_11
    aget v0, p0, v1

    const/high16 v2, -0x1f000000

    xor-int/2addr v0, v2

    aput v0, p0, v1

    goto :goto_e
.end method

.method static multiplyP([I[I)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x3

    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_f

    move v0, v1

    :goto_9
    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([I[I)V

    if-nez v0, :cond_11

    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x1

    goto :goto_9

    :cond_11
    aget v0, p1, v1

    const/high16 v2, -0x1f000000

    xor-int/2addr v0, v2

    aput v0, p1, v1

    goto :goto_e
.end method

.method static multiplyP8([I)V
    .registers 7

    const/4 v5, 0x0

    const/4 v0, 0x3

    aget v1, p0, v0

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRightN([II)V

    const/4 v0, 0x7

    :goto_a
    if-gez v0, :cond_d

    return-void

    :cond_d
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v2, v1

    if-nez v2, :cond_15

    :goto_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_15
    aget v2, p0, v5

    rsub-int/lit8 v3, v0, 0x7

    const/high16 v4, -0x1f000000

    ushr-int v3, v4, v3

    xor-int/2addr v2, v3

    aput v2, p0, v5

    goto :goto_12
.end method

.method static multiplyP8([I[I)V
    .registers 8

    const/4 v5, 0x0

    const/4 v0, 0x3

    aget v1, p0, v0

    const/16 v0, 0x8

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRightN([II[I)V

    const/4 v0, 0x7

    :goto_a
    if-gez v0, :cond_d

    return-void

    :cond_d
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v2, v1

    if-nez v2, :cond_15

    :goto_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_15
    aget v2, p1, v5

    rsub-int/lit8 v3, v0, 0x7

    const/high16 v4, -0x1f000000

    ushr-int v3, v4, v3

    xor-int/2addr v2, v3

    aput v2, p1, v5

    goto :goto_12
.end method

.method static oneAsBytes()[B
    .registers 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    return-object v0
.end method

.method static oneAsInts()[I
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    return-object v0
.end method

.method static shiftRight([B)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v3, v2, 0x1

    or-int/2addr v0, v3

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_18

    and-int/lit8 v0, v2, 0x1

    shl-int/lit8 v0, v0, 0x7

    goto :goto_2

    :cond_18
    return-void
.end method

.method static shiftRight([B[B)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v3, v2, 0x1

    or-int/2addr v0, v3

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_18

    and-int/lit8 v0, v2, 0x1

    shl-int/lit8 v0, v0, 0x7

    goto :goto_2

    :cond_18
    return-void
.end method

.method static shiftRight([I)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    aget v2, p0, v1

    ushr-int/lit8 v3, v2, 0x1

    or-int/2addr v0, v3

    aput v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_11

    shl-int/lit8 v0, v2, 0x1f

    goto :goto_2

    :cond_11
    return-void
.end method

.method static shiftRight([I[I)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    aget v2, p0, v1

    ushr-int/lit8 v3, v2, 0x1

    or-int/2addr v0, v3

    aput v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_11

    shl-int/lit8 v0, v2, 0x1f

    goto :goto_2

    :cond_11
    return-void
.end method

.method static shiftRightN([II)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    aget v2, p0, v1

    ushr-int v3, v2, p1

    or-int/2addr v0, v3

    aput v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_13

    rsub-int/lit8 v0, p1, 0x20

    shl-int v0, v2, v0

    goto :goto_2

    :cond_13
    return-void
.end method

.method static shiftRightN([II[I)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    aget v2, p0, v1

    ushr-int v3, v2, p1

    or-int/2addr v0, v3

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_13

    rsub-int/lit8 v0, p1, 0x20

    shl-int v0, v2, v0

    goto :goto_2

    :cond_13
    return-void
.end method

.method static xor([B[B)V
    .registers 5

    const/16 v0, 0xf

    :goto_2
    if-gez v0, :cond_5

    return-void

    :cond_5
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method static xor([B[BII)V
    .registers 7

    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-gtz p3, :cond_5

    return-void

    :cond_5
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    move p3, v0

    goto :goto_0
.end method

.method static xor([B[B[B)V
    .registers 6

    const/16 v0, 0xf

    :goto_2
    if-gez v0, :cond_5

    return-void

    :cond_5
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method static xor([I[I)V
    .registers 5

    const/4 v0, 0x3

    :goto_1
    if-gez v0, :cond_4

    return-void

    :cond_4
    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method static xor([I[I[I)V
    .registers 6

    const/4 v0, 0x3

    :goto_1
    if-gez v0, :cond_4

    return-void

    :cond_4
    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
