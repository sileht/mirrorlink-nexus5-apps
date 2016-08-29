.class public Lorg/bouncycastle/crypto/engines/RC564Engine;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final P64:J = -0x481eae9d7512d595L

.field private static final Q64:J = -0x61c8864680b583ebL

.field private static final bytesPerWord:I = 0x8

.field private static final wordSize:I = 0x40


# instance fields
.field private _S:[J

.field private _noRounds:I

.field private forEncryption:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_noRounds:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    return-void
.end method

.method private bytesToWord([BI)J
    .registers 9

    const-wide/16 v2, 0x0

    const/4 v0, 0x7

    :goto_3
    if-gez v0, :cond_6

    return-wide v2

    :cond_6
    const/16 v1, 0x8

    shl-long/2addr v2, v1

    add-int v1, v0, p2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method private decryptBlock([BI[BI)I
    .registers 14

    const/4 v8, 0x1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC564Engine;->bytesToWord([BI)J

    move-result-wide v4

    add-int/lit8 v0, p2, 0x8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/RC564Engine;->bytesToWord([BI)J

    move-result-wide v2

    iget v0, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_noRounds:I

    :goto_d
    if-ge v0, v8, :cond_27

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    sub-long v0, v4, v0

    invoke-direct {p0, v0, v1, p3, p4}, Lorg/bouncycastle/crypto/engines/RC564Engine;->wordToBytes(J[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    aget-wide v0, v0, v8

    sub-long v0, v2, v0

    add-int/lit8 v2, p4, 0x8

    invoke-direct {p0, v0, v1, p3, v2}, Lorg/bouncycastle/crypto/engines/RC564Engine;->wordToBytes(J[BI)V

    const/16 v0, 0x10

    return v0

    :cond_27
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v1, v6

    sub-long/2addr v2, v6

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/RC564Engine;->rotateRight(JJ)J

    move-result-wide v2

    xor-long/2addr v2, v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    mul-int/lit8 v6, v0, 0x2

    aget-wide v6, v1, v6

    sub-long/2addr v4, v6

    invoke-direct {p0, v4, v5, v2, v3}, Lorg/bouncycastle/crypto/engines/RC564Engine;->rotateRight(JJ)J

    move-result-wide v4

    xor-long/2addr v4, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_d
.end method

.method private encryptBlock([BI[BI)I
    .registers 13

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC564Engine;->bytesToWord([BI)J

    move-result-wide v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    add-long/2addr v4, v2

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/RC564Engine;->bytesToWord([BI)J

    move-result-wide v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    aget-wide v6, v1, v0

    add-long/2addr v2, v6

    :goto_16
    iget v1, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_noRounds:I

    if-le v0, v1, :cond_25

    invoke-direct {p0, v4, v5, p3, p4}, Lorg/bouncycastle/crypto/engines/RC564Engine;->wordToBytes(J[BI)V

    add-int/lit8 v0, p4, 0x8

    invoke-direct {p0, v2, v3, p3, v0}, Lorg/bouncycastle/crypto/engines/RC564Engine;->wordToBytes(J[BI)V

    const/16 v0, 0x10

    return v0

    :cond_25
    xor-long/2addr v4, v2

    invoke-direct {p0, v4, v5, v2, v3}, Lorg/bouncycastle/crypto/engines/RC564Engine;->rotateLeft(JJ)J

    move-result-wide v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    mul-int/lit8 v6, v0, 0x2

    aget-wide v6, v1, v6

    add-long/2addr v4, v6

    xor-long/2addr v2, v4

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/RC564Engine;->rotateLeft(JJ)J

    move-result-wide v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v1, v6

    add-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method

.method private rotateLeft(JJ)J
    .registers 12

    const-wide/16 v2, 0x3f

    and-long v0, p3, v2

    long-to-int v0, v0

    shl-long v0, p1, v0

    and-long/2addr v2, p3

    const-wide/16 v4, 0x40

    sub-long v2, v4, v2

    long-to-int v2, v2

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private rotateRight(JJ)J
    .registers 12

    const-wide/16 v2, 0x3f

    and-long v0, p3, v2

    long-to-int v0, v0

    ushr-long v0, p1, v0

    and-long/2addr v2, p3

    const-wide/16 v4, 0x40

    sub-long v2, v4, v2

    long-to-int v2, v2

    shl-long v2, p1, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private setKey([B)V
    .registers 14

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    array-length v0, p1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v8, v0, [J

    move v0, v1

    :goto_b
    array-length v4, p1

    if-ne v0, v4, :cond_39

    iget v0, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_noRounds:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    const-wide v4, -0x481eae9d7512d595L    # -1.590398847350152E-39

    aput-wide v4, v0, v1

    const/4 v0, 0x1

    :goto_22
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    array-length v4, v4

    if-lt v0, v4, :cond_4d

    array-length v0, v8

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    array-length v4, v4

    if-gt v0, v4, :cond_60

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    array-length v0, v0

    :goto_30
    mul-int/lit8 v0, v0, 0x3

    move-wide v4, v2

    move-wide v6, v2

    move v2, v1

    move v3, v1

    :goto_36
    if-lt v1, v0, :cond_62

    return-void

    :cond_39
    div-int/lit8 v4, v0, 0x8

    aget-wide v6, v8, v4

    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    int-to-long v10, v5

    rem-int/lit8 v5, v0, 0x8

    mul-int/lit8 v5, v5, 0x8

    shl-long/2addr v10, v5

    add-long/2addr v6, v10

    aput-wide v6, v8, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_4d
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    add-int/lit8 v6, v0, -0x1

    aget-wide v6, v5, v6

    const-wide v10, -0x61c8864680b583ebL

    add-long/2addr v6, v10

    aput-wide v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_60
    array-length v0, v8

    goto :goto_30

    :cond_62
    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    aget-wide v10, v10, v3

    add-long/2addr v6, v10

    add-long/2addr v6, v4

    const-wide/16 v10, 0x3

    invoke-direct {p0, v6, v7, v10, v11}, Lorg/bouncycastle/crypto/engines/RC564Engine;->rotateLeft(JJ)J

    move-result-wide v6

    aput-wide v6, v9, v3

    aget-wide v10, v8, v2

    add-long/2addr v10, v6

    add-long/2addr v10, v4

    add-long/2addr v4, v6

    invoke-direct {p0, v10, v11, v4, v5}, Lorg/bouncycastle/crypto/engines/RC564Engine;->rotateLeft(JJ)J

    move-result-wide v4

    aput-wide v4, v8, v2

    add-int/lit8 v3, v3, 0x1

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    array-length v9, v9

    rem-int/2addr v3, v9

    add-int/lit8 v2, v2, 0x1

    array-length v9, v8

    rem-int/2addr v2, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_36
.end method

.method private wordToBytes(J[BI)V
    .registers 10

    const/16 v3, 0x8

    const/4 v0, 0x0

    :goto_3
    if-lt v0, v3, :cond_6

    return-void

    :cond_6
    add-int v1, v0, p4

    long-to-int v2, p1

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    ushr-long/2addr p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "RC5-64"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/RC5Parameters;

    if-eqz v0, :cond_16

    check-cast p2, Lorg/bouncycastle/crypto/params/RC5Parameters;

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->forEncryption:Z

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/RC5Parameters;->getRounds()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_noRounds:I

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/RC5Parameters;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RC564Engine;->setKey([B)V

    return-void

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid parameter passed to RC564 init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .registers 6

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->forEncryption:Z

    if-nez v0, :cond_9

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC564Engine;->decryptBlock([BI[BI)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC564Engine;->encryptBlock([BI[BI)I

    move-result v0

    goto :goto_8
.end method

.method public reset()V
    .registers 1

    return-void
.end method
