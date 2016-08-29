.class public Lorg/bouncycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private A1inv:[[S

.field private A2inv:[[S

.field private b1:[S

.field private b2:[S

.field private layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

.field private vi:[I


# direct methods
.method public constructor <init>([[S[S[[S[S[I[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->A1inv:[[S

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->b1:[S

    iput-object p3, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->A2inv:[[S

    iput-object p4, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->b2:[S

    iput-object p5, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->vi:[I

    iput-object p6, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    return-void
.end method


# virtual methods
.method public getB1()[S
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->b1:[S

    return-object v0
.end method

.method public getB2()[S
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->b2:[S

    return-object v0
.end method

.method public getInvA1()[[S
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->A1inv:[[S

    return-object v0
.end method

.method public getInvA2()[[S
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->A2inv:[[S

    return-object v0
.end method

.method public getLayers()[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    return-object v0
.end method

.method public getVi()[I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->vi:[I

    return-object v0
.end method
