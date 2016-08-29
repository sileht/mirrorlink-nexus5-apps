.class public Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private big8:J

.field private checksum:I

.field private counter:I

.field private gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private hash:[B

.field private height:I

.field private ii:I

.field private k:I

.field private keysize:I

.field private mdsize:I

.field private messDigestOTS:Lorg/bouncycastle/crypto/Digest;

.field private messagesize:I

.field private privateKeyOTS:[B

.field private r:I

.field private seed:[B

.field private sign:[B

.field private steps:I

.field private test:I

.field private test8:J

.field private w:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;II)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->height:I

    const/4 v0, 0x1

    shl-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    shl-int/lit8 v0, v0, 0x3

    int-to-double v0, v0

    int-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;[[B[I)V
    .registers 13

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    aget v0, p3, v7

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    aget v0, p3, v4

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    aget v0, p3, v8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    const/4 v0, 0x3

    aget v0, p3, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    aget v0, p3, v5

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->steps:I

    const/4 v0, 0x5

    aget v0, p3, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    const/4 v0, 0x6

    aget v0, p3, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->height:I

    const/4 v0, 0x7

    aget v0, p3, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    aget v0, p3, v6

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    shl-int v0, v4, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    shl-int/lit8 v0, v0, 0x3

    int-to-double v0, v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    aget-object v0, p2, v7

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    aget-object v0, p2, v4

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    aget-object v0, p2, v8

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    const/4 v0, 0x3

    aget-object v0, p2, v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    aget-object v0, p2, v5

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    aget-object v2, p2, v5

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    aget-byte v2, v2, v8

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    const/4 v3, 0x7

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    aget-object v0, p2, v5

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    aget-object v2, p2, v5

    const/16 v3, 0x9

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    const/16 v3, 0xa

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    const/16 v3, 0xb

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    const/16 v3, 0xc

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    const/16 v3, 0xd

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    const/16 v3, 0xe

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    const/16 v3, 0xf

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    return-void
.end method

.method private oneStep()V
    .registers 11

    const/16 v5, 0x8

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    rem-int v0, v5, v0

    if-eqz v0, :cond_16

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    if-lt v0, v5, :cond_a5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    const/16 v2, 0x39

    if-lt v0, v2, :cond_16b

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-eqz v0, :cond_46

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-gtz v0, :cond_82

    :goto_1e
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-nez v0, :cond_15

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    mul-int/2addr v3, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    div-int v1, v5, v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_15

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    goto :goto_15

    :cond_46
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    if-lt v0, v2, :cond_65

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    goto :goto_1e

    :cond_65
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    aget-byte v0, v0, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    aget-byte v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v3, v4

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    goto :goto_1e

    :cond_82
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    array-length v3, v3

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    goto/16 :goto_1e

    :cond_a5
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-eqz v0, :cond_ce

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-gtz v0, :cond_148

    :goto_ad
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-nez v0, :cond_15

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    mul-int/2addr v3, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    :goto_c8
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    goto/16 :goto_15

    :cond_ce
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_ee

    :cond_d4
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    if-eq v0, v2, :cond_142

    :goto_da
    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v4, v0

    and-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    goto :goto_ad

    :cond_ee
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    if-ge v0, v2, :cond_d4

    iput-wide v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    div-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x3

    if-lt v0, v2, :cond_123

    move v0, v1

    :goto_102
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    rem-int/2addr v2, v3

    if-ge v0, v2, :cond_d4

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v5, v0, 0x3

    shl-int/2addr v4, v5

    int-to-long v4, v4

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_102

    :cond_123
    move v0, v1

    :goto_124
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    if-ge v0, v2, :cond_d4

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v5, v0, 0x3

    shl-int/2addr v4, v5

    int-to-long v4, v4

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_124

    :cond_142
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    int-to-long v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    goto :goto_da

    :cond_148
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    array-length v3, v3

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    goto/16 :goto_ad

    :cond_16b
    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    cmp-long v0, v2, v8

    if-nez v0, :cond_1ff

    iput-wide v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    rem-int/lit8 v3, v0, 0x8

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    ushr-int/lit8 v2, v0, 0x3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    if-lt v2, v0, :cond_1b2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v0, v2

    int-to-long v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    :goto_190
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    :cond_19a
    :goto_19a
    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    cmp-long v0, v2, v8

    if-nez v0, :cond_15

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    mul-int/2addr v3, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    goto/16 :goto_c8

    :cond_1b2
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    shl-int/lit8 v4, v4, 0x3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_1d7

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v4, v5

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    :goto_1c6
    if-lt v2, v0, :cond_1e5

    iget-wide v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    ushr-long v2, v4, v3

    iput-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v4, v0

    and-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    goto :goto_190

    :cond_1d7
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    goto :goto_1c6

    :cond_1e5
    iget-wide v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    aget-byte v6, v6, v2

    and-int/lit16 v6, v6, 0xff

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    shl-int/lit8 v7, v7, 0x3

    shl-int/2addr v6, v7

    int-to-long v6, v6

    xor-long/2addr v4, v6

    iput-wide v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c6

    :cond_1ff
    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_22c

    const/4 v0, 0x1

    :goto_206
    if-nez v0, :cond_19a

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    array-length v3, v3

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    goto/16 :goto_19a

    :cond_22c
    move v0, v1

    goto :goto_206
.end method


# virtual methods
.method public getLog(I)I
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x2

    :goto_2
    if-lt v0, p1, :cond_5

    return v1

    :cond_5
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public getSig()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    return-object v0
.end method

.method public getStatByte()[[B
    .registers 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-array v2, v6, [I

    const/4 v3, 0x5

    aput v3, v2, v4

    aput v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    aput-object v1, v0, v4

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    aput-object v1, v0, v5

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    aput-object v1, v0, v6

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatLong()[B

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getStatInt()[I
    .registers 4

    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->steps:I

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->height:I

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    aput v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    aput v2, v0, v1

    return-object v0
.end method

.method public getStatLong()[B
    .registers 12

    const/16 v10, 0x20

    const/16 v9, 0x18

    const/16 v8, 0x10

    const/16 v5, 0x8

    const-wide/16 v6, 0xff

    new-array v0, v8, [B

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    shr-long/2addr v2, v5

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    shr-long/2addr v2, v8

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    shr-long/2addr v2, v9

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    shr-long/2addr v2, v10

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    const/16 v4, 0x28

    shr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    const/16 v4, 0x38

    shr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    and-long/2addr v2, v6

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    const/16 v1, 0x9

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    shr-long/2addr v2, v5

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    shr-long/2addr v2, v8

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    shr-long/2addr v2, v9

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    shr-long/2addr v2, v10

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    const/16 v4, 0x28

    shr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    const/16 v4, 0x38

    shr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public initSign([B[B)V
    .registers 19

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    array-length v4, v0

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v3, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    new-array v8, v2, [B

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    invoke-static {v2, v3, v8, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    shl-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getLog(I)I

    move-result v9

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    const/16 v4, 0x8

    rem-int v2, v4, v2

    if-eqz v2, :cond_ea

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    const/16 v4, 0x8

    if-lt v2, v4, :cond_13d

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    const/16 v4, 0x39

    if-lt v2, v4, :cond_1e6

    :cond_70
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    int-to-double v4, v9

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    add-int/2addr v2, v3

    int-to-double v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->height:I

    const/4 v5, 0x1

    shl-int v4, v5, v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->steps:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_ea
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    const/16 v4, 0x8

    div-int v6, v4, v2

    const/4 v2, 0x0

    :goto_f3
    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    if-lt v2, v4, :cond_11f

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    shl-int/2addr v2, v4

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    const/4 v2, 0x0

    :goto_10c
    if-ge v2, v9, :cond_70

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v5, v4

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v2, v5

    goto :goto_10c

    :cond_11f
    const/4 v4, 0x0

    :goto_120
    if-lt v4, v6, :cond_125

    add-int/lit8 v2, v2, 0x1

    goto :goto_f3

    :cond_125
    aget-byte v5, v8, v2

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v5, v7

    add-int/2addr v5, v3

    aget-byte v3, v8, v2

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v3, v7

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_120

    :cond_13d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    div-int v10, v2, v5

    const/4 v2, 0x0

    move v7, v2

    move v6, v3

    move v3, v4

    :goto_14c
    if-lt v7, v10, :cond_190

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    rem-int v7, v2, v4

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-wide v14, v4

    move v4, v2

    move v5, v3

    move-wide v2, v14

    :goto_15f
    if-lt v4, v7, :cond_1c0

    shl-int/lit8 v8, v7, 0x3

    const/4 v4, 0x0

    move-wide v14, v2

    move v3, v6

    move v6, v4

    move-wide v4, v14

    :goto_168
    if-lt v6, v8, :cond_1ce

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    shl-int/2addr v2, v4

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    const/4 v2, 0x0

    :goto_17d
    if-ge v2, v9, :cond_70

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v5, v4

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v2, v5

    goto :goto_17d

    :cond_190
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    :goto_193
    move-object/from16 v0, p0

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    if-lt v2, v11, :cond_1a2

    const/4 v2, 0x0

    :goto_19a
    const/16 v11, 0x8

    if-lt v2, v11, :cond_1b0

    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_14c

    :cond_1a2
    aget-byte v11, v8, v3

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v12, v2, 0x3

    shl-int/2addr v11, v12

    int-to-long v12, v11

    xor-long/2addr v4, v12

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_193

    :cond_1b0
    move-object/from16 v0, p0

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v12, v11

    and-long/2addr v12, v4

    long-to-int v11, v12

    add-int/2addr v6, v11

    move-object/from16 v0, p0

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-long/2addr v4, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_19a

    :cond_1c0
    aget-byte v10, v8, v5

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v11, v4, 0x3

    shl-int/2addr v10, v11

    int-to-long v10, v10

    xor-long/2addr v2, v10

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_15f

    :cond_1ce
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v10, v2

    and-long/2addr v10, v4

    long-to-int v2, v10

    add-int v7, v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-long v2, v4, v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v4, v6

    move v6, v4

    move-wide v4, v2

    move v3, v7

    goto :goto_168

    :cond_1e6
    const/4 v2, 0x0

    :goto_1e7
    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    shl-int/lit8 v4, v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_222

    ushr-int/lit8 v4, v2, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    if-lt v4, v5, :cond_24e

    :goto_1fc
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    shl-int/2addr v2, v4

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    const/4 v2, 0x0

    :goto_20f
    if-ge v2, v9, :cond_70

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v5, v4

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v2, v5

    goto :goto_20f

    :cond_222
    ushr-int/lit8 v4, v2, 0x3

    rem-int/lit8 v10, v2, 0x8

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v2, v5

    add-int/lit8 v5, v2, 0x7

    ushr-int/lit8 v11, v5, 0x3

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    :goto_232
    if-lt v4, v11, :cond_240

    ushr-long v4, v6, v10

    int-to-long v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v10, v3

    and-long/2addr v4, v10

    add-long/2addr v4, v6

    long-to-int v3, v4

    goto :goto_1e7

    :cond_240
    aget-byte v12, v8, v4

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v13, v5, 0x3

    shl-int/2addr v12, v13

    int-to-long v12, v12

    xor-long/2addr v6, v12

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_232

    :cond_24e
    rem-int/lit8 v5, v2, 0x8

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    move v14, v4

    move v4, v2

    move v2, v14

    :goto_256
    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    if-lt v2, v10, :cond_268

    ushr-long v4, v6, v5

    int-to-long v2, v3

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v6, v6

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v3, v2

    goto :goto_1fc

    :cond_268
    aget-byte v10, v8, v2

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v11, v4, 0x3

    shl-int/2addr v10, v11

    int-to-long v10, v10

    xor-long/2addr v6, v10

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_256
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    const/16 v8, 0x9

    const/4 v7, 0x5

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v8, [I

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v7, v5, v1

    const/4 v6, 0x1

    aput v0, v5, v6

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v5

    move-object v0, v2

    move v2, v1

    :goto_3f
    if-lt v2, v8, :cond_47

    move v9, v1

    move-object v1, v0

    move v0, v9

    :goto_44
    if-lt v0, v7, :cond_66

    return-object v1

    :cond_47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, v4, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_3f

    :cond_66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    aget-object v3, v5, v0

    invoke-static {v3}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_44
.end method

.method public updateSign()Z
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->steps:I

    if-lt v0, v2, :cond_7

    return v1

    :cond_7
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    if-lt v2, v3, :cond_16

    :goto_d
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    if-eq v2, v3, :cond_1a

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_16
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->oneStep()V

    goto :goto_d

    :cond_1a
    const/4 v0, 0x1

    return v0
.end method
