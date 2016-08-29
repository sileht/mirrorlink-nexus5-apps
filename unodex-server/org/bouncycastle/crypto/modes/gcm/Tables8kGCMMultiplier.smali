.class public Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private H:[B

.field private M:[[[I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .registers 12

    const/4 v5, 0x2

    const/16 v2, 0x8

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_73

    :goto_12
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asInts([B[I)V

    move v0, v4

    :goto_22
    if-ge v0, v3, :cond_74

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I[I)V

    move v0, v4

    :goto_34
    if-ge v0, v3, :cond_88

    move v0, v1

    :cond_37
    move v4, v5

    :goto_38
    const/16 v1, 0x10

    if-lt v4, v1, :cond_9c

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_bd

    if-le v0, v3, :cond_37

    move v1, v2

    :goto_45
    if-lez v1, :cond_37

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int/lit8 v6, v0, -0x2

    aget-object v4, v4, v6

    aget-object v4, v4, v1

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v6, v6, v0

    aget-object v6, v6, v1

    invoke-static {v4, v6}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP8([I[I)V

    shr-int/lit8 v1, v1, 0x1

    goto :goto_45

    :cond_5b
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    new-array v6, v6, [I

    const/16 v7, 0x20

    aput v7, v6, v1

    const/16 v7, 0x10

    aput v7, v6, v3

    aput v4, v6, v5

    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    goto :goto_12

    :cond_73
    return-void

    :cond_74
    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v6, v6, v3

    add-int v7, v0, v0

    aget-object v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v7, v7, v3

    aget-object v7, v7, v0

    invoke-static {v6, v7}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I[I)V

    shr-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_88
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v1

    add-int v6, v0, v0

    aget-object v4, v4, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v6, v6, v1

    aget-object v6, v6, v0

    invoke-static {v4, v6}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I[I)V

    shr-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_9c
    move v1, v3

    :goto_9d
    if-lt v1, v4, :cond_a3

    add-int v1, v4, v4

    move v4, v1

    goto :goto_38

    :cond_a3
    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v6, v6, v0

    aget-object v6, v6, v4

    iget-object v7, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v7, v7, v0

    aget-object v7, v7, v1

    iget-object v8, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v8, v8, v0

    add-int v9, v4, v1

    aget-object v8, v8, v9

    invoke-static {v6, v7, v8}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([I[I[I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9d

    :cond_bd
    return-void
.end method

.method public multiplyH([B)V
    .registers 11

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v0, 0xf

    :goto_9
    if-gez v0, :cond_f

    invoke-static {v1, p1, v5}, Lorg/bouncycastle/crypto/util/Pack;->intToBigEndian([I[BI)V

    return-void

    :cond_f
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int v3, v0, v0

    aget-object v2, v2, v3

    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0xf

    aget-object v2, v2, v3

    aget v3, v1, v5

    aget v4, v2, v5

    xor-int/2addr v3, v4

    aput v3, v1, v5

    aget v3, v1, v6

    aget v4, v2, v6

    xor-int/2addr v3, v4

    aput v3, v1, v6

    aget v3, v1, v7

    aget v4, v2, v7

    xor-int/2addr v3, v4

    aput v3, v1, v7

    aget v3, v1, v8

    aget v2, v2, v8

    xor-int/2addr v2, v3

    aput v2, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int v3, v0, v0

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    aget v3, v1, v5

    aget v4, v2, v5

    xor-int/2addr v3, v4

    aput v3, v1, v5

    aget v3, v1, v6

    aget v4, v2, v6

    xor-int/2addr v3, v4

    aput v3, v1, v6

    aget v3, v1, v7

    aget v4, v2, v7

    xor-int/2addr v3, v4

    aput v3, v1, v7

    aget v3, v1, v8

    aget v2, v2, v8

    xor-int/2addr v2, v3

    aput v2, v1, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_9
.end method
