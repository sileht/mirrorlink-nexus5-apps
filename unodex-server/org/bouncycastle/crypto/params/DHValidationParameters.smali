.class public Lorg/bouncycastle/crypto/params/DHValidationParameters;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private counter:I

.field private seed:[B


# direct methods
.method public constructor <init>([BI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    iput p2, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v2, 0x0

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/DHValidationParameters;

    if-eqz v0, :cond_16

    check-cast p1, Lorg/bouncycastle/crypto/params/DHValidationParameters;

    iget v0, p1, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    iget v1, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    iget-object v1, p1, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0

    :cond_16
    return v2

    :cond_17
    return v2
.end method

.method public getCounter()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    return v0
.end method

.method public getSeed()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
