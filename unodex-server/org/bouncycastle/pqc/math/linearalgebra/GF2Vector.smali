.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;
.super Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
.source "Unknown"


# instance fields
.field private v:[I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;-><init>()V

    if-ltz p1, :cond_10

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    return-void

    :cond_10
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "Negative length."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IILjava/security/SecureRandom;)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;-><init>()V

    if-gt p2, p1, :cond_18

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    add-int/lit8 v1, p1, 0x1f

    shr-int/lit8 v1, v1, 0x5

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    new-array v2, p1, [I

    move v1, v0

    :goto_13
    if-lt v1, p1, :cond_21

    :goto_15
    if-lt v0, p2, :cond_26

    return-void

    :cond_18
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "The hamming weight is greater than the length of vector."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_26
    invoke-static {p3, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v1

    aget v3, v2, v1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->setBit(I)V

    add-int/lit8 p1, p1, -0x1

    aget v3, v2, p1

    aput v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method

.method public constructor <init>(ILjava/security/SecureRandom;)V
    .registers 8

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v1, v0, 0x5

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v0, v1, -0x1

    :goto_f
    if-gez v0, :cond_16

    and-int/lit8 v0, p1, 0x1f

    if-nez v0, :cond_21

    :goto_15
    return-void

    :cond_16
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_21
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    const/4 v4, 0x1

    shl-int v0, v4, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v3

    aput v0, v2, v1

    goto :goto_15
.end method

.method public constructor <init>(I[I)V
    .registers 8

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;-><init>()V

    if-ltz p1, :cond_19

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    array-length v1, p2

    if-ne v1, v0, :cond_22

    invoke-static {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    and-int/lit8 v1, p1, 0x1f

    if-nez v1, :cond_2b

    :goto_18
    return-void

    :cond_19
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "negative length"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v3, v2, v0

    const/4 v4, 0x1

    shl-int v1, v4, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v3

    aput v1, v2, v0

    goto :goto_18
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;-><init>()V

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    return-void
.end method

.method protected constructor <init>([II)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    iput p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    return-void
.end method

.method public static OS2VP(I[B)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;
    .registers 4

    if-ltz p0, :cond_13

    add-int/lit8 v0, p0, 0x7

    shr-int/lit8 v0, v0, 0x3

    array-length v1, p1

    if-gt v1, v0, :cond_1c

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->toIntArray([B)[I

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I[I)V

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "negative length"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .registers 6

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    if-eqz v0, :cond_22

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    iget v0, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-ne v1, v0, :cond_2b

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v1

    array-length v0, v1

    :goto_16
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_34

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I[I)V

    return-object v0

    :cond_22
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "vector is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    aget v2, v1, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    goto :goto_16
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    if-eqz v1, :cond_e

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-eq v1, v2, :cond_f

    :cond_d
    :goto_d
    return v0

    :cond_e
    return v0

    :cond_f
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method public extractLeftVector(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;
    .registers 8

    const/4 v5, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-gt p1, v0, :cond_1c

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-eq p1, v0, :cond_25

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v2, p1, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    iget-object v4, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v3, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v2, :cond_2b

    :goto_1b
    return-object v0

    :cond_1c
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "invalid length"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;)V

    return-object v0

    :cond_2b
    iget-object v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v4, v4, v1

    const/4 v5, 0x1

    shl-int v2, v5, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v4

    aput v2, v3, v1

    goto :goto_1b
.end method

.method public extractRightVector(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;
    .registers 11

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-gt p1, v1, :cond_26

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-eq p1, v1, :cond_2f

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v3, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    sub-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x5

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    sub-int/2addr v2, p1

    and-int/lit8 v4, v2, 0x1f

    add-int/lit8 v2, p1, 0x1f

    shr-int/lit8 v5, v2, 0x5

    if-nez v4, :cond_4b

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    iget-object v4, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v2, v1, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_25
    :goto_25
    return-object v3

    :cond_26
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "invalid length"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;)V

    return-object v0

    :cond_35
    iget-object v6, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v2, v1, 0x1

    aget v1, v7, v1

    ushr-int/2addr v1, v4

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v7, v7, v2

    rsub-int/lit8 v8, v4, 0x20

    shl-int/2addr v7, v8

    or-int/2addr v1, v7

    aput v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    :cond_4b
    add-int/lit8 v2, v5, -0x1

    if-lt v0, v2, :cond_35

    iget-object v0, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v2, v5, -0x1

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v7, v1, 0x1

    aget v1, v6, v1

    ushr-int/2addr v1, v4

    aput v1, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    array-length v0, v0

    if-ge v7, v0, :cond_25

    iget-object v0, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v1, v5, -0x1

    aget v2, v0, v1

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v5, v5, v7

    rsub-int/lit8 v4, v4, 0x20

    shl-int v4, v5, v4

    or-int/2addr v2, v4

    aput v2, v0, v1

    goto :goto_25
.end method

.method public extractVector([I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;
    .registers 10

    const/4 v7, 0x1

    const/4 v0, 0x0

    array-length v1, p1

    add-int/lit8 v2, v1, -0x1

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-gt v2, v3, :cond_13

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    :goto_10
    if-lt v0, v1, :cond_1c

    return-object v2

    :cond_13
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "invalid index set"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v4, p1, v0

    shr-int/lit8 v4, v4, 0x5

    aget v3, v3, v4

    aget v4, p1, v0

    and-int/lit8 v4, v4, 0x1f

    shl-int v4, v7, v4

    and-int/2addr v3, v4

    if-nez v3, :cond_30

    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_30
    iget-object v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    shr-int/lit8 v4, v0, 0x5

    aget v5, v3, v4

    and-int/lit8 v6, v0, 0x1f

    shl-int v6, v7, v6

    or-int/2addr v5, v6

    aput v5, v3, v4

    goto :goto_2d
.end method

.method public getBit(I)I
    .registers 5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-ge p1, v0, :cond_11

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v1, p1, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v0, v2, v0

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int/2addr v0, v2

    ushr-int/2addr v0, v1

    return v0

    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getEncoded()[B
    .registers 3

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->toByteArray([II)[B

    move-result-object v0

    return-object v0
.end method

.method public getHammingWeight()I
    .registers 7

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_3
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    array-length v3, v3

    if-lt v0, v3, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v3, v3, v0

    move v4, v3

    move v3, v1

    :goto_f
    const/16 v5, 0x20

    if-lt v3, v5, :cond_16

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_16
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_1f

    :goto_1a
    ushr-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a
.end method

.method public getVecArray()[I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isZero()Z
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    array-length v0, v0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v1, v1, v0

    if-eqz v1, :cond_4

    return v2
.end method

.method public multiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .registers 10

    const/4 v7, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->getVector()[I

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    array-length v3, v1

    if-ne v2, v3, :cond_16

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    :goto_12
    array-length v3, v1

    if-lt v0, v3, :cond_1f

    return-object v2

    :cond_16
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v4, v1, v0

    shr-int/lit8 v4, v4, 0x5

    aget v3, v3, v4

    aget v4, v1, v0

    and-int/lit8 v4, v4, 0x1f

    shl-int v4, v7, v4

    and-int/2addr v3, v4

    if-nez v3, :cond_33

    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_33
    iget-object v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    shr-int/lit8 v4, v0, 0x5

    aget v5, v3, v4

    and-int/lit8 v6, v0, 0x1f

    shl-int v6, v7, v6

    or-int/2addr v5, v6

    aput v5, v3, v4

    goto :goto_30
.end method

.method public setBit(I)V
    .registers 7

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-ge p1, v0, :cond_13

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    aput v2, v0, v1

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public toExtensionFieldVector(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;
    .registers 10

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v0

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    rem-int/2addr v2, v0

    if-nez v2, :cond_1c

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    div-int v0, v2, v0

    new-array v3, v0, [I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_14
    if-gez v2, :cond_25

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;

    invoke-direct {v0, p1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v0

    :cond_1c
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "conversion is impossible"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2b
    if-gez v0, :cond_31

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_14

    :cond_31
    ushr-int/lit8 v4, v1, 0x5

    and-int/lit8 v5, v1, 0x1f

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v4, v6, v4

    ushr-int/2addr v4, v5

    and-int/lit8 v4, v4, 0x1

    if-eq v4, v7, :cond_43

    :goto_3e
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    :cond_43
    aget v4, v3, v2

    shl-int v5, v7, v0

    xor-int/2addr v4, v5

    aput v4, v3, v2

    goto :goto_3e
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_6
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-lt v0, v2, :cond_f

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    if-nez v0, :cond_27

    :cond_11
    :goto_11
    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v2, v4, v2

    const/4 v4, 0x1

    shl-int v3, v4, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_31

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_27
    and-int/lit8 v2, v0, 0x1f

    if-nez v2, :cond_11

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_11

    :cond_31
    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_24
.end method
