.class public final Lorg/bouncycastle/util/Arrays;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areEqual([B[B)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_7

    if-nez p0, :cond_8

    :cond_6
    return v1

    :cond_7
    return v4

    :cond_8
    if-eqz p1, :cond_6

    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_13

    move v0, v1

    :goto_f
    array-length v2, p0

    if-ne v0, v2, :cond_14

    return v4

    :cond_13
    return v1

    :cond_14
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_1d

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1d
    return v1
.end method

.method public static areEqual([C[C)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_7

    if-nez p0, :cond_8

    :cond_6
    return v1

    :cond_7
    return v4

    :cond_8
    if-eqz p1, :cond_6

    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_13

    move v0, v1

    :goto_f
    array-length v2, p0

    if-ne v0, v2, :cond_14

    return v4

    :cond_13
    return v1

    :cond_14
    aget-char v2, p0, v0

    aget-char v3, p1, v0

    if-ne v2, v3, :cond_1d

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1d
    return v1
.end method

.method public static areEqual([I[I)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_7

    if-nez p0, :cond_8

    :cond_6
    return v1

    :cond_7
    return v4

    :cond_8
    if-eqz p1, :cond_6

    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_13

    move v0, v1

    :goto_f
    array-length v2, p0

    if-ne v0, v2, :cond_14

    return v4

    :cond_13
    return v1

    :cond_14
    aget v2, p0, v0

    aget v3, p1, v0

    if-ne v2, v3, :cond_1d

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1d
    return v1
.end method

.method public static areEqual([J[J)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_7

    if-nez p0, :cond_8

    :cond_6
    return v1

    :cond_7
    return v6

    :cond_8
    if-eqz p1, :cond_6

    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_13

    move v0, v1

    :goto_f
    array-length v2, p0

    if-ne v0, v2, :cond_14

    return v6

    :cond_13
    return v1

    :cond_14
    aget-wide v2, p0, v0

    aget-wide v4, p1, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method public static areEqual([Ljava/math/BigInteger;[Ljava/math/BigInteger;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_7

    if-nez p0, :cond_8

    :cond_6
    return v1

    :cond_7
    return v4

    :cond_8
    if-eqz p1, :cond_6

    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_13

    move v0, v1

    :goto_f
    array-length v2, p0

    if-ne v0, v2, :cond_14

    return v4

    :cond_13
    return v1

    :cond_14
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_21
    return v1
.end method

.method public static areEqual([Z[Z)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_7

    if-nez p0, :cond_8

    :cond_6
    return v1

    :cond_7
    return v4

    :cond_8
    if-eqz p1, :cond_6

    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_13

    move v0, v1

    :goto_f
    array-length v2, p0

    if-ne v0, v2, :cond_14

    return v4

    :cond_13
    return v1

    :cond_14
    aget-boolean v2, p0, v0

    aget-boolean v3, p1, v0

    if-ne v2, v3, :cond_1d

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1d
    return v1
.end method

.method public static clone([B)[B
    .registers 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_c

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_c
    return-object v0
.end method

.method public static clone([I)[I
    .registers 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_c

    array-length v0, p0

    new-array v0, v0, [I

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_c
    return-object v0
.end method

.method public static clone([Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_c

    array-length v0, p0

    new-array v0, v0, [Ljava/math/BigInteger;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_c
    return-object v0
.end method

.method public static clone([S)[S
    .registers 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_c

    array-length v0, p0

    new-array v0, v0, [S

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_c
    return-object v0
.end method

.method public static clone([[B)[[B
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    array-length v0, p0

    new-array v1, v0, [[B

    const/4 v0, 0x0

    :goto_7
    array-length v2, v1

    if-ne v0, v2, :cond_e

    return-object v1

    :cond_b
    check-cast v0, [[B

    return-object v0

    :cond_e
    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static clone([[[B)[[[B
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    array-length v0, p0

    new-array v1, v0, [[[B

    const/4 v0, 0x0

    :goto_7
    array-length v2, v1

    if-ne v0, v2, :cond_e

    return-object v1

    :cond_b
    check-cast v0, [[[B

    return-object v0

    :cond_e
    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static concatenate([B[B)[B
    .registers 6

    const/4 v3, 0x0

    if-nez p0, :cond_a

    :cond_3
    if-nez p1, :cond_1b

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    :cond_a
    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1b
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static concatenate([B[B[B)[B
    .registers 7

    const/4 v3, 0x0

    if-nez p0, :cond_a

    :cond_3
    if-eqz p1, :cond_26

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    :cond_a
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_26
    invoke-static {p0, p2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static concatenate([B[B[B[B)[B
    .registers 8

    const/4 v3, 0x0

    if-nez p0, :cond_e

    :cond_3
    if-eqz p3, :cond_37

    if-eqz p2, :cond_3c

    if-eqz p1, :cond_41

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    :cond_e
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_37
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    :cond_3c
    invoke-static {p0, p1, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    :cond_41
    invoke-static {p0, p2, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static constantTimeAreEqual([B[B)Z
    .registers 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_7

    if-nez p0, :cond_8

    :cond_6
    return v1

    :cond_7
    return v3

    :cond_8
    if-eqz p1, :cond_6

    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_16

    move v0, v1

    move v2, v1

    :goto_10
    array-length v4, p0

    if-ne v0, v4, :cond_17

    if-eqz v2, :cond_20

    :goto_15
    return v1

    :cond_16
    return v1

    :cond_17
    aget-byte v4, p0, v0

    aget-byte v5, p1, v0

    xor-int/2addr v4, v5

    or-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    move v1, v3

    goto :goto_15
.end method

.method public static copyOf([BI)[B
    .registers 5

    const/4 v2, 0x0

    new-array v0, p1, [B

    array-length v1, p0

    if-lt p1, v1, :cond_b

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a
.end method

.method public static copyOf([CI)[C
    .registers 5

    const/4 v2, 0x0

    new-array v0, p1, [C

    array-length v1, p0

    if-lt p1, v1, :cond_b

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a
.end method

.method public static copyOf([II)[I
    .registers 5

    const/4 v2, 0x0

    new-array v0, p1, [I

    array-length v1, p0

    if-lt p1, v1, :cond_b

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a
.end method

.method public static copyOf([JI)[J
    .registers 5

    const/4 v2, 0x0

    new-array v0, p1, [J

    array-length v1, p0

    if-lt p1, v1, :cond_b

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a
.end method

.method public static copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;
    .registers 5

    const/4 v2, 0x0

    new-array v0, p1, [Ljava/math/BigInteger;

    array-length v1, p0

    if-lt p1, v1, :cond_b

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a
.end method

.method public static copyOfRange([BII)[B
    .registers 7

    const/4 v3, 0x0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    new-array v1, v0, [B

    array-length v2, p0

    sub-int/2addr v2, p1

    if-lt v2, v0, :cond_f

    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_e
    return-object v1

    :cond_f
    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e
.end method

.method public static copyOfRange([III)[I
    .registers 7

    const/4 v3, 0x0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    new-array v1, v0, [I

    array-length v2, p0

    sub-int/2addr v2, p1

    if-lt v2, v0, :cond_f

    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_e
    return-object v1

    :cond_f
    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e
.end method

.method public static copyOfRange([JII)[J
    .registers 7

    const/4 v3, 0x0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    new-array v1, v0, [J

    array-length v2, p0

    sub-int/2addr v2, p1

    if-lt v2, v0, :cond_f

    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_e
    return-object v1

    :cond_f
    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e
.end method

.method public static copyOfRange([Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .registers 7

    const/4 v3, 0x0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    new-array v1, v0, [Ljava/math/BigInteger;

    array-length v2, p0

    sub-int/2addr v2, p1

    if-lt v2, v0, :cond_f

    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_e
    return-object v1

    :cond_f
    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e
.end method

.method public static fill([BB)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    int-to-byte v1, p1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static fill([CC)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    int-to-char v1, p1

    aput-char v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static fill([II)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    aput p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static fill([JJ)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    aput-wide p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static fill([SS)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    int-to-short v1, p1

    aput-short v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static getLength(II)I
    .registers 4

    sub-int v0, p1, p0

    if-ltz v0, :cond_5

    return v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string/jumbo v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static hashCode([B)I
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    array-length v1, p0

    add-int/lit8 v0, v1, 0x1

    :goto_6
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_c

    return v0

    :cond_b
    return v0

    :cond_c
    mul-int/lit16 v0, v0, 0x101

    aget-byte v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_6
.end method

.method public static hashCode([C)I
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    array-length v1, p0

    add-int/lit8 v0, v1, 0x1

    :goto_6
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_c

    return v0

    :cond_b
    return v0

    :cond_c
    mul-int/lit16 v0, v0, 0x101

    aget-char v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_6
.end method

.method public static hashCode([I)I
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    array-length v1, p0

    add-int/lit8 v0, v1, 0x1

    :goto_6
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_c

    return v0

    :cond_b
    return v0

    :cond_c
    mul-int/lit16 v0, v0, 0x101

    aget v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_6
.end method

.method public static hashCode([Ljava/math/BigInteger;)I
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    array-length v1, p0

    add-int/lit8 v0, v1, 0x1

    :goto_6
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_c

    return v0

    :cond_b
    return v0

    :cond_c
    mul-int/lit16 v0, v0, 0x101

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    goto :goto_6
.end method

.method public static hashCode([S)I
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    array-length v1, p0

    add-int/lit8 v0, v1, 0x1

    :goto_6
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_c

    return v0

    :cond_b
    return v0

    :cond_c
    mul-int/lit16 v0, v0, 0x101

    aget-short v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v0, v2

    goto :goto_6
.end method

.method public static hashCode([[I)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-ne v0, v2, :cond_6

    return v1

    :cond_6
    mul-int/lit16 v1, v1, 0x101

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static hashCode([[S)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-ne v0, v2, :cond_6

    return v1

    :cond_6
    mul-int/lit16 v1, v1, 0x101

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->hashCode([S)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static hashCode([[[S)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-ne v0, v2, :cond_6

    return v1

    :cond_6
    mul-int/lit16 v1, v1, 0x101

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->hashCode([[S)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
