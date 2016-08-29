.class public Lorg/bouncycastle/pqc/jcajce/spec/RainbowPublicKeySpec;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private coeffquadratic:[[S

.field private coeffscalar:[S

.field private coeffsingular:[[S

.field private docLength:I


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->docLength:I

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->coeffquadratic:[[S

    iput-object p3, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->coeffsingular:[[S

    iput-object p4, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->coeffscalar:[S

    return-void
.end method


# virtual methods
.method public getCoeffQuadratic()[[S
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->coeffquadratic:[[S

    return-object v0
.end method

.method public getCoeffScalar()[S
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->coeffscalar:[S

    return-object v0
.end method

.method public getCoeffSingular()[[S
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->coeffsingular:[[S

    return-object v0
.end method

.method public getDocLength()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->docLength:I

    return v0
.end method
