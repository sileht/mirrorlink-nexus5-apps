.class public Lorg/bouncycastle/crypto/digests/GOST3411Digest;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/util/Memoable;


# static fields
.field private static final C2:[B

.field private static final DIGEST_LENGTH:I = 0x20


# instance fields
.field private C:[[B

.field private H:[B

.field private K:[B

.field private L:[B

.field private M:[B

.field S:[B

.field private Sum:[B

.field U:[B

.field V:[B

.field W:[B

.field a:[B

.field private byteCount:J

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private sBox:[B

.field wS:[S

.field w_S:[S

.field private xBuf:[B

.field private xBufOff:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/16 v0, 0x20

    new-array v0, v0, [B

    aput-byte v2, v0, v2

    const/4 v1, 0x1

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aput-byte v3, v0, v1

    const/16 v1, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C2:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    const/16 v6, 0x10

    const/4 v5, 0x1

    const/16 v4, 0x20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v2, v1, v3

    aput v4, v1, v5

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    new-instance v0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->a:[B

    new-array v0, v6, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    new-array v0, v6, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    const-string/jumbo v0, "D-A"

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->getSBox(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sBox:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sBox:[B

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v0, v5, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/GOST3411Digest;)V
    .registers 8

    const/16 v5, 0x10

    const/16 v4, 0x20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    new-instance v0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->a:[B

    new-array v0, v5, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    new-array v0, v5, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->reset(Lorg/bouncycastle/util/Memoable;)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 9

    const/16 v6, 0x10

    const/4 v5, 0x1

    const/16 v4, 0x20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v2, v1, v3

    aput v4, v1, v5

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    new-instance v0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->a:[B

    new-array v0, v6, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    new-array v0, v6, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sBox:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sBox:[B

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v0, v5, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->reset()V

    return-void
.end method

.method private A([B)[B
    .registers 9

    const/16 v6, 0x18

    const/16 v5, 0x8

    const/4 v1, 0x0

    move v0, v1

    :goto_6
    if-lt v0, v5, :cond_11

    invoke-static {p1, v5, p1, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->a:[B

    invoke-static {v0, v1, p1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_11
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->a:[B

    aget-byte v3, p1, v0

    add-int/lit8 v4, v0, 0x8

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private E([B[BI[BI)V
    .registers 9

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p4, p5, p2, p3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    return-void
.end method

.method private P([B)[B
    .registers 7

    const/16 v4, 0x8

    const/4 v0, 0x0

    :goto_3
    if-lt v0, v4, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    return-object v0

    :cond_8
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    mul-int/lit8 v2, v0, 0x4

    aget-byte v3, p1, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v0, 0x8

    aget-byte v3, p1, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v0, 0x10

    aget-byte v3, p1, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v0, 0x18

    aget-byte v3, p1, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private cpyBytesToShort([B[S)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_7

    return-void

    :cond_7
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    mul-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    int-to-short v1, v1

    aput-short v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private cpyShortToBytes([S[B)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_7

    return-void

    :cond_7
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-short v2, p1, v0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    mul-int/lit8 v1, v0, 0x2

    aget-short v2, p1, v0

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private finish()V
    .registers 6

    const/4 v4, 0x0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    invoke-static {v0, v1, v2, v4}, Lorg/bouncycastle/crypto/util/Pack;->longToLittleEndian(J[BI)V

    :goto_b
    iget v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    invoke-virtual {p0, v0, v4}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->processBlock([BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    invoke-virtual {p0, v0, v4}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->processBlock([BI)V

    return-void

    :cond_1a
    invoke-virtual {p0, v4}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->update(B)V

    goto :goto_b
.end method

.method private fw([B)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xf

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cpyBytesToShort([B[S)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    aget-short v1, v1, v5

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    aget-short v2, v2, v6

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    const/4 v3, 0x2

    aget-short v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    const/4 v3, 0x3

    aget-short v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    const/16 v3, 0xc

    aget-short v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    aget-short v2, v2, v4

    xor-int/2addr v1, v2

    int-to-short v1, v1

    int-to-short v1, v1

    aput-short v1, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    invoke-static {v0, v6, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cpyShortToBytes([S[B)V

    return-void
.end method

.method private sumByteArray([B)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    array-length v2, v2

    if-ne v0, v2, :cond_8

    return-void

    :cond_8
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    int-to-byte v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    ushr-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;-><init>(Lorg/bouncycastle/crypto/digests/GOST3411Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .registers 6

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->finish()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->reset()V

    const/16 v0, 0x20

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "GOST3411"

    return-object v0
.end method

.method public getByteLength()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method

.method public getDigestSize()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method

.method protected processBlock([BI)V
    .registers 14

    const/16 v10, 0x20

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    invoke-static {p1, p2, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    invoke-static {v0, v3, v1, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    invoke-static {v0, v3, v1, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v3

    :goto_17
    if-lt v0, v10, :cond_4d

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->P([B)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->E([B[BI[BI)V

    const/4 v0, 0x1

    move v1, v0

    :goto_2a
    const/4 v0, 0x4

    if-lt v1, v0, :cond_5f

    move v0, v3

    :goto_2e
    const/16 v1, 0xc

    if-lt v0, v1, :cond_b1

    move v0, v3

    :goto_33
    if-lt v0, v10, :cond_ba

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->fw([B)V

    move v0, v3

    :goto_3b
    if-lt v0, v10, :cond_cd

    move v0, v3

    :goto_3e
    const/16 v1, 0x3d

    if-lt v0, v1, :cond_e0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_4d
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    aget-byte v2, v2, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    aget-byte v4, v4, v0

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_5f
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->A([B)[B

    move-result-object v2

    move v0, v3

    :goto_66
    if-lt v0, v10, :cond_8d

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->A([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->A([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    move v0, v3

    :goto_75
    if-lt v0, v10, :cond_9f

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->P([B)[B

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    mul-int/lit8 v7, v1, 0x8

    iget-object v8, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    mul-int/lit8 v9, v1, 0x8

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->E([B[BI[BI)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2a

    :cond_8d
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    aget-byte v5, v2, v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v6, v6, v1

    aget-byte v6, v6, v0

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    :cond_9f
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    aget-byte v4, v4, v0

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    :cond_b1
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->fw([B)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2e

    :cond_ba
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    aget-byte v2, v2, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    aget-byte v4, v4, v0

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_33

    :cond_cd
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    aget-byte v2, v2, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    aget-byte v4, v4, v0

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3b

    :cond_e0
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->fw([B)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3e
.end method

.method public reset()V
    .registers 7

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    iput v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    move v0, v1

    :goto_a
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    array-length v2, v2

    if-lt v0, v2, :cond_45

    move v0, v1

    :goto_10
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    array-length v2, v2

    if-lt v0, v2, :cond_4c

    move v0, v1

    :goto_16
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    array-length v2, v2

    if-lt v0, v2, :cond_53

    move v0, v1

    :goto_1c
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v4

    array-length v2, v2

    if-lt v0, v2, :cond_5a

    move v0, v1

    :goto_24
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v5

    array-length v2, v2

    if-lt v0, v2, :cond_63

    move v0, v1

    :goto_2c
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    array-length v2, v2

    if-lt v0, v2, :cond_6c

    move v0, v1

    :goto_32
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v2, v2

    if-lt v0, v2, :cond_73

    sget-object v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C2:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    const/4 v3, 0x2

    aget-object v2, v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C2:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_45
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_4c
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_53
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_5a
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v4

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_63
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v5

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_6c
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_73
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_32
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .registers 10

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    check-cast p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sBox:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sBox:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sBox:[B

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v0, v5, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->reset()V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v0, v0, v5

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v1, v1, v5

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v5

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v0, v0, v6

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v1, v1, v6

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v6

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v0, v0, v7

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v1, v1, v7

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v7

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    return-void
.end method

.method public update(B)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v1, v1

    if-eq v0, v1, :cond_1b

    :goto_13
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    return-void

    :cond_1b
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sumByteArray([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    invoke-virtual {p0, v0, v3}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->processBlock([BI)V

    iput v3, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    goto :goto_13
.end method

.method public update([BII)V
    .registers 9

    const/4 v4, 0x0

    :goto_1
    iget v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    if-nez v0, :cond_d

    :cond_5
    :goto_5
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v0, v0

    if-gt p3, v0, :cond_19

    :goto_a
    if-gtz p3, :cond_3d

    return-void

    :cond_d
    if-lez p3, :cond_5

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_19
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v1, v1

    invoke-static {p1, p2, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sumByteArray([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    invoke-virtual {p0, v0, v4}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->processBlock([BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v0, v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    goto :goto_5

    :cond_3d
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_a
.end method
