.class public Lorg/bouncycastle/asn1/crmf/CertReqMsg;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Unknown"


# instance fields
.field private certReq:Lorg/bouncycastle/asn1/crmf/CertRequest;

.field private pop:Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

.field private regInfo:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/crmf/CertRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertRequest;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->certReq:Lorg/bouncycastle/asn1/crmf/CertRequest;

    :goto_11
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_18

    return-void

    :cond_18
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_27

    :cond_20
    invoke-static {v1}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->pop:Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    goto :goto_11

    :cond_27
    instance-of v2, v1, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    if-nez v2, :cond_20

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_11
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/CertRequest;Lorg/bouncycastle/asn1/crmf/ProofOfPossession;[Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;)V
    .registers 6

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-eqz p1, :cond_c

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->certReq:Lorg/bouncycastle/asn1/crmf/CertRequest;

    iput-object p2, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->pop:Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    if-nez p3, :cond_15

    :goto_b
    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'certReq\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_b
.end method

.method private addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_2
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMsg;
    .registers 3

    const/4 v1, 0x0

    instance-of v0, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    if-nez v0, :cond_8

    if-nez p0, :cond_b

    return-object v1

    :cond_8
    check-cast p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    return-object p0

    :cond_b
    new-instance v0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method


# virtual methods
.method public getCertReq()Lorg/bouncycastle/asn1/crmf/CertRequest;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->certReq:Lorg/bouncycastle/asn1/crmf/CertRequest;

    return-object v0
.end method

.method public getPop()Lorg/bouncycastle/asn1/crmf/ProofOfPossession;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->pop:Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    return-object v0
.end method

.method public getPopo()Lorg/bouncycastle/asn1/crmf/ProofOfPossession;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->pop:Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    return-object v0
.end method

.method public getRegInfo()[Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    const/4 v0, 0x0

    :goto_e
    array-length v2, v1

    if-ne v0, v2, :cond_13

    return-object v1

    :cond_12
    return-object v1

    :cond_13
    iget-object v2, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->certReq:Lorg/bouncycastle/asn1/crmf/CertRequest;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->pop:Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
