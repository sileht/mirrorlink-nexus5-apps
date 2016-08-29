.class public final Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final FOUR:Ljava/math/BigInteger;

.field private static final ONE:Ljava/math/BigInteger;

.field private static final SMALL_PRIMES:[I

.field private static final SMALL_PRIME_PRODUCT:J = 0x8a5b6470af95L

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;

.field private static final jacobiTable:[I

.field private static sr:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->FOUR:Ljava/math/BigInteger;

    const/16 v0, 0xc

    new-array v0, v0, [I

    aput v5, v0, v3

    aput v6, v0, v4

    const/4 v1, 0x2

    aput v7, v0, v1

    const/16 v1, 0xb

    aput v1, v0, v5

    const/4 v1, 0x4

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v1, v0, v6

    const/4 v1, 0x6

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x17

    aput v1, v0, v7

    const/16 v1, 0x8

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x29

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->SMALL_PRIMES:[I

    const/4 v0, 0x0

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    const/16 v0, 0x8

    new-array v0, v0, [I

    aput v3, v0, v3

    aput v4, v0, v4

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, -0x1

    aput v1, v0, v5

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, -0x1

    aput v1, v0, v6

    const/4 v1, 0x6

    aput v3, v0, v1

    aput v4, v0, v7

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->jacobiTable:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)Ljava/math/BigInteger;
    .registers 6

    sget-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    if-eqz p0, :cond_c

    ushr-int/lit8 v0, p0, 0x1

    if-gt p1, v0, :cond_12

    :goto_8
    const/4 v0, 0x1

    :goto_9
    if-le v0, p1, :cond_15

    return-object v1

    :cond_c
    if-eqz p1, :cond_11

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    return-object v0

    :cond_11
    return-object v1

    :cond_12
    sub-int p1, p0, p1

    goto :goto_8

    :cond_15
    add-int/lit8 v2, v0, -0x1

    sub-int v2, p0, v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public static bitCount(I)I
    .registers 3

    const/4 v0, 0x0

    :goto_1
    if-nez p0, :cond_4

    return v0

    :cond_4
    and-int/lit8 v1, p0, 0x1

    add-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1
.end method

.method public static ceilLog(I)I
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_2
    if-lt v0, p0, :cond_5

    return v1

    :cond_5
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static ceilLog(Ljava/math/BigInteger;)I
    .registers 4

    const/4 v1, 0x0

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    :goto_3
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_a

    return v1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_3
.end method

.method public static ceilLog256(I)I
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-ltz p0, :cond_a

    :goto_5
    if-gtz p0, :cond_c

    return v0

    :cond_8
    const/4 v0, 0x1

    return v0

    :cond_a
    neg-int p0, p0

    goto :goto_5

    :cond_c
    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x8

    goto :goto_5
.end method

.method public static ceilLog256(J)I
    .registers 8

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmp-long v0, p0, v4

    if-nez v0, :cond_9

    return v1

    :cond_9
    cmp-long v0, p0, v4

    if-ltz v0, :cond_20

    move v0, v1

    :goto_e
    if-nez v0, :cond_11

    neg-long p0, p0

    :cond_11
    move v3, v2

    :goto_12
    cmp-long v0, p0, v4

    if-gtz v0, :cond_22

    move v0, v1

    :goto_17
    if-nez v0, :cond_24

    add-int/lit8 v0, v3, 0x1

    const/16 v3, 0x8

    ushr-long/2addr p0, v3

    move v3, v0

    goto :goto_12

    :cond_20
    move v0, v2

    goto :goto_e

    :cond_22
    move v0, v2

    goto :goto_17

    :cond_24
    return v3
.end method

.method public static divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1e

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_2b

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_2b
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static divideAndRound([Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 5

    array-length v0, p0

    new-array v1, v0, [Ljava/math/BigInteger;

    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-lt v0, v2, :cond_8

    return-object v1

    :cond_8
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static extGCD(II)[I
    .registers 9

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->extgcd(Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v1, v4

    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v1, v5

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    aput v0, v1, v6

    return-object v1
.end method

.method public static extgcd(Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-nez v1, :cond_17

    :goto_c
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/math/BigInteger;

    aput-object p0, v1, v5

    aput-object v2, v1, v6

    const/4 v2, 0x2

    aput-object v0, v1, v2

    return-object v1

    :cond_17
    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    move-object v1, p0

    move-object v3, v2

    move-object v2, v0

    move-object v0, p1

    :goto_1d
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-nez v4, :cond_32

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object p0, v1

    move-object v2, v3

    goto :goto_c

    :cond_32
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    aget-object v4, v1, v5

    aget-object v1, v1, v6

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_1d
.end method

.method public static floatLog(F)F
    .registers 13

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, p0, v1

    add-float/2addr v1, p0

    div-float/2addr v0, v1

    float-to-double v4, v0

    const/4 v1, 0x1

    double-to-float v0, v4

    move-wide v2, v4

    :goto_a
    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v6, v2, v6

    if-lez v6, :cond_22

    add-int/lit8 v1, v1, 0x2

    mul-double v6, v4, v4

    mul-double/2addr v2, v6

    float-to-double v6, v0

    int-to-double v8, v1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double v8, v10, v8

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    double-to-float v0, v6

    goto :goto_a

    :cond_22
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public static floatPow(FI)F
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    if-gtz p1, :cond_5

    return v0

    :cond_5
    mul-float/2addr v0, p0

    add-int/lit8 p1, p1, -0x1

    goto :goto_2
.end method

.method public static floorLog(I)I
    .registers 3

    const/4 v1, 0x0

    if-lez p0, :cond_8

    ushr-int/lit8 v0, p0, 0x1

    :goto_5
    if-gtz v0, :cond_a

    return v1

    :cond_8
    const/4 v0, -0x1

    return v0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public static floorLog(Ljava/math/BigInteger;)I
    .registers 4

    const/4 v1, -0x1

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    :goto_3
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-lez v2, :cond_a

    return v1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_3
.end method

.method public static gcd(II)I
    .registers 6

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public static intRoot(II)F
    .registers 11

    const/4 v0, 0x0

    div-int v1, p0, p1

    int-to-float v2, v1

    const/4 v1, 0x0

    :goto_5
    sub-float v3, v1, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v3, v4, v6

    if-lez v3, :cond_40

    invoke-static {v2, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->floatPow(FI)F

    move-result v3

    :goto_19
    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-nez v4, :cond_33

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, p0

    sub-float v1, v3, v1

    int-to-float v3, p1

    add-int/lit8 v4, p1, -0x1

    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->floatPow(FI)F

    move-result v4

    mul-float/2addr v3, v4

    div-float/2addr v1, v3

    sub-float v1, v2, v1

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_5

    :cond_33
    add-float/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    invoke-static {v3, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->floatPow(FI)F

    move-result v2

    move v8, v2

    move v2, v3

    move v3, v8

    goto :goto_19

    :cond_40
    return v2
.end method

.method public static integerToOctets(Ljava/math/BigInteger;)[B
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_1f

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    const/4 v2, 0x1

    array-length v3, v1

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1f
    return-object v0
.end method

.method public static isIncreasing([I)Z
    .registers 5

    const/4 v1, 0x1

    move v0, v1

    :goto_2
    array-length v2, p0

    if-lt v0, v2, :cond_6

    return v1

    :cond_6
    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    aget v3, p0, v0

    if-ge v2, v3, :cond_11

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "a["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    aget v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = a["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static isPower(II)I
    .registers 5

    const/4 v2, -0x1

    const/4 v0, 0x0

    if-lez p0, :cond_8

    :goto_4
    const/4 v1, 0x1

    if-gt p0, v1, :cond_9

    return v0

    :cond_8
    return v2

    :cond_9
    rem-int v1, p0, p1

    if-nez v1, :cond_11

    div-int/2addr p0, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_11
    return v2
.end method

.method public static isPrime(I)Z
    .registers 5

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-lt p0, v0, :cond_14

    if-eq p0, v0, :cond_15

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_16

    const/16 v0, 0x2a

    if-lt p0, v0, :cond_17

    :cond_f
    rem-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_27

    :cond_13
    return v1

    :cond_14
    return v1

    :cond_15
    return v3

    :cond_16
    return v1

    :cond_17
    move v0, v1

    :goto_18
    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->SMALL_PRIMES:[I

    array-length v2, v2

    if-ge v0, v2, :cond_f

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->SMALL_PRIMES:[I

    aget v2, v2, v0

    if-eq p0, v2, :cond_26

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_26
    return v3

    :cond_27
    rem-int/lit8 v0, p0, 0x5

    if-eqz v0, :cond_13

    rem-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_13

    rem-int/lit8 v0, p0, 0xb

    if-eqz v0, :cond_13

    rem-int/lit8 v0, p0, 0xd

    if-eqz v0, :cond_13

    rem-int/lit8 v0, p0, 0x11

    if-eqz v0, :cond_13

    rem-int/lit8 v0, p0, 0x13

    if-eqz v0, :cond_13

    rem-int/lit8 v0, p0, 0x17

    if-eqz v0, :cond_13

    rem-int/lit8 v0, p0, 0x1d

    if-eqz v0, :cond_13

    rem-int/lit8 v0, p0, 0x1f

    if-eqz v0, :cond_13

    rem-int/lit8 v0, p0, 0x25

    if-eqz v0, :cond_13

    rem-int/lit8 v0, p0, 0x29

    if-eqz v0, :cond_13

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    return v0
.end method

.method public static jacobi(Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .registers 9

    const-wide/16 v2, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    :cond_13
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-eq v4, v5, :cond_52

    :cond_19
    :goto_19
    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    :goto_1b
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-nez v4, :cond_6c

    :goto_27
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-ltz v4, :cond_79

    :goto_2d
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-nez v4, :cond_86

    sget-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ce

    :goto_3b
    return v0

    :cond_3c
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    :goto_48
    return v0

    :cond_49
    move v0, v1

    goto :goto_48

    :cond_4b
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-nez v4, :cond_13

    return v0

    :cond_52
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-ne v4, v5, :cond_19

    const-wide/16 v2, -0x1

    goto :goto_19

    :cond_5f
    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_1b

    :cond_6c
    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->jacobiTable:[I

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    and-int/lit8 v5, v5, 0x7

    aget v4, v4, v5

    int-to-long v4, v4

    mul-long/2addr v2, v4

    goto :goto_27

    :cond_79
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-nez v4, :cond_84

    :goto_7f
    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_2d

    :cond_84
    neg-long v2, v2

    goto :goto_7f

    :cond_86
    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    :goto_88
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_9f

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-nez v4, :cond_ac

    :goto_94
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_b9

    :goto_9a
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_2d

    :cond_9f
    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_88

    :cond_ac
    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->jacobiTable:[I

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    and-int/lit8 v5, v5, 0x7

    aget v4, v4, v5

    int-to-long v4, v4

    mul-long/2addr v2, v4

    goto :goto_94

    :cond_b9
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-nez v4, :cond_c3

    :cond_bf
    move-object v6, p0

    move-object p0, p1

    move-object p1, v6

    goto :goto_9a

    :cond_c3
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_bf

    neg-long v2, v2

    move-object v6, p0

    move-object p0, p1

    move-object p1, v6

    goto :goto_9a

    :cond_ce
    long-to-int v0, v2

    goto/16 :goto_3b
.end method

.method public static leastCommonMultiple([Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6

    array-length v2, p0

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/4 v0, 0x1

    :goto_5
    if-lt v0, v2, :cond_8

    return-object v1

    :cond_8
    aget-object v3, p0, v0

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aget-object v4, p0, v0

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public static leastDiv(I)I
    .registers 3

    if-ltz p0, :cond_e

    :goto_2
    if-eqz p0, :cond_10

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_12

    const/4 v0, 0x3

    :goto_9
    div-int v1, p0, v0

    if-le v0, v1, :cond_14

    return p0

    :cond_e
    neg-int p0, p0

    goto :goto_2

    :cond_10
    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x2

    return v0

    :cond_14
    rem-int v1, p0, v0

    if-eqz v1, :cond_1b

    add-int/lit8 v0, v0, 0x2

    goto :goto_9

    :cond_1b
    return v0
.end method

.method public static log(D)D
    .registers 10

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    cmpl-double v2, p0, v2

    if-lez v2, :cond_15

    cmpg-double v2, p0, v0

    if-gez v2, :cond_15

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->log(D)D

    move-result-wide v0

    neg-double v0, v0

    return-wide v0

    :cond_15
    const/4 v2, 0x0

    move v4, v2

    move-wide v2, v0

    move-wide v0, p0

    :goto_19
    cmpl-double v5, v0, v6

    if-lez v5, :cond_22

    div-double/2addr v0, v6

    add-int/lit8 v4, v4, 0x1

    mul-double/2addr v2, v6

    goto :goto_19

    :cond_22
    div-double v0, p0, v2

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->logBKM(D)D

    move-result-wide v0

    int-to-double v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static log(J)D
    .registers 8

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->floorLog(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-long v2, v1

    long-to-double v4, p0

    long-to-double v2, v2

    div-double v2, v4, v2

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->logBKM(D)D

    move-result-wide v2

    int-to-double v0, v0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static logBKM(D)D
    .registers 14

    const/16 v11, 0x35

    const/4 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/16 v1, 0x64

    new-array v7, v1, [D

    aput-wide v2, v7, v0

    const/4 v1, 0x1

    const-wide v4, 0x3fe2b803473f7ad1L    # 0.5849625007211562

    aput-wide v4, v7, v1

    const/4 v1, 0x2

    const-wide v4, 0x3fd49a784bcd1b8bL    # 0.32192809488736235

    aput-wide v4, v7, v1

    const/4 v1, 0x3

    const-wide v4, 0x3fc5c01a39fbd688L    # 0.16992500144231237

    aput-wide v4, v7, v1

    const/4 v1, 0x4

    const-wide v4, 0x3fb663f6fac91316L    # 0.0874628412503394

    aput-wide v4, v7, v1

    const/4 v1, 0x5

    const-wide v4, 0x3fa6bad3758efd87L    # 0.044394119358453436

    aput-wide v4, v7, v1

    const/4 v1, 0x6

    const-wide v4, 0x3f96e79685c2d22aL    # 0.02236781302845451

    aput-wide v4, v7, v1

    const/4 v1, 0x7

    const-wide v4, 0x3f86fe50b6ef0851L    # 0.01122725542325412

    aput-wide v4, v7, v1

    const/16 v1, 0x8

    const-wide v4, 0x3f7709c46d7aac77L    # 0.005624549193878107

    aput-wide v4, v7, v1

    const/16 v1, 0x9

    const-wide v4, 0x3f670f83ff0a7565L    # 0.0028150156070540383

    aput-wide v4, v7, v1

    const/16 v1, 0xa

    const-wide v4, 0x3f5712653743f454L    # 0.0014081943928083889

    aput-wide v4, v7, v1

    const/16 v1, 0xb

    const-wide v4, 0x3f4713d62f7957c3L    # 7.042690112466433E-4

    aput-wide v4, v7, v1

    const/16 v1, 0xc

    const-wide v4, 0x3f37148ec2a1bfc9L    # 3.5217748030102726E-4

    aput-wide v4, v7, v1

    const/16 v1, 0xd

    const-wide v4, 0x3f2714eb11fa5363L    # 1.7609948644250602E-4

    aput-wide v4, v7, v1

    const/16 v1, 0xe

    const-wide v4, 0x3f1715193b17d35dL    # 8.80524301221769E-5

    aput-wide v4, v7, v1

    const/16 v1, 0xf

    const-wide v4, 0x3f0715305002e4aeL    # 4.4026886827316716E-5

    aput-wide v4, v7, v1

    const/16 v1, 0x10

    const-wide v4, 0x3ef7153bda8f8225L    # 2.2013611360340496E-5

    aput-wide v4, v7, v1

    const/16 v1, 0x11

    const-wide v4, 0x3ee715419fdb9623L    # 1.1006847667481442E-5

    aput-wide v4, v7, v1

    const/16 v1, 0x12

    const-wide v4, 0x3ed7154482831175L    # 5.503434330648604E-6

    aput-wide v4, v7, v1

    const/16 v1, 0x13

    const-wide v4, 0x3ec71545f3d72b72L    # 2.751719789561283E-6

    aput-wide v4, v7, v1

    const/16 v1, 0x14

    const-wide v4, 0x3eb71546ac814f86L    # 1.375860550841138E-6

    aput-wide v4, v7, v1

    const/16 v1, 0x15

    const-wide v4, 0x3ea7154708d66756L    # 6.879304394358497E-7

    aput-wide v4, v7, v1

    const/16 v1, 0x16

    const-wide v4, 0x3e9715473700f4afL    # 3.4396526072176454E-7

    aput-wide v4, v7, v1

    const/16 v1, 0x17

    const-wide v4, 0x3e8715474e163bb8L    # 1.7198264061184464E-7

    aput-wide v4, v7, v1

    const/16 v1, 0x18

    const-wide v4, 0x3e77154759a0df53L    # 8.599132286866321E-8

    aput-wide v4, v7, v1

    const/16 v1, 0x19

    const-wide v4, 0x3e6715475f663127L    # 4.299566207501687E-8

    aput-wide v4, v7, v1

    const/16 v1, 0x1a

    const-wide v4, 0x3e5715476248da12L    # 2.1497831197679756E-8

    aput-wide v4, v7, v1

    const/16 v1, 0x1b

    const-wide v4, 0x3e47154763ba2e88L    # 1.0748915638882709E-8

    aput-wide v4, v7, v1

    const/16 v1, 0x1c

    const-wide v4, 0x3e3715476472d8c3L    # 5.374457829452062E-9

    aput-wide v4, v7, v1

    const/16 v1, 0x1d

    const-wide v4, 0x3e27154764cf2de1L    # 2.687228917228708E-9

    aput-wide v4, v7, v1

    const/16 v1, 0x1e

    const-wide v4, 0x3e17154764fd586fL    # 1.3436144592400231E-9

    aput-wide v4, v7, v1

    const/16 v1, 0x1f

    const-wide v4, 0x3e07154765146db7L    # 6.718072297764289E-10

    aput-wide v4, v7, v1

    const/16 v1, 0x20

    const-wide v4, 0x3df71547651ff85aL

    aput-wide v4, v7, v1

    const/16 v1, 0x21

    const-wide v4, 0x3de715476525bdacL    # 1.6795180747343547E-10

    aput-wide v4, v7, v1

    const/16 v1, 0x22

    const-wide v4, 0x3dd715476528a055L    # 8.397590373916176E-11

    aput-wide v4, v7, v1

    const/16 v1, 0x23

    const-wide v4, 0x3dc71547652a11aaL    # 4.1987951870191886E-11

    aput-wide v4, v7, v1

    const/16 v1, 0x24

    const-wide v4, 0x3db71547652aca54L

    aput-wide v4, v7, v1

    const/16 v1, 0x25

    const-wide v4, 0x3da71547652b26a9L    # 1.0496987967662534E-11

    aput-wide v4, v7, v1

    const/16 v1, 0x26

    const-wide v4, 0x3d971547652b54d4L    # 5.2484939838408146E-12

    aput-wide v4, v7, v1

    const/16 v1, 0x27

    const-wide v4, 0x3d871547652b6be9L    # 2.624246991922794E-12

    aput-wide v4, v7, v1

    const/16 v1, 0x28

    const-wide v4, 0x3d771547652b7773L    # 1.3121234959619935E-12

    aput-wide v4, v7, v1

    const/16 v1, 0x29

    const-wide v4, 0x3d671547652b7d39L    # 6.56061747981146E-13

    aput-wide v4, v7, v1

    const/16 v1, 0x2a

    const-wide v4, 0x3d571547652b801bL    # 3.2803087399061026E-13

    aput-wide v4, v7, v1

    const/16 v1, 0x2b

    const-wide v4, 0x3d471547652b818dL    # 1.6401543699531447E-13

    aput-wide v4, v7, v1

    const/16 v1, 0x2c

    const-wide v4, 0x3d371547652b8245L    # 8.200771849765956E-14

    aput-wide v4, v7, v1

    const/16 v1, 0x2d

    const-wide v4, 0x3d271547652b82a2L    # 4.1003859248830365E-14

    aput-wide v4, v7, v1

    const/16 v1, 0x2e

    const-wide v4, 0x3d171547652b82d0L    # 2.0501929624415328E-14

    aput-wide v4, v7, v1

    const/16 v1, 0x2f

    const-wide v4, 0x3d071547652b82e7L    # 1.02509648122077E-14

    aput-wide v4, v7, v1

    const/16 v1, 0x30

    const-wide v4, 0x3cf71547652b82f3L    # 5.1254824061038595E-15

    aput-wide v4, v7, v1

    const/16 v1, 0x31

    const-wide v4, 0x3ce71547652b82f8L

    aput-wide v4, v7, v1

    const/16 v1, 0x32

    const-wide v4, 0x3cd71547652b82fbL    # 1.2813706015259665E-15

    aput-wide v4, v7, v1

    const/16 v1, 0x33

    const-wide v4, 0x3cc71547652b82fdL    # 6.406853007629834E-16

    aput-wide v4, v7, v1

    const/16 v1, 0x34

    const-wide v4, 0x3cb71547652b82fdL    # 3.203426503814917E-16

    aput-wide v4, v7, v1

    const-wide v4, 0x3ca71547652b82feL    # 1.6017132519074588E-16

    aput-wide v4, v7, v11

    const/16 v1, 0x36

    const-wide v4, 0x3c971547652b82feL    # 8.008566259537294E-17

    aput-wide v4, v7, v1

    const/16 v1, 0x37

    const-wide v4, 0x3c871547652b82feL    # 4.004283129768647E-17

    aput-wide v4, v7, v1

    const/16 v1, 0x38

    const-wide v4, 0x3c771547652b82feL    # 2.0021415648843235E-17

    aput-wide v4, v7, v1

    const/16 v1, 0x39

    const-wide v4, 0x3c671547652b82feL    # 1.0010707824421618E-17

    aput-wide v4, v7, v1

    const/16 v1, 0x3a

    const-wide v4, 0x3c571547652b82feL    # 5.005353912210809E-18

    aput-wide v4, v7, v1

    const/16 v1, 0x3b

    const-wide v4, 0x3c471547652b82feL    # 2.5026769561054044E-18

    aput-wide v4, v7, v1

    const/16 v1, 0x3c

    const-wide v4, 0x3c371547652b82feL

    aput-wide v4, v7, v1

    const/16 v1, 0x3d

    const-wide v4, 0x3c271547652b82feL    # 6.256692390263511E-19

    aput-wide v4, v7, v1

    const/16 v1, 0x3e

    const-wide v4, 0x3c171547652b82feL    # 3.1283461951317555E-19

    aput-wide v4, v7, v1

    const/16 v1, 0x3f

    const-wide v4, 0x3c071547652b82feL    # 1.5641730975658778E-19

    aput-wide v4, v7, v1

    const/16 v1, 0x40

    const-wide v4, 0x3bf71547652b82feL    # 7.820865487829389E-20

    aput-wide v4, v7, v1

    const/16 v1, 0x41

    const-wide v4, 0x3be71547652b82feL

    aput-wide v4, v7, v1

    const/16 v1, 0x42

    const-wide v4, 0x3bd71547652b82feL    # 1.9552163719573472E-20

    aput-wide v4, v7, v1

    const/16 v1, 0x43

    const-wide v4, 0x3bc71547652b82feL    # 9.776081859786736E-21

    aput-wide v4, v7, v1

    const/16 v1, 0x44

    const-wide v4, 0x3bb71547652b82feL    # 4.888040929893368E-21

    aput-wide v4, v7, v1

    const/16 v1, 0x45

    const-wide v4, 0x3ba71547652b82feL    # 2.444020464946684E-21

    aput-wide v4, v7, v1

    const/16 v1, 0x46

    const-wide v4, 0x3b971547652b82feL    # 1.222010232473342E-21

    aput-wide v4, v7, v1

    const/16 v1, 0x47

    const-wide v4, 0x3b871547652b82feL    # 6.11005116236671E-22

    aput-wide v4, v7, v1

    const/16 v1, 0x48

    const-wide v4, 0x3b771547652b82feL    # 3.055025581183355E-22

    aput-wide v4, v7, v1

    const/16 v1, 0x49

    const-wide v4, 0x3b671547652b82feL    # 1.5275127905916775E-22

    aput-wide v4, v7, v1

    const/16 v1, 0x4a

    const-wide v4, 0x3b571547652b82feL    # 7.637563952958387E-23

    aput-wide v4, v7, v1

    const/16 v1, 0x4b

    const-wide v4, 0x3b471547652b82feL    # 3.818781976479194E-23

    aput-wide v4, v7, v1

    const/16 v1, 0x4c

    const-wide v4, 0x3b371547652b82feL    # 1.909390988239597E-23

    aput-wide v4, v7, v1

    const/16 v1, 0x4d

    const-wide v4, 0x3b271547652b82feL    # 9.546954941197984E-24

    aput-wide v4, v7, v1

    const/16 v1, 0x4e

    const-wide v4, 0x3b171547652b82feL    # 4.773477470598992E-24

    aput-wide v4, v7, v1

    const/16 v1, 0x4f

    const-wide v4, 0x3b071547652b82feL    # 2.386738735299496E-24

    aput-wide v4, v7, v1

    const/16 v1, 0x50

    const-wide v4, 0x3af71547652b82feL    # 1.193369367649748E-24

    aput-wide v4, v7, v1

    const/16 v1, 0x51

    const-wide v4, 0x3ae71547652b82feL    # 5.96684683824874E-25

    aput-wide v4, v7, v1

    const/16 v1, 0x52

    const-wide v4, 0x3ad71547652b82feL    # 2.98342341912437E-25

    aput-wide v4, v7, v1

    const/16 v1, 0x53

    const-wide v4, 0x3ac71547652b82feL    # 1.491711709562185E-25

    aput-wide v4, v7, v1

    const/16 v1, 0x54

    const-wide v4, 0x3ab71547652b82feL    # 7.458558547810925E-26

    aput-wide v4, v7, v1

    const/16 v1, 0x55

    const-wide v4, 0x3aa71547652b82feL

    aput-wide v4, v7, v1

    const/16 v1, 0x56

    const-wide v4, 0x3a971547652b82feL    # 1.8646396369527313E-26

    aput-wide v4, v7, v1

    const/16 v1, 0x57

    const-wide v4, 0x3a871547652b82feL    # 9.323198184763657E-27

    aput-wide v4, v7, v1

    const/16 v1, 0x58

    const-wide v4, 0x3a771547652b82feL    # 4.661599092381828E-27

    aput-wide v4, v7, v1

    const/16 v1, 0x59

    const-wide v4, 0x3a671547652b82feL    # 2.330799546190914E-27

    aput-wide v4, v7, v1

    const/16 v1, 0x5a

    const-wide v4, 0x3a571547652b82feL    # 1.165399773095457E-27

    aput-wide v4, v7, v1

    const/16 v1, 0x5b

    const-wide v4, 0x3a471547652b82feL    # 5.826998865477285E-28

    aput-wide v4, v7, v1

    const/16 v1, 0x5c

    const-wide v4, 0x3a371547652b82feL    # 2.9134994327386427E-28

    aput-wide v4, v7, v1

    const/16 v1, 0x5d

    const-wide v4, 0x3a271547652b82feL    # 1.4567497163693213E-28

    aput-wide v4, v7, v1

    const/16 v1, 0x5e

    const-wide v4, 0x3a171547652b82feL    # 7.283748581846607E-29

    aput-wide v4, v7, v1

    const/16 v1, 0x5f

    const-wide v4, 0x3a071547652b82feL

    aput-wide v4, v7, v1

    const/16 v1, 0x60

    const-wide v4, 0x39f71547652b82feL    # 1.8209371454616517E-29

    aput-wide v4, v7, v1

    const/16 v1, 0x61

    const-wide v4, 0x39e71547652b82feL    # 9.104685727308258E-30

    aput-wide v4, v7, v1

    const/16 v1, 0x62

    const-wide v4, 0x39d71547652b82feL    # 4.552342863654129E-30

    aput-wide v4, v7, v1

    const/16 v1, 0x63

    const-wide v4, 0x39c71547652b82feL    # 2.2761714318270646E-30

    aput-wide v4, v7, v1

    const-wide/16 v4, 0x0

    move v6, v0

    move-wide v8, v2

    move-wide v0, v4

    move-wide v4, v2

    :goto_383
    if-lt v6, v11, :cond_386

    return-wide v0

    :cond_386
    mul-double v2, v4, v8

    add-double/2addr v2, v4

    cmpg-double v10, v2, p0

    if-gtz v10, :cond_398

    aget-wide v4, v7, v6

    add-double/2addr v0, v4

    :goto_390
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v4

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-wide v4, v2

    goto :goto_383

    :cond_398
    move-wide v2, v4

    goto :goto_390
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "test"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->floatLog(F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(F)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "test2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static maxPower(I)I
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    return v0

    :cond_4
    const/4 v1, 0x1

    :goto_5
    and-int v2, p0, v1

    if-nez v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    shl-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_5
.end method

.method public static mod(JJ)J
    .registers 8

    rem-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_d

    const/4 v2, 0x1

    :goto_9
    if-nez v2, :cond_c

    add-long/2addr v0, p2

    :cond_c
    return-wide v0

    :cond_d
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public static modInverse(II)I
    .registers 6

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public static modInverse(JJ)J
    .registers 6

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static modPow(III)I
    .registers 7

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-gtz p2, :cond_5

    :cond_4
    return v3

    :cond_5
    mul-int v0, p2, p2

    const v2, 0x7fffffff

    if-gt v0, v2, :cond_4

    if-ltz p1, :cond_4

    rem-int v0, p0, p2

    add-int/2addr v0, p2

    rem-int/2addr v0, p2

    move v2, v0

    move v0, v1

    :goto_14
    if-gtz p1, :cond_17

    return v0

    :cond_17
    and-int/lit8 v3, p1, 0x1

    if-eq v3, v1, :cond_20

    :goto_1b
    mul-int/2addr v2, v2

    rem-int/2addr v2, p2

    ushr-int/lit8 p1, p1, 0x1

    goto :goto_14

    :cond_20
    mul-int/2addr v0, v2

    rem-int/2addr v0, p2

    goto :goto_1b
.end method

.method public static nextPrime(J)Ljava/math/BigInteger;
    .registers 16

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-lez v0, :cond_13

    const/4 v0, 0x1

    :goto_a
    if-nez v0, :cond_15

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_a

    :cond_15
    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_22

    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_22
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    add-long/2addr v2, v0

    :goto_29
    const/4 v0, 0x1

    shl-long v0, p0, v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_3a

    const/4 v0, 0x1

    :goto_31
    if-nez v0, :cond_35

    if-eqz v6, :cond_3c

    :cond_35
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_31

    :cond_3c
    const-wide/16 v0, 0x3

    move-wide v12, v0

    move v0, v6

    move-wide v6, v12

    :goto_41
    const/4 v1, 0x1

    shr-long v8, v2, v1

    cmp-long v1, v6, v8

    if-lez v1, :cond_58

    const/4 v1, 0x1

    :goto_49
    if-nez v1, :cond_4d

    if-eqz v0, :cond_5a

    :cond_4d
    if-nez v0, :cond_67

    const/4 v0, 0x1

    move v4, v0

    move-wide v0, v2

    :goto_52
    const-wide/16 v6, 0x2

    add-long/2addr v2, v6

    move v6, v4

    move-wide v4, v0

    goto :goto_29

    :cond_58
    const/4 v1, 0x0

    goto :goto_49

    :cond_5a
    rem-long v8, v2, v6

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-nez v1, :cond_63

    const/4 v0, 0x1

    :cond_63
    const-wide/16 v8, 0x2

    add-long/2addr v6, v8

    goto :goto_41

    :cond_67
    const/4 v0, 0x0

    move-wide v12, v4

    move v4, v0

    move-wide v0, v12

    goto :goto_52
.end method

.method public static nextProbablePrime(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 2

    const/16 v0, 0x14

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->nextProbablePrime(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static nextProbablePrime(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .registers 10

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_c

    :cond_9
    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    return-object v0

    :cond_c
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_41

    :goto_26
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_48

    :cond_2d
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_c0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v1

    if-nez v1, :cond_c1

    sget-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_26

    :cond_41
    sget-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_26

    :cond_48
    const-wide v2, 0x8a5b6470af95L

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    rem-long v4, v2, v4

    cmp-long v1, v4, v6

    if-eqz v1, :cond_b8

    const-wide/16 v4, 0x5

    rem-long v4, v2, v4

    cmp-long v1, v4, v6

    if-eqz v1, :cond_b8

    const-wide/16 v4, 0x7

    rem-long v4, v2, v4

    cmp-long v1, v4, v6

    if-eqz v1, :cond_b8

    const-wide/16 v4, 0xb

    rem-long v4, v2, v4

    cmp-long v1, v4, v6

    if-eqz v1, :cond_b8

    const-wide/16 v4, 0xd

    rem-long v4, v2, v4

    cmp-long v1, v4, v6

    if-eqz v1, :cond_b8

    const-wide/16 v4, 0x11

    rem-long v4, v2, v4

    cmp-long v1, v4, v6

    if-eqz v1, :cond_b8

    const-wide/16 v4, 0x13

    rem-long v4, v2, v4

    cmp-long v1, v4, v6

    if-eqz v1, :cond_b8

    const-wide/16 v4, 0x17

    rem-long v4, v2, v4

    cmp-long v1, v4, v6

    if-eqz v1, :cond_b8

    const-wide/16 v4, 0x1d

    rem-long v4, v2, v4

    cmp-long v1, v4, v6

    if-eqz v1, :cond_b8

    const-wide/16 v4, 0x1f

    rem-long v4, v2, v4

    cmp-long v1, v4, v6

    if-eqz v1, :cond_b8

    const-wide/16 v4, 0x25

    rem-long v4, v2, v4

    cmp-long v1, v4, v6

    if-eqz v1, :cond_b8

    const-wide/16 v4, 0x29

    rem-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-nez v1, :cond_2d

    :cond_b8
    sget-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto/16 :goto_26

    :cond_c0
    return-object v0

    :cond_c1
    return-object v0
.end method

.method public static nextSmallerPrime(I)I
    .registers 7

    const/4 v5, 0x3

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-le p0, v0, :cond_1d

    if-eq p0, v5, :cond_1e

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_1f

    add-int/lit8 v0, p0, -0x2

    move v4, v0

    :goto_f
    if-gt v4, v5, :cond_23

    move v0, v1

    :goto_12
    invoke-static {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->isPrime(I)Z

    move-result v3

    if-eqz v3, :cond_25

    move v3, v1

    :goto_19
    and-int/2addr v0, v3

    if-nez v0, :cond_27

    return v4

    :cond_1d
    return v2

    :cond_1e
    return v0

    :cond_1f
    add-int/lit8 v0, p0, -0x1

    move v4, v0

    goto :goto_f

    :cond_23
    move v0, v2

    goto :goto_12

    :cond_25
    move v3, v2

    goto :goto_19

    :cond_27
    add-int/lit8 v0, v4, -0x2

    move v4, v0

    goto :goto_f
.end method

.method public static octetsToInteger([B)Ljava/math/BigInteger;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->octetsToInteger([BII)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static octetsToInteger([BII)Ljava/math/BigInteger;
    .registers 5

    const/4 v1, 0x0

    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v1
.end method

.method public static order(II)I
    .registers 5

    const/4 v2, 0x1

    rem-int v0, p0, p1

    if-eqz v0, :cond_9

    move v1, v2

    :goto_6
    if-ne v0, v2, :cond_2e

    return v1

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not an element of Z/("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Z)^*; it is not meaningful to compute its order."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    mul-int/2addr v0, p0

    rem-int/2addr v0, p1

    if-ltz v0, :cond_35

    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_35
    add-int/2addr v0, p1

    goto :goto_32
.end method

.method public static passesSmallPrimeTest(Ljava/math/BigInteger;)Z
    .registers 8

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xef

    new-array v2, v0, [I

    aput v3, v2, v1

    aput v4, v2, v6

    aput v5, v2, v3

    const/4 v0, 0x7

    aput v0, v2, v4

    const/4 v0, 0x4

    const/16 v3, 0xb

    aput v3, v2, v0

    const/16 v0, 0xd

    aput v0, v2, v5

    const/4 v0, 0x6

    const/16 v3, 0x11

    aput v3, v2, v0

    const/4 v0, 0x7

    const/16 v3, 0x13

    aput v3, v2, v0

    const/16 v0, 0x8

    const/16 v3, 0x17

    aput v3, v2, v0

    const/16 v0, 0x9

    const/16 v3, 0x1d

    aput v3, v2, v0

    const/16 v0, 0xa

    const/16 v3, 0x1f

    aput v3, v2, v0

    const/16 v0, 0xb

    const/16 v3, 0x25

    aput v3, v2, v0

    const/16 v0, 0xc

    const/16 v3, 0x29

    aput v3, v2, v0

    const/16 v0, 0xd

    const/16 v3, 0x2b

    aput v3, v2, v0

    const/16 v0, 0xe

    const/16 v3, 0x2f

    aput v3, v2, v0

    const/16 v0, 0xf

    const/16 v3, 0x35

    aput v3, v2, v0

    const/16 v0, 0x10

    const/16 v3, 0x3b

    aput v3, v2, v0

    const/16 v0, 0x11

    const/16 v3, 0x3d

    aput v3, v2, v0

    const/16 v0, 0x12

    const/16 v3, 0x43

    aput v3, v2, v0

    const/16 v0, 0x13

    const/16 v3, 0x47

    aput v3, v2, v0

    const/16 v0, 0x14

    const/16 v3, 0x49

    aput v3, v2, v0

    const/16 v0, 0x15

    const/16 v3, 0x4f

    aput v3, v2, v0

    const/16 v0, 0x16

    const/16 v3, 0x53

    aput v3, v2, v0

    const/16 v0, 0x17

    const/16 v3, 0x59

    aput v3, v2, v0

    const/16 v0, 0x18

    const/16 v3, 0x61

    aput v3, v2, v0

    const/16 v0, 0x19

    const/16 v3, 0x65

    aput v3, v2, v0

    const/16 v0, 0x1a

    const/16 v3, 0x67

    aput v3, v2, v0

    const/16 v0, 0x1b

    const/16 v3, 0x6b

    aput v3, v2, v0

    const/16 v0, 0x1c

    const/16 v3, 0x6d

    aput v3, v2, v0

    const/16 v0, 0x1d

    const/16 v3, 0x71

    aput v3, v2, v0

    const/16 v0, 0x1e

    const/16 v3, 0x7f

    aput v3, v2, v0

    const/16 v0, 0x1f

    const/16 v3, 0x83

    aput v3, v2, v0

    const/16 v0, 0x20

    const/16 v3, 0x89

    aput v3, v2, v0

    const/16 v0, 0x21

    const/16 v3, 0x8b

    aput v3, v2, v0

    const/16 v0, 0x22

    const/16 v3, 0x95

    aput v3, v2, v0

    const/16 v0, 0x23

    const/16 v3, 0x97

    aput v3, v2, v0

    const/16 v0, 0x24

    const/16 v3, 0x9d

    aput v3, v2, v0

    const/16 v0, 0x25

    const/16 v3, 0xa3

    aput v3, v2, v0

    const/16 v0, 0x26

    const/16 v3, 0xa7

    aput v3, v2, v0

    const/16 v0, 0x27

    const/16 v3, 0xad

    aput v3, v2, v0

    const/16 v0, 0x28

    const/16 v3, 0xb3

    aput v3, v2, v0

    const/16 v0, 0x29

    const/16 v3, 0xb5

    aput v3, v2, v0

    const/16 v0, 0x2a

    const/16 v3, 0xbf

    aput v3, v2, v0

    const/16 v0, 0x2b

    const/16 v3, 0xc1

    aput v3, v2, v0

    const/16 v0, 0x2c

    const/16 v3, 0xc5

    aput v3, v2, v0

    const/16 v0, 0x2d

    const/16 v3, 0xc7

    aput v3, v2, v0

    const/16 v0, 0x2e

    const/16 v3, 0xd3

    aput v3, v2, v0

    const/16 v0, 0x2f

    const/16 v3, 0xdf

    aput v3, v2, v0

    const/16 v0, 0x30

    const/16 v3, 0xe3

    aput v3, v2, v0

    const/16 v0, 0x31

    const/16 v3, 0xe5

    aput v3, v2, v0

    const/16 v0, 0x32

    const/16 v3, 0xe9

    aput v3, v2, v0

    const/16 v0, 0x33

    const/16 v3, 0xef

    aput v3, v2, v0

    const/16 v0, 0x34

    const/16 v3, 0xf1

    aput v3, v2, v0

    const/16 v0, 0x35

    const/16 v3, 0xfb

    aput v3, v2, v0

    const/16 v0, 0x36

    const/16 v3, 0x101

    aput v3, v2, v0

    const/16 v0, 0x37

    const/16 v3, 0x107

    aput v3, v2, v0

    const/16 v0, 0x38

    const/16 v3, 0x10d

    aput v3, v2, v0

    const/16 v0, 0x39

    const/16 v3, 0x10f

    aput v3, v2, v0

    const/16 v0, 0x3a

    const/16 v3, 0x115

    aput v3, v2, v0

    const/16 v0, 0x3b

    const/16 v3, 0x119

    aput v3, v2, v0

    const/16 v0, 0x3c

    const/16 v3, 0x11b

    aput v3, v2, v0

    const/16 v0, 0x3d

    const/16 v3, 0x125

    aput v3, v2, v0

    const/16 v0, 0x3e

    const/16 v3, 0x133

    aput v3, v2, v0

    const/16 v0, 0x3f

    const/16 v3, 0x137

    aput v3, v2, v0

    const/16 v0, 0x40

    const/16 v3, 0x139

    aput v3, v2, v0

    const/16 v0, 0x41

    const/16 v3, 0x13d

    aput v3, v2, v0

    const/16 v0, 0x42

    const/16 v3, 0x14b

    aput v3, v2, v0

    const/16 v0, 0x43

    const/16 v3, 0x151

    aput v3, v2, v0

    const/16 v0, 0x44

    const/16 v3, 0x15b

    aput v3, v2, v0

    const/16 v0, 0x45

    const/16 v3, 0x15d

    aput v3, v2, v0

    const/16 v0, 0x46

    const/16 v3, 0x161

    aput v3, v2, v0

    const/16 v0, 0x47

    const/16 v3, 0x167

    aput v3, v2, v0

    const/16 v0, 0x48

    const/16 v3, 0x16f

    aput v3, v2, v0

    const/16 v0, 0x49

    const/16 v3, 0x175

    aput v3, v2, v0

    const/16 v0, 0x4a

    const/16 v3, 0x17b

    aput v3, v2, v0

    const/16 v0, 0x4b

    const/16 v3, 0x17f

    aput v3, v2, v0

    const/16 v0, 0x4c

    const/16 v3, 0x185

    aput v3, v2, v0

    const/16 v0, 0x4d

    const/16 v3, 0x18d

    aput v3, v2, v0

    const/16 v0, 0x4e

    const/16 v3, 0x191

    aput v3, v2, v0

    const/16 v0, 0x4f

    const/16 v3, 0x199

    aput v3, v2, v0

    const/16 v0, 0x50

    const/16 v3, 0x1a3

    aput v3, v2, v0

    const/16 v0, 0x51

    const/16 v3, 0x1a5

    aput v3, v2, v0

    const/16 v0, 0x52

    const/16 v3, 0x1af

    aput v3, v2, v0

    const/16 v0, 0x53

    const/16 v3, 0x1b1

    aput v3, v2, v0

    const/16 v0, 0x54

    const/16 v3, 0x1b7

    aput v3, v2, v0

    const/16 v0, 0x55

    const/16 v3, 0x1bb

    aput v3, v2, v0

    const/16 v0, 0x56

    const/16 v3, 0x1c1

    aput v3, v2, v0

    const/16 v0, 0x57

    const/16 v3, 0x1c9

    aput v3, v2, v0

    const/16 v0, 0x58

    const/16 v3, 0x1cd

    aput v3, v2, v0

    const/16 v0, 0x59

    const/16 v3, 0x1cf

    aput v3, v2, v0

    const/16 v0, 0x5a

    const/16 v3, 0x1d3

    aput v3, v2, v0

    const/16 v0, 0x5b

    const/16 v3, 0x1df

    aput v3, v2, v0

    const/16 v0, 0x5c

    const/16 v3, 0x1e7

    aput v3, v2, v0

    const/16 v0, 0x5d

    const/16 v3, 0x1eb

    aput v3, v2, v0

    const/16 v0, 0x5e

    const/16 v3, 0x1f3

    aput v3, v2, v0

    const/16 v0, 0x5f

    const/16 v3, 0x1f7

    aput v3, v2, v0

    const/16 v0, 0x60

    const/16 v3, 0x1fd

    aput v3, v2, v0

    const/16 v0, 0x61

    const/16 v3, 0x209

    aput v3, v2, v0

    const/16 v0, 0x62

    const/16 v3, 0x20b

    aput v3, v2, v0

    const/16 v0, 0x63

    const/16 v3, 0x21d

    aput v3, v2, v0

    const/16 v0, 0x64

    const/16 v3, 0x223

    aput v3, v2, v0

    const/16 v0, 0x65

    const/16 v3, 0x22d

    aput v3, v2, v0

    const/16 v0, 0x66

    const/16 v3, 0x233

    aput v3, v2, v0

    const/16 v0, 0x67

    const/16 v3, 0x239

    aput v3, v2, v0

    const/16 v0, 0x68

    const/16 v3, 0x23b

    aput v3, v2, v0

    const/16 v0, 0x69

    const/16 v3, 0x241

    aput v3, v2, v0

    const/16 v0, 0x6a

    const/16 v3, 0x24b

    aput v3, v2, v0

    const/16 v0, 0x6b

    const/16 v3, 0x251

    aput v3, v2, v0

    const/16 v0, 0x6c

    const/16 v3, 0x257

    aput v3, v2, v0

    const/16 v0, 0x6d

    const/16 v3, 0x259

    aput v3, v2, v0

    const/16 v0, 0x6e

    const/16 v3, 0x25f

    aput v3, v2, v0

    const/16 v0, 0x6f

    const/16 v3, 0x265

    aput v3, v2, v0

    const/16 v0, 0x70

    const/16 v3, 0x269

    aput v3, v2, v0

    const/16 v0, 0x71

    const/16 v3, 0x26b

    aput v3, v2, v0

    const/16 v0, 0x72

    const/16 v3, 0x277

    aput v3, v2, v0

    const/16 v0, 0x73

    const/16 v3, 0x281

    aput v3, v2, v0

    const/16 v0, 0x74

    const/16 v3, 0x283

    aput v3, v2, v0

    const/16 v0, 0x75

    const/16 v3, 0x287

    aput v3, v2, v0

    const/16 v0, 0x76

    const/16 v3, 0x28d

    aput v3, v2, v0

    const/16 v0, 0x77

    const/16 v3, 0x293

    aput v3, v2, v0

    const/16 v0, 0x78

    const/16 v3, 0x295

    aput v3, v2, v0

    const/16 v0, 0x79

    const/16 v3, 0x2a1

    aput v3, v2, v0

    const/16 v0, 0x7a

    const/16 v3, 0x2a5

    aput v3, v2, v0

    const/16 v0, 0x7b

    const/16 v3, 0x2ab

    aput v3, v2, v0

    const/16 v0, 0x7c

    const/16 v3, 0x2b3

    aput v3, v2, v0

    const/16 v0, 0x7d

    const/16 v3, 0x2bd

    aput v3, v2, v0

    const/16 v0, 0x7e

    const/16 v3, 0x2c5

    aput v3, v2, v0

    const/16 v0, 0x7f

    const/16 v3, 0x2cf

    aput v3, v2, v0

    const/16 v0, 0x80

    const/16 v3, 0x2d7

    aput v3, v2, v0

    const/16 v0, 0x81

    const/16 v3, 0x2dd

    aput v3, v2, v0

    const/16 v0, 0x82

    const/16 v3, 0x2e3

    aput v3, v2, v0

    const/16 v0, 0x83

    const/16 v3, 0x2e7

    aput v3, v2, v0

    const/16 v0, 0x84

    const/16 v3, 0x2ef

    aput v3, v2, v0

    const/16 v0, 0x85

    const/16 v3, 0x2f5

    aput v3, v2, v0

    const/16 v0, 0x86

    const/16 v3, 0x2f9

    aput v3, v2, v0

    const/16 v0, 0x87

    const/16 v3, 0x301

    aput v3, v2, v0

    const/16 v0, 0x88

    const/16 v3, 0x305

    aput v3, v2, v0

    const/16 v0, 0x89

    const/16 v3, 0x313

    aput v3, v2, v0

    const/16 v0, 0x8a

    const/16 v3, 0x31d

    aput v3, v2, v0

    const/16 v0, 0x8b

    const/16 v3, 0x329

    aput v3, v2, v0

    const/16 v0, 0x8c

    const/16 v3, 0x32b

    aput v3, v2, v0

    const/16 v0, 0x8d

    const/16 v3, 0x335

    aput v3, v2, v0

    const/16 v0, 0x8e

    const/16 v3, 0x337

    aput v3, v2, v0

    const/16 v0, 0x8f

    const/16 v3, 0x33b

    aput v3, v2, v0

    const/16 v0, 0x90

    const/16 v3, 0x33d

    aput v3, v2, v0

    const/16 v0, 0x91

    const/16 v3, 0x347

    aput v3, v2, v0

    const/16 v0, 0x92

    const/16 v3, 0x355

    aput v3, v2, v0

    const/16 v0, 0x93

    const/16 v3, 0x359

    aput v3, v2, v0

    const/16 v0, 0x94

    const/16 v3, 0x35b

    aput v3, v2, v0

    const/16 v0, 0x95

    const/16 v3, 0x35f

    aput v3, v2, v0

    const/16 v0, 0x96

    const/16 v3, 0x36d

    aput v3, v2, v0

    const/16 v0, 0x97

    const/16 v3, 0x371

    aput v3, v2, v0

    const/16 v0, 0x98

    const/16 v3, 0x373

    aput v3, v2, v0

    const/16 v0, 0x99

    const/16 v3, 0x377

    aput v3, v2, v0

    const/16 v0, 0x9a

    const/16 v3, 0x38b

    aput v3, v2, v0

    const/16 v0, 0x9b

    const/16 v3, 0x38f

    aput v3, v2, v0

    const/16 v0, 0x9c

    const/16 v3, 0x397

    aput v3, v2, v0

    const/16 v0, 0x9d

    const/16 v3, 0x3a1

    aput v3, v2, v0

    const/16 v0, 0x9e

    const/16 v3, 0x3a9

    aput v3, v2, v0

    const/16 v0, 0x9f

    const/16 v3, 0x3ad

    aput v3, v2, v0

    const/16 v0, 0xa0

    const/16 v3, 0x3b3

    aput v3, v2, v0

    const/16 v0, 0xa1

    const/16 v3, 0x3b9

    aput v3, v2, v0

    const/16 v0, 0xa2

    const/16 v3, 0x3c7

    aput v3, v2, v0

    const/16 v0, 0xa3

    const/16 v3, 0x3cb

    aput v3, v2, v0

    const/16 v0, 0xa4

    const/16 v3, 0x3d1

    aput v3, v2, v0

    const/16 v0, 0xa5

    const/16 v3, 0x3d7

    aput v3, v2, v0

    const/16 v0, 0xa6

    const/16 v3, 0x3df

    aput v3, v2, v0

    const/16 v0, 0xa7

    const/16 v3, 0x3e5

    aput v3, v2, v0

    const/16 v0, 0xa8

    const/16 v3, 0x3f1

    aput v3, v2, v0

    const/16 v0, 0xa9

    const/16 v3, 0x3f5

    aput v3, v2, v0

    const/16 v0, 0xaa

    const/16 v3, 0x3fb

    aput v3, v2, v0

    const/16 v0, 0xab

    const/16 v3, 0x3fd

    aput v3, v2, v0

    const/16 v0, 0xac

    const/16 v3, 0x407

    aput v3, v2, v0

    const/16 v0, 0xad

    const/16 v3, 0x409

    aput v3, v2, v0

    const/16 v0, 0xae

    const/16 v3, 0x40f

    aput v3, v2, v0

    const/16 v0, 0xaf

    const/16 v3, 0x419

    aput v3, v2, v0

    const/16 v0, 0xb0

    const/16 v3, 0x41b

    aput v3, v2, v0

    const/16 v0, 0xb1

    const/16 v3, 0x425

    aput v3, v2, v0

    const/16 v0, 0xb2

    const/16 v3, 0x427

    aput v3, v2, v0

    const/16 v0, 0xb3

    const/16 v3, 0x42d

    aput v3, v2, v0

    const/16 v0, 0xb4

    const/16 v3, 0x43f

    aput v3, v2, v0

    const/16 v0, 0xb5

    const/16 v3, 0x443

    aput v3, v2, v0

    const/16 v0, 0xb6

    const/16 v3, 0x445

    aput v3, v2, v0

    const/16 v0, 0xb7

    const/16 v3, 0x449

    aput v3, v2, v0

    const/16 v0, 0xb8

    const/16 v3, 0x44f

    aput v3, v2, v0

    const/16 v0, 0xb9

    const/16 v3, 0x455

    aput v3, v2, v0

    const/16 v0, 0xba

    const/16 v3, 0x45d

    aput v3, v2, v0

    const/16 v0, 0xbb

    const/16 v3, 0x463

    aput v3, v2, v0

    const/16 v0, 0xbc

    const/16 v3, 0x469

    aput v3, v2, v0

    const/16 v0, 0xbd

    const/16 v3, 0x47f

    aput v3, v2, v0

    const/16 v0, 0xbe

    const/16 v3, 0x481

    aput v3, v2, v0

    const/16 v0, 0xbf

    const/16 v3, 0x48b

    aput v3, v2, v0

    const/16 v0, 0xc0

    const/16 v3, 0x493

    aput v3, v2, v0

    const/16 v0, 0xc1

    const/16 v3, 0x49d

    aput v3, v2, v0

    const/16 v0, 0xc2

    const/16 v3, 0x4a3

    aput v3, v2, v0

    const/16 v0, 0xc3

    const/16 v3, 0x4a9

    aput v3, v2, v0

    const/16 v0, 0xc4

    const/16 v3, 0x4b1

    aput v3, v2, v0

    const/16 v0, 0xc5

    const/16 v3, 0x4bd

    aput v3, v2, v0

    const/16 v0, 0xc6

    const/16 v3, 0x4c1

    aput v3, v2, v0

    const/16 v0, 0xc7

    const/16 v3, 0x4c7

    aput v3, v2, v0

    const/16 v0, 0xc8

    const/16 v3, 0x4cd

    aput v3, v2, v0

    const/16 v0, 0xc9

    const/16 v3, 0x4cf

    aput v3, v2, v0

    const/16 v0, 0xca

    const/16 v3, 0x4d5

    aput v3, v2, v0

    const/16 v0, 0xcb

    const/16 v3, 0x4e1

    aput v3, v2, v0

    const/16 v0, 0xcc

    const/16 v3, 0x4eb

    aput v3, v2, v0

    const/16 v0, 0xcd

    const/16 v3, 0x4fd

    aput v3, v2, v0

    const/16 v0, 0xce

    const/16 v3, 0x4ff

    aput v3, v2, v0

    const/16 v0, 0xcf

    const/16 v3, 0x503

    aput v3, v2, v0

    const/16 v0, 0xd0

    const/16 v3, 0x509

    aput v3, v2, v0

    const/16 v0, 0xd1

    const/16 v3, 0x50b

    aput v3, v2, v0

    const/16 v0, 0xd2

    const/16 v3, 0x511

    aput v3, v2, v0

    const/16 v0, 0xd3

    const/16 v3, 0x515

    aput v3, v2, v0

    const/16 v0, 0xd4

    const/16 v3, 0x517

    aput v3, v2, v0

    const/16 v0, 0xd5

    const/16 v3, 0x51b

    aput v3, v2, v0

    const/16 v0, 0xd6

    const/16 v3, 0x527

    aput v3, v2, v0

    const/16 v0, 0xd7

    const/16 v3, 0x529

    aput v3, v2, v0

    const/16 v0, 0xd8

    const/16 v3, 0x52f

    aput v3, v2, v0

    const/16 v0, 0xd9

    const/16 v3, 0x551

    aput v3, v2, v0

    const/16 v0, 0xda

    const/16 v3, 0x557

    aput v3, v2, v0

    const/16 v0, 0xdb

    const/16 v3, 0x55d

    aput v3, v2, v0

    const/16 v0, 0xdc

    const/16 v3, 0x565

    aput v3, v2, v0

    const/16 v0, 0xdd

    const/16 v3, 0x577

    aput v3, v2, v0

    const/16 v0, 0xde

    const/16 v3, 0x581

    aput v3, v2, v0

    const/16 v0, 0xdf

    const/16 v3, 0x58f

    aput v3, v2, v0

    const/16 v0, 0xe0

    const/16 v3, 0x593    # 2.0E-42f

    aput v3, v2, v0

    const/16 v0, 0xe1

    const/16 v3, 0x595

    aput v3, v2, v0

    const/16 v0, 0xe2

    const/16 v3, 0x599

    aput v3, v2, v0

    const/16 v0, 0xe3

    const/16 v3, 0x59f

    aput v3, v2, v0

    const/16 v0, 0xe4

    const/16 v3, 0x5a7

    aput v3, v2, v0

    const/16 v0, 0xe5

    const/16 v3, 0x5ab

    aput v3, v2, v0

    const/16 v0, 0xe6

    const/16 v3, 0x5ad

    aput v3, v2, v0

    const/16 v0, 0xe7

    const/16 v3, 0x5b3

    aput v3, v2, v0

    const/16 v0, 0xe8

    const/16 v3, 0x5bf

    aput v3, v2, v0

    const/16 v0, 0xe9

    const/16 v3, 0x5c9

    aput v3, v2, v0

    const/16 v0, 0xea

    const/16 v3, 0x5cb

    aput v3, v2, v0

    const/16 v0, 0xeb

    const/16 v3, 0x5cf

    aput v3, v2, v0

    const/16 v0, 0xec

    const/16 v3, 0x5d1

    aput v3, v2, v0

    const/16 v0, 0xed

    const/16 v3, 0x5d5

    aput v3, v2, v0

    const/16 v0, 0xee

    const/16 v3, 0x5db

    aput v3, v2, v0

    move v0, v1

    :goto_590
    array-length v3, v2

    if-lt v0, v3, :cond_594

    return v6

    :cond_594
    aget v3, v2, v0

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5aa

    add-int/lit8 v0, v0, 0x1

    goto :goto_590

    :cond_5aa
    return v1
.end method

.method public static pow(II)I
    .registers 5

    const/4 v1, 0x1

    move v0, v1

    :goto_2
    if-gtz p1, :cond_5

    return v0

    :cond_5
    and-int/lit8 v2, p1, 0x1

    if-eq v2, v1, :cond_d

    :goto_9
    mul-int/2addr p0, p0

    ushr-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_d
    mul-int/2addr v0, p0

    goto :goto_9
.end method

.method public static pow(JI)J
    .registers 7

    const-wide/16 v0, 0x1

    :goto_2
    if-gtz p2, :cond_5

    return-wide v0

    :cond_5
    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e

    :goto_a
    mul-long/2addr p0, p0

    ushr-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_e
    mul-long/2addr v0, p0

    goto :goto_a
.end method

.method public static randomize(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 2

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    if-eqz v0, :cond_b

    :goto_4
    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->randomize(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    goto :goto_4
.end method

.method public static randomize(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    if-eqz p1, :cond_18

    :goto_d
    move v0, v1

    move-object v1, v2

    :goto_f
    const/16 v2, 0x14

    if-lt v0, v2, :cond_26

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_18
    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    if-nez v0, :cond_23

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    :goto_21
    move-object p1, v0

    goto :goto_d

    :cond_23
    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    goto :goto_21

    :cond_26
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v3, p1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_34

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_34
    return-object v1
.end method

.method public static reduceInto(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 5

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static ressol(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_a3

    :goto_a
    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ac

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_ad

    :cond_27
    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    const-wide/16 v2, 0x0

    :goto_31
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_fc

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v7, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_106

    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    :goto_77
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->jacobi(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_107

    sget-object v8, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    sget-object v8, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v4, v7, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v16, v4

    move-object v4, v6

    move-wide v6, v2

    move-object/from16 v2, v16

    move-object v3, v5

    :goto_99
    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    const/4 v8, 0x1

    if-eq v5, v8, :cond_10f

    return-object v4

    :cond_a3
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto/16 :goto_a

    :cond_a9
    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    return-object v2

    :cond_ac
    return-object p0

    :cond_ad
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static/range {p0 .. p1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->jacobi(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e6

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No quadratic residue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e6
    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2

    :cond_fc
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    goto/16 :goto_31

    :cond_106
    return-object v6

    :cond_107
    sget-object v8, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    goto/16 :goto_77

    :cond_10f
    const-wide/16 v8, 0x0

    move-object v5, v3

    :goto_112
    sget-object v10, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14b

    sub-long v12, v6, v8

    const-wide/16 v6, 0x0

    cmp-long v5, v12, v6

    if-nez v5, :cond_159

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No quadratic residue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14b
    invoke-virtual {v5, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_112

    :cond_159
    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    const-wide/16 v6, 0x0

    move-object v10, v5

    :goto_15e
    const-wide/16 v14, 0x1

    sub-long v14, v12, v14

    cmp-long v5, v6, v14

    if-ltz v5, :cond_173

    const/4 v5, 0x1

    :goto_167
    if-nez v5, :cond_175

    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    move-object v10, v5

    goto :goto_15e

    :cond_173
    const/4 v5, 0x0

    goto :goto_167

    :cond_175
    move-object/from16 v0, p1

    invoke-virtual {v2, v10, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    move-wide v6, v8

    goto/16 :goto_99
.end method

.method public static squareRoot(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 10

    const/4 v1, 0x0

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1b

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_3c

    move-object v8, v2

    move v2, v3

    move-object v3, v8

    :goto_18
    if-gtz v2, :cond_48

    return-object v3

    :cond_1b
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cannot extract root of negative number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v3, v3, -0x1

    move-object v8, v2

    move v2, v3

    move-object v3, v8

    goto :goto_18

    :cond_48
    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-nez v0, :cond_86

    move v0, v1

    :goto_57
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_88

    move v2, v1

    :goto_60
    add-int/2addr v0, v2

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_8a

    :goto_83
    move-object v3, v2

    move v2, v4

    goto :goto_18

    :cond_86
    const/4 v0, 0x2

    goto :goto_57

    :cond_88
    const/4 v2, 0x1

    goto :goto_60

    :cond_8a
    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_83
.end method
