.class public Lorg/bouncycastle/crypto/params/IESWithCipherParameters;
.super Lorg/bouncycastle/crypto/params/IESParameters;
.source "Unknown"


# instance fields
.field private cipherKeySize:I


# direct methods
.method public constructor <init>([B[BII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/params/IESParameters;-><init>([B[BI)V

    iput p4, p0, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;->cipherKeySize:I

    return-void
.end method


# virtual methods
.method public getCipherKeySize()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;->cipherKeySize:I

    return v0
.end method
