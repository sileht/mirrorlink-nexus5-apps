.class public final Lorg/bouncycastle/pqc/math/linearalgebra/BigIntUtils;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals([Ljava/math/BigInteger;[Ljava/math/BigInteger;)Z
    .registers 7

    const/4 v1, 0x0

    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_d

    move v0, v1

    move v2, v1

    :goto_7
    array-length v3, p0

    if-lt v0, v3, :cond_e

    if-eqz v2, :cond_1a

    :goto_c
    return v1

    :cond_d
    return v1

    :cond_e
    aget-object v3, p0, v0

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1a
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public static fill([Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 3

    array-length v0, p0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_6

    return-void

    :cond_6
    aput-object p1, p0, v0

    goto :goto_1
.end method

.method public static subArray([Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .registers 6

    sub-int v0, p2, p1

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    sub-int v2, p2, p1

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static toIntArray([Ljava/math/BigInteger;)[I
    .registers 4

    array-length v0, p0

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-lt v0, v2, :cond_8

    return-object v1

    :cond_8
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static toIntArrayModQ(I[Ljava/math/BigInteger;)[I
    .registers 6

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    array-length v0, p1

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_9
    array-length v3, p1

    if-lt v0, v3, :cond_d

    return-object v2

    :cond_d
    aget-object v3, p1, v0

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public static toMinimalByteArray(Ljava/math/BigInteger;)[B
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    if-ne v1, v4, :cond_a

    :cond_9
    return-object v0

    :cond_a
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_9

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    array-length v2, v1

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
