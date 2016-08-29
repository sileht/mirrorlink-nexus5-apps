.class public Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field protected dataUri:Ljava/net/URI;

.field protected metaData:Lorg/bouncycastle/asn1/cms/MetaData;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setMetaData(ZLorg/bouncycastle/asn1/DERUTF8String;Lorg/bouncycastle/asn1/DERIA5String;Lorg/bouncycastle/asn1/cms/Attributes;)V
    .registers 7

    new-instance v0, Lorg/bouncycastle/asn1/cms/MetaData;

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lorg/bouncycastle/asn1/cms/MetaData;-><init>(Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/asn1/DERUTF8String;Lorg/bouncycastle/asn1/DERIA5String;Lorg/bouncycastle/asn1/cms/Attributes;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    return-void
.end method


# virtual methods
.method public initialiseMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;

    iget-object v1, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;-><init>(Lorg/bouncycastle/asn1/cms/MetaData;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->initialiseMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculator;)V

    return-void
.end method

.method public setDataUri(Ljava/net/URI;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;->dataUri:Ljava/net/URI;

    return-void
.end method

.method public setMetaData(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;->setMetaData(ZLjava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/cms/Attributes;)V

    return-void
.end method

.method public setMetaData(ZLjava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/cms/Attributes;)V
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_a

    move-object v1, v0

    :goto_4
    if-nez p3, :cond_10

    :goto_6
    invoke-direct {p0, p1, v1, v0, p4}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;->setMetaData(ZLorg/bouncycastle/asn1/DERUTF8String;Lorg/bouncycastle/asn1/DERIA5String;Lorg/bouncycastle/asn1/cms/Attributes;)V

    return-void

    :cond_a
    new-instance v1, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    new-instance v0, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    goto :goto_6
.end method
