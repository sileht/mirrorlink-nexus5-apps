.class public Lorg/bouncycastle/crypto/params/RC2Parameters;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private bits:I

.field private key:[B


# direct methods
.method public constructor <init>([B)V
    .registers 4

    array-length v0, p1

    const/16 v1, 0x80

    if-gt v0, v1, :cond_c

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    :goto_8
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/params/RC2Parameters;-><init>([BI)V

    return-void

    :cond_c
    const/16 v0, 0x400

    goto :goto_8
.end method

.method public constructor <init>([BI)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/RC2Parameters;->key:[B

    iput p2, p0, Lorg/bouncycastle/crypto/params/RC2Parameters;->bits:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/RC2Parameters;->key:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getEffectiveKeyBits()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/params/RC2Parameters;->bits:I

    return v0
.end method

.method public getKey()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/RC2Parameters;->key:[B

    return-object v0
.end method
