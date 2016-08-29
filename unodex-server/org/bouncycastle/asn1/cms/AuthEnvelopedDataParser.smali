.class public Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private originatorInfoCalled:Z

.field private seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method


# virtual methods
.method public getAuthAttrs()Lorg/bouncycastle/asn1/ASN1SetParser;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_d

    :goto_6
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    if-nez v0, :cond_16

    return-object v1

    :cond_d
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/16 v1, 0x11

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    return-object v0
.end method

.method public getAuthEncryptedContentInfo()Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_a

    :goto_5
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_13

    return-object v1

    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_5

    :cond_13
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    new-instance v1, Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    return-object v1
.end method

.method public getMac()Lorg/bouncycastle/asn1/ASN1OctetString;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_12

    :goto_5
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    return-object v0

    :cond_12
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_5
.end method

.method public getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->originatorInfoCalled:Z

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_10

    :goto_9
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    if-nez v0, :cond_19

    :cond_f
    return-object v3

    :cond_10
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_9

    :cond_19
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/16 v1, 0x10

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    iput-object v3, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/OriginatorInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientInfos()Lorg/bouncycastle/asn1/ASN1SetParser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->originatorInfoCalled:Z

    if-eqz v0, :cond_10

    :goto_5
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_14

    :goto_9
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0

    :cond_10
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    goto :goto_5

    :cond_14
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_9
.end method

.method public getUnauthAttrs()Lorg/bouncycastle/asn1/ASN1SetParser;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_a

    :goto_5
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_13

    return-object v1

    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_5

    :cond_13
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method
