.class public Lorg/bouncycastle/crypto/tls/UseSRTPData;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private mki:[B

.field private protectionProfiles:[I


# direct methods
.method public constructor <init>([I[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'protectionProfiles\' must have length from 1 to (2^15 - 1)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    array-length v0, p1

    const v1, 0x8000

    if-ge v0, v1, :cond_5

    if-eqz p2, :cond_24

    array-length v0, p2

    const/16 v1, 0xff

    if-gt v0, v1, :cond_27

    :goto_1f
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/UseSRTPData;->protectionProfiles:[I

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/UseSRTPData;->mki:[B

    return-void

    :cond_24
    sget-object p2, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    goto :goto_1f

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'mki\' cannot be longer than 255 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMki()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/UseSRTPData;->mki:[B

    return-object v0
.end method

.method public getProtectionProfiles()[I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/UseSRTPData;->protectionProfiles:[I

    return-object v0
.end method
