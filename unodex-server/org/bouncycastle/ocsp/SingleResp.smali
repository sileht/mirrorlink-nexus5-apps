.class public Lorg/bouncycastle/ocsp/SingleResp;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/security/cert/X509Extension;


# instance fields
.field resp:Lorg/bouncycastle/asn1/ocsp/SingleResponse;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/SingleResponse;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/ocsp/SingleResp;->resp:Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    return-void
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .registers 7

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/ocsp/SingleResp;->getSingleExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    if-nez v2, :cond_c

    :cond_b
    return-object v1

    :cond_c
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v3

    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v4

    if-ne p1, v4, :cond_10

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_10
.end method


# virtual methods
.method public getCertID()Lorg/bouncycastle/ocsp/CertificateID;
    .registers 3

    new-instance v0, Lorg/bouncycastle/ocsp/CertificateID;

    iget-object v1, p0, Lorg/bouncycastle/ocsp/SingleResp;->resp:Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getCertID()Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/ocsp/CertificateID;-><init>(Lorg/bouncycastle/asn1/ocsp/CertID;)V

    return-object v0
.end method

.method public getCertStatus()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/ocsp/SingleResp;->resp:Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getCertStatus()Lorg/bouncycastle/asn1/ocsp/CertStatus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertStatus;->getTagNo()I

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertStatus;->getTagNo()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1b

    new-instance v0, Lorg/bouncycastle/ocsp/UnknownStatus;

    invoke-direct {v0}, Lorg/bouncycastle/ocsp/UnknownStatus;-><init>()V

    return-object v0

    :cond_19
    const/4 v0, 0x0

    return-object v0

    :cond_1b
    new-instance v1, Lorg/bouncycastle/ocsp/RevokedStatus;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertStatus;->getStatus()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/ocsp/RevokedStatus;-><init>(Lorg/bouncycastle/asn1/ocsp/RevokedInfo;)V

    return-object v1
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/ocsp/SingleResp;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/ocsp/SingleResp;->getSingleExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    return-object v2

    :cond_8
    new-instance v1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v0

    if-eqz v0, :cond_7

    :try_start_13
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    const-string/jumbo v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getEncoded(Ljava/lang/String;)[B
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_1f

    move-result-object v0

    return-object v0

    :catch_1f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error encoding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNextUpdate()Ljava/util/Date;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/ocsp/SingleResp;->resp:Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getNextUpdate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_9
    iget-object v0, p0, Lorg/bouncycastle/ocsp/SingleResp;->resp:Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getNextUpdate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_12
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_12} :catch_15

    move-result-object v0

    return-object v0

    :cond_14
    return-object v1

    :catch_15
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ParseException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/ocsp/SingleResp;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSingleExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/ocsp/SingleResp;->resp:Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getSingleExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    return-object v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/ocsp/SingleResp;->resp:Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getThisUpdate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ParseException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/ocsp/SingleResp;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method
