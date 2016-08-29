.class public final Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(II)I
    .registers 3

    xor-int v0, p0, p1

    return v0
.end method

.method public static degree(I)I
    .registers 2

    const/4 v0, -0x1

    :goto_1
    if-nez p0, :cond_4

    return v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1
.end method

.method public static degree(J)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-eqz v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    ushr-long/2addr p0, v1

    goto :goto_1

    :cond_c
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static gcd(II)I
    .registers 3

    :goto_0
    if-nez p1, :cond_3

    return p0

    :cond_3
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->remainder(II)I

    move-result v0

    move p0, p1

    move p1, v0

    goto :goto_0
.end method

.method public static getIrreduciblePolynomial(I)I
    .registers 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz p0, :cond_15

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_1e

    if-eqz p0, :cond_27

    shl-int v0, v2, p0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p0, 0x1

    shl-int v1, v2, v1

    :goto_12
    if-lt v0, v1, :cond_28

    return v3

    :cond_15
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "The Degree is negative"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v3

    :cond_1e
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "The Degree is more then 31"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v3

    :cond_27
    return v2

    :cond_28
    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result v2

    if-nez v2, :cond_31

    add-int/lit8 v0, v0, 0x2

    goto :goto_12

    :cond_31
    return v0
.end method

.method public static isIrreducible(I)Z
    .registers 7

    const/4 v5, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_10

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    ushr-int/lit8 v3, v0, 0x1

    const/4 v0, 0x2

    move v2, v0

    move v0, v1

    :goto_d
    if-lt v0, v3, :cond_11

    return v5

    :cond_10
    return v1

    :cond_11
    invoke-static {v2, v2, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->modMultiply(III)I

    move-result v2

    xor-int/lit8 v4, v2, 0x2

    invoke-static {v4, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->gcd(II)I

    move-result v4

    if-ne v4, v5, :cond_20

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_20
    return v1
.end method

.method public static modMultiply(III)I
    .registers 9

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->remainder(II)I

    move-result v2

    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->remainder(II)I

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    return v0

    :cond_d
    invoke-static {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v3

    shl-int v4, v5, v3

    move v3, v2

    move v2, v1

    :goto_15
    if-eqz v3, :cond_c

    and-int/lit8 v1, v3, 0x1

    int-to-byte v1, v1

    if-eq v1, v5, :cond_26

    move v1, v0

    :goto_1d
    ushr-int/lit8 v3, v3, 0x1

    shl-int/lit8 v0, v2, 0x1

    if-ge v0, v4, :cond_29

    :goto_23
    move v2, v0

    move v0, v1

    goto :goto_15

    :cond_26
    xor-int/2addr v0, v2

    move v1, v0

    goto :goto_1d

    :cond_29
    xor-int/2addr v0, p2

    goto :goto_23
.end method

.method public static multiply(II)J
    .registers 9

    const/4 v6, 0x1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_6

    :cond_5
    return-wide v0

    :cond_6
    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    :goto_d
    if-eqz p0, :cond_5

    and-int/lit8 v4, p0, 0x1

    int-to-byte v4, v4

    if-eq v4, v6, :cond_18

    :goto_14
    ushr-int/lit8 p0, p0, 0x1

    shl-long/2addr v2, v6

    goto :goto_d

    :cond_18
    xor-long/2addr v0, v2

    goto :goto_14
.end method

.method public static remainder(II)I
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_e

    :goto_3
    invoke-static {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v1

    if-ge v0, v1, :cond_17

    return p0

    :cond_e
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "Error: to be divided by 0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v2

    :cond_17
    invoke-static {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v1

    sub-int/2addr v0, v1

    shl-int v0, p1, v0

    xor-int/2addr p0, v0

    goto :goto_3
.end method

.method public static rest(JI)I
    .registers 9

    const/4 v2, 0x0

    if-eqz p2, :cond_21

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    :goto_a
    const/16 v2, 0x20

    ushr-long v2, p0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2a

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(J)I

    move-result v2

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(J)I

    move-result v3

    sub-int/2addr v2, v3

    shl-long v2, v0, v2

    xor-long/2addr p0, v2

    goto :goto_a

    :cond_21
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "Error: to be divided by 0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v2

    :cond_2a
    const-wide/16 v0, -0x1

    and-long/2addr v0, p0

    long-to-int v0, v0

    :goto_2e
    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v1

    invoke-static {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v2

    if-ge v1, v2, :cond_39

    return v0

    :cond_39
    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v1

    invoke-static {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v2

    sub-int/2addr v1, v2

    shl-int v1, p2, v1

    xor-int/2addr v0, v1

    goto :goto_2e
.end method
