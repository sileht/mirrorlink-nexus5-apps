.class public Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private content:Lorg/bouncycastle/asn1/ASN1OctetStringParser;

.field private dataUri:Lorg/bouncycastle/asn1/DERIA5String;

.field private metaData:Lorg/bouncycastle/asn1/cms/MetaData;

.field private parser:Lorg/bouncycastle/asn1/ASN1SequenceParser;

.field private temporalEvidence:Lorg/bouncycastle/asn1/cms/Evidence;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->parser:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/DERIA5String;

    if-nez v1, :cond_2e

    :goto_17
    instance-of v1, v0, Lorg/bouncycastle/asn1/cms/MetaData;

    if-eqz v1, :cond_39

    :cond_1b
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/MetaData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/MetaData;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    :goto_29
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    if-nez v1, :cond_3e

    :goto_2d
    return-void

    :cond_2e
    invoke-static {v0}, Lorg/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->dataUri:Lorg/bouncycastle/asn1/DERIA5String;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    goto :goto_17

    :cond_39
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    if-nez v1, :cond_1b

    goto :goto_29

    :cond_3e
    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->content:Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    goto :goto_2d
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_a

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    return-object v0

    :cond_a
    new-instance v0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->parser()Lorg/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    return-object v0

    :cond_16
    new-instance v0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    return-object v0
.end method


# virtual methods
.method public getContent()Lorg/bouncycastle/asn1/ASN1OctetStringParser;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->content:Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    return-object v0
.end method

.method public getDataUri()Lorg/bouncycastle/asn1/DERIA5String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->dataUri:Lorg/bouncycastle/asn1/DERIA5String;

    return-object v0
.end method

.method public getMetaData()Lorg/bouncycastle/asn1/cms/MetaData;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    return-object v0
.end method

.method public getTemporalEvidence()Lorg/bouncycastle/asn1/cms/Evidence;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->temporalEvidence:Lorg/bouncycastle/asn1/cms/Evidence;

    if-eqz v0, :cond_7

    :goto_4
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->temporalEvidence:Lorg/bouncycastle/asn1/cms/Evidence;

    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->parser:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/Evidence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Evidence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->temporalEvidence:Lorg/bouncycastle/asn1/cms/Evidence;

    goto :goto_4
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->dataUri:Lorg/bouncycastle/asn1/DERIA5String;

    if-nez v1, :cond_21

    :goto_e
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    if-nez v1, :cond_27

    :goto_12
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->content:Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    if-nez v1, :cond_2d

    :goto_16
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->temporalEvidence:Lorg/bouncycastle/asn1/cms/Evidence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    :cond_21
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->dataUri:Lorg/bouncycastle/asn1/DERIA5String;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_e

    :cond_27
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_12

    :cond_2d
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->content:Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_16
.end method