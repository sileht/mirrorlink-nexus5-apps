.class public Lorg/bouncycastle/crypto/paddings/PKCS7Padding;
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
    .registers 5

    array-length v0, p1

    sub-int/2addr v0, p2

    int-to-byte v0, v0

    :goto_3
    array-length v1, p1

    if-lt p2, v1, :cond_7

    return v0

    :cond_7
    int-to-byte v1, v0

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3
.end method

.method public getPaddingName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "PKCS7"

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

    aget-byte v0, p1, v0

    and-int/lit16 v1, v0, 0xff

    array-length v0, p1

    if-le v1, v0, :cond_13

    :cond_a
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v1, "pad block corrupted"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :goto_16
    if-le v0, v1, :cond_19

    return v1

    :cond_19
    array-length v2, p1

    sub-int/2addr v2, v0

    aget-byte v2, p1, v2

    if-ne v2, v1, :cond_22

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_22
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v1, "pad block corrupted"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
