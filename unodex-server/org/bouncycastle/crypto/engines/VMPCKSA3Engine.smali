.class public Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;
.super Lorg/bouncycastle/crypto/engines/VMPCEngine;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/VMPCEngine;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "VMPC-KSA3"

    return-object v0
.end method

.method protected initKey([B[B)V
    .registers 11

    const/16 v4, 0x100

    const/16 v7, 0x300

    const/4 v1, 0x0

    iput-byte v1, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->s:B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    move v0, v1

    :goto_c
    if-lt v0, v4, :cond_1a

    move v0, v1

    :goto_f
    if-lt v0, v7, :cond_23

    move v0, v1

    :goto_12
    if-lt v0, v7, :cond_5c

    move v0, v1

    :goto_15
    if-lt v0, v7, :cond_96

    iput-byte v1, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->n:B

    return-void

    :cond_1a
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    int-to-byte v3, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_23
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->s:B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    and-int/lit16 v5, v0, 0xff

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    array-length v4, p1

    rem-int v4, v0, v4

    aget-byte v4, p1, v4

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    iput-byte v2, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->s:B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    and-int/lit16 v3, v0, 0xff

    aget-byte v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    and-int/lit16 v4, v0, 0xff

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    iget-byte v6, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    iget-byte v4, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->s:B

    and-int/lit16 v4, v4, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_5c
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->s:B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    and-int/lit16 v5, v0, 0xff

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    array-length v4, p2

    rem-int v4, v0, v4

    aget-byte v4, p2, v4

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    iput-byte v2, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->s:B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    and-int/lit16 v3, v0, 0xff

    aget-byte v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    and-int/lit16 v4, v0, 0xff

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    iget-byte v6, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    iget-byte v4, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->s:B

    and-int/lit16 v4, v4, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12

    :cond_96
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->s:B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    and-int/lit16 v5, v0, 0xff

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    array-length v4, p1

    rem-int v4, v0, v4

    aget-byte v4, p1, v4

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    iput-byte v2, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->s:B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    and-int/lit16 v3, v0, 0xff

    aget-byte v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    and-int/lit16 v4, v0, 0xff

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    iget-byte v6, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    iget-byte v4, p0, Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;->s:B

    and-int/lit16 v4, v4, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_15
.end method
