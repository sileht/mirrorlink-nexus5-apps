.class public Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;
.super Lorg/bouncycastle/cms/RecipientInformation;
.source "Unknown"


# instance fields
.field private encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private info:Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;Lorg/bouncycastle/cms/RecipientId;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V
    .registers 8

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getKeyEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5, p6}, Lorg/bouncycastle/cms/RecipientInformation;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    iput-object p2, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->rid:Lorg/bouncycastle/cms/RecipientId;

    iput-object p3, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method private getPublicKeyInfoFromOriginatorId(Lorg/bouncycastle/cms/OriginatorId;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string/jumbo v1, "No support for \'originator\' as IssuerAndSerialNumber or SubjectKeyIdentifier"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPublicKeyInfoFromOriginatorPublicKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 5

    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;->getPublicKey()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v0
.end method

.method private getSenderPublicKeyInfo(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->getOriginatorKey()Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    move-result-object v0

    if-nez v0, :cond_1e

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->getIssuerAndSerialNumber()Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v1

    if-nez v1, :cond_23

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->getSubjectKeyIdentifier()Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v1

    new-instance v0, Lorg/bouncycastle/cms/OriginatorId;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/OriginatorId;-><init>([B)V

    :goto_19
    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->getPublicKeyInfoFromOriginatorId(Lorg/bouncycastle/cms/OriginatorId;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    return-object v0

    :cond_1e
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->getPublicKeyInfoFromOriginatorPublicKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    return-object v0

    :cond_23
    new-instance v0, Lorg/bouncycastle/cms/OriginatorId;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/cms/OriginatorId;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    goto :goto_19
.end method

.method static readRecipientInfo(Ljava/util/List;Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V
    .registers 14

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getRecipientEncryptedKeys()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    const/4 v0, 0x0

    move v7, v0

    :goto_6
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-lt v7, v0, :cond_d

    return-void

    :cond_d
    invoke-virtual {v8, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/RecipientEncryptedKey;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->getIdentifier()Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->getIssuerAndSerialNumber()Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v3

    if-nez v3, :cond_44

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->getRKeyID()Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/cms/KeyAgreeRecipientId;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->getSubjectKeyIdentifier()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bouncycastle/cms/KeyAgreeRecipientId;-><init>([B)V

    :goto_30
    new-instance v0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->getEncryptedKey()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;-><init>(Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;Lorg/bouncycastle/cms/RecipientId;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_6

    :cond_44
    new-instance v2, Lorg/bouncycastle/cms/KeyAgreeRecipientId;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/bouncycastle/cms/KeyAgreeRecipientId;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    goto :goto_30
.end method


# virtual methods
.method public getContentStream(Ljava/security/Key;Ljava/lang/String;)Lorg/bouncycastle/cms/CMSTypedStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/cms/CMSUtils;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->getContentStream(Ljava/security/Key;Ljava/security/Provider;)Lorg/bouncycastle/cms/CMSTypedStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentStream(Ljava/security/Key;Ljava/security/Provider;)Lorg/bouncycastle/cms/CMSTypedStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    instance-of v0, v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSEnvelopedSecureReadable;

    if-nez v0, :cond_15

    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeAuthenticatedRecipient;

    check-cast p1, Ljava/security/PrivateKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeAuthenticatedRecipient;-><init>(Ljava/security/PrivateKey;)V

    :goto_d
    move-object v1, v0

    if-nez p2, :cond_3c

    :cond_10
    :goto_10
    invoke-virtual {p0, v1}, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->getContentStream(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/CMSTypedStream;

    move-result-object v0

    return-object v0

    :cond_15
    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeEnvelopedRecipient;

    check-cast p1, Ljava/security/PrivateKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeEnvelopedRecipient;-><init>(Ljava/security/PrivateKey;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_d

    :catch_1d
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "encoding error: "

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

    :cond_3c
    :try_start_3c
    invoke-virtual {v1, p2}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;

    invoke-virtual {p2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "SunJCE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->setContentProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_52} :catch_1d

    goto :goto_10
.end method

.method protected getRecipientOperator(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/RecipientOperator;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cms/KeyAgreeRecipient;

    invoke-interface {v0}, Lorg/bouncycastle/cms/KeyAgreeRecipient;->getPrivateKeyAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cms/KeyAgreeRecipient;

    iget-object v1, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->messageAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v4, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getOriginator()Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->getSenderPublicKeyInfo(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getUserKeyingMaterial()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/cms/KeyAgreeRecipient;->getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1OctetString;[B)Lorg/bouncycastle/cms/RecipientOperator;

    move-result-object v0

    return-object v0
.end method
