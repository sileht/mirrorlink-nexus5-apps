.class public Lorg/bouncycastle/crypto/paddings/TBCPadding;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .registers 7

    const/16 v1, 0xff

    const/4 v0, 0x0

    array-length v2, p1

    sub-int/2addr v2, p2

    if-gtz p2, :cond_15

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1f

    :cond_10
    :goto_10
    int-to-byte v0, v0

    :goto_11
    array-length v1, p1

    if-lt p2, v1, :cond_21

    return v2

    :cond_15
    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_10

    move v0, v1

    goto :goto_10

    :cond_1f
    move v0, v1

    goto :goto_10

    :cond_21
    int-to-byte v1, v0

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_11
.end method

.method public getPaddingName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "TBC"

    return-object v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public padCount([B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v1, p1, v0

    array-length v0, p1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_e

    :goto_a
    array-length v1, p1

    sub-int v0, v1, v0

    return v0

    :cond_e
    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p1, v2

    if-eq v2, v1, :cond_6

    goto :goto_a
.end method
