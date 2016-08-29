.class public Lorg/bouncycastle/jce/spec/ElGamalGenParameterSpec;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private primeSize:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/jce/spec/ElGamalGenParameterSpec;->primeSize:I

    return-void
.end method


# virtual methods
.method public getPrimeSize()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/jce/spec/ElGamalGenParameterSpec;->primeSize:I

    return v0
.end method
