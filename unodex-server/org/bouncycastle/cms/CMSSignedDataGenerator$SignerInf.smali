.class Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/CMSSignedDataGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignerInf"
.end annotation


# instance fields
.field final baseSignedTable:Lorg/bouncycastle/asn1/cms/AttributeTable;

.field final digestOID:Ljava/lang/String;

.field final encOID:Ljava/lang/String;

.field final key:Ljava/security/PrivateKey;

.field final sAttr:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

.field final signerIdentifier:Ljava/lang/Object;

.field final synthetic this$0:Lorg/bouncycastle/cms/CMSSignedDataGenerator;

.field final unsAttr:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method constructor <init>(Lorg/bouncycastle/cms/CMSSignedDataGenerator;Ljava/security/PrivateKey;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/asn1/cms/AttributeTable;)V
    .registers 9

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;->this$0:Lorg/bouncycastle/cms/CMSSignedDataGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;->key:Ljava/security/PrivateKey;

    iput-object p3, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;->signerIdentifier:Ljava/lang/Object;

    iput-object p4, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;->digestOID:Ljava/lang/String;

    iput-object p5, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;->encOID:Ljava/lang/String;

    iput-object p6, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;->sAttr:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    iput-object p7, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;->unsAttr:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    iput-object p8, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;->baseSignedTable:Lorg/bouncycastle/asn1/cms/AttributeTable;

    return-void
.end method


# virtual methods
.method toSignerInfoGenerator(Ljava/security/SecureRandom;Ljava/security/Provider;Z)Lorg/bouncycastle/cms/SignerInfoGenerator;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;,
            Lorg/bouncycastle/cms/CMSException;,
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;->digestOID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/cms/CMSSignedHelper;->getDigestAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "with"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v3, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;->encOID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/cms/CMSSignedHelper;->getEncryptionAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;

    new-instance v3, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;

    invoke-direct {v3}, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;-><init>()V

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;-><init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    if-nez p3, :cond_61

    :goto_35
    if-eqz p3, :cond_67

    :goto_37
    invoke-virtual {v2, v0}, Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;->setDirectSignature(Z)Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;->unsAttr:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;->setUnsignedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;

    :try_start_3f
    new-instance v0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;
    :try_end_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_47} :catch_69

    move-result-object v0

    if-nez p2, :cond_74

    :goto_4a
    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;->key:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->build(Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/ContentSigner;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;->signerIdentifier:Ljava/lang/Object;

    instance-of v0, v0, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_78

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;->signerIdentifier:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v2, v1, v0}, Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;->build(Lorg/bouncycastle/operator/ContentSigner;[B)Lorg/bouncycastle/cms/SignerInfoGenerator;

    move-result-object v0

    return-object v0

    :cond_61
    iget-object v3, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;->sAttr:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;->setSignedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;

    goto :goto_35

    :cond_67
    const/4 v0, 0x1

    goto :goto_37

    :catch_69
    move-exception v0

    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_74
    invoke-virtual {v0, p2}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    goto :goto_4a

    :cond_78
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;->signerIdentifier:Ljava/lang/Object;

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2, v1, v0}, Lorg/bouncycastle/cms/jcajce/JcaSignerInfoGeneratorBuilder;->build(Lorg/bouncycastle/operator/ContentSigner;Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/cms/SignerInfoGenerator;

    move-result-object v0

    return-object v0
.end method
