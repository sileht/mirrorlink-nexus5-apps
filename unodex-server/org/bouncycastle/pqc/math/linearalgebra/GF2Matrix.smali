.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
.super Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
.source "Unknown"


# instance fields
.field private length:I

.field private matrix:[[I


# direct methods
.method public constructor <init>(IC)V
    .registers 4

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(ICLjava/security/SecureRandom;)V
    .registers 6

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    if-lez p1, :cond_11

    sparse-switch p2, :sswitch_data_2e

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "Unknown matrix type."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "Size of matrix is non-positive."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1a
    invoke-direct {p0, p1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->assignZeroMatrix(II)V

    :goto_1d
    return-void

    :sswitch_1e
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->assignUnitMatrix(I)V

    goto :goto_1d

    :sswitch_22
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->assignRandomLowerTriangularMatrix(ILjava/security/SecureRandom;)V

    goto :goto_1d

    :sswitch_26
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->assignRandomUpperTriangularMatrix(ILjava/security/SecureRandom;)V

    goto :goto_1d

    :sswitch_2a
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->assignRandomRegularMatrix(ILjava/security/SecureRandom;)V

    goto :goto_1d

    :sswitch_data_2e
    .sparse-switch
        0x49 -> :sswitch_1e
        0x4c -> :sswitch_22
        0x52 -> :sswitch_2a
        0x55 -> :sswitch_26
        0x5a -> :sswitch_1a
    .end sparse-switch
.end method

.method private constructor <init>(II)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    if-gtz p2, :cond_e

    :cond_5
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "size of matrix is non-positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-lez p1, :cond_5

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->assignZeroMatrix(II)V

    return-void
.end method

.method public constructor <init>(I[[I)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    aget-object v0, p2, v1

    array-length v0, v0

    add-int/lit8 v2, p1, 0x1f

    shr-int/lit8 v2, v2, 0x5

    if-ne v0, v2, :cond_27

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    array-length v0, p2

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    aget-object v0, p2, v1

    array-length v0, v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    and-int/lit8 v0, p1, 0x1f

    if-eqz v0, :cond_30

    const/4 v2, 0x1

    shl-int v0, v2, v0

    add-int/lit8 v0, v0, -0x1

    :goto_20
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-lt v1, v2, :cond_32

    iput-object p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    return-void

    :cond_27
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "Int array does not match given number of columns."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    const/4 v0, -0x1

    goto :goto_20

    :cond_32
    aget-object v2, p2, v1

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    and-int/2addr v4, v0

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_20
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->getNumColumns()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->getNumRows()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    array-length v0, v0

    new-array v0, v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    const/4 v0, 0x0

    :goto_1b
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    array-length v1, v1

    if-lt v0, v1, :cond_21

    return-void

    :cond_21
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method

.method public constructor <init>([B)V
    .registers 11

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    array-length v0, p1

    const/16 v2, 0x9

    if-lt v0, v2, :cond_2c

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    mul-int/2addr v0, v2

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-gtz v2, :cond_35

    :cond_23
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "given array is not an encoded matrix over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "given array is not an encoded matrix over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    array-length v2, p1

    add-int/lit8 v2, v2, -0x8

    if-ne v0, v2, :cond_23

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, v0, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v1

    const/4 v0, 0x1

    aput v2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    shr-int/lit8 v5, v0, 0x5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v6, v0, 0x1f

    const/16 v0, 0x8

    move v2, v0

    move v0, v1

    :goto_64
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-lt v0, v3, :cond_69

    return-void

    :cond_69
    move v3, v1

    :goto_6a
    if-lt v3, v5, :cond_72

    move v3, v1

    :goto_6d
    if-lt v3, v6, :cond_81

    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    :cond_72
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v0

    invoke-static {p1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v7

    aput v7, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_6a

    :cond_81
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v4, v0

    aget v8, v7, v5

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v3

    xor-int/2addr v2, v8

    aput v2, v7, v5

    add-int/lit8 v2, v3, 0x8

    move v3, v2

    move v2, v4

    goto :goto_6d
.end method

.method private static addToRow([I[II)V
    .registers 6

    array-length v0, p1

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ge v0, p2, :cond_6

    return-void

    :cond_6
    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p1, v0

    goto :goto_1
.end method

.method private assignRandomLowerTriangularMatrix(ILjava/security/SecureRandom;)V
    .registers 12

    const/4 v8, 0x1

    const/4 v1, 0x0

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v1

    aput v2, v4, v8

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    move v0, v1

    :goto_22
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-lt v0, v2, :cond_27

    return-void

    :cond_27
    ushr-int/lit8 v3, v0, 0x5

    and-int/lit8 v2, v0, 0x1f

    rsub-int/lit8 v4, v2, 0x1f

    shl-int v5, v8, v2

    move v2, v1

    :goto_30
    if-lt v2, v3, :cond_48

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v0

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v6

    ushr-int v4, v6, v4

    or-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v2, v3, 0x1

    :goto_41
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-lt v2, v3, :cond_55

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_48
    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v0

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v7

    aput v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_55
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v0

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_41
.end method

.method private assignRandomRegularMatrix(ILjava/security/SecureRandom;)V
    .registers 10

    const/4 v2, 0x0

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v2

    const/4 v0, 0x1

    aput v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    const/16 v1, 0x4c

    invoke-direct {v0, p1, v1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    const/16 v3, 0x55

    invoke-direct {v1, p1, v3, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-direct {v1, p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->getVector()[I

    move-result-object v3

    move v1, v2

    :goto_3f
    if-lt v1, p1, :cond_42

    return-void

    :cond_42
    iget-object v4, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v1

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget v6, v3, v1

    aget-object v5, v5, v6

    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    invoke-static {v4, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f
.end method

.method private assignRandomUpperTriangularMatrix(ILjava/security/SecureRandom;)V
    .registers 12

    const/4 v8, 0x1

    const/4 v2, 0x0

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v2

    aput v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    and-int/lit8 v0, p1, 0x1f

    if-eqz v0, :cond_2f

    shl-int v0, v8, v0

    add-int/lit8 v0, v0, -0x1

    :goto_29
    move v1, v2

    :goto_2a
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-lt v1, v3, :cond_31

    return-void

    :cond_2f
    const/4 v0, -0x1

    goto :goto_29

    :cond_31
    ushr-int/lit8 v4, v1, 0x5

    and-int/lit8 v5, v1, 0x1f

    shl-int v6, v8, v5

    move v3, v2

    :goto_38
    if-lt v3, v4, :cond_5d

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v1

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v7

    shl-int v5, v7, v5

    or-int/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v3, v4, 0x1

    :goto_49
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-lt v3, v4, :cond_66

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v1

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v3, v4

    and-int/2addr v5, v0

    aput v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_5d
    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v1

    aput v2, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_66
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v1

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_49
.end method

.method private assignUnitMatrix(I)V
    .registers 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v1

    aput v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    move v0, v1

    :goto_22
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-lt v0, v2, :cond_2b

    :goto_26
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-lt v1, v0, :cond_3c

    return-void

    :cond_2b
    move v2, v1

    :goto_2c
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-lt v2, v3, :cond_33

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v0

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_3c
    and-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v1

    ushr-int/lit8 v3, v1, 0x5

    shl-int v0, v5, v0

    aput v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_26
.end method

.method private assignZeroMatrix(II)V
    .registers 8

    const/4 v1, 0x0

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iput p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, p2, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v1

    const/4 v0, 0x1

    aput v2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    move v0, v1

    :goto_22
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-lt v0, v2, :cond_27

    return-void

    :cond_27
    move v2, v1

    :goto_28
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-lt v2, v3, :cond_2f

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_2f
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v0

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_28
.end method

.method public static createRandomRegularMatrixAndItsInverse(ILjava/security/SecureRandom;)[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .registers 16

    const/4 v0, 0x2

    new-array v4, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    add-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v5, v0, 0x5

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    const/16 v0, 0x4c

    invoke-direct {v3, p0, v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    new-instance v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    const/16 v0, 0x55

    invoke-direct {v6, p0, v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    new-instance v7, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-direct {v7, p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->getVector()[I

    move-result-object v8

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v9, 0x0

    aput p0, v2, v9

    const/4 v9, 0x1

    aput v5, v2, v9

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    const/4 v2, 0x0

    :goto_36
    if-lt v2, p0, :cond_65

    const/4 v0, 0x0

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v2, p0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    aput-object v2, v4, v0

    new-instance v8, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    const/16 v0, 0x49

    invoke-direct {v8, p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(IC)V

    const/4 v0, 0x0

    move v2, v0

    :goto_49
    if-lt v2, p0, :cond_75

    new-instance v9, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    const/16 v0, 0x49

    invoke-direct {v9, p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(IC)V

    add-int/lit8 v0, p0, -0x1

    move v3, v0

    :goto_55
    if-gez v3, :cond_a7

    const/4 v1, 0x1

    invoke-virtual {v8, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    aput-object v0, v4, v1

    return-object v4

    :cond_65
    iget-object v9, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget v10, v8, v2

    aget-object v9, v9, v10

    const/4 v10, 0x0

    aget-object v11, v1, v2

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_75
    and-int/lit8 v0, v2, 0x1f

    ushr-int/lit8 v9, v2, 0x5

    const/4 v1, 0x1

    shl-int v10, v1, v0

    add-int/lit8 v0, v2, 0x1

    move v1, v0

    :goto_7f
    if-lt v1, p0, :cond_85

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_49

    :cond_85
    iget-object v0, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, v1

    aget v0, v0, v9

    and-int/2addr v0, v10

    if-nez v0, :cond_92

    :cond_8e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7f

    :cond_92
    const/4 v0, 0x0

    :goto_93
    if-gt v0, v9, :cond_8e

    iget-object v11, v8, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v11, v11, v1

    aget v12, v11, v0

    iget-object v13, v8, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v13, v13, v2

    aget v13, v13, v0

    xor-int/2addr v12, v13

    aput v12, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    :cond_a7
    and-int/lit8 v0, v3, 0x1f

    ushr-int/lit8 v1, v3, 0x5

    const/4 v2, 0x1

    shl-int v10, v2, v0

    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_b1
    if-gez v2, :cond_b7

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_55

    :cond_b7
    iget-object v0, v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, v2

    aget v0, v0, v1

    and-int/2addr v0, v10

    if-nez v0, :cond_c4

    :cond_c0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_b1

    :cond_c4
    move v0, v1

    :goto_c5
    if-ge v0, v5, :cond_c0

    iget-object v11, v9, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v11, v11, v2

    aget v12, v11, v0

    iget-object v13, v9, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v13, v13, v3

    aget v13, v13, v0

    xor-int/2addr v12, v13

    aput v12, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c5
.end method

.method private static swapRows([[III)V
    .registers 5

    aget-object v0, p0, p1

    aget-object v1, p0, p2

    aput-object v1, p0, p1

    aput-object v0, p0, p2

    return-void
.end method


# virtual methods
.method public computeInverse()Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
    .registers 11

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-ne v0, v1, :cond_46

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v4, v5, [I

    aput v0, v4, v3

    aput v1, v4, v6

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    :goto_1d
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_4f

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v5, v5, [I

    aput v1, v5, v3

    aput v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    :goto_35
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_5a

    move v2, v3

    :goto_3a
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-lt v2, v4, :cond_65

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v0

    :cond_46
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "Matrix is not invertible."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1d

    :cond_5a
    shr-int/lit8 v4, v2, 0x5

    and-int/lit8 v5, v2, 0x1f

    aget-object v7, v1, v2

    shl-int v5, v6, v5

    aput v5, v7, v4

    goto :goto_35

    :cond_65
    shr-int/lit8 v7, v2, 0x5

    and-int/lit8 v4, v2, 0x1f

    shl-int v8, v6, v4

    aget-object v4, v0, v2

    aget v4, v4, v7

    and-int/2addr v4, v8

    if-eqz v4, :cond_7b

    :cond_72
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    :cond_74
    :goto_74
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_a1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_7b
    add-int/lit8 v4, v2, 0x1

    move v5, v3

    :goto_7e
    iget v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-lt v4, v9, :cond_8d

    if-nez v5, :cond_72

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "Matrix is not invertible."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8d
    aget-object v9, v0, v4

    aget v9, v9, v7

    and-int/2addr v9, v8

    if-nez v9, :cond_97

    :goto_94
    add-int/lit8 v4, v4, 0x1

    goto :goto_7e

    :cond_97
    invoke-static {v0, v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->swapRows([[III)V

    invoke-static {v1, v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->swapRows([[III)V

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    move v5, v6

    goto :goto_94

    :cond_a1
    if-eq v4, v2, :cond_74

    aget-object v5, v0, v4

    aget v5, v5, v7

    and-int/2addr v5, v8

    if-eqz v5, :cond_74

    aget-object v5, v0, v2

    aget-object v9, v0, v4

    invoke-static {v5, v9, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->addToRow([I[II)V

    aget-object v5, v1, v2

    aget-object v9, v1, v4

    invoke-static {v5, v9, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->addToRow([I[II)V

    goto :goto_74
.end method

.method public computeTranspose()Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
    .registers 10

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v1, v1, 0x1f

    ushr-int/lit8 v1, v1, 0x5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v2

    aput v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v1, v2

    :goto_1a
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-lt v1, v3, :cond_26

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v1

    :cond_26
    move v3, v2

    :goto_27
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-lt v3, v4, :cond_2e

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2e
    ushr-int/lit8 v4, v3, 0x5

    and-int/lit8 v5, v3, 0x1f

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v1

    aget v4, v6, v4

    ushr-int/2addr v4, v5

    and-int/lit8 v4, v4, 0x1

    ushr-int/lit8 v5, v1, 0x5

    and-int/lit8 v6, v1, 0x1f

    if-eq v4, v8, :cond_44

    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_44
    aget-object v4, v0, v3

    aget v7, v4, v5

    shl-int v6, v8, v6

    or-int/2addr v6, v7

    aput v6, v4, v5

    goto :goto_41
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    if-eqz v0, :cond_e

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-eq v0, v2, :cond_f

    :cond_d
    return v1

    :cond_e
    return v1

    :cond_f
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-ne v0, v2, :cond_d

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ne v0, v2, :cond_d

    move v0, v1

    :goto_1c
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-lt v0, v2, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v0

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_33

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_33
    return v1
.end method

.method public extendLeftCompactForm()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .registers 10

    const/4 v8, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/2addr v0, v1

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(II)V

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v1, v0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v0, v0, -0x1

    :goto_18
    if-gez v0, :cond_1b

    return-object v2

    :cond_1b
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v0

    iget-object v4, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v0

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    invoke-static {v3, v8, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v0

    shr-int/lit8 v4, v1, 0x5

    aget v5, v3, v4

    and-int/lit8 v6, v1, 0x1f

    const/4 v7, 0x1

    shl-int v6, v7, v6

    or-int/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_18
.end method

.method public extendRightCompactForm()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .registers 13

    const/4 v1, 0x0

    new-instance v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v2, v3

    invoke-direct {v6, v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(II)V

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    shr-int/lit8 v3, v0, 0x5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v7, v0, 0x1f

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    :goto_1a
    if-gez v5, :cond_1d

    return-object v6

    :cond_1d
    iget-object v0, v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, v5

    shr-int/lit8 v2, v5, 0x5

    aget v4, v0, v2

    and-int/lit8 v8, v5, 0x1f

    const/4 v9, 0x1

    shl-int v8, v9, v8

    or-int/2addr v4, v8

    aput v4, v0, v2

    if-nez v7, :cond_40

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, v5

    iget-object v2, v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v5

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3c
    :goto_3c
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_1a

    :cond_40
    move v0, v1

    move v2, v3

    :goto_42
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_70

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, v5

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v4, v4, -0x1

    aget v0, v0, v4

    iget-object v4, v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v5

    add-int/lit8 v8, v2, 0x1

    aget v9, v4, v2

    shl-int v10, v0, v7

    or-int/2addr v9, v10

    aput v9, v4, v2

    iget v2, v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v8, v2, :cond_3c

    iget-object v2, v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v5

    aget v4, v2, v8

    rsub-int/lit8 v9, v7, 0x20

    ushr-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v2, v8

    goto :goto_3c

    :cond_70
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v5

    aget v8, v4, v0

    iget-object v4, v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v9, v4, v5

    add-int/lit8 v4, v2, 0x1

    aget v10, v9, v2

    shl-int v11, v8, v7

    or-int/2addr v10, v11

    aput v10, v9, v2

    iget-object v2, v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v5

    aget v9, v2, v4

    rsub-int/lit8 v10, v7, 0x20

    ushr-int/2addr v8, v10

    or-int/2addr v8, v9

    aput v8, v2, v4

    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_42
.end method

.method public getEncoded()[B
    .registers 10

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x8

    new-array v5, v0, [B

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-static {v0, v5, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    const/4 v2, 0x4

    invoke-static {v0, v5, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    ushr-int/lit8 v6, v0, 0x5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v7, v0, 0x1f

    const/16 v0, 0x8

    move v2, v0

    move v0, v1

    :goto_25
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-lt v0, v3, :cond_2a

    return-object v5

    :cond_2a
    move v3, v1

    :goto_2b
    if-lt v3, v6, :cond_33

    move v3, v1

    :goto_2e
    if-lt v3, v7, :cond_41

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_33
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v0

    aget v4, v4, v3

    invoke-static {v4, v5, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_2b

    :cond_41
    add-int/lit8 v4, v2, 0x1

    iget-object v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v0

    aget v8, v8, v6

    ushr-int/2addr v8, v3

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    int-to-byte v8, v8

    aput-byte v8, v5, v2

    add-int/lit8 v2, v3, 0x8

    move v3, v2

    move v2, v4

    goto :goto_2e
.end method

.method public getHammingWeight()D
    .registers 16

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v10, v0, 0x1f

    if-eqz v10, :cond_16

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v0, v0, -0x1

    :goto_e
    const/4 v1, 0x0

    :goto_f
    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-lt v1, v6, :cond_19

    div-double v0, v4, v2

    return-wide v0

    :cond_16
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    goto :goto_e

    :cond_19
    const/4 v6, 0x0

    move v14, v6

    move-wide v6, v4

    move-wide v4, v2

    move v3, v14

    :goto_1e
    if-lt v3, v0, :cond_34

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v1

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v3, v3, -0x1

    aget v11, v2, v3

    const/4 v2, 0x0

    move v14, v2

    move-wide v2, v4

    move-wide v4, v6

    move v6, v14

    :goto_2f
    if-lt v6, v10, :cond_4f

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_34
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v1

    aget v8, v2, v3

    const/4 v2, 0x0

    :goto_3b
    const/16 v9, 0x20

    if-lt v2, v9, :cond_43

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1e

    :cond_43
    ushr-int v9, v8, v2

    and-int/lit8 v9, v9, 0x1

    int-to-double v12, v9

    add-double/2addr v6, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4f
    ushr-int v7, v11, v6

    and-int/lit8 v7, v7, 0x1

    int-to-double v8, v7

    add-double/2addr v8, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v2

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-wide v2, v4

    move-wide v4, v8

    goto :goto_2f
.end method

.method public getIntArray()[[I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    return-object v0
.end method

.method public getLeftSubMatrix()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .registers 9

    const/4 v4, 0x1

    const/4 v7, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-le v0, v1, :cond_37

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v0, v0, 0x1f

    shr-int/lit8 v3, v0, 0x5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v7

    aput v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v1, v1, 0x1f

    shl-int v1, v4, v1

    add-int/lit8 v1, v1, -0x1

    if-eqz v1, :cond_40

    :goto_29
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    :goto_2b
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_42

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v1

    :cond_37
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "empty submatrix"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    const/4 v1, -0x1

    goto :goto_29

    :cond_42
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v2

    aget-object v5, v0, v2

    invoke-static {v4, v7, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v4, v0, v2

    add-int/lit8 v5, v3, -0x1

    aget v6, v4, v5

    and-int/2addr v6, v1

    aput v6, v4, v5

    goto :goto_2b
.end method

.method public getLength()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    return v0
.end method

.method public getRightSubMatrix()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .registers 12

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-le v0, v2, :cond_23

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    shr-int/lit8 v3, v0, 0x5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v6, v0, 0x1f

    new-instance v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    sub-int/2addr v2, v4

    invoke-direct {v7, v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(II)V

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    :goto_20
    if-gez v5, :cond_2c

    return-object v7

    :cond_23
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "empty submatrix"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    if-nez v6, :cond_3f

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, v5

    iget-object v2, v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v5

    iget v4, v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3b
    :goto_3b
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_20

    :cond_3f
    move v0, v1

    move v2, v3

    :goto_41
    iget v4, v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_75

    iget-object v0, v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, v5

    iget v4, v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v4, v4, -0x1

    iget-object v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v5

    add-int/lit8 v9, v2, 0x1

    aget v2, v8, v2

    ushr-int/2addr v2, v6

    aput v2, v0, v4

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v9, v0, :cond_3b

    iget-object v0, v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, v5

    iget v2, v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v2, v2, -0x1

    aget v4, v0, v2

    iget-object v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v5

    aget v8, v8, v9

    rsub-int/lit8 v9, v6, 0x20

    shl-int/2addr v8, v9

    or-int/2addr v4, v8

    aput v4, v0, v2

    goto :goto_3b

    :cond_75
    iget-object v4, v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v4, v5

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v9, v4, v5

    add-int/lit8 v4, v2, 0x1

    aget v2, v9, v2

    ushr-int/2addr v2, v6

    iget-object v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v9, v9, v5

    aget v9, v9, v4

    rsub-int/lit8 v10, v6, 0x20

    shl-int/2addr v9, v10

    or-int/2addr v2, v9

    aput v2, v8, v0

    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_41
.end method

.method public getRow(I)[I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/2addr v1, v0

    const/4 v0, 0x0

    :goto_d
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-lt v0, v2, :cond_12

    return v1

    :cond_12
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public isZero()Z
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-lt v0, v2, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    move v2, v1

    :goto_9
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-lt v2, v3, :cond_10

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v0

    aget v3, v3, v2

    if-nez v3, :cond_1b

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1b
    return v1
.end method

.method public leftMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
    .registers 7

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->getVector()[I

    move-result-object v1

    array-length v0, v1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ne v0, v2, :cond_1b

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    new-array v2, v0, [[I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    :goto_f
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_24

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v0

    :cond_1b
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget v4, v1, v0

    aget-object v3, v3, v4

    invoke-static {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_f
.end method

.method public leftMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .registers 14

    const/4 v1, 0x1

    const/4 v4, 0x0

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    if-eqz v0, :cond_2f

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;->length:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ne v0, v2, :cond_38

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object v6

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    new-array v7, v0, [I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    shr-int/lit8 v8, v0, 0x5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v0, v0, 0x1f

    shl-int v9, v1, v0

    move v5, v4

    move v0, v4

    :goto_22
    if-lt v5, v8, :cond_41

    move v2, v0

    :goto_25
    if-ne v1, v9, :cond_66

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    invoke-direct {v0, v7, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object v0

    :cond_2f
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "vector is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    move v2, v0

    move v0, v1

    :cond_43
    aget v3, v6, v5

    and-int/2addr v3, v0

    if-nez v3, :cond_53

    :cond_48
    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_43

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v2

    goto :goto_22

    :cond_53
    move v3, v4

    :goto_54
    iget v10, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v3, v10, :cond_48

    aget v10, v7, v3

    iget-object v11, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v11, v11, v2

    aget v11, v11, v3

    xor-int/2addr v10, v11

    aput v10, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    :cond_66
    aget v0, v6, v8

    and-int/2addr v0, v1

    if-nez v0, :cond_71

    :cond_6b
    add-int/lit8 v0, v2, 0x1

    shl-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_25

    :cond_71
    move v0, v4

    :goto_72
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v0, v3, :cond_6b

    aget v3, v7, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v2

    aget v5, v5, v0

    xor-int/2addr v3, v5

    aput v3, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_72
.end method

.method public leftMultiplyLeftCompactForm(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .registers 13

    const/4 v1, 0x1

    const/4 v4, 0x0

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    if-eqz v0, :cond_3a

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;->length:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ne v0, v2, :cond_43

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object v6

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    new-array v7, v0, [I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    ushr-int/lit8 v8, v0, 0x5

    move v5, v4

    move v0, v4

    :goto_23
    if-lt v5, v8, :cond_4c

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v2, v2, 0x1f

    shl-int v5, v1, v2

    move v2, v1

    move v3, v0

    :goto_2d
    if-ne v2, v5, :cond_83

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v1, v2

    invoke-direct {v0, v7, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object v0

    :cond_3a
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "vector is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    move v2, v0

    move v0, v1

    :cond_4e
    aget v3, v6, v5

    and-int/2addr v3, v0

    if-nez v3, :cond_5e

    :goto_53
    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4e

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v2

    goto :goto_23

    :cond_5e
    move v3, v4

    :goto_5f
    iget v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-lt v3, v9, :cond_75

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v3, v2

    ushr-int/lit8 v3, v3, 0x5

    iget v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v9, v2

    and-int/lit8 v9, v9, 0x1f

    aget v10, v7, v3

    shl-int v9, v1, v9

    or-int/2addr v9, v10

    aput v9, v7, v3

    goto :goto_53

    :cond_75
    aget v9, v7, v3

    iget-object v10, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v10, v10, v2

    aget v10, v10, v3

    xor-int/2addr v9, v10

    aput v9, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    :cond_83
    aget v0, v6, v8

    and-int/2addr v0, v2

    if-nez v0, :cond_8e

    :goto_88
    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2d

    :cond_8e
    move v0, v4

    :goto_8f
    iget v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-lt v0, v9, :cond_a5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v0, v3

    ushr-int/lit8 v0, v0, 0x5

    iget v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v9, v3

    and-int/lit8 v9, v9, 0x1f

    aget v10, v7, v0

    shl-int v9, v1, v9

    or-int/2addr v9, v10

    aput v9, v7, v0

    goto :goto_88

    :cond_a5
    aget v9, v7, v0

    iget-object v10, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v10, v10, v3

    aget v10, v10, v0

    xor-int/2addr v9, v10

    aput v9, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8f
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
    .registers 15

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    if-eqz v0, :cond_26

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-ne v0, v1, :cond_2f

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    new-instance v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numColumns:I

    invoke-direct {v7, v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(II)V

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v8, v1, 0x1f

    if-eqz v8, :cond_38

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v1, v1, -0x1

    :goto_20
    const/4 v2, 0x0

    :goto_21
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-lt v2, v3, :cond_3b

    return-object v7

    :cond_26
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "matrix is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    goto :goto_20

    :cond_3b
    const/4 v4, 0x0

    const/4 v3, 0x0

    move v6, v3

    :goto_3e
    if-lt v6, v1, :cond_52

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v2

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v3, v5

    const/4 v3, 0x0

    move v5, v4

    move v4, v3

    :goto_4d
    if-lt v4, v8, :cond_86

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_52
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v2

    aget v9, v3, v6

    const/4 v3, 0x0

    move v5, v4

    move v4, v3

    :goto_5b
    const/16 v3, 0x20

    if-lt v4, v3, :cond_64

    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v4, v5

    goto :goto_3e

    :cond_64
    const/4 v3, 0x1

    shl-int/2addr v3, v4

    and-int/2addr v3, v9

    if-nez v3, :cond_6f

    :cond_69
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_5b

    :cond_6f
    const/4 v3, 0x0

    :goto_70
    iget v10, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v3, v10, :cond_69

    iget-object v10, v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v10, v10, v2

    aget v11, v10, v3

    iget-object v12, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v12, v12, v5

    aget v12, v12, v3

    xor-int/2addr v11, v12

    aput v11, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_70

    :cond_86
    const/4 v3, 0x1

    shl-int/2addr v3, v4

    and-int/2addr v3, v6

    if-nez v3, :cond_91

    :cond_8b
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_4d

    :cond_91
    const/4 v3, 0x0

    :goto_92
    iget v9, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v3, v9, :cond_8b

    iget-object v9, v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v9, v9, v2

    aget v10, v9, v3

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v11, v11, v5

    aget v11, v11, v3

    xor-int/2addr v10, v11

    aput v10, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_92
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
    .registers 13

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->getVector()[I

    move-result-object v2

    array-length v0, v2

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-ne v0, v1, :cond_1a

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    invoke-direct {v3, v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(II)V

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_17
    if-gez v1, :cond_23

    return-object v3

    :cond_1a
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    ushr-int/lit8 v4, v1, 0x5

    and-int/lit8 v5, v1, 0x1f

    aget v0, v2, v1

    ushr-int/lit8 v6, v0, 0x5

    aget v0, v2, v1

    and-int/lit8 v7, v0, 0x1f

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    :goto_31
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_39

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_17

    :cond_39
    iget-object v8, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v0

    aget v9, v8, v4

    iget-object v10, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v10, v10, v0

    aget v10, v10, v6

    ushr-int/2addr v10, v7

    and-int/lit8 v10, v10, 0x1

    shl-int/2addr v10, v5

    or-int/2addr v9, v10

    aput v9, v8, v4

    goto :goto_31
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .registers 11

    const/4 v8, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    if-eqz v0, :cond_27

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;->length:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-ne v0, v2, :cond_30

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object v5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v0, v0, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    new-array v6, v0, [I

    move v0, v1

    :goto_1b
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-lt v0, v2, :cond_39

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v0, v6, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object v0

    :cond_27
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "vector is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    move v2, v1

    move v3, v1

    :goto_3b
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-lt v2, v4, :cond_4a

    move v2, v1

    move v4, v1

    :goto_41
    const/16 v7, 0x20

    if-lt v2, v7, :cond_57

    if-eq v4, v8, :cond_5f

    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_4a
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v0

    aget v4, v4, v2

    aget v7, v5, v2

    and-int/2addr v4, v7

    xor-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_57
    ushr-int v7, v3, v2

    and-int/lit8 v7, v7, 0x1

    xor-int/2addr v4, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_5f
    ushr-int/lit8 v2, v0, 0x5

    aget v3, v6, v2

    and-int/lit8 v4, v0, 0x1f

    shl-int v4, v8, v4

    or-int/2addr v3, v4

    aput v3, v6, v2

    goto :goto_47
.end method

.method public rightMultiplyRightCompactForm(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .registers 15

    const/4 v12, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    if-eqz v0, :cond_32

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;->length:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/2addr v2, v3

    if-ne v0, v2, :cond_3b

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object v7

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v0, v0, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    new-array v8, v0, [I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    shr-int/lit8 v4, v0, 0x5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v9, v0, 0x1f

    move v0, v1

    :goto_26
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-lt v0, v2, :cond_44

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object v0

    :cond_32
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "vector is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    shr-int/lit8 v2, v0, 0x5

    aget v2, v7, v2

    and-int/lit8 v3, v0, 0x1f

    ushr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    if-nez v9, :cond_61

    move v3, v4

    move v6, v2

    move v2, v1

    :goto_52
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-lt v2, v5, :cond_9e

    :goto_56
    move v2, v1

    move v3, v1

    :goto_58
    const/16 v5, 0x20

    if-lt v2, v5, :cond_af

    if-eq v3, v12, :cond_b7

    :goto_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_61
    move v3, v4

    move v6, v2

    move v2, v1

    :goto_64
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v5, v5, -0x1

    if-lt v2, v5, :cond_7f

    add-int/lit8 v5, v3, 0x1

    aget v2, v7, v3

    ushr-int/2addr v2, v9

    array-length v3, v7

    if-lt v5, v3, :cond_97

    :goto_72
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v0

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v5, v5, -0x1

    aget v3, v3, v5

    and-int/2addr v2, v3

    xor-int/2addr v6, v2

    goto :goto_56

    :cond_7f
    add-int/lit8 v5, v3, 0x1

    aget v3, v7, v3

    ushr-int/2addr v3, v9

    aget v10, v7, v5

    rsub-int/lit8 v11, v9, 0x20

    shl-int/2addr v10, v11

    or-int/2addr v3, v10

    iget-object v10, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v10, v10, v0

    aget v10, v10, v2

    and-int/2addr v3, v10

    xor-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    move v6, v3

    move v3, v5

    goto :goto_64

    :cond_97
    aget v3, v7, v5

    rsub-int/lit8 v5, v9, 0x20

    shl-int/2addr v3, v5

    or-int/2addr v2, v3

    goto :goto_72

    :cond_9e
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v0

    aget v10, v5, v2

    add-int/lit8 v5, v3, 0x1

    aget v3, v7, v3

    and-int/2addr v3, v10

    xor-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    move v6, v3

    move v3, v5

    goto :goto_52

    :cond_af
    and-int/lit8 v5, v6, 0x1

    xor-int/2addr v3, v5

    ushr-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    :cond_b7
    shr-int/lit8 v2, v0, 0x5

    aget v3, v8, v2

    and-int/lit8 v5, v0, 0x1f

    shl-int v5, v12, v5

    or-int/2addr v3, v5

    aput v3, v8, v2

    goto :goto_5e
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    const/16 v11, 0x31

    const/16 v10, 0x30

    const/16 v9, 0x20

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v5, v0, 0x1f

    if-eqz v5, :cond_20

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v0, v0, -0x1

    :goto_11
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    :goto_17
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-lt v1, v3, :cond_23

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    goto :goto_11

    :cond_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v4, v2

    :goto_3b
    if-lt v4, v0, :cond_52

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v1

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v4, v4, -0x1

    aget v4, v3, v4

    move v3, v2

    :goto_48
    if-lt v3, v5, :cond_72

    const/16 v3, 0xa

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_52
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v1

    aget v7, v3, v4

    move v3, v2

    :goto_59
    if-lt v3, v9, :cond_62

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3b

    :cond_62
    ushr-int v8, v7, v3

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_6e

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :cond_6e
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6b

    :cond_72
    ushr-int v7, v4, v3

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7e

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    :cond_7e
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7b
.end method
