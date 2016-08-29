.class public Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private perm:[I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_e

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    add-int/lit8 v0, p1, -0x1

    :goto_b
    if-gez v0, :cond_17

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    aput v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_b
.end method

.method public constructor <init>(ILjava/security/SecureRandom;)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_13

    new-array v1, p1, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    new-array v2, p1, [I

    move v1, v0

    :goto_d
    if-lt v1, p1, :cond_1c

    move v1, p1

    :goto_10
    if-lt v0, p1, :cond_21

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_21
    invoke-static {p2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v3

    add-int/lit8 v1, v1, -0x1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    aget v5, v2, v3

    aput v5, v4, v0

    aget v4, v2, v1

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public constructor <init>([B)V
    .registers 7

    const/4 v2, 0x4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v1, p1

    if-le v1, v2, :cond_28

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ceilLog256(I)I

    move-result v2

    array-length v3, p1

    mul-int v4, v1, v2

    add-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_31

    new-array v3, v1, [I

    iput-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    :goto_1d
    if-lt v0, v1, :cond_3a

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->isPermutation([I)Z

    move-result v0

    if-eqz v0, :cond_49

    return-void

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    mul-int v4, v0, v2

    add-int/lit8 v4, v4, 0x4

    invoke-static {p1, v4, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([BII)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->isPermutation([I)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "array is not a permutation vector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isPermutation([I)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    array-length v2, p1

    new-array v3, v2, [Z

    move v0, v1

    :goto_6
    if-lt v0, v2, :cond_9

    return v5

    :cond_9
    aget v4, p1, v0

    if-gez v4, :cond_e

    :cond_d
    return v1

    :cond_e
    aget v4, p1, v0

    if-ge v4, v2, :cond_d

    aget v4, p1, v0

    aget-boolean v4, v3, v4

    if-nez v4, :cond_d

    aget v4, p1, v0

    aput-boolean v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method


# virtual methods
.method public computeInverse()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;
    .registers 5

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    array-length v0, v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;-><init>(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    array-length v0, v0

    :goto_b
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_10

    return-object v1

    :cond_10
    iget-object v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    aget v3, v3, v0

    aput v0, v2, v3

    goto :goto_b
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    if-eqz v0, :cond_10

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    iget-object v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result v0

    return v0

    :cond_10
    return v1
.end method

.method public getEncoded()[B
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    array-length v1, v1

    add-int/lit8 v2, v1, -0x1

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ceilLog256(I)I

    move-result v2

    mul-int v3, v1, v2

    add-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    :goto_13
    if-lt v0, v1, :cond_16

    return-object v3

    :cond_16
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    aget v4, v4, v0

    mul-int v5, v0, v2

    add-int/lit8 v5, v5, 0x4

    invoke-static {v4, v3, v5, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public getVector()[I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;
    .registers 7

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    array-length v0, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    array-length v1, v1

    if-ne v0, v1, :cond_18

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    array-length v0, v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;-><init>(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    array-length v0, v0

    :goto_13
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_21

    return-object v1

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iget-object v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    iget-object v4, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    aget v4, v4, v0

    aget v3, v3, v4

    aput v3, v2, v0

    goto :goto_13
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    :goto_1a
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    array-length v2, v2

    if-lt v0, v2, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method
