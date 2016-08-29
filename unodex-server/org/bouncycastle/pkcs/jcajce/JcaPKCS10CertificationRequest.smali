.class public Lorg/bouncycastle/pkcs/jcajce/JcaPKCS10CertificationRequest;
.super Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;
.source "Unknown"


# static fields
.field private static keyAlgorithms:Ljava/util/Hashtable;


# instance fields
.field private helper:Lorg/bouncycastle/jcajce/JcaJceHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "RSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "DSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/CertificationRequest;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;-><init>(Lorg/bouncycastle/asn1/pkcs/CertificationRequest;)V

    new-instance v0, Lorg/bouncycastle/jcajce/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS10CertificationRequest;->helper:Lorg/bouncycastle/jcajce/JcaJceHelper;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;)V
    .registers 3

    invoke-virtual {p1}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->toASN1Structure()Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;-><init>(Lorg/bouncycastle/asn1/pkcs/CertificationRequest;)V

    new-instance v0, Lorg/bouncycastle/jcajce/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS10CertificationRequest;->helper:Lorg/bouncycastle/jcajce/JcaJceHelper;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;-><init>([B)V

    new-instance v0, Lorg/bouncycastle/jcajce/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS10CertificationRequest;->helper:Lorg/bouncycastle/jcajce/JcaJceHelper;

    return-void
.end method


# virtual methods
.method public getPublicKey()Ljava/security/PublicKey;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS10CertificationRequest;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_d
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_d} :catch_36
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_57
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_d} :catch_61

    :try_start_d
    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS10CertificationRequest;->helper:Lorg/bouncycastle/jcajce/JcaJceHelper;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/bouncycastle/jcajce/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_1e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_1e} :catch_24
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_d .. :try_end_1e} :catch_36
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1e} :catch_57
    .catch Ljava/security/NoSuchProviderException; {:try_start_d .. :try_end_1e} :catch_61

    move-result-object v0

    :goto_1f
    :try_start_1f
    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    :catch_24
    move-exception v0

    sget-object v3, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_40

    throw v0
    :try_end_36
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1f .. :try_end_36} :catch_36
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_36} :catch_57
    .catch Ljava/security/NoSuchProviderException; {:try_start_1f .. :try_end_36} :catch_61

    :catch_36
    move-exception v0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "error decoding public key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    :try_start_40
    sget-object v0, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS10CertificationRequest;->helper:Lorg/bouncycastle/jcajce/JcaJceHelper;

    invoke-interface {v1, v0}, Lorg/bouncycastle/jcajce/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_55
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_40 .. :try_end_55} :catch_36
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_55} :catch_57
    .catch Ljava/security/NoSuchProviderException; {:try_start_40 .. :try_end_55} :catch_61

    move-result-object v0

    goto :goto_1f

    :catch_57
    move-exception v0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "error extracting key encoding"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_61
    move-exception v0

    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot find provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/pkcs/jcajce/JcaPKCS10CertificationRequest;
    .registers 3

    new-instance v0, Lorg/bouncycastle/jcajce/NamedJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS10CertificationRequest;->helper:Lorg/bouncycastle/jcajce/JcaJceHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/pkcs/jcajce/JcaPKCS10CertificationRequest;
    .registers 3

    new-instance v0, Lorg/bouncycastle/jcajce/ProviderJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS10CertificationRequest;->helper:Lorg/bouncycastle/jcajce/JcaJceHelper;

    return-object p0
.end method
