.class public Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private A:[[S

.field x:[S


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeZerosAbove()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    :goto_5
    if-gtz v1, :cond_8

    return-void

    :cond_8
    add-int/lit8 v0, v1, -0x1

    move v2, v0

    :goto_b
    if-gez v2, :cond_10

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_10
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v0, v0, v2

    aget-short v3, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v0, v0, v1

    aget-short v0, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v4

    if-eqz v4, :cond_2e

    move v0, v1

    :goto_23
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    if-lt v0, v5, :cond_37

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_b

    :cond_2e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The matrix is not invertible"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v1

    aget-short v5, v5, v0

    invoke-static {v5, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    invoke-static {v3, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v2

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v7, v7, v2

    aget-short v7, v7, v0

    invoke-static {v7, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v5

    int-to-short v5, v5

    aput-short v5, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_23
.end method

.method private computeZerosUnder(Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_10

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    :goto_8
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_16

    return-void

    :cond_10
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_8

    :cond_16
    add-int/lit8 v2, v1, 0x1

    :goto_18
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v3

    if-lt v2, v3, :cond_20

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_20
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v3, v2

    aget-short v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v3, v1

    aget-short v3, v3, v1

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v5

    if-eqz v5, :cond_38

    move v3, v1

    :goto_33
    if-lt v3, v0, :cond_41

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Matrix not invertible! We have to choose another one!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v1

    aget-short v6, v6, v3

    invoke-static {v6, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    invoke-static {v4, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v7, v7, v2

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v8, v8, v2

    aget-short v8, v8, v3

    invoke-static {v8, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v6

    int-to-short v6, v6

    aput-short v6, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_33
.end method

.method private substitute()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-short v0, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v4, v4

    aget-short v3, v3, v4

    invoke-static {v3, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v0

    int-to-short v0, v0

    aput-short v0, v1, v2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    move v2, v0

    :goto_38
    if-gez v2, :cond_44

    return-void

    :cond_3b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The equation system is not solvable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v0, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v1, v1

    aget-short v1, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, v0

    :goto_50
    add-int/lit8 v0, v0, -0x1

    if-gt v0, v2, :cond_6d

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v0, v0, v2

    aget-short v0, v0, v2

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v0

    if-eqz v0, :cond_80

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v0

    int-to-short v0, v0

    aput-short v0, v3, v2

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_38

    :cond_6d
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v3, v2

    aget-short v3, v3, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S

    aget-short v4, v4, v0

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v3

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v1

    goto :goto_50

    :cond_80
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not solvable equation system"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addSquareMatrix([[S[[S)[[S
    .registers 10

    const/4 v2, 0x0

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_e

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Addition is not possible!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    aget-object v0, p1, v2

    array-length v0, v0

    aget-object v1, p2, v2

    array-length v1, v1

    if-ne v0, v1, :cond_5

    array-length v0, p1

    array-length v1, p1

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v2

    const/4 v0, 0x1

    aput v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    move v1, v2

    :goto_29
    array-length v3, p1

    if-lt v1, v3, :cond_2d

    return-object v0

    :cond_2d
    move v3, v2

    :goto_2e
    array-length v4, p2

    if-lt v3, v4, :cond_34

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_34
    aget-object v4, v0, v1

    aget-object v5, p1, v1

    aget-short v5, v5, v3

    aget-object v6, p2, v1

    aget-short v6, v6, v3

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v5

    int-to-short v5, v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e
.end method

.method public addVect([S[S)[S
    .registers 7

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_c

    array-length v0, p1

    new-array v1, v0, [S

    const/4 v0, 0x0

    :goto_8
    array-length v2, v1

    if-lt v0, v2, :cond_15

    return-object v1

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Multiplication is not possible!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    aget-short v2, p1, v0

    aget-short v3, p2, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public inverse([[S)[[S
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    array-length v0, p1

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v0, 0x1

    aput v2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, p1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    array-length v2, v2

    if-ne v0, v2, :cond_4e

    move v2, v1

    :goto_20
    array-length v0, p1

    if-lt v2, v0, :cond_5c

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->computeZerosUnder(Z)V

    move v2, v1

    :goto_28
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, v0

    if-lt v2, v0, :cond_8d

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->computeZerosAbove()V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v2, v2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v0, 0x1

    aput v2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    move v2, v1

    :goto_48
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v1, v1

    if-lt v2, v1, :cond_b6

    return-object v0

    :cond_4e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The matrix is not invertible. Please choose another one!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_57
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_57} :catch_57

    :catch_57
    move-exception v0

    const/4 v0, 0x0

    check-cast v0, [[S

    return-object v0

    :cond_5c
    move v0, v1

    :goto_5d
    :try_start_5d
    array-length v3, p1

    if-lt v0, v3, :cond_75

    array-length v0, p1

    :goto_61
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    if-lt v0, v3, :cond_83

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v0, v0, v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v3

    add-int/2addr v3, v2

    const/4 v4, 0x1

    aput-short v4, v0, v3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_20

    :cond_75
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v3, v2

    aget-object v4, p1, v2

    aget-short v4, v4, v0

    int-to-short v4, v4

    aput-short v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_83
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v3, v2

    const/4 v4, 0x0

    aput-short v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    :cond_8d
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v0, v0, v2

    aget-short v0, v0, v2

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v3

    move v0, v2

    :goto_98
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    if-lt v0, v4, :cond_a2

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_a2
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v2

    aget-short v5, v5, v0

    invoke-static {v5, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    int-to-short v5, v5

    aput-short v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_98

    :cond_b6
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v1, v1

    :goto_b9
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    if-lt v1, v3, :cond_c4

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_48

    :cond_c4
    aget-object v3, v0, v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v4, v4

    sub-int v4, v1, v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v2

    aget-short v5, v5, v1

    int-to-short v5, v5

    aput-short v5, v3, v4
    :try_end_d4
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_d4} :catch_57

    add-int/lit8 v1, v1, 0x1

    goto :goto_b9
.end method

.method public multMatrix(S[[S)[[S
    .registers 9

    const/4 v2, 0x0

    array-length v0, p2

    aget-object v1, p2, v2

    array-length v1, v1

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v2

    const/4 v0, 0x1

    aput v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    move v1, v2

    :goto_16
    array-length v3, p2

    if-lt v1, v3, :cond_1a

    return-object v0

    :cond_1a
    move v3, v2

    :goto_1b
    aget-object v4, p2, v2

    array-length v4, v4

    if-lt v3, v4, :cond_23

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_23
    aget-object v4, v0, v1

    aget-object v5, p2, v1

    aget-short v5, v5, v3

    invoke-static {p1, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    int-to-short v5, v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b
.end method

.method public multVect(S[S)[S
    .registers 6

    array-length v0, p2

    new-array v1, v0, [S

    const/4 v0, 0x0

    :goto_4
    array-length v2, v1

    if-lt v0, v2, :cond_8

    return-object v1

    :cond_8
    aget-short v2, p2, v0

    invoke-static {p1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public multVects([S[S)[[S
    .registers 10

    const/4 v2, 0x0

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1c

    array-length v0, p1

    array-length v1, p2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v2

    const/4 v0, 0x1

    aput v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    move v1, v2

    :goto_18
    array-length v3, p1

    if-lt v1, v3, :cond_25

    return-object v0

    :cond_1c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Multiplication is not possible!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    move v3, v2

    :goto_26
    array-length v4, p2

    if-lt v3, v4, :cond_2c

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2c
    aget-object v4, v0, v1

    aget-short v5, p1, v1

    aget-short v6, p2, v3

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    int-to-short v5, v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_26
.end method

.method public multiplyMatrix([[S[S)[S
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v1, 0x0

    aget-object v0, p1, v1

    array-length v0, v0

    array-length v2, p2

    if-ne v0, v2, :cond_f

    array-length v0, p1

    new-array v3, v0, [S

    move v0, v1

    :goto_b
    array-length v2, p1

    if-lt v0, v2, :cond_18

    return-object v3

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Multiplication is not possible!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    move v2, v1

    :goto_19
    array-length v4, p2

    if-lt v2, v4, :cond_1f

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1f
    aget-object v4, p1, v0

    aget-short v4, v4, v2

    aget-short v5, p2, v2

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v4

    aget-short v5, v3, v0

    invoke-static {v5, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v4

    int-to-short v4, v4

    aput-short v4, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method public multiplyMatrix([[S[[S)[[S
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v1, 0x0

    aget-object v0, p1, v1

    array-length v0, v0

    array-length v2, p2

    if-ne v0, v2, :cond_24

    array-length v0, p1

    aget-object v2, p2, v1

    array-length v2, v2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v1

    const/4 v0, 0x1

    aput v2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    move v0, v1

    :goto_1e
    array-length v2, p1

    if-lt v0, v2, :cond_2d

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    return-object v0

    :cond_24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Multiplication is not possible!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    move v2, v1

    :goto_2e
    array-length v3, p2

    if-lt v2, v3, :cond_34

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_34
    move v3, v1

    :goto_35
    aget-object v4, p2, v1

    array-length v4, v4

    if-lt v3, v4, :cond_3d

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_3d
    aget-object v4, p1, v0

    aget-short v4, v4, v2

    aget-object v5, p2, v2

    aget-short v5, v5, v3

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v0

    aget-short v6, v6, v3

    invoke-static {v6, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v4

    int-to-short v4, v4

    aput-short v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_35
.end method

.method public solveEquation([[S[S)[S
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    array-length v0, p1

    array-length v2, p2

    if-ne v0, v2, :cond_33

    array-length v0, p1

    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v0, 0x1

    aput v2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, p1

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S

    move v2, v1

    :goto_22
    array-length v0, p1

    if-lt v2, v0, :cond_3f

    move v0, v1

    :goto_26
    array-length v1, p2

    if-lt v0, v1, :cond_58

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->computeZerosUnder(Z)V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->substitute()V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S

    return-object v0

    :cond_33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The equation system is not solvable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3c
    move-exception v0

    const/4 v0, 0x0

    return-object v0

    :cond_3f
    move v0, v1

    :goto_40
    const/4 v3, 0x0

    aget-object v3, p1, v3

    array-length v3, v3

    if-lt v0, v3, :cond_4a

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_22

    :cond_4a
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v3, v2

    aget-object v4, p1, v2

    aget-short v4, v4, v0

    int-to-short v4, v4

    aput-short v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v1, v1, v0

    array-length v2, p2

    aget-short v3, p2, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v4, v0

    array-length v5, p2

    aget-short v4, v4, v5

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v3

    int-to-short v3, v3

    aput-short v3, v1, v2
    :try_end_6d
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_6d} :catch_3c

    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method
