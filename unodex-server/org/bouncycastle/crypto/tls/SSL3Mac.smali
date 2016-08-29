.class public Lorg/bouncycastle/crypto/tls/SSL3Mac;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# static fields
.field static final IPAD:[B

.field private static final IPAD_BYTE:B = 0x36t

.field static final OPAD:[B

.field private static final OPAD_BYTE:B = 0x5ct


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private padLength:I

.field private secret:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x30

    const/16 v0, 0x36

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/SSL3Mac;->genPad(BI)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->IPAD:[B

    const/16 v0, 0x5c

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/SSL3Mac;->genPad(BI)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->OPAD:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_12

    const/16 v0, 0x30

    iput v0, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->padLength:I

    :goto_11
    return-void

    :cond_12
    const/16 v0, 0x28

    iput v0, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->padLength:I

    goto :goto_11
.end method

.method private static genPad(BI)[B
    .registers 3

    new-array v0, p1, [B

    invoke-static {v0, p0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-object v0
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 8

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v0, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->secret:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->secret:[B

    array-length v3, v3

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->digest:Lorg/bouncycastle/crypto/Digest;

    sget-object v2, Lorg/bouncycastle/crypto/tls/SSL3Mac;->OPAD:[B

    iget v3, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->padLength:I

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, v0

    invoke-interface {v1, v0, v4, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/SSL3Mac;->reset()V

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/SSL3MAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method public getUnderlyingDigest()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .registers 3

    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->secret:[B

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/SSL3Mac;->reset()V

    return-void
.end method

.method public reset()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->secret:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->secret:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->digest:Lorg/bouncycastle/crypto/Digest;

    sget-object v1, Lorg/bouncycastle/crypto/tls/SSL3Mac;->IPAD:[B

    iget v2, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->padLength:I

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public update(B)V
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SSL3Mac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method
