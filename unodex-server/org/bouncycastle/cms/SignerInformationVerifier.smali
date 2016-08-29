.class public Lorg/bouncycastle/cms/SignerInformationVerifier;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private digestProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

.field private sigAlgorithmFinder:Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

.field private sigNameGenerator:Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;

.field private verifierProvider:Lorg/bouncycastle/operator/ContentVerifierProvider;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;Lorg/bouncycastle/operator/ContentVerifierProvider;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInformationVerifier;->sigNameGenerator:Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;

    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInformationVerifier;->sigAlgorithmFinder:Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

    iput-object p3, p0, Lorg/bouncycastle/cms/SignerInformationVerifier;->verifierProvider:Lorg/bouncycastle/operator/ContentVerifierProvider;

    iput-object p4, p0, Lorg/bouncycastle/cms/SignerInformationVerifier;->digestProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    return-void
.end method


# virtual methods
.method public getAssociatedCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformationVerifier;->verifierProvider:Lorg/bouncycastle/operator/ContentVerifierProvider;

    invoke-interface {v0}, Lorg/bouncycastle/operator/ContentVerifierProvider;->getAssociatedCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v0

    return-object v0
.end method

.method public getContentVerifier(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformationVerifier;->sigNameGenerator:Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;

    invoke-interface {v0, p2, p1}, Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;->getSignatureName(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformationVerifier;->verifierProvider:Lorg/bouncycastle/operator/ContentVerifierProvider;

    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInformationVerifier;->sigAlgorithmFinder:Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

    invoke-interface {v2, v0}, Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/bouncycastle/operator/ContentVerifierProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;

    move-result-object v0

    return-object v0
.end method

.method public getDigestCalculator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformationVerifier;->digestProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v0

    return-object v0
.end method

.method public hasAssociatedCertificate()Z
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformationVerifier;->verifierProvider:Lorg/bouncycastle/operator/ContentVerifierProvider;

    invoke-interface {v0}, Lorg/bouncycastle/operator/ContentVerifierProvider;->hasAssociatedCertificate()Z

    move-result v0

    return v0
.end method
