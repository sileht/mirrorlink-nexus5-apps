.class public final Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static I2OSP(I[BI)V
    .registers 6

    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, p0

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method public static I2OSP(I[BII)V
    .registers 7

    add-int/lit8 v0, p3, -0x1

    :goto_2
    if-gez v0, :cond_5

    return-void

    :cond_5
    add-int v1, p2, v0

    mul-int/lit8 v2, v0, 0x8

    ushr-int v2, p0, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public static I2OSP(J[BI)V
    .registers 8

    add-int/lit8 v0, p3, 0x1

    long-to-int v1, p0

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x8

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x10

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x18

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x28

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x30

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    const/16 v1, 0x38

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method public static I2OSP(I)[B
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static I2OSP(J)[B
    .registers 6

    const/16 v3, 0x8

    new-array v0, v3, [B

    const/4 v1, 0x0

    long-to-int v2, p0

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-long v2, p0, v3

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x10

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x18

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x28

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x30

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x38

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static OS2IP([B)I
    .registers 3

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static OS2IP([BI)I
    .registers 5

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static OS2IP([BII)I
    .registers 7

    const/4 v1, 0x0

    add-int/lit8 v0, p2, -0x1

    :goto_3
    if-gez v0, :cond_6

    return v1

    :cond_6
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method public static OS2LIP([BI)J
    .registers 10

    const-wide/16 v6, 0xff

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    int-to-long v2, v1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    int-to-long v4, v0

    or-long/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    int-to-long v4, v1

    or-long/2addr v2, v4

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x18

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x28

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x30

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static toByteArray([II)[B
    .registers 7

    const/4 v0, 0x0

    array-length v2, p0

    new-array v3, p1, [B

    move v1, v0

    :goto_5
    add-int/lit8 v4, v2, -0x2

    if-le v0, v4, :cond_13

    add-int/lit8 v0, v2, -0x1

    aget v0, p0, v0

    sub-int v2, p1, v1

    invoke-static {v0, v3, v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BII)V

    return-object v3

    :cond_13
    aget v4, p0, v0

    invoke-static {v4, v3, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_5
.end method

.method public static toIntArray([B)[I
    .registers 7

    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, 0x3

    div-int/lit8 v2, v1, 0x4

    array-length v1, p0

    and-int/lit8 v3, v1, 0x3

    new-array v4, v2, [I

    move v1, v0

    :goto_c
    add-int/lit8 v5, v2, -0x2

    if-le v0, v5, :cond_1b

    if-nez v3, :cond_26

    add-int/lit8 v0, v2, -0x1

    invoke-static {p0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v1

    :goto_18
    aput v1, v4, v0

    return-object v4

    :cond_1b
    invoke-static {p0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_c

    :cond_26
    add-int/lit8 v0, v2, -0x1

    invoke-static {p0, v1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([BII)I

    move-result v1

    goto :goto_18
.end method