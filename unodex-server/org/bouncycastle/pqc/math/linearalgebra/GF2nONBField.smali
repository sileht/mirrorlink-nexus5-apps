.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;
.super Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;
.source "Unknown"


# static fields
.field private static final MAXLONG:I = 0x40


# instance fields
.field private mBit:I

.field private mLength:I

.field mMult:[[I

.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;-><init>()V

    if-lt p1, v2, :cond_45

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    div-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mLength:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mBit:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mBit:I

    if-eqz v0, :cond_4e

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mLength:I

    :goto_22
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->computeType()V

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-lt v0, v2, :cond_53

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\nThe type of this field is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "k must be at least 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mBit:I

    goto :goto_22

    :cond_53
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v3, v6, [I

    aput v0, v3, v1

    aput v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    move v0, v1

    :goto_66
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-lt v0, v2, :cond_7f

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->computeMultMatrix()V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->computeFieldPolynomial()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->fields:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->matrices:Ljava/util/Vector;

    return-void

    :cond_7f
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    aget-object v2, v2, v0

    aput v4, v2, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    aget-object v2, v2, v0

    aput v4, v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_66
.end method

.method private computeMultMatrix()V
    .registers 13

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "bisher nur fuer Gausssche Normalbasen implementiert"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    mul-int/2addr v0, v2

    add-int/lit8 v7, v0, 0x1

    new-array v8, v7, [I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-eq v0, v1, :cond_41

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-eq v0, v11, :cond_43

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->elementOfOrder(II)I

    move-result v0

    :goto_2a
    move v2, v3

    move v4, v1

    :goto_2c
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-lt v2, v5, :cond_46

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-eq v0, v1, :cond_61

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-eq v0, v11, :cond_e5

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "only type 1 or type 2 implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    move v0, v1

    goto :goto_2a

    :cond_43
    add-int/lit8 v0, v7, -0x1

    goto :goto_2a

    :cond_46
    move v5, v3

    move v6, v4

    :goto_48
    iget v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-lt v5, v9, :cond_53

    mul-int/2addr v4, v0

    rem-int/2addr v4, v7

    if-ltz v4, :cond_5f

    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_53
    aput v5, v8, v6

    shl-int/lit8 v6, v6, 0x1

    rem-int/2addr v6, v7

    if-ltz v6, :cond_5d

    :goto_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    :cond_5d
    add-int/2addr v6, v7

    goto :goto_5a

    :cond_5f
    add-int/2addr v4, v7

    goto :goto_50

    :cond_61
    move v0, v1

    :goto_62
    add-int/lit8 v2, v7, -0x1

    if-lt v0, v2, :cond_6e

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    shr-int/lit8 v2, v0, 0x1

    move v0, v1

    :goto_6b
    if-le v0, v2, :cond_9a

    :cond_6d
    return-void

    :cond_6e
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v4, v0, 0x1

    aget v4, v8, v4

    aget-object v2, v2, v4

    aget v2, v2, v3

    if-eq v2, v10, :cond_8b

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v4, v0, 0x1

    aget v4, v8, v4

    aget-object v2, v2, v4

    sub-int v4, v7, v0

    aget v4, v8, v4

    aput v4, v2, v1

    :goto_88
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    :cond_8b
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v4, v0, 0x1

    aget v4, v8, v4

    aget-object v2, v2, v4

    sub-int v4, v7, v0

    aget v4, v8, v4

    aput v4, v2, v3

    goto :goto_88

    :cond_9a
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    aget v4, v4, v3

    if-eq v4, v10, :cond_cb

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    add-int v5, v2, v0

    add-int/lit8 v5, v5, -0x1

    aput v5, v4, v1

    :goto_b0
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int v5, v2, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    aget v4, v4, v3

    if-eq v4, v10, :cond_d8

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int v5, v2, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, -0x1

    aput v5, v4, v1

    :goto_c8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    :cond_cb
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    add-int v5, v2, v0

    add-int/lit8 v5, v5, -0x1

    aput v5, v4, v3

    goto :goto_b0

    :cond_d8
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int v5, v2, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, -0x1

    aput v5, v4, v3

    goto :goto_c8

    :cond_e5
    move v0, v1

    :goto_e6
    add-int/lit8 v2, v7, -0x1

    if-ge v0, v2, :cond_6d

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v4, v0, 0x1

    aget v4, v8, v4

    aget-object v2, v2, v4

    aget v2, v2, v3

    if-eq v2, v10, :cond_107

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v4, v0, 0x1

    aget v4, v8, v4

    aget-object v2, v2, v4

    sub-int v4, v7, v0

    aget v4, v8, v4

    aput v4, v2, v1

    :goto_104
    add-int/lit8 v0, v0, 0x1

    goto :goto_e6

    :cond_107
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v4, v0, 0x1

    aget v4, v8, v4

    aget-object v2, v2, v4

    sub-int v4, v7, v0

    aget v4, v8, v4

    aput v4, v2, v3

    goto :goto_104
.end method

.method private computeType()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_18

    iput v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    :goto_b
    if-ne v0, v3, :cond_21

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-eq v0, v3, :cond_47

    :cond_17
    :goto_17
    return-void

    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The extension degree is divisible by 8!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->isPrime(I)Z

    move-result v2

    if-nez v2, :cond_35

    :goto_2e
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    goto :goto_b

    :cond_35
    invoke-static {v4, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->order(II)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    mul-int/2addr v1, v2

    div-int v0, v1, v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->gcd(II)I

    move-result v0

    goto :goto_2e

    :cond_47
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->isPrime(I)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {v4, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->order(II)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    shl-int/lit8 v1, v1, 0x1

    div-int v0, v1, v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->gcd(II)I

    move-result v0

    if-ne v0, v3, :cond_17

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    goto :goto_17
.end method

.method private elementOfOrder(II)I
    .registers 7

    const/4 v1, 0x0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    :cond_6
    :goto_6
    if-eqz v1, :cond_17

    invoke-static {v1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->order(II)I

    move-result v0

    :goto_c
    rem-int v3, v0, p1

    if-eqz v3, :cond_25

    :cond_10
    :goto_10
    if-eqz v1, :cond_2e

    invoke-static {v1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->order(II)I

    move-result v0

    goto :goto_c

    :cond_17
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    rem-int v1, v0, v1

    if-gez v1, :cond_6

    add-int/lit8 v0, p2, -0x1

    add-int/2addr v1, v0

    goto :goto_6

    :cond_25
    if-eqz v0, :cond_10

    div-int v3, p1, v0

    const/4 v0, 0x2

    move v2, v1

    :goto_2b
    if-le v0, v3, :cond_3c

    return v2

    :cond_2e
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    rem-int v1, v0, v1

    if-gez v1, :cond_10

    add-int/lit8 v0, p2, -0x1

    add-int/2addr v1, v0

    goto :goto_10

    :cond_3c
    mul-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b
.end method


# virtual methods
.method protected computeCOBMatrix(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;)V
    .registers 9

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    if-ne v0, v2, :cond_4b

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    new-array v3, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move v0, v1

    :goto_c
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-lt v0, v2, :cond_54

    :cond_10
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getRandomRoot(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_10

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    new-array v4, v2, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v0, v4, v1

    const/4 v0, 0x1

    :goto_29
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-lt v0, v2, :cond_60

    move v0, v1

    :goto_2e
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-lt v0, v2, :cond_6d

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->fields:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->matrices:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->fields:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->matrices:Ljava/util/Vector;

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->invertMatrix([Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "GF2nField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    invoke-direct {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_60
    add-int/lit8 v2, v0, -0x1

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->square()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    move-result-object v2

    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_6d
    move v2, v1

    :goto_6e
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-lt v2, v5, :cond_75

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_75
    aget-object v5, v4, v0

    invoke-virtual {v5, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->testBit(I)Z

    move-result v5

    if-nez v5, :cond_80

    :goto_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    :cond_80
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    goto :goto_7d
.end method

.method protected computeFieldPolynomial()V
    .registers 6

    const/4 v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-eq v1, v0, :cond_b

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    :goto_a
    return-void

    :cond_b
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v2, "ALL"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    goto :goto_a

    :cond_1a
    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v3, "ONE"

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    add-int/lit8 v3, v3, 0x1

    const-string/jumbo v4, "X"

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    move-object v3, v2

    :goto_36
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-lt v0, v2, :cond_3d

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    goto :goto_a

    :cond_3d
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    add-int/lit8 v0, v0, 0x1

    move-object v3, v1

    move-object v1, v2

    goto :goto_36
.end method

.method getONBBit()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mBit:I

    return v0
.end method

.method getONBLength()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mLength:I

    return v0
.end method

.method protected getRandomRoot(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;
    .registers 9

    const/4 v6, 0x0

    const/4 v1, 0x1

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v2, p1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v0

    move-object v3, v2

    :goto_c
    if-gt v0, v1, :cond_13

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->at(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-direct {v0, p0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;Ljava/util/Random;)V

    new-instance v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    const/4 v2, 0x2

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(ILorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;)V

    invoke-virtual {v4, v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->set(ILorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;)V

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    move-object v2, v0

    move v0, v1

    :goto_31
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    add-int/lit8 v5, v5, -0x1

    if-le v0, v5, :cond_57

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->gcd(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v0

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v4

    if-eqz v0, :cond_13

    if-eq v0, v4, :cond_13

    shl-int/lit8 v0, v0, 0x1

    if-gt v0, v4, :cond_62

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    :goto_50
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v2

    move-object v3, v0

    move v0, v2

    goto :goto_c

    :cond_57
    invoke-virtual {v2, v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->multiplyAndReduce(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->add(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_62
    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->quotient(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    goto :goto_50
.end method

.method invMatrix([[I)[[I
    .registers 9

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v4, v6, [I

    aput v0, v4, v2

    aput v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v4, v6, [I

    aput v0, v4, v2

    aput v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v1, v2

    :goto_28
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-lt v1, v3, :cond_34

    :goto_2c
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-lt v2, v0, :cond_3b

    const/4 v0, 0x0

    check-cast v0, [[I

    return-object v0

    :cond_34
    aget-object v3, v0, v1

    aput v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_3b
    move v0, v2

    :goto_3c
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-lt v0, v1, :cond_43

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_43
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v2

    aget-object v1, p1, v1

    aget-object v3, p1, v2

    aget v3, v3, v2

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c
.end method
