.class public Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;
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
    .registers 13

    const/16 v2, 0x80

    const/16 v10, 0x10

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    if-eqz v0, :cond_47

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->H:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_5e

    :goto_13
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->H:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asInts([B[I)V

    const/16 v0, 0x40

    :goto_24
    if-ge v0, v3, :cond_5f

    move v0, v1

    :cond_27
    move v4, v5

    :goto_28
    const/16 v1, 0x100

    if-lt v4, v1, :cond_73

    add-int/lit8 v0, v0, 0x1

    if-eq v0, v10, :cond_94

    move v1, v2

    :goto_31
    if-lez v1, :cond_27

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    add-int/lit8 v6, v0, -0x1

    aget-object v4, v4, v6

    aget-object v4, v4, v1

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v6, v6, v0

    aget-object v6, v6, v1

    invoke-static {v4, v6}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP8([I[I)V

    shr-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_47
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x3

    new-array v4, v4, [I

    aput v10, v4, v1

    const/16 v6, 0x100

    aput v6, v4, v3

    const/4 v6, 0x4

    aput v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    goto :goto_13

    :cond_5e
    return-void

    :cond_5f
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v1

    add-int v6, v0, v0

    aget-object v4, v4, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v6, v6, v1

    aget-object v6, v6, v0

    invoke-static {v4, v6}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I[I)V

    shr-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_73
    move v1, v3

    :goto_74
    if-lt v1, v4, :cond_7a

    add-int v1, v4, v4

    move v4, v1

    goto :goto_28

    :cond_7a
    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v6, v6, v0

    aget-object v6, v6, v4

    iget-object v7, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v7, v7, v0

    aget-object v7, v7, v1

    iget-object v8, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v8, v8, v0

    add-int v9, v4, v1

    aget-object v8, v8, v9

    invoke-static {v6, v7, v8}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([I[I[I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    :cond_94
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
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v2, v2, v0

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

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
