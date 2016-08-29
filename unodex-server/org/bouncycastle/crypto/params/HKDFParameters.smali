.class public Lorg/bouncycastle/crypto/params/HKDFParameters;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field private final ikm:[B

.field private final info:[B

.field private final salt:[B

.field private final skipExpand:Z


# direct methods
.method private constructor <init>([BZ[B[B)V
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1c

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->ikm:[B

    iput-boolean p2, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->skipExpand:Z

    if-nez p3, :cond_25

    :cond_11
    iput-object v1, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->salt:[B

    :goto_13
    if-eqz p4, :cond_2f

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    :goto_19
    iput-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->info:[B

    return-void

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "IKM (input keying material) should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    array-length v0, p3

    if-eqz v0, :cond_11

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->salt:[B

    goto :goto_13

    :cond_2f
    new-array v0, v2, [B

    goto :goto_19
.end method

.method public constructor <init>([B[B[B)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/bouncycastle/crypto/params/HKDFParameters;-><init>([BZ[B[B)V

    return-void
.end method

.method public static defaultParameters([B)Lorg/bouncycastle/crypto/params/HKDFParameters;
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Lorg/bouncycastle/crypto/params/HKDFParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lorg/bouncycastle/crypto/params/HKDFParameters;-><init>([BZ[B[B)V

    return-object v0
.end method

.method public static skipExtractParameters([B[B)Lorg/bouncycastle/crypto/params/HKDFParameters;
    .registers 5

    new-instance v0, Lorg/bouncycastle/crypto/params/HKDFParameters;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/bouncycastle/crypto/params/HKDFParameters;-><init>([BZ[B[B)V

    return-object v0
.end method


# virtual methods
.method public getIKM()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->ikm:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getInfo()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->info:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSalt()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->salt:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public skipExtract()Z
    .registers 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->skipExpand:Z

    return v0
.end method
