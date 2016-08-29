.class public Lorg/bouncycastle/crypto/digests/SHA256Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;
.source "Unknown"


# static fields
.field private static final DIGEST_LENGTH:I = 0x20

.field static final K:[I


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private H6:I

.field private H7:I

.field private H8:I

.field private X:[I

.field private xOff:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x428a2f98

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x71374491

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, -0x4a3f0431

    aput v2, v0, v1

    const/4 v1, 0x3

    const v2, -0x164a245b

    aput v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x3956c25b

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x59f111f1

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x6dc07d5c    # -6.043E-28f

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x54e3a12b

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, -0x27f85568

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x12835b01

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x243185be

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x550c7dc3

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x72be5d74

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, -0x7f214e02

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, -0x6423f959

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, -0x3e640e8c

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, -0x1b64963f

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, -0x1041b87a

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0xfc19dc6

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x240ca1cc

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x2de92c6f

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x4a7484aa    # 4006186.5f

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x5cb0a9dc

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x76f988da

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, -0x67c1aeae

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, -0x57ce3993

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, -0x4ffcd838

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, -0x40a68039

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, -0x391ff40d

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, -0x2a586eb9

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x6ca6351

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x14292967

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x27b70a85

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x2e1b2138

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x4d2c6dfc    # 1.80805568E8f

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x53380d13

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x650a7354

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x766a0abb

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, -0x7e3d36d2

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, -0x6d8dd37b

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, -0x5d40175f

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0x57e599b5

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, -0x3db47490

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, -0x3893ae5d

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, -0x2e6d17e7

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, -0x2966f9dc

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, -0xbf1ca7b

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x106aa070

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x19a4c116

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x1e376c08

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x2748774c

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x34b0bcb5

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x391c0cb3

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x4ed8aa4a    # 1.81751936E9f

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x5b9cca4f

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x682e6ff3

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x748f82ee

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x78a5636f

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, -0x7b3787ec

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, -0x7338fdf8

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, -0x6f410006

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, -0x5baf9315

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, -0x41065c09

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, -0x398e870e

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SHA256Digest;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->copyIn(Lorg/bouncycastle/crypto/digests/SHA256Digest;)V

    return-void
.end method

.method private Ch(III)I
    .registers 6

    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    xor-int/2addr v0, v1

    return v0
.end method

.method private Maj(III)I
    .registers 6

    and-int v0, p1, p2

    and-int v1, p1, p3

    xor-int/2addr v0, v1

    and-int v1, p2, p3

    xor-int/2addr v0, v1

    return v0
.end method

.method private Sum0(I)I
    .registers 5

    ushr-int/lit8 v0, p1, 0x2

    shl-int/lit8 v1, p1, 0x1e

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xd

    shl-int/lit8 v2, p1, 0x13

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x16

    shl-int/lit8 v2, p1, 0xa

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private Sum1(I)I
    .registers 5

    ushr-int/lit8 v0, p1, 0x6

    shl-int/lit8 v1, p1, 0x1a

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xb

    shl-int/lit8 v2, p1, 0x15

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x19

    shl-int/lit8 v2, p1, 0x7

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private Theta0(I)I
    .registers 5

    ushr-int/lit8 v0, p1, 0x7

    shl-int/lit8 v1, p1, 0x19

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x12

    shl-int/lit8 v2, p1, 0xe

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x3

    xor-int/2addr v0, v1

    return v0
.end method

.method private Theta1(I)I
    .registers 5

    ushr-int/lit8 v0, p1, 0x11

    shl-int/lit8 v1, p1, 0xf

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x13

    shl-int/lit8 v2, p1, 0xd

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xa

    xor-int/2addr v0, v1

    return v0
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/SHA256Digest;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA256Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .registers 5

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->finish()V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    add-int/lit8 v1, p2, 0x14

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    add-int/lit8 v1, p2, 0x18

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    add-int/lit8 v1, p2, 0x1c

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->reset()V

    const/16 v0, 0x20

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "SHA-256"

    return-object v0
.end method

.method public getDigestSize()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method

.method protected processBlock()V
    .registers 15

    const/16 v11, 0x10

    const/4 v1, 0x0

    move v0, v11

    :goto_4
    const/16 v2, 0x3f

    if-le v0, v2, :cond_54

    iget v8, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    iget v7, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    iget v6, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    iget v5, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    iget v2, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    move v9, v7

    move v10, v8

    move v7, v5

    move v8, v6

    move v5, v3

    move v6, v4

    move v3, v0

    move v4, v2

    move v0, v1

    move v2, v1

    :goto_22
    const/16 v12, 0x8

    if-lt v0, v12, :cond_7e

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    add-int/2addr v0, v10

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    add-int/2addr v0, v9

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    add-int/2addr v0, v8

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    add-int/2addr v0, v7

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    add-int/2addr v0, v6

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    add-int/2addr v0, v5

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    move v0, v1

    :goto_51
    if-lt v0, v11, :cond_18a

    return-void

    :cond_54
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v4, v0, -0x2

    aget v3, v3, v4

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Theta1(I)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v5, v0, -0x7

    aget v4, v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v5, v0, -0xf

    aget v4, v4, v5

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Theta0(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v5, v0, -0x10

    aget v4, v4, v5

    add-int/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7e
    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v12

    invoke-direct {p0, v6, v5, v4}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v13, v13, v2

    add-int/2addr v12, v13

    iget-object v13, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v13, v13, v2

    add-int/2addr v12, v13

    add-int/2addr v3, v12

    add-int/2addr v7, v3

    invoke-direct {p0, v10}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v12

    invoke-direct {p0, v10, v9, v8}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v3, v12

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v12

    invoke-direct {p0, v7, v6, v5}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v13, v13, v2

    add-int/2addr v12, v13

    iget-object v13, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v13, v13, v2

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    add-int/2addr v8, v4

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v12

    invoke-direct {p0, v3, v10, v9}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v12

    invoke-direct {p0, v8, v7, v6}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v13, v13, v2

    add-int/2addr v12, v13

    iget-object v13, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v13, v13, v2

    add-int/2addr v12, v13

    add-int/2addr v5, v12

    add-int/2addr v9, v5

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v12

    invoke-direct {p0, v4, v3, v10}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v5, v12

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v9}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v12

    invoke-direct {p0, v9, v8, v7}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v13, v13, v2

    add-int/2addr v12, v13

    iget-object v13, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v13, v13, v2

    add-int/2addr v12, v13

    add-int/2addr v6, v12

    add-int/2addr v10, v6

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v12

    invoke-direct {p0, v5, v4, v3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v6, v12

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v10}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v12

    invoke-direct {p0, v10, v9, v8}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v13, v13, v2

    add-int/2addr v12, v13

    iget-object v13, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v13, v13, v2

    add-int/2addr v12, v13

    add-int/2addr v7, v12

    add-int/2addr v3, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v12

    invoke-direct {p0, v6, v5, v4}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v7, v12

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v12

    invoke-direct {p0, v3, v10, v9}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v13, v13, v2

    add-int/2addr v12, v13

    iget-object v13, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v13, v13, v2

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    add-int/2addr v4, v8

    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v12

    invoke-direct {p0, v7, v6, v5}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v12

    invoke-direct {p0, v4, v3, v10}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v13, v13, v2

    add-int/2addr v12, v13

    iget-object v13, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v13, v13, v2

    add-int/2addr v12, v13

    add-int/2addr v9, v12

    add-int/2addr v5, v9

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v12

    invoke-direct {p0, v8, v7, v6}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v9, v12

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v12

    invoke-direct {p0, v5, v4, v3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v13, v13, v2

    add-int/2addr v12, v13

    iget-object v13, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v13, v13, v2

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    add-int/2addr v6, v10

    invoke-direct {p0, v9}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v12

    invoke-direct {p0, v9, v8, v7}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_22

    :cond_18a
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_51
.end method

.method protected processLength(J)V
    .registers 8

    const/16 v4, 0xe

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    if-gt v0, v4, :cond_1a

    :goto_6
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    const/16 v1, 0xf

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    return-void

    :cond_1a
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->processBlock()V

    goto :goto_6
.end method

.method protected processWord([BI)V
    .registers 6

    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget v2, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    aput v0, v1, v2

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2e

    :goto_2d
    return-void

    :cond_2e
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->processBlock()V

    goto :goto_2d
.end method

.method public reset()V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    const v0, 0x6a09e667

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    const v0, -0x4498517b

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    const v0, 0x3c6ef372

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    const v0, -0x5ab00ac6

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    const v0, 0x510e527f

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    const v0, -0x64fa9774

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    const v0, 0x1f83d9ab

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    const v0, 0x5be0cd19

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    move v0, v1

    :goto_2f
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    array-length v2, v2

    if-ne v0, v2, :cond_35

    return-void

    :cond_35
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .registers 2

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->copyIn(Lorg/bouncycastle/crypto/digests/SHA256Digest;)V

    return-void
.end method
