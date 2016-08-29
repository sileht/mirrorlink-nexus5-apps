.class public final Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone([I)[I
    .registers 4

    const/4 v2, 0x0

    array-length v0, p0

    new-array v0, v0, [I

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static equals([I[I)Z
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
    aget v0, p0, v3

    aget v5, p1, v3

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

.method public static fill([II)V
    .registers 3

    array-length v0, p0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_6

    return-void

    :cond_6
    aput p1, p0, v0

    goto :goto_1
.end method

.method private static partition([IIII)I
    .registers 8

    aget v1, p0, p3

    aget v0, p0, p2

    aput v0, p0, p3

    aput v1, p0, p2

    move v0, p1

    :goto_9
    if-lt p1, p2, :cond_14

    aget v1, p0, v0

    aget v2, p0, p2

    aput v2, p0, v0

    aput v1, p0, p2

    return v0

    :cond_14
    aget v2, p0, p1

    if-le v2, v1, :cond_1b

    :goto_18
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_1b
    aget v2, p0, v0

    aget v3, p0, p1

    aput v3, p0, v0

    aput v2, p0, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public static quicksort([I)V
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->quicksort([III)V

    return-void
.end method

.method public static quicksort([III)V
    .registers 5

    if-gt p2, p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p0, p1, p2, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->partition([IIII)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->quicksort([III)V

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->quicksort([III)V

    goto :goto_2
.end method

.method public static subArray([III)[I
    .registers 6

    sub-int v0, p2, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sub-int v2, p2, p1

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static toFlexiBigIntArray([I)[Ljava/math/BigInteger;
    .registers 5

    array-length v0, p0

    new-array v1, v0, [Ljava/math/BigInteger;

    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-lt v0, v2, :cond_8

    return-object v1

    :cond_8
    aget v2, p0, v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static toHexString([I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/BigEndianConversions;->toByteArray([I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([I)Ljava/lang/String;
    .registers 4

    const-string/jumbo v1, ""

    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-lt v0, v2, :cond_8

    return-object v1

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method
