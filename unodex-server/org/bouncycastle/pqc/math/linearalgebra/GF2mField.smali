.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private degree:I

.field private polynomial:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    const/16 v0, 0x20

    if-ge p1, v0, :cond_16

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1f

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->getIrreduciblePolynomial(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    return-void

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, " Error: the degree of field is too large "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, " Error: the degree of field is non-positive "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    invoke-static {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    if-ne p1, v0, :cond_17

    invoke-static {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result v0

    if-eqz v0, :cond_20

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    iput p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    return-void

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, " Error: the degree is not correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, " Error: given polynomial is reducible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_21

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([B)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    return-void

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "byte array is not an encoded finite field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "byte array is not an encoded finite field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static polyToString(I)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x1

    const-string/jumbo v0, ""

    if-eqz p0, :cond_12

    and-int/lit8 v1, p0, 0x1

    int-to-byte v1, v1

    if-eq v1, v2, :cond_16

    :goto_b
    ushr-int/lit8 v1, p0, 0x1

    move v3, v1

    move v1, v2

    :goto_f
    if-nez v3, :cond_1a

    :goto_11
    return-object v0

    :cond_12
    const-string/jumbo v0, "0"

    goto :goto_11

    :cond_16
    const-string/jumbo v0, "1"

    goto :goto_b

    :cond_1a
    and-int/lit8 v4, v3, 0x1

    int-to-byte v4, v4

    if-eq v4, v2, :cond_24

    :goto_1f
    ushr-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "+x^"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method


# virtual methods
.method public add(II)I
    .registers 4

    xor-int v0, p1, p2

    return v0
.end method

.method public elementToStr(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-string/jumbo v1, ""

    :goto_4
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    if-lt v0, v2, :cond_9

    return-object v1

    :cond_9
    int-to-byte v2, p1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_22
    ushr-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_22
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v2, 0x0

    if-nez p1, :cond_4

    :cond_3
    return v2

    :cond_4
    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    iget v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    if-eq v0, v1, :cond_11

    :cond_10
    return v2

    :cond_11
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    iget v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    return v0
.end method

.method public exp(II)I
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    if-eq p1, v1, :cond_d

    if-ltz p2, :cond_e

    move v0, v1

    :goto_9
    if-nez p2, :cond_15

    return v0

    :cond_c
    return v0

    :cond_d
    return v1

    :cond_e
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->inverse(I)I

    move-result p1

    neg-int p2, p2

    move v0, v1

    goto :goto_9

    :cond_15
    and-int/lit8 v2, p2, 0x1

    if-eq v2, v1, :cond_20

    :goto_19
    invoke-virtual {p0, p1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result p1

    ushr-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_20
    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v0

    goto :goto_19
.end method

.method public getDegree()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    return v0
.end method

.method public getEncoded()[B
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->I2OSP(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getPolynomial()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    return v0
.end method

.method public getRandomElement(Ljava/security/SecureRandom;)I
    .registers 4

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v0

    return v0
.end method

.method public getRandomNonZeroElement()I
    .registers 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getRandomNonZeroElement(Ljava/security/SecureRandom;)I

    move-result v0

    return v0
.end method

.method public getRandomNonZeroElement(Ljava/security/SecureRandom;)I
    .registers 6

    const/high16 v3, 0x100000

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    shl-int v0, v1, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v0

    :goto_c
    if-eqz v0, :cond_11

    :cond_e
    if-eq v2, v3, :cond_1e

    :goto_10
    return v0

    :cond_11
    if-ge v2, v3, :cond_e

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    shl-int v0, v1, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1e
    move v0, v1

    goto :goto_10
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    return v0
.end method

.method public inverse(I)I
    .registers 4

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->exp(II)I

    move-result v0

    return v0
.end method

.method public isElementOfThisField(I)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_c

    if-gez p1, :cond_11

    :goto_a
    move v1, v0

    :cond_b
    return v1

    :cond_c
    if-gez p1, :cond_f

    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e

    :cond_11
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    shl-int v2, v1, v2

    if-lt p1, v2, :cond_b

    goto :goto_a
.end method

.method public mult(II)I
    .registers 4

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->modMultiply(III)I

    move-result v0

    return v0
.end method

.method public sqRoot(I)I
    .registers 4

    const/4 v0, 0x1

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    if-lt v0, v1, :cond_6

    return p1

    :cond_6
    invoke-virtual {p0, p1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Finite Field GF(2^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "GF(2)[X]/<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
