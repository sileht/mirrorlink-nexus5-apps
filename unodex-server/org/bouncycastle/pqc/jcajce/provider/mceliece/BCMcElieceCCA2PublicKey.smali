.class public Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;
.implements Ljava/security/PublicKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private McElieceCCA2Params:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

.field private g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

.field private n:I

.field private oid:Ljava/lang/String;

.field private t:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->oid:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->n:I

    iput p3, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->t:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V
    .registers 6

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getOIDString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getT()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getMatrixG()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;-><init>(Ljava/lang/String;IILorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->McElieceCCA2Params:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PublicKeySpec;)V
    .registers 6

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PublicKeySpec;->getOIDString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PublicKeySpec;->getN()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PublicKeySpec;->getT()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2PublicKeySpec;->getMatrixG()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;-><init>(Ljava/lang/String;IILorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    return v0

    :cond_4
    instance-of v1, p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;

    if-eqz v1, :cond_3

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;

    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->n:I

    iget v2, p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->n:I

    if-eq v1, v2, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->t:I

    iget v2, p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->t:I

    if-ne v1, v2, :cond_10

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget-object v2, p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    goto :goto_10
.end method

.method protected getAlgParams()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "McEliece"

    return-object v0
.end method

.method public getEncoded()[B
    .registers 6

    new-instance v0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->oid:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->n:I

    iget v3, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->t:I

    iget-object v4, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;IILorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->getOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :try_start_1d
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_25} :catch_27

    move-result-object v0

    return-object v0

    :catch_27
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getG()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public getK()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->getNumRows()I

    move-result v0

    return v0
.end method

.method public getMcElieceCCA2Parameters()Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->McElieceCCA2Params:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    return-object v0
.end method

.method public getN()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->n:I

    return v0
.end method

.method protected getOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.3.6.1.4.1.8301.3.1.3.4.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getOIDString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getT()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->t:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->n:I

    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->t:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "McEliecePublicKey:\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " length of the code         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " error correction capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " generator matrix           : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
