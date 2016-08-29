.class public abstract Lorg/bouncycastle/cms/CMSPBEKey;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field private iterationCount:I

.field private password:[C

.field private salt:[B


# direct methods
.method public constructor <init>([CLjavax/crypto/spec/PBEParameterSpec;)V
    .registers 5

    invoke-virtual {p2}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p2}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/cms/CMSPBEKey;-><init>([C[BI)V

    return-void
.end method

.method public constructor <init>([C[BI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSPBEKey;->password:[C

    iput-object p2, p0, Lorg/bouncycastle/cms/CMSPBEKey;->salt:[B

    iput p3, p0, Lorg/bouncycastle/cms/CMSPBEKey;->iterationCount:I

    return-void
.end method

.method protected static getParamSpec(Ljava/security/AlgorithmParameters;)Ljavax/crypto/spec/PBEParameterSpec;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    :try_start_0
    const-class v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p0, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;
    :try_end_8
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot process PBE spec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/spec/InvalidParameterSpecException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "PKCS5S2"

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getEncoded(Ljava/lang/String;)[B
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "RAW"

    return-object v0
.end method

.method public getIterationCount()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/cms/CMSPBEKey;->iterationCount:I

    return v0
.end method

.method public getPassword()[C
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSPBEKey;->password:[C

    return-object v0
.end method

.method public getSalt()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSPBEKey;->salt:[B

    return-object v0
.end method
