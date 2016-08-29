.class public Lorg/bouncycastle/asn1/ess/ESSCertIDv2;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Unknown"


# static fields
.field private static final DEFAULT_ALG_ID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private certHash:[B

.field private hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private issuerSerial:Lorg/bouncycastle/asn1/x509/IssuerSerial;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->DEFAULT_ALG_ID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_3d

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-nez v0, :cond_5b

    const/4 v0, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    :goto_22
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->certHash:[B

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-gt v0, v1, :cond_61

    :goto_3c
    return-void

    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    sget-object v0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->DEFAULT_ALG_ID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move v0, v1

    goto :goto_22

    :cond_61
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->issuerSerial:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    goto :goto_3c
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLorg/bouncycastle/asn1/x509/IssuerSerial;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLorg/bouncycastle/asn1/x509/IssuerSerial;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-eqz p1, :cond_c

    iput-object p1, p0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    :goto_7
    iput-object p2, p0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->certHash:[B

    iput-object p3, p0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->issuerSerial:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    return-void

    :cond_c
    sget-object v0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->DEFAULT_ALG_ID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_7
.end method

.method public constructor <init>([B)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLorg/bouncycastle/asn1/x509/IssuerSerial;)V

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/asn1/x509/IssuerSerial;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLorg/bouncycastle/asn1/x509/IssuerSerial;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ess/ESSCertIDv2;
    .registers 3

    const/4 v1, 0x0

    instance-of v0, p0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;

    if-nez v0, :cond_8

    if-nez p0, :cond_b

    return-object v1

    :cond_8
    check-cast p0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;

    return-object p0

    :cond_b
    new-instance v0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method


# virtual methods
.method public getCertHash()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->certHash:[B

    return-object v0
.end method

.method public getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getIssuerSerial()Lorg/bouncycastle/asn1/x509/IssuerSerial;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->issuerSerial:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->DEFAULT_ALG_ID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    :goto_f
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->certHash:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DEROctetString;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->issuerSerial:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    if-nez v1, :cond_2d

    :goto_21
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    :cond_27
    iget-object v1, p0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_f

    :cond_2d
    iget-object v1, p0, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->issuerSerial:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_21
.end method