.class public Lorg/bouncycastle/asn1/esf/RevocationValues;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Unknown"


# instance fields
.field private crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private otherRevVals:Lorg/bouncycastle/asn1/esf/OtherRevVals;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_15

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_33

    return-void

    :cond_15
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

    :cond_33
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_a0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_5e
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERTaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    :goto_68
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_71

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_e

    :cond_71
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;

    goto :goto_68

    :pswitch_79
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERTaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    :goto_83
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_8c

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_e

    :cond_8c
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    goto :goto_83

    :pswitch_94
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERTaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/esf/OtherRevVals;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/OtherRevVals;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->otherRevVals:Lorg/bouncycastle/asn1/esf/OtherRevVals;

    goto/16 :goto_e

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_79
        :pswitch_94
    .end packed-switch
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/CertificateList;[Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;Lorg/bouncycastle/asn1/esf/OtherRevVals;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-nez p1, :cond_a

    :goto_5
    if-nez p2, :cond_12

    :goto_7
    iput-object p3, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->otherRevVals:Lorg/bouncycastle/asn1/esf/OtherRevVals;

    return-void

    :cond_a
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_5

    :cond_12
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_7
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/RevocationValues;
    .registers 3

    const/4 v1, 0x0

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;

    if-nez v0, :cond_8

    if-nez p0, :cond_b

    return-object v1

    :cond_8
    check-cast p0, Lorg/bouncycastle/asn1/esf/RevocationValues;

    return-object p0

    :cond_b
    new-instance v0, Lorg/bouncycastle/asn1/esf/RevocationValues;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/RevocationValues;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method


# virtual methods
.method public getCrlVals()[Lorg/bouncycastle/asn1/x509/CertificateList;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/asn1/x509/CertificateList;

    :goto_d
    array-length v2, v1

    if-lt v0, v2, :cond_14

    return-object v1

    :cond_11
    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/CertificateList;

    return-object v0

    :cond_14
    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public getOcspVals()[Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    :goto_d
    array-length v2, v1

    if-lt v0, v2, :cond_14

    return-object v1

    :cond_11
    new-array v0, v0, [Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    return-object v0

    :cond_14
    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public getOtherRevVals()Lorg/bouncycastle/asn1/esf/OtherRevVals;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->otherRevVals:Lorg/bouncycastle/asn1/esf/OtherRevVals;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    const/4 v4, 0x1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v1, :cond_18

    :goto_a
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v1, :cond_24

    :goto_e
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->otherRevVals:Lorg/bouncycastle/asn1/esf/OtherRevVals;

    if-nez v1, :cond_2f

    :goto_12
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    :cond_18
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_a

    :cond_24
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_e

    :cond_2f
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->otherRevVals:Lorg/bouncycastle/asn1/esf/OtherRevVals;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/esf/OtherRevVals;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_12
.end method
