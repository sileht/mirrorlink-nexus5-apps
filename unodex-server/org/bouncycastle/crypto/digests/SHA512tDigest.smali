.class public Lorg/bouncycastle/crypto/digests/SHA512tDigest;
.super Lorg/bouncycastle/crypto/digests/LongDigest;
.source "Unknown"


# instance fields
.field private H1t:J

.field private H2t:J

.field private H3t:J

.field private H4t:J

.field private H5t:J

.field private H6t:J

.field private H7t:J

.field private H8t:J

.field private final digestLength:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;-><init>()V

    const/16 v0, 0x200

    if-ge p1, v0, :cond_1e

    rem-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_27

    const/16 v0, 0x180

    if-eq p1, v0, :cond_30

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->tIvGenerate(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->reset()V

    return-void

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bitLength cannot be >= 512"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bitLength needs to be a multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bitLength cannot be 384 use SHA384 instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SHA512tDigest;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/LongDigest;-><init>(Lorg/bouncycastle/crypto/digests/LongDigest;)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->reset(Lorg/bouncycastle/util/Memoable;)V

    return-void
.end method

.method private static intToBigEndian(I[BII)V
    .registers 7

    const/4 v0, 0x4

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_5
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_a

    return-void

    :cond_a
    rsub-int/lit8 v1, v0, 0x3

    mul-int/lit8 v1, v1, 0x8

    add-int v2, p2, v0

    ushr-int v1, p0, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    goto :goto_5
.end method

.method private static longToBigEndian(J[BII)V
    .registers 9

    if-gtz p4, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->intToBigEndian(I[BII)V

    const/4 v0, 0x4

    if-le p4, v0, :cond_2

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    add-int/lit8 v2, p4, -0x4

    invoke-static {v0, p2, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->intToBigEndian(I[BII)V

    goto :goto_2
.end method

.method private tIvGenerate(I)V
    .registers 4

    const-wide v0, -0x3053bc3da9e69353L    # -6.392239886847908E75

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H1:J

    const-wide v0, 0x1ec20b20216f029eL    # 1.604250256667292E-160

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H2:J

    const-wide v0, -0x6634a928a4cea272L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H3:J

    const-wide v0, 0xea509ffab89354L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H4:J

    const-wide v0, -0xb540825f7bcd88cL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H5:J

    const-wide v0, 0x3ea0cd298e9bc9baL    # 5.007211971427005E-7

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H6:J

    const-wide v0, -0x45d983f1a11be732L    # -1.418977391716189E-28

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H7:J

    const-wide v0, -0x1ba974349247b24L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H8:J

    const/16 v0, 0x53

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    const/16 v0, 0x64

    if-gt p1, v0, :cond_92

    const/16 v0, 0xa

    if-gt p1, v0, :cond_ad

    add-int/lit8 v0, p1, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    :goto_6e
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->finish()V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H1:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H1t:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H2:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H2t:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H3:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H3t:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H4:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H4t:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H5:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H5t:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H6:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H6t:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H7:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H7t:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H8:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H8t:J

    return-void

    :cond_92
    div-int/lit8 v0, p1, 0x64

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    rem-int/lit8 v0, p1, 0x64

    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    goto :goto_6e

    :cond_ad
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    rem-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    goto :goto_6e
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;-><init>(Lorg/bouncycastle/crypto/digests/SHA512tDigest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .registers 7

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->finish()V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H1:J

    iget v2, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    invoke-static {v0, v1, p1, p2, v2}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H2:J

    add-int/lit8 v2, p2, 0x8

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    add-int/lit8 v3, v3, -0x8

    invoke-static {v0, v1, p1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H3:J

    add-int/lit8 v2, p2, 0x10

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    add-int/lit8 v3, v3, -0x10

    invoke-static {v0, v1, p1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H4:J

    add-int/lit8 v2, p2, 0x18

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    add-int/lit8 v3, v3, -0x18

    invoke-static {v0, v1, p1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H5:J

    add-int/lit8 v2, p2, 0x20

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    add-int/lit8 v3, v3, -0x20

    invoke-static {v0, v1, p1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H6:J

    add-int/lit8 v2, p2, 0x28

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    add-int/lit8 v3, v3, -0x28

    invoke-static {v0, v1, p1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H7:J

    add-int/lit8 v2, p2, 0x30

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    add-int/lit8 v3, v3, -0x30

    invoke-static {v0, v1, p1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H8:J

    add-int/lit8 v2, p2, 0x38

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    add-int/lit8 v3, v3, -0x38

    invoke-static {v0, v1, p1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->reset()V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SHA-512/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestSize()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    return v0
.end method

.method public reset()V
    .registers 3

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->reset()V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H1t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H2t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H3t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H3:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H4t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H4:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H5t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H5:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H6t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H6:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H7t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H7:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H8t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H8:J

    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .registers 4

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHA512tDigest;

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    iget v1, p1, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    if-ne v0, v1, :cond_2c

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/LongDigest;->copyIn(Lorg/bouncycastle/crypto/digests/LongDigest;)V

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H1t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H1t:J

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H2t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H2t:J

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H3t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H3t:J

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H4t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H4t:J

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H5t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H5t:J

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H6t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H6t:J

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H7t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H7t:J

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H8t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H8t:J

    return-void

    :cond_2c
    new-instance v0, Lorg/bouncycastle/util/MemoableResetException;

    const-string/jumbo v1, "digestLength inappropriate in other"

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/MemoableResetException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
