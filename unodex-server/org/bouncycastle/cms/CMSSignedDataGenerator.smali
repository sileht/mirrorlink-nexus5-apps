.class public Lorg/bouncycastle/cms/CMSSignedDataGenerator;
.super Lorg/bouncycastle/cms/CMSSignedGenerator;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;
    }
.end annotation


# instance fields
.field private signerInfs:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedGenerator;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->signerInfs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSSignedGenerator;-><init>(Ljava/security/SecureRandom;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->signerInfs:Ljava/util/List;

    return-void
.end method

.method private doAddSigner(Ljava/security/PrivateKey;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/asn1/cms/AttributeTable;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v9, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->signerInfs:Ljava/util/List;

    new-instance v0, Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;-><init>(Lorg/bouncycastle/cms/CMSSignedDataGenerator;Ljava/security/PrivateKey;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/asn1/cms/AttributeTable;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->getEncOID(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v5, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {v5}, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->doAddSigner(Ljava/security/PrivateKey;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/asn1/cms/AttributeTable;)V

    return-void
.end method

.method public addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/cms/AttributeTable;Lorg/bouncycastle/asn1/cms/AttributeTable;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v5, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {v5, p5}, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>(Lorg/bouncycastle/asn1/cms/AttributeTable;)V

    new-instance v6, Lorg/bouncycastle/cms/SimpleAttributeTableGenerator;

    invoke-direct {v6, p6}, Lorg/bouncycastle/cms/SimpleAttributeTableGenerator;-><init>(Lorg/bouncycastle/asn1/cms/AttributeTable;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->doAddSigner(Ljava/security/PrivateKey;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/asn1/cms/AttributeTable;)V

    return-void
.end method

.method public addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->doAddSigner(Ljava/security/PrivateKey;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/asn1/cms/AttributeTable;)V

    return-void
.end method

.method public addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/bouncycastle/asn1/cms/AttributeTable;Lorg/bouncycastle/asn1/cms/AttributeTable;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->getEncOID(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/cms/AttributeTable;Lorg/bouncycastle/asn1/cms/AttributeTable;)V

    return-void
.end method

.method public addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->getEncOID(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V

    return-void
.end method

.method public addSigner(Ljava/security/PrivateKey;[BLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->getEncOID(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->addSigner(Ljava/security/PrivateKey;[BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addSigner(Ljava/security/PrivateKey;[BLjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v5, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {v5}, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->doAddSigner(Ljava/security/PrivateKey;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/asn1/cms/AttributeTable;)V

    return-void
.end method

.method public addSigner(Ljava/security/PrivateKey;[BLjava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/cms/AttributeTable;Lorg/bouncycastle/asn1/cms/AttributeTable;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v5, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {v5, p5}, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>(Lorg/bouncycastle/asn1/cms/AttributeTable;)V

    new-instance v6, Lorg/bouncycastle/cms/SimpleAttributeTableGenerator;

    invoke-direct {v6, p6}, Lorg/bouncycastle/cms/SimpleAttributeTableGenerator;-><init>(Lorg/bouncycastle/asn1/cms/AttributeTable;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->doAddSigner(Ljava/security/PrivateKey;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/asn1/cms/AttributeTable;)V

    return-void
.end method

.method public addSigner(Ljava/security/PrivateKey;[BLjava/lang/String;Ljava/lang/String;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->doAddSigner(Ljava/security/PrivateKey;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/asn1/cms/AttributeTable;)V

    return-void
.end method

.method public addSigner(Ljava/security/PrivateKey;[BLjava/lang/String;Lorg/bouncycastle/asn1/cms/AttributeTable;Lorg/bouncycastle/asn1/cms/AttributeTable;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->getEncOID(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->addSigner(Ljava/security/PrivateKey;[BLjava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/cms/AttributeTable;Lorg/bouncycastle/asn1/cms/AttributeTable;)V

    return-void
.end method

.method public addSigner(Ljava/security/PrivateKey;[BLjava/lang/String;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->getEncOID(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->addSigner(Ljava/security/PrivateKey;[BLjava/lang/String;Ljava/lang/String;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V

    return-void
.end method

.method public generate(Ljava/lang/String;Lorg/bouncycastle/cms/CMSProcessable;ZLjava/lang/String;)Lorg/bouncycastle/cms/CMSSignedData;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-static {p4}, Lorg/bouncycastle/cms/CMSUtils;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Ljava/lang/String;Lorg/bouncycastle/cms/CMSProcessable;ZLjava/security/Provider;Z)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljava/lang/String;Lorg/bouncycastle/cms/CMSProcessable;ZLjava/lang/String;Z)Lorg/bouncycastle/cms/CMSSignedData;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-static {p4}, Lorg/bouncycastle/cms/CMSUtils;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Ljava/lang/String;Lorg/bouncycastle/cms/CMSProcessable;ZLjava/security/Provider;Z)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljava/lang/String;Lorg/bouncycastle/cms/CMSProcessable;ZLjava/security/Provider;)Lorg/bouncycastle/cms/CMSSignedData;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Ljava/lang/String;Lorg/bouncycastle/cms/CMSProcessable;ZLjava/security/Provider;Z)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljava/lang/String;Lorg/bouncycastle/cms/CMSProcessable;ZLjava/security/Provider;Z)Lorg/bouncycastle/cms/CMSSignedData;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_29

    :goto_4
    if-nez v1, :cond_2b

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    :goto_c
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->signerInfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->signerInfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-nez p2, :cond_5d

    new-instance v0, Lorg/bouncycastle/cms/CMSAbsentContent;

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSAbsentContent;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-virtual {p0, v0, p3}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Z)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    return-object v0

    :cond_29
    const/4 v1, 0x1

    goto :goto_4

    :cond_2b
    move-object v1, v0

    goto :goto_c

    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;

    :try_start_33
    iget-object v3, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->signerGens:Ljava/util/List;

    iget-object v4, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->rand:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4, p4, p5}, Lorg/bouncycastle/cms/CMSSignedDataGenerator$SignerInf;->toSignerInfoGenerator(Ljava/security/SecureRandom;Ljava/security/Provider;Z)Lorg/bouncycastle/cms/SignerInfoGenerator;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_33 .. :try_end_3e} :catch_3f
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3e} :catch_49
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_33 .. :try_end_3e} :catch_53

    goto :goto_12

    :catch_3f
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string/jumbo v2, "exception creating signerInf"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_49
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string/jumbo v2, "exception encoding attributes"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_53
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string/jumbo v2, "error creating sid."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_5d
    new-instance v0, Lorg/bouncycastle/cms/CMSSignedDataGenerator$1;

    invoke-direct {v0, p0, v1, p2}, Lorg/bouncycastle/cms/CMSSignedDataGenerator$1;-><init>(Lorg/bouncycastle/cms/CMSSignedDataGenerator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;)V

    invoke-virtual {p0, v0, p3}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Z)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lorg/bouncycastle/cms/CMSProcessable;Ljava/lang/String;)Lorg/bouncycastle/cms/CMSSignedData;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/cms/CMSUtils;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSProcessable;Ljava/security/Provider;)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lorg/bouncycastle/cms/CMSProcessable;Ljava/security/Provider;)Lorg/bouncycastle/cms/CMSSignedData;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSProcessable;ZLjava/security/Provider;)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lorg/bouncycastle/cms/CMSProcessable;ZLjava/lang/String;)Lorg/bouncycastle/cms/CMSSignedData;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/cms/CMSTypedData;

    if-nez v0, :cond_b

    sget-object v0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->DATA:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Ljava/lang/String;Lorg/bouncycastle/cms/CMSProcessable;ZLjava/lang/String;)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    return-object v0

    :cond_b
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cms/CMSTypedData;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Ljava/lang/String;Lorg/bouncycastle/cms/CMSProcessable;ZLjava/lang/String;)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lorg/bouncycastle/cms/CMSProcessable;ZLjava/security/Provider;)Lorg/bouncycastle/cms/CMSSignedData;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/cms/CMSTypedData;

    if-nez v0, :cond_b

    sget-object v0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->DATA:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Ljava/lang/String;Lorg/bouncycastle/cms/CMSProcessable;ZLjava/security/Provider;)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    return-object v0

    :cond_b
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cms/CMSTypedData;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Ljava/lang/String;Lorg/bouncycastle/cms/CMSProcessable;ZLjava/security/Provider;)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lorg/bouncycastle/cms/CMSTypedData;)Lorg/bouncycastle/cms/CMSSignedData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Z)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lorg/bouncycastle/cms/CMSTypedData;Z)Lorg/bouncycastle/cms/CMSSignedData;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->signerInfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6a

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->digests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->_signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_73

    invoke-interface {p1}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    if-nez p1, :cond_8e

    :cond_2a
    move-object v5, v1

    :goto_2b
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->signerGens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_31
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d4

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_101

    move-object v3, v1

    :goto_40
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->crls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_109

    move-object v4, v1

    :goto_49
    new-instance v2, Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-direct {v2, v8, v5}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/cms/SignedData;

    new-instance v1, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v1, v6}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    new-instance v5, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v5, v7}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/cms/SignedData;-><init>(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)V

    new-instance v1, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v2, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/cms/CMSSignedData;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/cms/CMSProcessable;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object v0

    :cond_6a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this method can only be used with SignerInfoGenerator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/SignerInformation;

    sget-object v3, Lorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformation;->getDigestAlgorithmID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/cms/CMSSignedHelper;->fixAlgID(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformation;->toASN1Structure()Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1e

    :cond_8e
    if-nez p2, :cond_af

    move-object v0, v1

    :goto_91
    iget-object v2, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->signerGens:Ljava/util/List;

    invoke-static {v2, v0}, Lorg/bouncycastle/cms/CMSUtils;->attachSignersToOutputStream(Ljava/util/Collection;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/cms/CMSUtils;->getSafeOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    :try_start_9b
    invoke-interface {p1, v2}, Lorg/bouncycastle/cms/CMSTypedData;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a1} :catch_b5

    if-eqz p2, :cond_2a

    new-instance v2, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    move-object v5, v2

    goto/16 :goto_2b

    :cond_af
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_91

    :catch_b5
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "data processing exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_d4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/SignerInfoGenerator;

    invoke-virtual {v0, v8}, Lorg/bouncycastle/cms/SignerInfoGenerator;->generate(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v7, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getCalculatedDigest()[B

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v4, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->digests:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_31

    :cond_101
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->certs:Ljava/util/List;

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    goto/16 :goto_40

    :cond_109
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->crls:Ljava/util/List;

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    goto/16 :goto_49
.end method

.method public generateCounterSigners(Lorg/bouncycastle/cms/SignerInformation;)Lorg/bouncycastle/cms/SignerInformationStore;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Z)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignerInfos()Lorg/bouncycastle/cms/SignerInformationStore;

    move-result-object v0

    return-object v0
.end method

.method public generateCounterSigners(Lorg/bouncycastle/cms/SignerInformation;Ljava/lang/String;)Lorg/bouncycastle/cms/SignerInformationStore;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>([B)V

    invoke-static {p2}, Lorg/bouncycastle/cms/CMSUtils;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3, v1}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Ljava/lang/String;Lorg/bouncycastle/cms/CMSProcessable;ZLjava/security/Provider;)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignerInfos()Lorg/bouncycastle/cms/SignerInformationStore;

    move-result-object v0

    return-object v0
.end method

.method public generateCounterSigners(Lorg/bouncycastle/cms/SignerInformation;Ljava/security/Provider;)Lorg/bouncycastle/cms/SignerInformationStore;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>([B)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p2}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Ljava/lang/String;Lorg/bouncycastle/cms/CMSProcessable;ZLjava/security/Provider;)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignerInfos()Lorg/bouncycastle/cms/SignerInformationStore;

    move-result-object v0

    return-object v0
.end method
