.class public Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertArray([S)[B
    .registers 4

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-lt v0, v2, :cond_8

    return-object v1

    :cond_8
    aget-short v2, p0, v0

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static convertArray([B)[S
    .registers 4

    array-length v0, p0

    new-array v1, v0, [S

    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-lt v0, v2, :cond_8

    return-object v1

    :cond_8
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static convertArray([[S)[[B
    .registers 7

    const/4 v2, 0x0

    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v2

    const/4 v0, 0x1

    aput v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v1, v2

    :goto_16
    array-length v3, p0

    if-lt v1, v3, :cond_1a

    return-object v0

    :cond_1a
    move v3, v2

    :goto_1b
    aget-object v4, p0, v2

    array-length v4, v4

    if-lt v3, v4, :cond_23

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_23
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget-short v5, v5, v3

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b
.end method

.method public static convertArray([[B)[[S
    .registers 7

    const/4 v2, 0x0

    array-length v0, p0

    aget-object v1, p0, v2

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
    array-length v3, p0

    if-lt v1, v3, :cond_1a

    return-object v0

    :cond_1a
    move v3, v2

    :goto_1b
    aget-object v4, p0, v2

    array-length v4, v4

    if-lt v3, v4, :cond_23

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_23
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget-byte v5, v5, v3

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    int-to-short v5, v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b
.end method

.method public static convertArray([[[S)[[[B
    .registers 8

    const/4 v2, 0x0

    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    aget-object v3, p0, v2

    aget-object v3, v3, v2

    array-length v3, v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x3

    new-array v5, v5, [I

    aput v0, v5, v2

    const/4 v0, 0x1

    aput v1, v5, v0

    const/4 v0, 0x2

    aput v3, v5, v0

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[B

    move v1, v2

    :goto_1e
    array-length v3, p0

    if-lt v1, v3, :cond_22

    return-object v0

    :cond_22
    move v3, v2

    :goto_23
    aget-object v4, p0, v2

    array-length v4, v4

    if-lt v3, v4, :cond_2b

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2b
    move v4, v2

    :goto_2c
    aget-object v5, p0, v2

    aget-object v5, v5, v2

    array-length v5, v5

    if-lt v4, v5, :cond_36

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_36
    aget-object v5, v0, v1

    aget-object v5, v5, v3

    aget-object v6, p0, v1

    aget-object v6, v6, v3

    aget-short v6, v6, v4

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c
.end method

.method public static convertArray([[[B)[[[S
    .registers 8

    const/4 v2, 0x0

    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    aget-object v3, p0, v2

    aget-object v3, v3, v2

    array-length v3, v3

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x3

    new-array v5, v5, [I

    aput v0, v5, v2

    const/4 v0, 0x1

    aput v1, v5, v0

    const/4 v0, 0x2

    aput v3, v5, v0

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    move v1, v2

    :goto_1e
    array-length v3, p0

    if-lt v1, v3, :cond_22

    return-object v0

    :cond_22
    move v3, v2

    :goto_23
    aget-object v4, p0, v2

    array-length v4, v4

    if-lt v3, v4, :cond_2b

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2b
    move v4, v2

    :goto_2c
    aget-object v5, p0, v2

    aget-object v5, v5, v2

    array-length v5, v5

    if-lt v4, v5, :cond_36

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_36
    aget-object v5, v0, v1

    aget-object v5, v5, v3

    aget-object v6, p0, v1

    aget-object v6, v6, v3

    aget-byte v6, v6, v4

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    int-to-short v6, v6

    aput-short v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c
.end method

.method public static convertArraytoInt([B)[I
    .registers 4

    array-length v0, p0

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-lt v0, v2, :cond_8

    return-object v1

    :cond_8
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static convertIntArray([I)[B
    .registers 4

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-lt v0, v2, :cond_8

    return-object v1

    :cond_8
    aget v2, p0, v0

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static equals([S[S)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    array-length v0, p0

    array-length v3, p1

    if-ne v0, v3, :cond_e

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v4, v2

    :goto_b
    if-gez v3, :cond_f

    return v4

    :cond_e
    return v1

    :cond_f
    aget-short v0, p0, v3

    aget-short v5, p1, v3

    if-eq v0, v5, :cond_1b

    move v0, v1

    :goto_16
    and-int/2addr v4, v0

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_b

    :cond_1b
    move v0, v2

    goto :goto_16
.end method

.method public static equals([[S[[S)Z
    .registers 6

    const/4 v2, 0x0

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_c

    const/4 v1, 0x1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-gez v0, :cond_d

    return v1

    :cond_c
    return v2

    :cond_d
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([S[S)Z

    move-result v2

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_9
.end method

.method public static equals([[[S[[[S)Z
    .registers 6

    const/4 v2, 0x0

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_c

    const/4 v1, 0x1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-gez v0, :cond_d

    return v1

    :cond_c
    return v2

    :cond_d
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([[S[[S)Z

    move-result v2

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_9
.end method
