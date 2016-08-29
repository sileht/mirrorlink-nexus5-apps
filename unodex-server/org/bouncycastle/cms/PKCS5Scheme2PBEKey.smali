.class public Lorg/bouncycastle/cms/PKCS5Scheme2PBEKey;
.super Lorg/bouncycastle/cms/CMSPBEKey;
.source "Unknown"


# direct methods
.method public constructor <init>([CLjava/security/AlgorithmParameters;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/cms/PKCS5Scheme2PBEKey;->getParamSpec(Ljava/security/AlgorithmParameters;)Ljavax/crypto/spec/PBEParameterSpec;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/CMSPBEKey;-><init>([CLjavax/crypto/spec/PBEParameterSpec;)V

    return-void
.end method

.method public constructor <init>([C[BI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/cms/CMSPBEKey;-><init>([C[BI)V

    return-void
.end method


# virtual methods
.method getEncoded(Ljava/lang/String;)[B
    .registers 6

    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/cms/PKCS5Scheme2PBEKey;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/cms/PKCS5Scheme2PBEKey;->getSalt()[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/cms/PKCS5Scheme2PBEKey;->getIterationCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->init([B[BI)V

    sget-object v1, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSEnvelopedHelper;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->getKeySize(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    return-object v0
.end method
