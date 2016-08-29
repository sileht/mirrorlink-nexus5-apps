.class public Lorg/bouncycastle/asn1/esf/SignerLocation;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Unknown"


# instance fields
.field private countryName:Lorg/bouncycastle/asn1/DERUTF8String;

.field private localityName:Lorg/bouncycastle/asn1/DERUTF8String;

.field private postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_6e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "illegal tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_26
    invoke-static {v0, v4}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/DERUTF8String;

    goto :goto_9

    :pswitch_36
    invoke-static {v0, v4}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/DERUTF8String;

    goto :goto_9

    :pswitch_46
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERTaggedObject;->isExplicit()Z

    move-result v2

    if-nez v2, :cond_68

    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    :goto_50
    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "postal address must contain less than 6 strings"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_68
    invoke-static {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    goto :goto_50

    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_26
        :pswitch_36
        :pswitch_46
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERUTF8String;Lorg/bouncycastle/asn1/DERUTF8String;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-nez p3, :cond_c

    :cond_5
    if-nez p1, :cond_1c

    :goto_7
    if-nez p2, :cond_27

    :goto_9
    if-nez p3, :cond_32

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "postal address must contain less than 6 strings"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERUTF8String;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERUTF8String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/DERUTF8String;

    goto :goto_7

    :cond_27
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/DERUTF8String;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERUTF8String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/DERUTF8String;

    goto :goto_9

    :cond_32
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/ASN1Sequence;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_b
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SignerLocation;
    .registers 3

    if-nez p0, :cond_5

    :cond_2
    check-cast p0, Lorg/bouncycastle/asn1/esf/SignerLocation;

    return-object p0

    :cond_5
    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;

    if-nez v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/esf/SignerLocation;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/SignerLocation;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method


# virtual methods
.method public getCountryName()Lorg/bouncycastle/asn1/DERUTF8String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/DERUTF8String;

    return-object v0
.end method

.method public getLocalityName()Lorg/bouncycastle/asn1/DERUTF8String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/DERUTF8String;

    return-object v0
.end method

.method public getPostalAddress()Lorg/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    const/4 v4, 0x1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/DERUTF8String;

    if-nez v1, :cond_18

    :goto_a
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/DERUTF8String;

    if-nez v1, :cond_24

    :goto_e
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v1, :cond_2f

    :goto_12
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    :cond_18
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_a

    :cond_24
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_e

    :cond_2f
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_12
.end method
