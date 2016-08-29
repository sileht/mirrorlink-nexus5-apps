.class public Lorg/bouncycastle/cert/crmf/PKIArchiveControlBuilder;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;

.field private keyContent:Lorg/bouncycastle/cms/CMSProcessableByteArray;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/asn1/x509/GeneralName;)V

    :try_start_8
    new-instance v1, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    sget-object v2, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_ct_encKeyWithID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->getEncoded()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    iput-object v1, p0, Lorg/bouncycastle/cert/crmf/PKIArchiveControlBuilder;->keyContent:Lorg/bouncycastle/cms/CMSProcessableByteArray;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_15} :catch_1d

    new-instance v0, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/PKIArchiveControlBuilder;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;

    return-void

    :catch_1d
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unable to encode key and general name info"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addRecipientGenerator(Lorg/bouncycastle/cms/RecipientInfoGenerator;)Lorg/bouncycastle/cert/crmf/PKIArchiveControlBuilder;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/PKIArchiveControlBuilder;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->addRecipientInfoGenerator(Lorg/bouncycastle/cms/RecipientInfoGenerator;)V

    return-object p0
.end method

.method public build(Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cert/crmf/PKIArchiveControl;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/PKIArchiveControlBuilder;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/PKIArchiveControlBuilder;->keyContent:Lorg/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cms/CMSEnvelopedData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSEnvelopedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/EnvelopedData;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;

    new-instance v2, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;

    new-instance v3, Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;-><init>(Lorg/bouncycastle/asn1/cms/EnvelopedData;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;-><init>(Lorg/bouncycastle/asn1/crmf/EncryptedKey;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;-><init>(Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;)V

    return-object v1
.end method
