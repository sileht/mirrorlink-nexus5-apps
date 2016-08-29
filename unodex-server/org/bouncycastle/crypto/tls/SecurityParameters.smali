.class public Lorg/bouncycastle/crypto/tls/SecurityParameters;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field clientRandom:[B

.field compressionAlgorithm:S

.field entity:I

.field masterSecret:[B

.field prfAlgorithm:I

.field serverRandom:[B

.field verifyDataLength:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    iput v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    iput v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    return-void
.end method


# virtual methods
.method public getClientRandom()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    return-object v0
.end method

.method public getCompressionAlgorithm()S
    .registers 2

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    return v0
.end method

.method public getEntity()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    return v0
.end method

.method public getMasterSecret()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    return-object v0
.end method

.method public getPrfAlgorithm()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    return v0
.end method

.method public getServerRandom()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    return-object v0
.end method

.method public getVerifyDataLength()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    return v0
.end method
