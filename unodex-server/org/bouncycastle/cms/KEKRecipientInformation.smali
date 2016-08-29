.class public Lorg/bouncycastle/cms/KEKRecipientInformation;
.super Lorg/bouncycastle/cms/RecipientInformation;
.source "Unknown"


# instance fields
.field private info:Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V
    .registers 7

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;->getKeyEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/bouncycastle/cms/RecipientInformation;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/KEKRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;->getKekid()Lorg/bouncycastle/asn1/cms/KEKIdentifier;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/cms/KEKRecipientId;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->getKeyIdentifier()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/cms/KEKRecipientId;-><init>([B)V

    iput-object v1, p0, Lorg/bouncycastle/cms/KEKRecipientInformation;->rid:Lorg/bouncycastle/cms/RecipientId;

    return-void
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

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/KEKRecipientInformation;->getContentStream(Ljava/security/Key;Ljava/security/Provider;)Lorg/bouncycastle/cms/CMSTypedStream;

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
    iget-object v0, p0, Lorg/bouncycastle/cms/KEKRecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    instance-of v0, v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSEnvelopedSecureReadable;

    if-nez v0, :cond_14

    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceKEKAuthenticatedRecipient;

    check-cast p1, Ljavax/crypto/SecretKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/JceKEKAuthenticatedRecipient;-><init>(Ljavax/crypto/SecretKey;)V

    :goto_d
    if-nez p2, :cond_3b

    :goto_f
    invoke-virtual {p0, v0}, Lorg/bouncycastle/cms/KEKRecipientInformation;->getContentStream(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/CMSTypedStream;

    move-result-object v0

    return-object v0

    :cond_14
    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceKEKEnvelopedRecipient;

    check-cast p1, Ljavax/crypto/SecretKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/JceKEKEnvelopedRecipient;-><init>(Ljavax/crypto/SecretKey;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_d

    :catch_1c
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

    :cond_3b
    :try_start_3b
    invoke-virtual {v0, p2}, Lorg/bouncycastle/cms/jcajce/JceKEKRecipient;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceKEKRecipient;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_1c

    goto :goto_f
.end method

.method protected getRecipientOperator(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/RecipientOperator;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lorg/bouncycastle/cms/KEKRecipient;

    iget-object v0, p0, Lorg/bouncycastle/cms/KEKRecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/cms/KEKRecipientInformation;->messageAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cms/KEKRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;->getEncryptedKey()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/bouncycastle/cms/KEKRecipient;->getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;

    move-result-object v0

    return-object v0
.end method
