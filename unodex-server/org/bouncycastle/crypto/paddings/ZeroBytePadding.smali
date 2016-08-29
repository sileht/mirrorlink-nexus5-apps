.class public Lorg/bouncycastle/crypto/paddings/ZeroBytePadding;
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

    :goto_2
    array-length v1, p1

    if-lt p2, v1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2
.end method

.method public getPaddingName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ZeroByte"

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
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    array-length v0, p1

    :goto_1
    if-gtz v0, :cond_7

    :cond_3
    array-length v1, p1

    sub-int v0, v1, v0

    return v0

    :cond_7
    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p1, v1

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
