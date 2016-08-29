.class public Lorg/bouncycastle/jce/spec/IESParameterSpec;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private cipherKeySize:I

.field private derivation:[B

.field private encoding:[B

.field private macKeySize:I


# direct methods
.method public constructor <init>([B[BI)V
    .registers 5

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII)V

    return-void
.end method

.method public constructor <init>([B[BII)V
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_12

    iput-object v3, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->derivation:[B

    :goto_9
    if-nez p2, :cond_1e

    iput-object v3, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->encoding:[B

    :goto_d
    iput p3, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->macKeySize:I

    iput p4, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->cipherKeySize:I

    return-void

    :cond_12
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->derivation:[B

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->derivation:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    :cond_1e
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->encoding:[B

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->encoding:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_d
.end method


# virtual methods
.method public getCipherKeySize()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->cipherKeySize:I

    return v0
.end method

.method public getDerivationV()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->derivation:[B

    return-object v0
.end method

.method public getEncodingV()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->encoding:[B

    return-object v0
.end method

.method public getMacKeySize()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->macKeySize:I

    return v0
.end method
