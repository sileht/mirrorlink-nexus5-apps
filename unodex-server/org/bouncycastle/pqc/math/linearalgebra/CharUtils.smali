.class public final Lorg/bouncycastle/pqc/math/linearalgebra/CharUtils;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone([C)[C
    .registers 4

    const/4 v2, 0x0

    array-length v0, p0

    new-array v0, v0, [C

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static equals([C[C)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    array-length v0, p0

    array-length v3, p1

    if-ne v0, v3, :cond_e

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v4, v2

    :goto_b
    if-gez v3, :cond_f

    return v4

    :cond_e
    return v1

    :cond_f
    aget-char v0, p0, v3

    aget-char v5, p1, v3

    if-eq v0, v5, :cond_1b

    move v0, v1

    :goto_16
    and-int/2addr v4, v0

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_b

    :cond_1b
    move v0, v2

    goto :goto_16
.end method

.method public static toByteArray([C)[B
    .registers 4

    array-length v0, p0

    new-array v1, v0, [B

    array-length v0, p0

    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_9

    return-object v1

    :cond_9
    aget-char v2, p0, v0

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_4
.end method

.method public static toByteArrayForPBE([C)[B
    .registers 8

    const/4 v1, 0x0

    array-length v0, p0

    new-array v2, v0, [B

    move v0, v1

    :goto_5
    array-length v3, p0

    if-lt v0, v3, :cond_1a

    array-length v0, v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v0, v3, 0x2

    new-array v4, v0, [B

    move v0, v1

    :goto_10
    array-length v5, v2

    if-lt v0, v5, :cond_23

    aput-byte v1, v4, v3

    add-int/lit8 v0, v3, 0x1

    aput-byte v1, v4, v0

    return-object v4

    :cond_1a
    aget-char v3, p0, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_23
    mul-int/lit8 v5, v0, 0x2

    aput-byte v1, v4, v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v6, v2, v0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method
