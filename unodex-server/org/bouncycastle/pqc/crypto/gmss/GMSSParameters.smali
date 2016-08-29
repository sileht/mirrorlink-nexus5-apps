.class public Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private K:[I

.field private heightOfTrees:[I

.field private numOfLayers:I

.field private winternitzParameter:[I


# direct methods
.method public constructor <init>(I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v6, 0x3

    const/16 v1, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-le p1, v1, :cond_3b

    const/16 v0, 0x14

    if-le p1, v0, :cond_4c

    const/4 v0, 0x4

    new-array v0, v0, [I

    aput v1, v0, v4

    aput v1, v0, v5

    aput v1, v0, v3

    aput v1, v0, v6

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/16 v2, 0x9

    aput v2, v1, v4

    const/16 v2, 0x9

    aput v2, v1, v5

    const/16 v2, 0x9

    aput v2, v1, v3

    aput v6, v1, v6

    const/4 v2, 0x4

    new-array v2, v2, [I

    aput v3, v2, v4

    aput v3, v2, v5

    aput v3, v2, v3

    aput v3, v2, v6

    array-length v3, v0

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    :goto_3a
    return-void

    :cond_3b
    new-array v0, v5, [I

    aput v1, v0, v4

    new-array v1, v5, [I

    aput v6, v1, v4

    new-array v2, v5, [I

    aput v3, v2, v4

    array-length v3, v0

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    goto :goto_3a

    :cond_4c
    new-array v0, v3, [I

    aput v1, v0, v4

    aput v1, v0, v5

    new-array v1, v3, [I

    const/4 v2, 0x5

    aput v2, v1, v4

    const/4 v2, 0x4

    aput v2, v1, v5

    new-array v2, v3, [I

    aput v3, v2, v4

    aput v3, v2, v5

    array-length v3, v0

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    goto :goto_3a
.end method

.method public constructor <init>(I[I[I[I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    return-void
.end method

.method private init(I[I[I[I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, ""

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    array-length v4, p3

    if-eq v3, v4, :cond_20

    :cond_d
    const-string/jumbo v0, "Unexpected parameterset format"

    move v1, v2

    :goto_11
    move v3, v1

    move-object v1, v0

    move v0, v2

    :goto_14
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    if-lt v0, v4, :cond_2b

    if-nez v3, :cond_4e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    array-length v4, p2

    if-ne v3, v4, :cond_d

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    array-length v4, p4

    if-ne v3, v4, :cond_d

    goto :goto_11

    :cond_2b
    aget v4, p4, v0

    if-ge v4, v6, :cond_3f

    :cond_2f
    const-string/jumbo v1, "Wrong parameter K (K >= 2 and H-K even required)!"

    move v3, v2

    :goto_33
    aget v4, p2, v0

    const/4 v5, 0x4

    if-ge v4, v5, :cond_49

    :cond_38
    const-string/jumbo v1, "Wrong parameter H or w (H > 3 and w > 1 required)!"

    move v3, v2

    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_3f
    aget v4, p2, v0

    aget v5, p4, v0

    sub-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2f

    goto :goto_33

    :cond_49
    aget v4, p3, v0

    if-lt v4, v6, :cond_38

    goto :goto_3c

    :cond_4e
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->heightOfTrees:[I

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->winternitzParameter:[I

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->K:[I

    return-void
.end method


# virtual methods
.method public getHeightOfTrees()[I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->heightOfTrees:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getK()[I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->K:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getNumOfLayers()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    return v0
.end method

.method public getWinternitzParameter()[I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->winternitzParameter:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method
