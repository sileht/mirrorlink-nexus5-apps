.class public Lorg/bouncycastle/cms/jcajce/JceKEKRecipientInfoGenerator;
.super Lorg/bouncycastle/cms/KEKRecipientInfoGenerator;
.source "Unknown"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cms/KEKIdentifier;Ljavax/crypto/SecretKey;)V
    .registers 4

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;

    invoke-direct {v0, p2}, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/KEKRecipientInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/KEKIdentifier;Lorg/bouncycastle/operator/SymmetricKeyWrapper;)V

    return-void
.end method

.method public constructor <init>([BLjavax/crypto/SecretKey;)V
    .registers 5

    const/4 v1, 0x0

    new-instance v0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;

    invoke-direct {v0, p1, v1, v1}, Lorg/bouncycastle/asn1/cms/KEKIdentifier;-><init>([BLorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/cms/jcajce/JceKEKRecipientInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/KEKIdentifier;Ljavax/crypto/SecretKey;)V

    return-void
.end method


# virtual methods
.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceKEKRecipientInfoGenerator;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKEKRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/operator/SymmetricKeyWrapper;

    check-cast v0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceKEKRecipientInfoGenerator;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKEKRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/operator/SymmetricKeyWrapper;

    check-cast v0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;

    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/cms/jcajce/JceKEKRecipientInfoGenerator;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKEKRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/operator/SymmetricKeyWrapper;

    check-cast v0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;->setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;

    return-object p0
.end method
