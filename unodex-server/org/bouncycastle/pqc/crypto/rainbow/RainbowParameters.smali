.class public Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private final DEFAULT_VI:[I

.field private vi:[I


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xc

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x11

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x16

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x21

    aput v2, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->DEFAULT_VI:[I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->DEFAULT_VI:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    return-void
.end method

.method public constructor <init>([I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xc

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x11

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x16

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x21

    aput v2, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->DEFAULT_VI:[I

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    :try_start_22
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->checkParams()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    :goto_25
    return-void

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method private checkParams()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1c

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Rainbow needs at least 1 layer, such that v1 < v2."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "no layers defined."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_25

    return-void

    :cond_25
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    aget v1, v1, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_34

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_34
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "v[i] has to be smaller than v[i+1]"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDocLength()I
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNumOfLayers()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getVi()[I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    return-object v0
.end method
