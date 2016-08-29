.class public final Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;,
        Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MatrixSet;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSystematicForm(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;
    .registers 10

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->getNumColumns()I

    move-result v5

    const/4 v0, 0x0

    move-object v2, v0

    :goto_7
    new-instance v6, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-direct {v6, v5, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    invoke-virtual {p0, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->getLeftSubMatrix()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v7

    const/4 v3, 0x1

    :try_start_17
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->computeInverse()Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    :try_end_1d
    .catch Ljava/lang/ArithmeticException; {:try_start_17 .. :try_end_1d} :catch_22

    move v2, v3

    :goto_1e
    if-nez v2, :cond_26

    move-object v2, v1

    goto :goto_7

    :catch_22
    move-exception v1

    move-object v1, v2

    move v2, v4

    goto :goto_1e

    :cond_26
    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->getRightSubMatrix()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;

    invoke-direct {v1, v7, v0, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)V

    return-object v1
.end method

.method public static createCanonicalCheckMatrix(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .registers 15

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v5

    const/4 v0, 0x1

    shl-int v6, v0, v5

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getDegree()I

    move-result v7

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v7, v1, v2

    const/4 v2, 0x1

    aput v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v7, v2, v3

    const/4 v3, 0x1

    aput v6, v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    const/4 v2, 0x0

    :goto_2e
    if-lt v2, v6, :cond_59

    const/4 v2, 0x1

    move v3, v2

    :goto_32
    if-lt v3, v7, :cond_69

    const/4 v2, 0x0

    move v4, v2

    :goto_36
    if-lt v4, v7, :cond_81

    mul-int v1, v7, v5

    add-int/lit8 v2, v6, 0x1f

    ushr-int/lit8 v2, v2, 0x5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v8, 0x0

    aput v1, v4, v8

    const/4 v1, 0x1

    aput v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    const/4 v2, 0x0

    move v4, v2

    :goto_51
    if-lt v4, v6, :cond_ae

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v0, v6, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v0

    :cond_59
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->evaluateAt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_69
    const/4 v2, 0x0

    :goto_6a
    if-lt v2, v6, :cond_70

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_32

    :cond_70
    aget-object v4, v1, v3

    add-int/lit8 v8, v3, -0x1

    aget-object v8, v1, v8

    aget v8, v8, v2

    invoke-virtual {p0, v8, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v8

    aput v8, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    :cond_81
    const/4 v2, 0x0

    move v3, v2

    :goto_83
    if-lt v3, v6, :cond_89

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_36

    :cond_89
    const/4 v2, 0x0

    :goto_8a
    if-le v2, v4, :cond_90

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_83

    :cond_90
    aget-object v8, v0, v4

    aget-object v9, v0, v4

    aget v9, v9, v3

    aget-object v10, v1, v2

    aget v10, v10, v3

    add-int v11, v7, v2

    sub-int/2addr v11, v4

    invoke-virtual {p1, v11}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->add(II)I

    move-result v9

    aput v9, v8, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8a

    :cond_ae
    ushr-int/lit8 v8, v4, 0x5

    and-int/lit8 v2, v4, 0x1f

    const/4 v3, 0x1

    shl-int v9, v3, v2

    const/4 v2, 0x0

    move v3, v2

    :goto_b7
    if-lt v3, v7, :cond_bd

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_51

    :cond_bd
    aget-object v2, v0, v3

    aget v10, v2, v4

    const/4 v2, 0x0

    :goto_c2
    if-lt v2, v5, :cond_c8

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_b7

    :cond_c8
    ushr-int v11, v10, v2

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_d1

    :goto_ce
    add-int/lit8 v2, v2, 0x1

    goto :goto_c2

    :cond_d1
    add-int/lit8 v11, v3, 0x1

    mul-int/2addr v11, v5

    sub-int/2addr v11, v2

    add-int/lit8 v11, v11, -0x1

    aget-object v11, v1, v11

    aget v12, v11, v8

    xor-int/2addr v12, v9

    aput v12, v11, v8

    goto :goto_ce
.end method

.method public static syndromeDecode(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;
    .registers 11

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v1

    shl-int v1, v6, v1

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->isZero()Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    return-object v2

    :cond_14
    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->toExtensionFieldVector(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;)V

    invoke-virtual {v3, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modInverse(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->addMonomial(I)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    invoke-virtual {v3, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modSquareRootMatrix([Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modPolynomialToFracton(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    aget-object v4, v3, v0

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v4

    aget-object v5, v3, v6

    aget-object v3, v3, v6

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithMonomial(I)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getHeadCoefficient()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement(I)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    :goto_51
    if-ge v0, v1, :cond_13

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->evaluateAt(I)I

    move-result v4

    if-eqz v4, :cond_5c

    :goto_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_5c
    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->setBit(I)V

    goto :goto_59
.end method
