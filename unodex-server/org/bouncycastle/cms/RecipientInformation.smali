.class public abstract Lorg/bouncycastle/cms/RecipientInformation;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private additionalData:Lorg/bouncycastle/cms/AuthAttributesProvider;

.field protected keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected messageAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private operator:Lorg/bouncycastle/cms/RecipientOperator;

.field private resultMac:[B

.field protected rid:Lorg/bouncycastle/cms/RecipientId;

.field protected secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/cms/RecipientInformation;->messageAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    iput-object p4, p0, Lorg/bouncycastle/cms/RecipientInformation;->additionalData:Lorg/bouncycastle/cms/AuthAttributesProvider;

    return-void
.end method

.method private encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContent(Ljava/security/Key;Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/cms/CMSUtils;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/RecipientInformation;->getContent(Ljava/security/Key;Ljava/security/Provider;)[B

    move-result-object v0

    return-object v0
.end method

.method public getContent(Ljava/security/Key;Ljava/security/Provider;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/cms/RecipientInformation;->getContentStream(Ljava/security/Key;Ljava/security/Provider;)Lorg/bouncycastle/cms/CMSTypedStream;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSTypedStream;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->streamToByteArray(Ljava/io/InputStream;)[B
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    return-object v0

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to parse internal stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getContent(Lorg/bouncycastle/cms/Recipient;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/RecipientInformation;->getContentStream(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/CMSTypedStream;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSTypedStream;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->streamToByteArray(Ljava/io/InputStream;)[B
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    return-object v0

    :catch_d
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to parse internal stream: "

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
.end method

.method public getContentDigest()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    instance-of v0, v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    check-cast v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;->getDigest()[B

    move-result-object v0

    return-object v0
.end method

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

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/RecipientInformation;->getContentStream(Ljava/security/Key;Ljava/security/Provider;)Lorg/bouncycastle/cms/CMSTypedStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract getContentStream(Ljava/security/Key;Ljava/security/Provider;)Lorg/bouncycastle/cms/CMSTypedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation
.end method

.method public getContentStream(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/CMSTypedStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/RecipientInformation;->getRecipientOperator(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/RecipientOperator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->additionalData:Lorg/bouncycastle/cms/AuthAttributesProvider;

    if-nez v0, :cond_1c

    new-instance v0, Lorg/bouncycastle/cms/CMSTypedStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    iget-object v2, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v2}, Lorg/bouncycastle/cms/CMSSecureReadable;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/cms/RecipientOperator;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSTypedStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    :cond_1c
    new-instance v0, Lorg/bouncycastle/cms/CMSTypedStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v1}, Lorg/bouncycastle/cms/CMSSecureReadable;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSTypedStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getKeyEncryptionAlgOID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyEncryptionAlgParams()[B
    .registers 5

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/RecipientInformation;->encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception getting encryption parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getKeyEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getKeyEncryptionAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceAlgorithmIdentifierConverter;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/JceAlgorithmIdentifierConverter;-><init>()V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/jcajce/JceAlgorithmIdentifierConverter;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceAlgorithmIdentifierConverter;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/jcajce/JceAlgorithmIdentifierConverter;->getAlgorithmParameters(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public getKeyEncryptionAlgorithmParameters(Ljava/security/Provider;)Ljava/security/AlgorithmParameters;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceAlgorithmIdentifierConverter;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/JceAlgorithmIdentifierConverter;-><init>()V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/jcajce/JceAlgorithmIdentifierConverter;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceAlgorithmIdentifierConverter;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/jcajce/JceAlgorithmIdentifierConverter;->getAlgorithmParameters(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->resultMac:[B

    if-eqz v0, :cond_7

    :cond_4
    :goto_4
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->resultMac:[B

    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/RecipientOperator;->isMacBased()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->additionalData:Lorg/bouncycastle/cms/AuthAttributesProvider;

    if-nez v0, :cond_1c

    :goto_13
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/RecipientOperator;->getMac()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->resultMac:[B

    goto :goto_4

    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/bouncycastle/cms/RecipientInformation;->additionalData:Lorg/bouncycastle/cms/AuthAttributesProvider;

    invoke-interface {v2}, Lorg/bouncycastle/cms/AuthAttributesProvider;->getAuthAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    const-string/jumbo v3, "DER"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/RecipientOperator;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/io/Streams;->drain(Ljava/io/InputStream;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_37} :catch_38

    goto :goto_13

    :catch_38
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to drain input: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRID()Lorg/bouncycastle/cms/RecipientId;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->rid:Lorg/bouncycastle/cms/RecipientId;

    return-object v0
.end method

.method protected abstract getRecipientOperator(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/RecipientOperator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
