.class public Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private digestProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

.field private directSignature:Z

.field private sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

.field private signedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

.field private unsignedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .registers 3

    new-instance v0, Lorg/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;

    invoke-direct {v0}, Lorg/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;-><init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    return-void
.end method

.method private createGenerator(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/cms/SignerIdentifier;)Lorg/bouncycastle/cms/SignerInfoGenerator;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->directSignature:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v0, :cond_29

    :cond_8
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v0, :cond_37

    :goto_c
    new-instance v0, Lorg/bouncycastle/cms/SignerInfoGenerator;

    iget-object v3, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    iget-object v4, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    iget-object v6, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->unsignedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/cms/SignerInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V

    return-object v0

    :cond_1c
    new-instance v0, Lorg/bouncycastle/cms/SignerInfoGenerator;

    iget-object v3, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    iget-object v4, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    const/4 v5, 0x1

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/cms/SignerInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Z)V

    return-object v0

    :cond_29
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->unsignedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-nez v0, :cond_8

    new-instance v0, Lorg/bouncycastle/cms/SignerInfoGenerator;

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    invoke-direct {v0, p2, p1, v1, v2}, Lorg/bouncycastle/cms/SignerInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V

    return-object v0

    :cond_37
    new-instance v0, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    goto :goto_c
.end method


# virtual methods
.method public build(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cms/SignerInfoGenerator;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    new-instance v1, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->createGenerator(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/cms/SignerIdentifier;)Lorg/bouncycastle/cms/SignerInfoGenerator;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/bouncycastle/cms/SignerInfoGenerator;->setAssociatedCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)V

    return-object v0
.end method

.method public build(Lorg/bouncycastle/operator/ContentSigner;[B)Lorg/bouncycastle/cms/SignerInfoGenerator;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->createGenerator(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/cms/SignerIdentifier;)Lorg/bouncycastle/cms/SignerInfoGenerator;

    move-result-object v0

    return-object v0
.end method

.method public setDirectSignature(Z)Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .registers 2

    iput-boolean p1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->directSignature:Z

    return-object p0
.end method

.method public setSignedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-object p0
.end method

.method public setUnsignedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->unsignedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-object p0
.end method
