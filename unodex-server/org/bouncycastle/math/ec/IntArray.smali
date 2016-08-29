.class Lorg/bouncycastle/math/ec/IntArray;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private m_ints:[I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/math/ec/IntArray;-><init>(Ljava/math/BigInteger;I)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_34

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    array-length v2, v6

    aget-byte v3, v6, v1

    if-eqz v3, :cond_44

    move v0, v1

    :goto_1e
    add-int/lit8 v3, v2, 0x3

    div-int/lit8 v3, v3, 0x4

    if-lt v3, p2, :cond_47

    new-array v4, v3, [I

    :goto_26
    iput-object v4, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v3, v3, -0x1

    rem-int/lit8 v2, v2, 0x4

    add-int v5, v2, v0

    if-lt v0, v5, :cond_81

    move v5, v3

    :goto_31
    if-gez v5, :cond_62

    return-void

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only positive Integers allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    new-array v0, v0, [I

    aput v1, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    return-void

    :cond_44
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    :cond_47
    new-array v4, p2, [I

    goto :goto_26

    :cond_4a
    shl-int/lit8 v4, v4, 0x8

    aget-byte v0, v6, v2

    if-ltz v0, :cond_5f

    :goto_50
    or-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v0

    :goto_54
    if-lt v2, v5, :cond_4a

    iget-object v5, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v0, v3, -0x1

    aput v4, v5, v3

    move v5, v0

    move v0, v2

    goto :goto_31

    :cond_5f
    add-int/lit16 v0, v0, 0x100

    goto :goto_50

    :cond_62
    move v2, v1

    move v3, v1

    :goto_64
    const/4 v4, 0x4

    if-lt v2, v4, :cond_6f

    iget-object v2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aput v3, v2, v5

    add-int/lit8 v2, v5, -0x1

    move v5, v2

    goto :goto_31

    :cond_6f
    shl-int/lit8 v4, v3, 0x8

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v6, v0

    if-ltz v0, :cond_7e

    :goto_77
    or-int/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    move v3, v4

    goto :goto_64

    :cond_7e
    add-int/lit16 v0, v0, 0x100

    goto :goto_77

    :cond_81
    move v2, v0

    move v4, v1

    goto :goto_54
.end method

.method public constructor <init>([I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    return-void
.end method

.method private resizedInts(I)[I
    .registers 5

    const/4 v2, 0x0

    new-array v1, p1, [I

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v0

    if-lt v0, p1, :cond_e

    :goto_8
    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_e
    move p1, v0

    goto :goto_8
.end method


# virtual methods
.method public addShifted(Lorg/bouncycastle/math/ec/IntArray;I)V
    .registers 9

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v1

    add-int v0, v1, p2

    iget-object v2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v2, v2

    if-gt v0, v2, :cond_f

    :goto_b
    const/4 v0, 0x0

    :goto_c
    if-lt v0, v1, :cond_16

    return-void

    :cond_f
    invoke-direct {p0, v0}, Lorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    goto :goto_b

    :cond_16
    iget-object v2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int v3, v0, p2

    aget v4, v2, v3

    iget-object v5, p1, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v5, v0

    xor-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public bitLength()I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    if-eqz v0, :cond_1e

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v1, v1, v0

    shl-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    const/high16 v2, -0x10000

    and-int/2addr v2, v1

    if-nez v2, :cond_1f

    const/16 v2, 0xff

    if-gt v1, v2, :cond_2e

    :goto_1a
    const/4 v2, 0x1

    if-ne v1, v2, :cond_33

    return v0

    :cond_1e
    return v1

    :cond_1f
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    if-nez v2, :cond_29

    add-int/lit8 v0, v0, 0x10

    ushr-int/lit8 v1, v1, 0x10

    goto :goto_1a

    :cond_29
    add-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v1, v1, 0x18

    goto :goto_1a

    :cond_2e
    add-int/lit8 v0, v0, 0x8

    ushr-int/lit8 v1, v1, 0x8

    goto :goto_1a

    :cond_33
    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v1, v1, 0x1

    goto :goto_1a
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lorg/bouncycastle/math/ec/IntArray;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/IntArray;-><init>([I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/bouncycastle/math/ec/IntArray;

    if-eqz v0, :cond_16

    check-cast p1, Lorg/bouncycastle/math/ec/IntArray;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    if-ne v0, v2, :cond_17

    move v0, v1

    :goto_12
    if-lt v0, v2, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_16
    return v1

    :cond_17
    return v1

    :cond_18
    iget-object v3, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v3, v3, v0

    iget-object v4, p1, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_25

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_25
    return v1
.end method

.method public flipBit(I)V
    .registers 6

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v1, p1, 0x1f

    const/4 v2, 0x1

    shl-int v1, v2, v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v3, v2, v0

    xor-int/2addr v1, v3

    aput v1, v2, v0

    return-void
.end method

.method public getLength()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v0

    return v0
.end method

.method public getUsedLength()I
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_18

    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v1, v1, v2

    if-nez v1, :cond_19

    :cond_d
    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    if-nez v1, :cond_24

    if-gtz v0, :cond_d

    return v2

    :cond_18
    return v2

    :cond_19
    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    if-eqz v1, :cond_19

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_24
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 5

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_6
    if-lt v0, v2, :cond_9

    return v1

    :cond_9
    mul-int/lit8 v1, v1, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v3, v3, v0

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public isZero()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v1, v1

    if-nez v1, :cond_8

    :cond_6
    const/4 v0, 0x1

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v1, v1, v0

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_7
.end method

.method public multiply(Lorg/bouncycastle/math/ec/IntArray;I)Lorg/bouncycastle/math/ec/IntArray;
    .registers 11

    const/4 v1, 0x0

    add-int/lit8 v0, p2, 0x1f

    shr-int/lit8 v4, v0, 0x5

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v0

    if-lt v0, v4, :cond_2c

    :goto_a
    new-instance v5, Lorg/bouncycastle/math/ec/IntArray;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/IntArray;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p1, v0}, Lorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/bouncycastle/math/ec/IntArray;-><init>([I)V

    new-instance v6, Lorg/bouncycastle/math/ec/IntArray;

    add-int v0, p2, p2

    add-int/lit8 v0, v0, 0x1f

    shr-int/lit8 v0, v0, 0x5

    invoke-direct {v6, v0}, Lorg/bouncycastle/math/ec/IntArray;-><init>(I)V

    const/4 v0, 0x1

    move v2, v1

    move v3, v0

    :goto_27
    const/16 v0, 0x20

    if-lt v2, v0, :cond_33

    return-object v6

    :cond_2c
    invoke-direct {p0, v4}, Lorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    goto :goto_a

    :cond_33
    move v0, v1

    :goto_34
    if-lt v0, v4, :cond_3f

    shl-int/lit8 v3, v3, 0x1

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/IntArray;->shiftLeft()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_27

    :cond_3f
    iget-object v7, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v7, v7, v0

    and-int/2addr v7, v3

    if-nez v7, :cond_49

    :goto_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_49
    invoke-virtual {v6, v5, v0}, Lorg/bouncycastle/math/ec/IntArray;->addShifted(Lorg/bouncycastle/math/ec/IntArray;I)V

    goto :goto_46
.end method

.method public reduce(I[I)V
    .registers 7

    add-int v0, p1, p1

    add-int/lit8 v0, v0, -0x2

    move v1, v0

    :goto_5
    if-ge v1, p1, :cond_12

    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    return-void

    :cond_12
    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/IntArray;->testBit(I)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_18
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_5

    :cond_1c
    sub-int v2, v1, p1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/IntArray;->flipBit(I)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/IntArray;->flipBit(I)V

    array-length v0, p2

    :goto_25
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_18

    aget v3, p2, v0

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lorg/bouncycastle/math/ec/IntArray;->flipBit(I)V

    goto :goto_25
.end method

.method public setBit(I)V
    .registers 6

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v1, p1, 0x1f

    const/4 v2, 0x1

    shl-int v1, v2, v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v3, v2, v0

    or-int/2addr v1, v3

    aput v1, v2, v0

    return-void
.end method

.method public shiftLeft(I)Lorg/bouncycastle/math/ec/IntArray;
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v1

    if-eqz v1, :cond_2c

    if-eqz p1, :cond_2d

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_2e

    add-int/lit8 v0, v1, 0x1

    new-array v2, v0, [I

    rsub-int/lit8 v3, p1, 0x20

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v0, v0, v4

    shl-int/2addr v0, p1

    aput v0, v2, v4

    const/4 v0, 0x1

    :goto_1b
    if-lt v0, v1, :cond_4f

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v4, v1, -0x1

    aget v0, v0, v4

    ushr-int/2addr v0, v3

    aput v0, v2, v1

    new-instance v0, Lorg/bouncycastle/math/ec/IntArray;

    invoke-direct {v0, v2}, Lorg/bouncycastle/math/ec/IntArray;-><init>([I)V

    return-object v0

    :cond_2c
    return-object p0

    :cond_2d
    return-object p0

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shiftLeft() for max 31 bits , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "bit shift is not possible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    iget-object v4, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v0

    shl-int/2addr v4, p1

    iget-object v5, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    ushr-int/2addr v5, v3

    or-int/2addr v4, v5

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method

.method public shiftLeft()V
    .registers 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v1, v3

    if-ltz v1, :cond_15

    :cond_f
    :goto_f
    move v3, v2

    move v4, v2

    :goto_11
    if-lt v3, v0, :cond_28

    return-void

    :cond_14
    return-void

    :cond_15
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v1, v1

    if-le v0, v1, :cond_f

    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    goto :goto_f

    :cond_28
    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v1, v1, v3

    if-ltz v1, :cond_3d

    move v1, v2

    :goto_2f
    iget-object v5, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v6, v5, v3

    shl-int/lit8 v6, v6, 0x1

    aput v6, v5, v3

    if-nez v4, :cond_3f

    :goto_39
    add-int/lit8 v3, v3, 0x1

    move v4, v1

    goto :goto_11

    :cond_3d
    const/4 v1, 0x1

    goto :goto_2f

    :cond_3f
    iget-object v4, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v4, v3

    or-int/lit8 v5, v5, 0x1

    aput v5, v4, v3

    goto :goto_39
.end method

.method public square(I)Lorg/bouncycastle/math/ec/IntArray;
    .registers 12

    const/16 v3, 0x10

    const/4 v2, 0x5

    const/4 v0, 0x1

    const/4 v9, 0x4

    const/4 v1, 0x0

    new-array v4, v3, [I

    aput v1, v4, v1

    aput v0, v4, v0

    const/4 v0, 0x2

    aput v9, v4, v0

    const/4 v0, 0x3

    aput v2, v4, v0

    aput v3, v4, v9

    const/16 v0, 0x11

    aput v0, v4, v2

    const/4 v0, 0x6

    const/16 v2, 0x14

    aput v2, v4, v0

    const/4 v0, 0x7

    const/16 v2, 0x15

    aput v2, v4, v0

    const/16 v0, 0x8

    const/16 v2, 0x40

    aput v2, v4, v0

    const/16 v0, 0x9

    const/16 v2, 0x41

    aput v2, v4, v0

    const/16 v0, 0xa

    const/16 v2, 0x44

    aput v2, v4, v0

    const/16 v0, 0xb

    const/16 v2, 0x45

    aput v2, v4, v0

    const/16 v0, 0xc

    const/16 v2, 0x50

    aput v2, v4, v0

    const/16 v0, 0xd

    const/16 v2, 0x51

    aput v2, v4, v0

    const/16 v0, 0xe

    const/16 v2, 0x54

    aput v2, v4, v0

    const/16 v0, 0xf

    const/16 v2, 0x55

    aput v2, v4, v0

    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v5, v0, 0x5

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v0

    if-lt v0, v5, :cond_66

    :goto_5b
    new-instance v6, Lorg/bouncycastle/math/ec/IntArray;

    add-int v0, v5, v5

    invoke-direct {v6, v0}, Lorg/bouncycastle/math/ec/IntArray;-><init>(I)V

    move v3, v1

    :goto_63
    if-lt v3, v5, :cond_6d

    return-object v6

    :cond_66
    invoke-direct {p0, v5}, Lorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    goto :goto_5b

    :cond_6d
    move v0, v1

    move v2, v1

    :goto_6f
    if-lt v0, v9, :cond_8d

    iget-object v0, v6, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int v7, v3, v3

    aput v2, v0, v7

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v0, v0, v3

    ushr-int/lit8 v7, v0, 0x10

    move v0, v1

    move v2, v1

    :goto_7f
    if-lt v0, v9, :cond_a0

    iget-object v0, v6, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int v7, v3, v3

    add-int/lit8 v7, v7, 0x1

    aput v2, v0, v7

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_63

    :cond_8d
    ushr-int/lit8 v2, v2, 0x8

    iget-object v7, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v7, v7, v3

    mul-int/lit8 v8, v0, 0x4

    ushr-int/2addr v7, v8

    and-int/lit8 v7, v7, 0xf

    aget v7, v4, v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    :cond_a0
    ushr-int/lit8 v2, v2, 0x8

    mul-int/lit8 v8, v0, 0x4

    ushr-int v8, v7, v8

    and-int/lit8 v8, v8, 0xf

    aget v8, v4, v8

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_7f
.end method

.method public testBit(I)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    shr-int/lit8 v2, p1, 0x5

    and-int/lit8 v3, p1, 0x1f

    shl-int v3, v1, v3

    iget-object v4, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v2, v4, v2

    and-int/2addr v2, v3

    if-nez v2, :cond_10

    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .registers 11

    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v6

    if-eqz v6, :cond_2d

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v2, v6, -0x1

    aget v7, v0, v2

    new-array v8, v5, [B

    move v5, v3

    move v0, v4

    move v2, v4

    :goto_15
    if-gez v5, :cond_30

    add-int/lit8 v0, v6, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v2

    new-array v7, v0, [B

    move v0, v4

    :goto_1f
    if-lt v0, v2, :cond_44

    add-int/lit8 v0, v6, -0x2

    move v5, v0

    move v0, v2

    :goto_25
    if-gez v5, :cond_4c

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0

    :cond_2d
    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    return-object v0

    :cond_30
    mul-int/lit8 v9, v5, 0x8

    ushr-int v9, v7, v9

    int-to-byte v9, v9

    if-eqz v0, :cond_41

    :cond_37
    add-int/lit8 v0, v2, 0x1

    int-to-byte v9, v9

    aput-byte v9, v8, v2

    move v2, v0

    move v0, v1

    :goto_3e
    add-int/lit8 v5, v5, -0x1

    goto :goto_15

    :cond_41
    if-nez v9, :cond_37

    goto :goto_3e

    :cond_44
    aget-byte v4, v8, v0

    int-to-byte v4, v4

    aput-byte v4, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_4c
    move v2, v0

    move v0, v3

    :goto_4e
    if-gez v0, :cond_55

    add-int/lit8 v0, v5, -0x1

    move v5, v0

    move v0, v2

    goto :goto_25

    :cond_55
    add-int/lit8 v4, v2, 0x1

    iget-object v6, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v6, v6, v5

    mul-int/lit8 v8, v0, 0x8

    ushr-int/2addr v6, v8

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v7, v2

    add-int/lit8 v0, v0, -0x1

    move v2, v4

    goto :goto_4e
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x2

    move v2, v0

    :goto_18
    if-gez v2, :cond_23

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1f
    const-string/jumbo v0, "0"

    return-object v0

    :cond_23
    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_2f
    const/16 v4, 0x8

    if-lt v0, v4, :cond_3a

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_18

    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f
.end method
