.class public Lorg/bouncycastle/cert/ocsp/SingleResp;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private resp:Lorg/bouncycastle/asn1/ocsp/SingleResponse;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/SingleResponse;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/SingleResp;->resp:Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getSingleExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/SingleResp;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-void
.end method


# virtual methods
.method public getCertID()Lorg/bouncycastle/cert/ocsp/CertificateID;
    .registers 3

    new-instance v0, Lorg/bouncycastle/cert/ocsp/CertificateID;

    iget-object v1, p0, Lorg/bouncycastle/cert/ocsp/SingleResp;->resp:Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getCertID()Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/ocsp/CertificateID;-><init>(Lorg/bouncycastle/asn1/ocsp/CertID;)V

    return-object v0
.end method

.method public getCertStatus()Lorg/bouncycastle/cert/ocsp/CertificateStatus;
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/SingleResp;->resp:Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getCertStatus()Lorg/bouncycastle/asn1/ocsp/CertStatus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertStatus;->getTagNo()I

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertStatus;->getTagNo()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1b

    new-instance v0, Lorg/bouncycastle/cert/ocsp/UnknownStatus;

    invoke-direct {v0}, Lorg/bouncycastle/cert/ocsp/UnknownStatus;-><init>()V

    return-object v0

    :cond_19
    const/4 v0, 0x0

    return-object v0

    :cond_1b
    new-instance v1, Lorg/bouncycastle/cert/ocsp/RevokedStatus;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertStatus;->getStatus()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/cert/ocsp/RevokedStatus;-><init>(Lorg/bouncycastle/asn1/ocsp/RevokedInfo;)V

    return-object v1
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/SingleResp;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->getCriticalExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/SingleResp;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/SingleResp;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionOIDs()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/SingleResp;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->getExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNextUpdate()Ljava/util/Date;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/SingleResp;->resp:Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getNextUpdate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/SingleResp;->resp:Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getNextUpdate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->extractDate(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    :cond_14
    return-object v1
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/SingleResp;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->getNonCriticalExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/SingleResp;->resp:Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getThisUpdate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->extractDate(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public hasExtensions()Z
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/SingleResp;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method
