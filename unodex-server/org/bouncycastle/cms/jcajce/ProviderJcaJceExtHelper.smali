.class Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;
.super Lorg/bouncycastle/jcajce/ProviderJcaJceHelper;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;


# direct methods
.method public constructor <init>(Ljava/security/Provider;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    return-void
.end method


# virtual methods
.method public createAsymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;
    .registers 5

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;)V

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;->provider:Ljava/security/Provider;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;

    move-result-object v0

    return-object v0
.end method

.method public createSymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/SecretKey;)Lorg/bouncycastle/operator/SymmetricKeyUnwrapper;
    .registers 5

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyUnwrapper;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyUnwrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/SecretKey;)V

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;->provider:Ljava/security/Provider;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyUnwrapper;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyUnwrapper;

    move-result-object v0

    return-object v0
.end method
