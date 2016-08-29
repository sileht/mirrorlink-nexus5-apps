.class public Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private c:I

.field private cL:J

.field private x0:I

.field private x0L:J


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    iput p2, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->c:I

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    iput-wide p3, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x0

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;

    if-eqz v0, :cond_1c

    check-cast p1, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;

    iget v0, p1, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->c:I

    iget v1, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->c:I

    if-ne v0, v1, :cond_1d

    iget v0, p1, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    iget v1, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    if-ne v0, v1, :cond_1e

    iget-wide v0, p1, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    return v4

    :cond_1c
    return v4

    :cond_1d
    return v4

    :cond_1e
    return v4

    :cond_1f
    iget-wide v0, p1, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    return v4

    :cond_28
    const/4 v0, 0x1

    return v0
.end method

.method public getC()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->c:I

    return v0
.end method

.method public getCL()J
    .registers 3

    iget-wide v0, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    return-wide v0
.end method

.method public getX0()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    return v0
.end method

.method public getX0L()J
    .registers 3

    iget-wide v0, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 6

    const/16 v4, 0x20

    iget v0, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    iget v1, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->c:I

    xor-int/2addr v0, v1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    long-to-int v1, v2

    xor-int/2addr v0, v1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    shr-long/2addr v2, v4

    long-to-int v1, v2

    xor-int/2addr v0, v1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    long-to-int v1, v2

    xor-int/2addr v0, v1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    shr-long/2addr v2, v4

    long-to-int v1, v2

    xor-int/2addr v0, v1

    return v0
.end method
