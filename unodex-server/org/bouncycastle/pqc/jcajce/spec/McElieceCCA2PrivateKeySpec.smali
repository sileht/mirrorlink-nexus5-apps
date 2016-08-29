.class public Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

.field private goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field private h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

.field private k:I

.field private n:I

.field private oid:Ljava/lang/String;

.field private p:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

.field private qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->oid:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->n:I

    iput p3, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->k:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iput-object p5, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iput-object p6, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->p:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    iput-object p7, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iput-object p8, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II[B[B[B[B[[B)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->oid:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->n:I

    iput p3, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->k:I

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v0, p4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v0, v1, p5}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-direct {v0, p6}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->p:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v0, p7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    array-length v0, p8

    new-array v0, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    const/4 v0, 0x0

    :goto_2d
    array-length v1, p8

    if-lt v0, v1, :cond_31

    return-void

    :cond_31
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v3, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    aget-object v4, p8, v0

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d
.end method


# virtual methods
.method public getField()Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    return-object v0
.end method

.method public getGoppaPoly()Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public getH()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public getK()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->k:I

    return v0
.end method

.method public getN()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->n:I

    return v0
.end method

.method public getOIDString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getP()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->p:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    return-object v0
.end method

.method public getQInv()[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PrivateKeySpec;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method
