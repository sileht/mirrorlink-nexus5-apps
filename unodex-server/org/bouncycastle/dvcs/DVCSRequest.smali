.class public Lorg/bouncycastle/dvcs/DVCSRequest;
.super Lorg/bouncycastle/dvcs/DVCSMessage;
.source "Unknown"


# instance fields
.field private asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

.field private data:Lorg/bouncycastle/dvcs/DVCSRequestData;

.field private reqInfo:Lorg/bouncycastle/dvcs/DVCSRequestInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSConstructionException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/dvcs/DVCSMessage;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    sget-object v0, Lorg/bouncycastle/asn1/dvcs/DVCSObjectIdentifiers;->id_ct_DVCSRequestData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    :try_start_f
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_93

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2d} :catch_9e

    :goto_2d
    new-instance v0, Lorg/bouncycastle/dvcs/DVCSRequestInfo;

    iget-object v1, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getRequestInformation()Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/dvcs/DVCSRequestInfo;-><init>(Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;)V

    iput-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->reqInfo:Lorg/bouncycastle/dvcs/DVCSRequestInfo;

    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->reqInfo:Lorg/bouncycastle/dvcs/DVCSRequestInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/dvcs/DVCSRequestInfo;->getServiceType()I

    move-result v0

    sget-object v1, Lorg/bouncycastle/asn1/dvcs/ServiceType;->CPD:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/ServiceType;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_bd

    sget-object v1, Lorg/bouncycastle/asn1/dvcs/ServiceType;->VSD:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/ServiceType;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_cb

    sget-object v1, Lorg/bouncycastle/asn1/dvcs/ServiceType;->VPKC:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/ServiceType;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_d7

    sget-object v1, Lorg/bouncycastle/asn1/dvcs/ServiceType;->CCPD:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/ServiceType;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_e3

    new-instance v1, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown service type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8a
    new-instance v0, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    const-string/jumbo v1, "ContentInfo not a DVCS Request"

    invoke-direct {v0, v1}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_93
    :try_start_93
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_9d} :catch_9e

    goto :goto_2d

    :catch_9e
    move-exception v0

    new-instance v1, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to parse content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_bd
    new-instance v0, Lorg/bouncycastle/dvcs/CPDRequestData;

    iget-object v1, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getData()Lorg/bouncycastle/asn1/dvcs/Data;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/dvcs/CPDRequestData;-><init>(Lorg/bouncycastle/asn1/dvcs/Data;)V

    :goto_c8
    iput-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->data:Lorg/bouncycastle/dvcs/DVCSRequestData;

    return-void

    :cond_cb
    new-instance v0, Lorg/bouncycastle/dvcs/VSDRequestData;

    iget-object v1, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getData()Lorg/bouncycastle/asn1/dvcs/Data;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/dvcs/VSDRequestData;-><init>(Lorg/bouncycastle/asn1/dvcs/Data;)V

    goto :goto_c8

    :cond_d7
    new-instance v0, Lorg/bouncycastle/dvcs/VPKCRequestData;

    iget-object v1, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getData()Lorg/bouncycastle/asn1/dvcs/Data;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/dvcs/VPKCRequestData;-><init>(Lorg/bouncycastle/asn1/dvcs/Data;)V

    goto :goto_c8

    :cond_e3
    new-instance v0, Lorg/bouncycastle/dvcs/CCPDRequestData;

    iget-object v1, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getData()Lorg/bouncycastle/asn1/dvcs/Data;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/dvcs/CCPDRequestData;-><init>(Lorg/bouncycastle/asn1/dvcs/Data;)V

    goto :goto_c8
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/CMSSignedData;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSConstructionException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSSignedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/dvcs/DVCSRequest;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method


# virtual methods
.method public getContent()Lorg/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    return-object v0
.end method

.method public getData()Lorg/bouncycastle/dvcs/DVCSRequestData;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->data:Lorg/bouncycastle/dvcs/DVCSRequestData;

    return-object v0
.end method

.method public getRequestInfo()Lorg/bouncycastle/dvcs/DVCSRequestInfo;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->reqInfo:Lorg/bouncycastle/dvcs/DVCSRequestInfo;

    return-object v0
.end method

.method public getTransactionIdentifier()Lorg/bouncycastle/asn1/x509/GeneralName;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getTransactionIdentifier()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    return-object v0
.end method
