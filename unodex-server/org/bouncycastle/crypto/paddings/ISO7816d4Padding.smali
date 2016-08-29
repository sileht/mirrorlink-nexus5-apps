.class public Lorg/bouncycastle/crypto/paddings/ISO7816d4Padding;
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
    .registers 6

    array-length v0, p1

    sub-int v1, v0, p2

    const/16 v0, -0x80

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    :goto_9
    array-length v2, p1

    if-lt v0, v2, :cond_d

    return v1

    :cond_d
    const/4 v2, 0x0

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public getPaddingName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ISO7816-4"

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

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_f

    :goto_5
    aget-byte v1, p1, v0

    const/16 v2, -0x80

    if-ne v1, v2, :cond_14

    array-length v1, p1

    sub-int v0, v1, v0

    return v0

    :cond_f
    aget-byte v1, p1, v0

    if-eqz v1, :cond_1

    goto :goto_5

    :cond_14
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v1, "pad block corrupted"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
