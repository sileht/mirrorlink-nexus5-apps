.class public Lorg/bouncycastle/asn1/cms/MetaData;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Unknown"


# instance fields
.field private fileName:Lorg/bouncycastle/asn1/DERUTF8String;

.field private hashProtected:Lorg/bouncycastle/asn1/ASN1Boolean;

.field private mediaType:Lorg/bouncycastle/asn1/DERIA5String;

.field private otherMetaData:Lorg/bouncycastle/asn1/cms/Attributes;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/asn1/DERUTF8String;Lorg/bouncycastle/asn1/DERIA5String;Lorg/bouncycastle/asn1/cms/Attributes;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->hashProtected:Lorg/bouncycastle/asn1/ASN1Boolean;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/MetaData;->fileName:Lorg/bouncycastle/asn1/DERUTF8String;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/MetaData;->mediaType:Lorg/bouncycastle/asn1/DERIA5String;

    iput-object p4, p0, Lorg/bouncycastle/asn1/cms/MetaData;->otherMetaData:Lorg/bouncycastle/asn1/cms/Attributes;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->hashProtected:Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-lt v0, v1, :cond_22

    :cond_15
    :goto_15
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-lt v0, v1, :cond_37

    :cond_1b
    :goto_1b
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-lt v0, v1, :cond_4d

    :goto_21
    return-void

    :cond_22
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/DERUTF8String;

    if-eqz v1, :cond_15

    const/4 v1, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERUTF8String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->fileName:Lorg/bouncycastle/asn1/DERUTF8String;

    move v0, v1

    goto :goto_15

    :cond_37
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/DERIA5String;

    if-eqz v1, :cond_1b

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->mediaType:Lorg/bouncycastle/asn1/DERIA5String;

    move v0, v1

    goto :goto_1b

    :cond_4d
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/Attributes;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Attributes;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->otherMetaData:Lorg/bouncycastle/asn1/cms/Attributes;

    goto :goto_21
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/MetaData;
    .registers 3

    const/4 v1, 0x0

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;

    if-nez v0, :cond_8

    if-nez p0, :cond_b

    return-object v1

    :cond_8
    check-cast p0, Lorg/bouncycastle/asn1/cms/MetaData;

    return-object p0

    :cond_b
    new-instance v0, Lorg/bouncycastle/asn1/cms/MetaData;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/MetaData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method


# virtual methods
.method public getFileName()Lorg/bouncycastle/asn1/DERUTF8String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->fileName:Lorg/bouncycastle/asn1/DERUTF8String;

    return-object v0
.end method

.method public getMediaType()Lorg/bouncycastle/asn1/DERIA5String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->mediaType:Lorg/bouncycastle/asn1/DERIA5String;

    return-object v0
.end method

.method public getOtherMetaData()Lorg/bouncycastle/asn1/cms/Attributes;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->otherMetaData:Lorg/bouncycastle/asn1/cms/Attributes;

    return-object v0
.end method

.method public isHashProtected()Z
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->hashProtected:Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->hashProtected:Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->fileName:Lorg/bouncycastle/asn1/DERUTF8String;

    if-nez v1, :cond_1c

    :goto_e
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->mediaType:Lorg/bouncycastle/asn1/DERIA5String;

    if-nez v1, :cond_22

    :goto_12
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->otherMetaData:Lorg/bouncycastle/asn1/cms/Attributes;

    if-nez v1, :cond_28

    :goto_16
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    :cond_1c
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->fileName:Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_e

    :cond_22
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->mediaType:Lorg/bouncycastle/asn1/DERIA5String;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_12

    :cond_28
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->otherMetaData:Lorg/bouncycastle/asn1/cms/Attributes;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_16
.end method
