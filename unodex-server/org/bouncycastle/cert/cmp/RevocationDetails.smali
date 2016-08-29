.class public Lorg/bouncycastle/cert/cmp/RevocationDetails;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private revDetails:Lorg/bouncycastle/asn1/cmp/RevDetails;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/RevDetails;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/cmp/RevocationDetails;->revDetails:Lorg/bouncycastle/asn1/cmp/RevDetails;

    return-void
.end method


# virtual methods
.method public getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/RevocationDetails;->revDetails:Lorg/bouncycastle/asn1/cmp/RevDetails;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/RevDetails;->getCertDetails()Lorg/bouncycastle/asn1/crmf/CertTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertTemplate;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/RevocationDetails;->revDetails:Lorg/bouncycastle/asn1/cmp/RevDetails;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/RevDetails;->getCertDetails()Lorg/bouncycastle/asn1/crmf/CertTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertTemplate;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Lorg/bouncycastle/asn1/x500/X500Name;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/RevocationDetails;->revDetails:Lorg/bouncycastle/asn1/cmp/RevDetails;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/RevDetails;->getCertDetails()Lorg/bouncycastle/asn1/crmf/CertTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertTemplate;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cmp/RevDetails;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/RevocationDetails;->revDetails:Lorg/bouncycastle/asn1/cmp/RevDetails;

    return-object v0
.end method
