.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;
.super Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
.source "Unknown"


# instance fields
.field private field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

.field private vector:[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V
    .registers 11

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    const/16 v1, 0x8

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v3

    if-gt v3, v1, :cond_2b

    array-length v3, p2

    rem-int/2addr v3, v0

    if-nez v3, :cond_30

    array-length v3, p2

    div-int v0, v3, v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    move v0, v2

    move v3, v2

    :goto_25
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    array-length v4, v4

    if-lt v0, v4, :cond_39

    return-void

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x8

    goto :goto_e

    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Byte array is not an encoded vector over the given finite field."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    move v4, v2

    :goto_3a
    if-lt v4, v1, :cond_49

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    aget v4, v4, v0

    invoke-virtual {p1, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v4

    if-eqz v4, :cond_5c

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_49
    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    aget v7, v6, v0

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v4

    or-int/2addr v3, v7

    aput v3, v6, v0

    add-int/lit8 v3, v4, 0x8

    move v4, v3

    move v3, v5

    goto :goto_3a

    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Byte array is not an encoded vector over the given finite field."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[I)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    array-length v0, p2

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    array-length v0, p2

    :cond_9
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_14

    invoke-static {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    return-void

    :cond_14
    aget v1, p2, v0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "Element array is not specified over the given finite field."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .registers 4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v2, 0x0

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;

    if-eqz v0, :cond_1a

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    iget-object v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result v0

    return v0

    :cond_1a
    return v2

    :cond_1b
    return v2
.end method

.method public getEncoded()[B
    .registers 9

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v0, 0x1

    :goto_4
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v3

    if-gt v3, v1, :cond_1a

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    array-length v3, v3

    mul-int/2addr v0, v3

    new-array v6, v0, [B

    move v0, v2

    move v3, v2

    :goto_14
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    array-length v4, v4

    if-lt v0, v4, :cond_1f

    return-object v6

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x8

    goto :goto_4

    :cond_1f
    move v4, v2

    :goto_20
    if-lt v4, v1, :cond_25

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_25
    add-int/lit8 v5, v3, 0x1

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    aget v7, v7, v0

    ushr-int/2addr v7, v4

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    add-int/lit8 v3, v4, 0x8

    move v4, v3

    move v3, v5

    goto :goto_20
.end method

.method public getField()Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    return-object v0
.end method

.method public getIntArrayForm()[I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isZero()Z
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    array-length v0, v0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    aget v1, v1, v0

    if-eqz v1, :cond_4

    return v2
.end method

.method public multiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .registers 7

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->getVector()[I

    move-result-object v1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    array-length v2, v1

    if-ne v0, v2, :cond_19

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_e
    array-length v3, v1

    if-lt v0, v3, :cond_22

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v0

    :cond_19
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "permutation size and vector size mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    aget v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_7
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    array-length v2, v2

    if-lt v0, v2, :cond_11

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    move v2, v1

    :goto_12
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v4

    if-lt v2, v4, :cond_22

    const/16 v2, 0x20

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_22
    and-int/lit8 v4, v2, 0x1f

    const/4 v5, 0x1

    shl-int v4, v5, v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    aget v5, v5, v0

    and-int/2addr v4, v5

    if-nez v4, :cond_36

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_36
    const/16 v4, 0x31

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_33
.end method
