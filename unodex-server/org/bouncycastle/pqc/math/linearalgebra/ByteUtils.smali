.class public final Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final HEX_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x10

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x31

    aput-char v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x32

    aput-char v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x33

    aput-char v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x34

    aput-char v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x66

    aput-char v2, v0, v1

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone([B)[B
    .registers 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_c

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_c
    return-object v0
.end method

.method public static concatenate([B[B)[B
    .registers 6

    const/4 v3, 0x0

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static concatenate([[B)[B
    .registers 7

    const/4 v1, 0x0

    aget-object v0, p0, v1

    array-length v3, v0

    array-length v0, p0

    mul-int/2addr v0, v3

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    :goto_a
    array-length v5, p0

    if-lt v0, v5, :cond_e

    return-object v4

    :cond_e
    aget-object v5, p0, v0

    invoke-static {v5, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public static deepHashCode([B)I
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_2
    array-length v2, p0

    if-lt v0, v2, :cond_6

    return v1

    :cond_6
    mul-int/lit8 v1, v1, 0x1f

    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static deepHashCode([[B)I
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_2
    array-length v2, p0

    if-lt v0, v2, :cond_6

    return v1

    :cond_6
    mul-int/lit8 v1, v1, 0x1f

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->deepHashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static deepHashCode([[[B)I
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_2
    array-length v2, p0

    if-lt v0, v2, :cond_6

    return v1

    :cond_6
    mul-int/lit8 v1, v1, 0x1f

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->deepHashCode([[B)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static equals([B[B)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    if-eqz p1, :cond_17

    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_18

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    move v4, v1

    :goto_f
    if-gez v3, :cond_19

    return v4

    :cond_12
    if-eqz p1, :cond_15

    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14

    :cond_17
    return v0

    :cond_18
    return v0

    :cond_19
    aget-byte v2, p0, v3

    aget-byte v5, p1, v3

    if-eq v2, v5, :cond_25

    move v2, v0

    :goto_20
    and-int/2addr v4, v2

    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_f

    :cond_25
    move v2, v1

    goto :goto_20
.end method

.method public static equals([[B[[B)Z
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

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->equals([B[B)Z

    move-result v2

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_9
.end method

.method public static equals([[[B[[[B)Z
    .registers 8

    const/4 v5, 0x0

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_d

    const/4 v1, 0x1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_a
    if-gez v2, :cond_e

    return v1

    :cond_d
    return v5

    :cond_e
    aget-object v0, p0, v2

    array-length v0, v0

    aget-object v3, p1, v2

    array-length v3, v3

    if-ne v0, v3, :cond_21

    aget-object v0, p0, v2

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1b
    if-gez v0, :cond_22

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_a

    :cond_21
    return v5

    :cond_22
    aget-object v3, p0, v2

    aget-object v3, v3, v0

    aget-object v4, p1, v2

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->equals([B[B)Z

    move-result v3

    and-int/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b
.end method

.method public static fromHexString(Ljava/lang/String;)[B
    .registers 12

    const/16 v10, 0x46

    const/16 v9, 0x41

    const/16 v8, 0x39

    const/16 v7, 0x30

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move v0, v1

    move v2, v1

    :goto_13
    array-length v4, v3

    if-lt v0, v4, :cond_22

    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v0, v0, 0x1

    new-array v4, v0, [B

    and-int/lit8 v0, v2, 0x1

    :goto_1e
    array-length v2, v3

    if-lt v1, v2, :cond_39

    return-object v4

    :cond_22
    aget-char v4, v3, v0

    if-ge v4, v7, :cond_2d

    :cond_26
    aget-char v4, v3, v0

    if-ge v4, v9, :cond_34

    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2d
    aget-char v4, v3, v0

    if-gt v4, v8, :cond_26

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_34
    aget-char v4, v3, v0

    if-le v4, v10, :cond_31

    goto :goto_2a

    :cond_39
    aget-char v2, v3, v1

    if-ge v2, v7, :cond_44

    :cond_3d
    aget-char v2, v3, v1

    if-ge v2, v9, :cond_62

    :cond_41
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_44
    aget-char v2, v3, v1

    if-gt v2, v8, :cond_3d

    shr-int/lit8 v2, v0, 0x1

    aget-byte v5, v4, v2

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    shr-int/lit8 v2, v0, 0x1

    aget-byte v5, v4, v2

    aget-char v6, v3, v1

    add-int/lit8 v6, v6, -0x30

    or-int/2addr v5, v6

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    :goto_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_62
    aget-char v2, v3, v1

    if-gt v2, v10, :cond_41

    shr-int/lit8 v2, v0, 0x1

    aget-byte v5, v4, v2

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    shr-int/lit8 v2, v0, 0x1

    aget-byte v5, v4, v2

    aget-char v6, v3, v1

    add-int/lit8 v6, v6, -0x41

    add-int/lit8 v6, v6, 0xa

    or-int/2addr v5, v6

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    goto :goto_5f
.end method

.method public static split([BI)[[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    array-length v0, p0

    if-gt p1, v0, :cond_1f

    const/4 v0, 0x2

    new-array v0, v0, [[B

    new-array v1, p1, [B

    aput-object v1, v0, v3

    array-length v1, p0

    sub-int/2addr v1, p1

    new-array v1, v1, [B

    aput-object v1, v0, v2

    aget-object v1, v0, v3

    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v0, v2

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1f
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static subArray([BI)[B
    .registers 3

    array-length v0, p0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->subArray([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static subArray([BII)[B
    .registers 6

    sub-int v0, p2, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    sub-int v2, p2, p1

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static toBinaryString([B)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    move-object v2, v0

    move v0, v1

    :goto_6
    array-length v3, p0

    if-lt v0, v3, :cond_a

    return-object v2

    :cond_a
    aget-byte v5, p0, v0

    move v3, v1

    :goto_d
    const/16 v4, 0x8

    if-lt v3, v4, :cond_19

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_33

    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_19
    ushr-int v4, v5, v3

    and-int/lit8 v4, v4, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v4

    goto :goto_d

    :cond_33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_16
.end method

.method public static toCharArray([B)[C
    .registers 4

    array-length v0, p0

    new-array v1, v0, [C

    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-lt v0, v2, :cond_8

    return-object v1

    :cond_8
    aget-byte v2, p0, v0

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 5

    const-string/jumbo v1, ""

    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-lt v0, v2, :cond_8

    return-object v1

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    aget-byte v3, p0, v0

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static toHexString([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    array-length v2, p0

    if-lt v0, v2, :cond_a

    return-object v1

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    aget-byte v3, p0, v0

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_46

    :goto_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_43
.end method

.method public static xor([B[B)[B
    .registers 6

    array-length v0, p0

    new-array v1, v0, [B

    array-length v0, p0

    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_9

    return-object v1

    :cond_9
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_4
.end method
