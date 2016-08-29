.class public Lorg/bouncycastle/crypto/digests/SHA3Digest;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# static fields
.field private static KeccakRhoOffsets:[I

.field private static KeccakRoundConstants:[J


# instance fields
.field C:[J

.field private bitsAvailableForSqueezing:I

.field private bitsInQueue:I

.field chiC:[J

.field private chunk:[B

.field private dataQueue:[B

.field private fixedOutputLength:I

.field private oneByte:[B

.field private rate:I

.field private squeezing:Z

.field private state:[B

.field tempA:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->keccakInitializeRoundConstants()[J

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->KeccakRoundConstants:[J

    invoke-static {}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->keccakInitializeRhoOffsets()[I

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->KeccakRhoOffsets:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->state:[B

    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->C:[J

    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->tempA:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->chiC:[J

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->init(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->state:[B

    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->C:[J

    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->tempA:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->chiC:[J

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->init(I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SHA3Digest;)V
    .registers 6

    const/4 v1, 0x5

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->state:[B

    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->C:[J

    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->tempA:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->chiC:[J

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SHA3Digest;->state:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->state:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/SHA3Digest;->state:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA3Digest;->fixedOutputLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->fixedOutputLength:I

    iget-boolean v0, p1, Lorg/bouncycastle/crypto/digests/SHA3Digest;->squeezing:Z

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->squeezing:Z

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SHA3Digest;->chunk:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->chunk:[B

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SHA3Digest;->oneByte:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->oneByte:[B

    return-void
.end method

.method private KeccakAbsorb([B[BI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->keccakPermutationAfterXor([B[BI)V

    return-void
.end method

.method private KeccakExtract([B[BI)V
    .registers 6

    const/4 v1, 0x0

    mul-int/lit8 v0, p3, 0x8

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private KeccakExtract1024bits([B[B)V
    .registers 5

    const/4 v1, 0x0

    const/16 v0, 0x80

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static LFSR86540([B)Z
    .registers 4

    const/4 v1, 0x0

    aget-byte v0, p0, v1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_17

    move v0, v1

    :goto_8
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_19

    aget-byte v2, p0, v1

    shl-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_8

    :cond_19
    aget-byte v2, p0, v1

    shl-int/lit8 v2, v2, 0x1

    xor-int/lit8 v2, v2, 0x71

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    goto :goto_16
.end method

.method private absorb([BIJ)V
    .registers 16

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_47

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->squeezing:Z

    if-nez v0, :cond_50

    const-wide/16 v0, 0x0

    move-wide v4, v0

    :goto_d
    cmp-long v0, v4, p3

    if-ltz v0, :cond_59

    const/4 v0, 0x1

    :goto_12
    if-nez v0, :cond_e0

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    if-eqz v0, :cond_5b

    :cond_18
    sub-long v0, p3, v4

    long-to-int v0, v0

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    if-gt v1, v2, :cond_b5

    :goto_22
    rem-int/lit8 v2, v0, 0x8

    sub-int/2addr v0, v2

    const-wide/16 v6, 0x8

    div-long v6, v4, v6

    long-to-int v1, v6

    add-int/2addr v1, p2

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    iget v6, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    div-int/lit8 v6, v6, 0x8

    div-int/lit8 v7, v0, 0x8

    invoke-static {p1, v1, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    int-to-long v0, v0

    add-long/2addr v0, v4

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    if-eq v3, v4, :cond_bc

    :goto_43
    if-gtz v2, :cond_c0

    :goto_45
    move-wide v4, v0

    goto :goto_d

    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "attempt to absorb with odd length queue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "attempt to absorb while squeezing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    const/4 v0, 0x0

    goto :goto_12

    :cond_5b
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gez v0, :cond_a7

    const/4 v0, 0x1

    :goto_63
    if-nez v0, :cond_18

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    int-to-long v0, v0

    sub-long v0, p3, v0

    cmp-long v0, v4, v0

    if-lez v0, :cond_a9

    const/4 v0, 0x1

    :goto_6f
    if-nez v0, :cond_18

    sub-long v0, p3, v4

    iget v2, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    int-to-long v2, v2

    div-long v6, v0, v2

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_7b
    cmp-long v0, v2, v6

    if-ltz v0, :cond_ab

    const/4 v0, 0x1

    :goto_80
    if-nez v0, :cond_ad

    int-to-long v0, p2

    const-wide/16 v8, 0x8

    div-long v8, v4, v8

    add-long/2addr v0, v8

    iget-object v8, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->chunk:[B

    array-length v8, v8

    int-to-long v8, v8

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    long-to-int v0, v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->chunk:[B

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->chunk:[B

    array-length v9, v9

    invoke-static {p1, v0, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->state:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->chunk:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->chunk:[B

    array-length v8, v8

    invoke-direct {p0, v0, v1, v8}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->KeccakAbsorb([B[BI)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_7b

    :cond_a7
    const/4 v0, 0x0

    goto :goto_63

    :cond_a9
    const/4 v0, 0x0

    goto :goto_6f

    :cond_ab
    const/4 v0, 0x0

    goto :goto_80

    :cond_ad
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    int-to-long v0, v0

    mul-long/2addr v0, v6

    add-long/2addr v0, v4

    move-wide v4, v0

    goto/16 :goto_d

    :cond_b5
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    sub-int/2addr v0, v1

    goto/16 :goto_22

    :cond_bc
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->absorbQueue()V

    goto :goto_43

    :cond_c0
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    iget v5, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    div-int/lit8 v5, v5, 0x8

    const-wide/16 v6, 0x8

    div-long v6, v0, v6

    long-to-int v6, v6

    add-int/2addr v6, p2

    aget-byte v6, p1, v6

    and-int/2addr v3, v6

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto/16 :goto_45

    :cond_e0
    return-void
.end method

.method private absorbQueue()V
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->state:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    iget v2, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    div-int/lit8 v2, v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->KeccakAbsorb([B[BI)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    return-void
.end method

.method private chi([J)V
    .registers 13

    const/4 v1, 0x0

    const/4 v10, 0x5

    move v2, v1

    :goto_3
    if-lt v2, v10, :cond_6

    return-void

    :cond_6
    move v0, v1

    :goto_7
    if-lt v0, v10, :cond_10

    move v0, v1

    :goto_a
    if-lt v0, v10, :cond_33

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_10
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->chiC:[J

    mul-int/lit8 v4, v2, 0x5

    add-int/2addr v4, v0

    aget-wide v4, p1, v4

    add-int/lit8 v6, v0, 0x1

    rem-int/lit8 v6, v6, 0x5

    mul-int/lit8 v7, v2, 0x5

    add-int/2addr v6, v7

    aget-wide v6, p1, v6

    const-wide/16 v8, -0x1

    xor-long/2addr v6, v8

    add-int/lit8 v8, v0, 0x2

    rem-int/lit8 v8, v8, 0x5

    mul-int/lit8 v9, v2, 0x5

    add-int/2addr v8, v9

    aget-wide v8, p1, v8

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    aput-wide v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_33
    mul-int/lit8 v3, v2, 0x5

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->chiC:[J

    aget-wide v4, v4, v0

    aput-wide v4, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method private clearDataQueueSection(II)V
    .registers 6

    move v0, p1

    :goto_1
    add-int v1, p1, p2

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private doUpdate([BIJ)V
    .registers 14

    const-wide/16 v6, 0x8

    rem-long v0, p3, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->absorb([BIJ)V

    :goto_d
    return-void

    :cond_e
    rem-long v0, p3, v6

    sub-long v0, p3, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->absorb([BIJ)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    div-long v2, p3, v6

    long-to-int v2, v2

    add-int/2addr v2, p2

    aget-byte v2, p1, v2

    rem-long v4, p3, v6

    sub-long v4, v6, v4

    long-to-int v3, v4

    shr-int/2addr v2, v3

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    rem-long v2, p3, v6

    invoke-direct {p0, v0, p2, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->absorb([BIJ)V

    goto :goto_d
.end method

.method private fromBytesToWords([J[B)V
    .registers 14

    const/16 v10, 0x8

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    const/16 v0, 0x19

    if-lt v2, v0, :cond_9

    return-void

    :cond_9
    const-wide/16 v4, 0x0

    aput-wide v4, p1, v2

    mul-int/lit8 v3, v2, 0x8

    move v0, v1

    :goto_10
    if-lt v0, v10, :cond_16

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_16
    aget-wide v4, p1, v2

    add-int v6, v3, v0

    aget-byte v6, p2, v6

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    mul-int/lit8 v8, v0, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method private fromWordsToBytes([B[J)V
    .registers 14

    const/16 v10, 0x8

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    const/16 v0, 0x19

    if-lt v2, v0, :cond_9

    return-void

    :cond_9
    mul-int/lit8 v3, v2, 0x8

    move v0, v1

    :goto_c
    if-lt v0, v10, :cond_12

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_12
    add-int v4, v3, v0

    aget-wide v6, p2, v2

    mul-int/lit8 v5, v0, 0x8

    ushr-long/2addr v6, v5

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method private init(I)V
    .registers 4

    const/16 v1, 0x400

    const/16 v0, 0x240

    sparse-switch p1, :sswitch_data_30

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bitLength must be one of 224, 256, 384, or 512."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_10
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->initSponge(II)V

    :goto_13
    return-void

    :sswitch_14
    const/16 v0, 0x480

    const/16 v1, 0x1c0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->initSponge(II)V

    goto :goto_13

    :sswitch_1c
    const/16 v0, 0x440

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->initSponge(II)V

    goto :goto_13

    :sswitch_24
    const/16 v0, 0x340

    const/16 v1, 0x300

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->initSponge(II)V

    goto :goto_13

    :sswitch_2c
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->initSponge(II)V

    goto :goto_13

    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_10
        0xe0 -> :sswitch_14
        0x100 -> :sswitch_1c
        0x120 -> :sswitch_10
        0x180 -> :sswitch_24
        0x200 -> :sswitch_2c
    .end sparse-switch
.end method

.method private initSponge(II)V
    .registers 6

    const/16 v2, 0x640

    const/4 v1, 0x0

    add-int v0, p1, p2

    if-ne v0, v2, :cond_12

    if-gtz p1, :cond_1b

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "invalid rate value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "rate + capacity != 1600"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    if-ge p1, v2, :cond_9

    rem-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_9

    iput p1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->fixedOutputLength:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->state:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->squeezing:Z

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->fixedOutputLength:I

    div-int/lit8 v0, p1, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->chunk:[B

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->oneByte:[B

    return-void
.end method

.method private iota([JI)V
    .registers 8

    const/4 v4, 0x0

    aget-wide v0, p1, v4

    sget-object v2, Lorg/bouncycastle/crypto/digests/SHA3Digest;->KeccakRoundConstants:[J

    aget-wide v2, v2, p2

    xor-long/2addr v0, v2

    aput-wide v0, p1, v4

    return-void
.end method

.method private static keccakInitializeRhoOffsets()[I
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v2, 0x19

    new-array v4, v2, [I

    aput v0, v4, v0

    move v2, v1

    move v1, v0

    :goto_a
    const/16 v3, 0x18

    if-lt v0, v3, :cond_f

    return-object v4

    :cond_f
    rem-int/lit8 v3, v2, 0x5

    rem-int/lit8 v5, v1, 0x5

    mul-int/lit8 v5, v5, 0x5

    add-int/2addr v3, v5

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x2

    mul-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    rem-int/lit8 v5, v5, 0x40

    aput v5, v4, v3

    mul-int/lit8 v3, v2, 0x0

    mul-int/lit8 v5, v1, 0x1

    add-int/2addr v3, v5

    rem-int/lit8 v3, v3, 0x5

    mul-int/lit8 v2, v2, 0x2

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x5

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_a
.end method

.method private static keccakInitializeRoundConstants()[J
    .registers 12

    const/16 v11, 0x18

    const/4 v10, 0x1

    const/4 v1, 0x0

    new-array v3, v11, [J

    new-array v4, v10, [B

    aput-byte v10, v4, v1

    move v2, v1

    :goto_b
    if-lt v2, v11, :cond_e

    return-object v3

    :cond_e
    const-wide/16 v6, 0x0

    aput-wide v6, v3, v2

    move v0, v1

    :goto_13
    const/4 v5, 0x7

    if-lt v0, v5, :cond_1a

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_1a
    shl-int v5, v10, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->LFSR86540([B)Z

    move-result v6

    if-nez v6, :cond_27

    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_27
    aget-wide v6, v3, v2

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v5

    xor-long/2addr v6, v8

    aput-wide v6, v3, v2

    goto :goto_24
.end method

.method private keccakPermutation([B)V
    .registers 3

    array-length v0, p1

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [J

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->fromBytesToWords([J[B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->keccakPermutationOnWords([J)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->fromWordsToBytes([B[J)V

    return-void
.end method

.method private keccakPermutationAfterXor([B[BI)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-lt v0, p3, :cond_7

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->keccakPermutation([B)V

    return-void

    :cond_7
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private keccakPermutationOnWords([J)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x18

    if-lt v0, v1, :cond_6

    return-void

    :cond_6
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->theta([J)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rho([J)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->pi([J)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->chi([J)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->iota([JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private padAndSwitchToSqueezingPhase()V
    .registers 7

    const/16 v5, 0x400

    const/4 v4, 0x1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    if-eq v0, v1, :cond_62

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    div-int/lit8 v1, v1, 0x8

    iget v2, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->clearDataQueueSection(II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    div-int/lit8 v1, v1, 0x8

    aget-byte v2, v0, v1

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    rem-int/lit8 v3, v3, 0x8

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :goto_32
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x8

    aget-byte v2, v0, v1

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    add-int/lit8 v3, v3, -0x1

    rem-int/lit8 v3, v3, 0x8

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->absorbQueue()V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    if-eq v0, v5, :cond_81

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->state:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    iget v2, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    div-int/lit8 v2, v2, 0x40

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->KeccakExtract([B[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    :goto_5f
    iput-boolean v4, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->squeezing:Z

    return-void

    :cond_62
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    div-int/lit8 v1, v1, 0x8

    aget-byte v2, v0, v1

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    rem-int/lit8 v3, v3, 0x8

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->absorbQueue()V

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    div-int/lit8 v1, v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->clearDataQueueSection(II)V

    goto :goto_32

    :cond_81
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->state:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->KeccakExtract1024bits([B[B)V

    iput v5, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    goto :goto_5f
.end method

.method private pi([J)V
    .registers 9

    const/4 v6, 0x5

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->tempA:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->tempA:[J

    array-length v2, v2

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v1

    :goto_b
    if-lt v2, v6, :cond_e

    return-void

    :cond_e
    move v0, v1

    :goto_f
    if-lt v0, v6, :cond_15

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_15
    mul-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v0, 0x3

    add-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0x5

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->tempA:[J

    mul-int/lit8 v5, v0, 0x5

    add-int/2addr v5, v2

    aget-wide v4, v4, v5

    aput-wide v4, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method private rho([J)V
    .registers 12

    const/4 v9, 0x5

    const/4 v3, 0x0

    move v4, v3

    :goto_3
    if-lt v4, v9, :cond_6

    return-void

    :cond_6
    move v2, v3

    :goto_7
    if-lt v2, v9, :cond_d

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_d
    mul-int/lit8 v0, v2, 0x5

    add-int v5, v4, v0

    sget-object v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->KeccakRhoOffsets:[I

    aget v0, v0, v5

    if-nez v0, :cond_1f

    aget-wide v0, p1, v5

    :goto_19
    aput-wide v0, p1, v5

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_1f
    aget-wide v0, p1, v5

    sget-object v6, Lorg/bouncycastle/crypto/digests/SHA3Digest;->KeccakRhoOffsets:[I

    aget v6, v6, v5

    shl-long/2addr v0, v6

    aget-wide v6, p1, v5

    sget-object v8, Lorg/bouncycastle/crypto/digests/SHA3Digest;->KeccakRhoOffsets:[I

    aget v8, v8, v5

    rsub-int/lit8 v8, v8, 0x40

    ushr-long/2addr v6, v8

    xor-long/2addr v0, v6

    goto :goto_19
.end method

.method private squeeze([BIJ)V
    .registers 14

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->squeezing:Z

    if-eqz v0, :cond_17

    :goto_4
    const-wide/16 v0, 0x8

    rem-long v0, p3, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "outputLength not a multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->padAndSwitchToSqueezingPhase()V

    goto :goto_4

    :cond_1b
    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_1e
    cmp-long v0, v2, p3

    if-ltz v0, :cond_55

    const/4 v0, 0x1

    :goto_23
    if-nez v0, :cond_80

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    if-eqz v0, :cond_57

    :goto_29
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    int-to-long v4, v0

    sub-long v6, p3, v2

    cmp-long v1, v4, v6

    if-gtz v1, :cond_7e

    const/4 v1, 0x1

    :goto_33
    if-nez v1, :cond_38

    sub-long v0, p3, v2

    long-to-int v0, v0

    :cond_38
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    iget v5, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x8

    const-wide/16 v6, 0x8

    div-long v6, v2, v6

    long-to-int v5, v6

    add-int/2addr v5, p2

    div-int/lit8 v6, v0, 0x8

    invoke-static {v1, v4, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_1e

    :cond_55
    const/4 v0, 0x0

    goto :goto_23

    :cond_57
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->state:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->keccakPermutation([B)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    const/16 v1, 0x400

    if-eq v0, v1, :cond_72

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->state:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    div-int/lit8 v4, v4, 0x40

    invoke-direct {p0, v0, v1, v4}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->KeccakExtract([B[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    goto :goto_29

    :cond_72
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->state:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->KeccakExtract1024bits([B[B)V

    const/16 v0, 0x400

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    goto :goto_29

    :cond_7e
    const/4 v1, 0x0

    goto :goto_33

    :cond_80
    return-void
.end method

.method private theta([J)V
    .registers 11

    const/4 v1, 0x0

    const/4 v8, 0x5

    move v2, v1

    :goto_3
    if-lt v2, v8, :cond_9

    move v2, v1

    :goto_6
    if-lt v2, v8, :cond_25

    return-void

    :cond_9
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->C:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v0, v2

    move v0, v1

    :goto_10
    if-lt v0, v8, :cond_16

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_16
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->C:[J

    aget-wide v4, v3, v2

    mul-int/lit8 v6, v0, 0x5

    add-int/2addr v6, v2

    aget-wide v6, p1, v6

    xor-long/2addr v4, v6

    aput-wide v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_25
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->C:[J

    add-int/lit8 v3, v2, 0x1

    rem-int/lit8 v3, v3, 0x5

    aget-wide v4, v0, v3

    const/4 v0, 0x1

    shl-long/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->C:[J

    add-int/lit8 v3, v2, 0x1

    rem-int/lit8 v3, v3, 0x5

    aget-wide v6, v0, v3

    const/16 v0, 0x3f

    ushr-long/2addr v6, v0

    xor-long/2addr v4, v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->C:[J

    add-int/lit8 v3, v2, 0x4

    rem-int/lit8 v3, v3, 0x5

    aget-wide v6, v0, v3

    xor-long/2addr v4, v6

    move v0, v1

    :goto_45
    if-lt v0, v8, :cond_4b

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_4b
    mul-int/lit8 v3, v0, 0x5

    add-int/2addr v3, v2

    aget-wide v6, p1, v3

    xor-long/2addr v6, v4

    aput-wide v6, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_45
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 5

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->fixedOutputLength:I

    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->squeeze([BIJ)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->reset()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SHA3-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->fixedOutputLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->rate:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getDigestSize()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->fixedOutputLength:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reset()V
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->fixedOutputLength:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->init(I)V

    return-void
.end method

.method public update(B)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->oneByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;->oneByte:[B

    const-wide/16 v2, 0x8

    invoke-direct {p0, v0, v4, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doUpdate([BIJ)V

    return-void
.end method

.method public update([BII)V
    .registers 8

    int-to-long v0, p3

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doUpdate([BIJ)V

    return-void
.end method
