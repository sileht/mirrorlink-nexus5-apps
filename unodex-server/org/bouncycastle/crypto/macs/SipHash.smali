.class public Lorg/bouncycastle/crypto/macs/SipHash;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field protected buf:[B

.field protected bufPos:I

.field protected final c:I

.field protected final d:I

.field protected k0:J

.field protected k1:J

.field protected v0:J

.field protected v1:J

.field protected v2:J

.field protected v3:J

.field protected v4:J

.field protected wordCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->buf:[B

    iput v1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->bufPos:I

    iput v1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->c:I

    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->d:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->buf:[B

    iput v1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->bufPos:I

    iput v1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    iput p1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->c:I

    iput p2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->d:I

    return-void
.end method

.method protected static rotateLeft(JI)J
    .registers 7

    shl-long v0, p0, p2

    rsub-int/lit8 v2, p2, 0x40

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method protected applySipRounds(I)V
    .registers 9

    const/16 v6, 0x20

    const/4 v0, 0x0

    :goto_3
    if-lt v0, p1, :cond_6

    return-void

    :cond_6
    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    const/16 v1, 0xd

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    const/16 v1, 0x10

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    invoke-static {v2, v3, v6}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    const/16 v1, 0x11

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    const/16 v1, 0x15

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    invoke-static {v2, v3, v6}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public doFinal([BI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->doFinal()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/crypto/util/Pack;->longToLittleEndian(J[BI)V

    const/16 v0, 0x8

    return v0
.end method

.method public doFinal()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v3, 0x7

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    shl-int/lit8 v1, v1, 0x3

    iget v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->bufPos:I

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    :goto_10
    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->bufPos:I

    if-lt v0, v3, :cond_32

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    const-wide/16 v2, 0xff

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->d:I

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/macs/SipHash;->applySipRounds(I)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    xor-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->reset()V

    return-wide v0

    :cond_32
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->bufPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->bufPos:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_10
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SipHash-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v3, 0x0

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_22

    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2b

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k0:J

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k1:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->reset()V

    return-void

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'params\' must be an instance of KeyParameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'params\' must be a 128-bit key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected processMessageWord()V
    .registers 5

    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->buf:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    xor-long/2addr v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    iget v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->c:I

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/macs/SipHash;->applySipRounds(I)V

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    return-void
.end method

.method public reset()V
    .registers 6

    const/4 v4, 0x0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k0:J

    const-wide v2, 0x736f6d6570736575L    # 1.0986868386607877E248

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k1:J

    const-wide v2, 0x646f72616e646f6dL    # 6.222199573468475E175

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k0:J

    const-wide v2, 0x6c7967656e657261L    # 3.4208747916531402E214

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k1:J

    const-wide v2, 0x7465646279746573L    # 4.901176695720602E252

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->buf:[B

    invoke-static {v0, v4}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->bufPos:I

    iput v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    return-void
.end method

.method public update(B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->bufPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->bufPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->bufPos:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->buf:[B

    array-length v1, v1

    if-eq v0, v1, :cond_13

    :goto_12
    return-void

    :cond_13
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->bufPos:I

    goto :goto_12
.end method

.method public update([BII)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    if-lt v0, p3, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/macs/SipHash;->bufPos:I

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->bufPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->bufPos:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/SipHash;->buf:[B

    array-length v3, v3

    if-eq v2, v3, :cond_1e

    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1e
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    iput v1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->bufPos:I

    goto :goto_1b
.end method
