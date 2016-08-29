.class public Lorg/bouncycastle/asn1/esf/CrlOcspRef;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Unknown"


# instance fields
.field private crlids:Lorg/bouncycastle/asn1/esf/CrlListID;

.field private ocspids:Lorg/bouncycastle/asn1/esf/OcspListID;

.field private otherRev:Lorg/bouncycastle/asn1/esf/OtherRevRefs;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_46

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "illegal tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_24
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERTaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/esf/CrlListID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/CrlListID;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/bouncycastle/asn1/esf/CrlListID;

    goto :goto_7

    :pswitch_2f
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERTaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/esf/OcspListID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/OcspListID;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/bouncycastle/asn1/esf/OcspListID;

    goto :goto_7

    :pswitch_3a
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERTaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/esf/OtherRevRefs;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/OtherRevRefs;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/bouncycastle/asn1/esf/OtherRevRefs;

    goto :goto_7

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_24
        :pswitch_2f
        :pswitch_3a
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/esf/CrlListID;Lorg/bouncycastle/asn1/esf/OcspListID;Lorg/bouncycastle/asn1/esf/OtherRevRefs;)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/bouncycastle/asn1/esf/CrlListID;

    iput-object p2, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/bouncycastle/asn1/esf/OcspListID;

    iput-object p3, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/bouncycastle/asn1/esf/OtherRevRefs;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/CrlOcspRef;
    .registers 3

    const/4 v1, 0x0

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;

    if-nez v0, :cond_8

    if-nez p0, :cond_b

    return-object v1

    :cond_8
    check-cast p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;

    return-object p0

    :cond_b
    new-instance v0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/CrlOcspRef;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method


# virtual methods
.method public getCrlids()Lorg/bouncycastle/asn1/esf/CrlListID;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/bouncycastle/asn1/esf/CrlListID;

    return-object v0
.end method

.method public getOcspids()Lorg/bouncycastle/asn1/esf/OcspListID;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/bouncycastle/asn1/esf/OcspListID;

    return-object v0
.end method

.method public getOtherRev()Lorg/bouncycastle/asn1/esf/OtherRevRefs;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/bouncycastle/asn1/esf/OtherRevRefs;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    const/4 v4, 0x1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/bouncycastle/asn1/esf/CrlListID;

    if-nez v1, :cond_18

    :goto_a
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/bouncycastle/asn1/esf/OcspListID;

    if-nez v1, :cond_28

    :goto_e
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/bouncycastle/asn1/esf/OtherRevRefs;

    if-nez v1, :cond_37

    :goto_12
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    :cond_18
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/bouncycastle/asn1/esf/CrlListID;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/esf/CrlListID;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_a

    :cond_28
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/bouncycastle/asn1/esf/OcspListID;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/esf/OcspListID;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_e

    :cond_37
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/bouncycastle/asn1/esf/OtherRevRefs;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/esf/OtherRevRefs;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_12
.end method
