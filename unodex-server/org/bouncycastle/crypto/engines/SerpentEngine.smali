.class public Lorg/bouncycastle/crypto/engines/SerpentEngine;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field static final PHI:I = -0x61c88647

.field static final ROUNDS:I = 0x20


# instance fields
.field private X0:I

.field private X1:I

.field private X2:I

.field private X3:I

.field private encrypting:Z

.field private wKey:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private LT()V
    .registers 6

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v2, v0

    xor-int/2addr v2, v1

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v1

    shl-int/lit8 v4, v0, 0x3

    xor-int/2addr v3, v4

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    const/4 v2, 0x7

    invoke-direct {p0, v3, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v0, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v0, v2

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    const/16 v1, 0x16

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    return-void
.end method

.method private bytesToWord([BI)I
    .registers 5

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private decryptBlock([BI[BI)V
    .registers 9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x83

    aget v0, v0, v1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x82

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x81

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x80

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x78

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x79

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x74

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x75

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x76

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x77

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x70

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x71

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x72

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x73

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x68

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x69

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x64

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x65

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x66

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x67

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x60

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x61

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x62

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x63

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x58

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x59

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x54

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x55

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x56

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x57

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x50

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x51

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x52

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x53

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x48

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x49

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x44

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x45

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x46

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x47

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x40

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x41

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x42

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x43

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x38

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x39

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x34

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x35

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x36

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x37

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x30

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x31

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x32

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x33

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x28

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x29

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x24

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x25

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x26

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x27

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x20

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x21

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x22

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x23

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x18

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x19

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x14

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x16

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x17

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x10

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x12

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x13

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xc

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xe

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xf

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    return-void
.end method

.method private encryptBlock([BI[BI)V
    .registers 10

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    add-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    add-int/lit8 v0, p2, 0x8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    add-int/lit8 v0, p2, 0xc

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0xa

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0xe

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x12

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x16

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x18

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x19

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x1a

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x1b

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x1c

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1d

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x1e

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x1f

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x20

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x21

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x22

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x24

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x25

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x26

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x27

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x28

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x29

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x2a

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x2b

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x2c

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2d

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x2e

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x30

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x31

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x32

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x33

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x34

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x35

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x36

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x37

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x38

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x39

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x3a

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x3b

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x3c

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3d

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x3e

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x3f

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x40

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x41

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x42

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x43

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x44

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x45

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x46

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x47

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x48

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x49

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x4a

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x4b

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x4c

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4d

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x4e

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x4f

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x50

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x51

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x52

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x53

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x54

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x55

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x56

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x57

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x58

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x59

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x5a

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x5b

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x5c

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5d

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x5e

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x5f

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x60

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x61

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x62

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x63

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x64

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x65

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x66

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x67

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x68

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x69

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x6a

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x6b

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x6c

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6d

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x6e

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x6f

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x70

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x71

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x72

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x73

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x74

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x75

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x76

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x77

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x78

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x79

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x7a

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x7b

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x7c

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7d

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x7e

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x7f

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x83

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x82

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x81

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x80

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    return-void
.end method

.method private ib0(IIII)V
    .registers 10

    xor-int/lit8 v0, p1, -0x1

    xor-int v1, p1, p2

    or-int v2, v0, v1

    xor-int/2addr v2, p4

    xor-int v3, p3, v2

    xor-int v4, v1, v3

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    and-int/2addr v1, p4

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    and-int/2addr v1, v0

    xor-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    and-int v1, p1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    or-int/2addr v2, v3

    xor-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v0, v3

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    return-void
.end method

.method private ib1(IIII)V
    .registers 9

    xor-int v0, p2, p4

    and-int v1, p2, v0

    xor-int/2addr v1, p1

    xor-int v2, v0, v1

    xor-int v3, p3, v2

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    and-int/2addr v0, v1

    xor-int/2addr v0, p2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    or-int/2addr v3, v0

    xor-int/2addr v1, v3

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/lit8 v1, v1, -0x1

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v0, v3

    xor-int v3, v1, v0

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    or-int/2addr v0, v1

    xor-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    return-void
.end method

.method private ib2(IIII)V
    .registers 10

    xor-int v0, p2, p4

    xor-int/lit8 v1, v0, -0x1

    xor-int v2, p1, p3

    xor-int v3, p3, v0

    and-int v4, p2, v3

    xor-int/2addr v4, v2

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    or-int/2addr v1, p1

    xor-int/2addr v1, p4

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/lit8 v0, v3, -0x1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    or-int/2addr v1, v3

    xor-int v3, v0, v1

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    and-int/2addr v0, p4

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    return-void
.end method

.method private ib3(IIII)V
    .registers 11

    or-int v0, p1, p2

    xor-int v1, p2, p3

    and-int v2, p2, v1

    xor-int/2addr v2, p1

    xor-int v3, p3, v2

    or-int v4, p4, v2

    xor-int v5, v1, v4

    iput v5, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    or-int/2addr v1, v4

    xor-int/2addr v1, p4

    xor-int/2addr v3, v1

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    and-int/2addr v1, v0

    xor-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    return-void
.end method

.method private ib4(IIII)V
    .registers 9

    or-int v0, p3, p4

    and-int/2addr v0, p1

    xor-int/2addr v0, p2

    and-int v1, p1, v0

    xor-int/2addr v1, p3

    xor-int v2, p4, v1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/lit8 v2, p1, -0x1

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    and-int/2addr v1, v3

    xor-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    or-int/2addr v1, v2

    xor-int/2addr v1, p4

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v1

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    and-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    return-void
.end method

.method private ib5(IIII)V
    .registers 10

    xor-int/lit8 v0, p3, -0x1

    and-int v1, p2, v0

    xor-int/2addr v1, p4

    and-int v2, p1, v1

    xor-int v3, p2, v0

    xor-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    or-int/2addr v3, p2

    and-int v4, p1, v3

    xor-int/2addr v1, v4

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    or-int v1, p1, p4

    xor-int/2addr v0, v3

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    and-int v0, p2, v1

    xor-int v1, p1, p3

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    return-void
.end method

.method private ib6(IIII)V
    .registers 10

    xor-int/lit8 v0, p1, -0x1

    xor-int v1, p1, p2

    xor-int v2, p3, v1

    or-int v3, p3, v0

    xor-int/2addr v3, p4

    xor-int v4, v2, v3

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    and-int v4, v2, v3

    xor-int/2addr v1, v4

    or-int v4, p2, v1

    xor-int/2addr v3, v4

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    or-int/2addr v3, p2

    xor-int/2addr v1, v3

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    and-int/2addr v0, p4

    xor-int v1, v2, v3

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    return-void
.end method

.method private ib7(IIII)V
    .registers 9

    and-int v0, p1, p2

    or-int/2addr v0, p3

    or-int v1, p1, p2

    and-int/2addr v1, p4

    xor-int v2, v0, v1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/lit8 v2, p4, -0x1

    xor-int/2addr v1, p2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    or-int/2addr v2, v1

    xor-int/2addr v2, p1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, p3

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    or-int/2addr v2, p4

    xor-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    and-int/2addr v2, p1

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    return-void
.end method

.method private inverseLT()V
    .registers 6

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v1, 0x16

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    const/4 v3, 0x7

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v3

    xor-int/2addr v2, v0

    shl-int/lit8 v4, v1, 0x3

    xor-int/2addr v2, v4

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int v2, v3, v1

    xor-int/2addr v2, v0

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0xd

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    return-void
.end method

.method private makeWorkingKey([B)[I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v9, 0x1

    const/16 v8, 0x10

    const/16 v7, 0xb

    const/16 v1, 0x8

    const/4 v2, 0x0

    new-array v5, v8, [I

    array-length v0, p1

    add-int/lit8 v0, v0, -0x4

    move v4, v0

    move v0, v2

    :goto_f
    if-gtz v4, :cond_1c

    if-eqz v4, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key must be a multiple of 4 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, p1, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v4, -0x4

    move v4, v0

    move v0, v3

    goto :goto_f

    :cond_29
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v4

    aput v4, v5, v0

    if-lt v3, v1, :cond_5ae

    :goto_33
    const/16 v0, 0x84

    new-array v3, v0, [I

    move v0, v1

    :goto_38
    if-lt v0, v8, :cond_5b2

    invoke-static {v5, v1, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_3e
    const/16 v4, 0x84

    if-lt v0, v4, :cond_5d6

    aget v0, v3, v2

    aget v4, v3, v9

    const/4 v5, 0x2

    aget v5, v3, v5

    const/4 v6, 0x3

    aget v6, v3, v6

    invoke-direct {p0, v0, v4, v5, v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v3, v2

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v3, v9

    const/4 v0, 0x2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v2, v3, v0

    const/4 v0, 0x3

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v2, v3, v0

    const/4 v0, 0x4

    aget v0, v3, v0

    const/4 v2, 0x5

    aget v2, v3, v2

    const/4 v4, 0x6

    aget v4, v3, v4

    const/4 v5, 0x7

    aget v5, v3, v5

    invoke-direct {p0, v0, v2, v4, v5}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    const/4 v0, 0x4

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v2, v3, v0

    const/4 v0, 0x5

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v2, v3, v0

    const/4 v0, 0x6

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v2, v3, v0

    const/4 v0, 0x7

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v2, v3, v0

    aget v0, v3, v1

    const/16 v2, 0x9

    aget v2, v3, v2

    const/16 v4, 0xa

    aget v4, v3, v4

    aget v5, v3, v7

    invoke-direct {p0, v0, v2, v4, v5}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v3, v1

    const/16 v0, 0x9

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0xa

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v3, v7

    const/16 v0, 0xc

    aget v0, v3, v0

    const/16 v1, 0xd

    aget v1, v3, v1

    const/16 v2, 0xe

    aget v2, v3, v2

    const/16 v4, 0xf

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    const/16 v0, 0xc

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0xd

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0xe

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0xf

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    aget v0, v3, v8

    const/16 v1, 0x11

    aget v1, v3, v1

    const/16 v2, 0x12

    aget v2, v3, v2

    const/16 v4, 0x13

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v3, v8

    const/16 v0, 0x11

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x12

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x13

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x14

    aget v0, v3, v0

    const/16 v1, 0x15

    aget v1, v3, v1

    const/16 v2, 0x16

    aget v2, v3, v2

    const/16 v4, 0x17

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    const/16 v0, 0x14

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x15

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x16

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x17

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x18

    aget v0, v3, v0

    const/16 v1, 0x19

    aget v1, v3, v1

    const/16 v2, 0x1a

    aget v2, v3, v2

    const/16 v4, 0x1b

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    const/16 v0, 0x18

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x19

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x1a

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x1b

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x1c

    aget v0, v3, v0

    const/16 v1, 0x1d

    aget v1, v3, v1

    const/16 v2, 0x1e

    aget v2, v3, v2

    const/16 v4, 0x1f

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    const/16 v0, 0x1c

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x1d

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x1e

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x20

    aget v0, v3, v0

    const/16 v1, 0x21

    aget v1, v3, v1

    const/16 v2, 0x22

    aget v2, v3, v2

    const/16 v4, 0x23

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    const/16 v0, 0x20

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x21

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x22

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x23

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x24

    aget v0, v3, v0

    const/16 v1, 0x25

    aget v1, v3, v1

    const/16 v2, 0x26

    aget v2, v3, v2

    const/16 v4, 0x27

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    const/16 v0, 0x24

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x25

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x26

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x27

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x28

    aget v0, v3, v0

    const/16 v1, 0x29

    aget v1, v3, v1

    const/16 v2, 0x2a

    aget v2, v3, v2

    const/16 v4, 0x2b

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    const/16 v0, 0x28

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x29

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x2a

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x2b

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x2c

    aget v0, v3, v0

    const/16 v1, 0x2d

    aget v1, v3, v1

    const/16 v2, 0x2e

    aget v2, v3, v2

    const/16 v4, 0x2f

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    const/16 v0, 0x2c

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x2d

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x2e

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x2f

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x30

    aget v0, v3, v0

    const/16 v1, 0x31

    aget v1, v3, v1

    const/16 v2, 0x32

    aget v2, v3, v2

    const/16 v4, 0x33

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    const/16 v0, 0x30

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x31

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x32

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x33

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x34

    aget v0, v3, v0

    const/16 v1, 0x35

    aget v1, v3, v1

    const/16 v2, 0x36

    aget v2, v3, v2

    const/16 v4, 0x37

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    const/16 v0, 0x34

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x35

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x36

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x37

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x38

    aget v0, v3, v0

    const/16 v1, 0x39

    aget v1, v3, v1

    const/16 v2, 0x3a

    aget v2, v3, v2

    const/16 v4, 0x3b

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    const/16 v0, 0x38

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x39

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x3a

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x3b

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x3c

    aget v0, v3, v0

    const/16 v1, 0x3d

    aget v1, v3, v1

    const/16 v2, 0x3e

    aget v2, v3, v2

    const/16 v4, 0x3f

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    const/16 v0, 0x3c

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x3d

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x3e

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x3f

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x40

    aget v0, v3, v0

    const/16 v1, 0x41

    aget v1, v3, v1

    const/16 v2, 0x42

    aget v2, v3, v2

    const/16 v4, 0x43

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    const/16 v0, 0x40

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x41

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x42

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x43

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x44

    aget v0, v3, v0

    const/16 v1, 0x45

    aget v1, v3, v1

    const/16 v2, 0x46

    aget v2, v3, v2

    const/16 v4, 0x47

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    const/16 v0, 0x44

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x45

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x46

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x47

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x48

    aget v0, v3, v0

    const/16 v1, 0x49

    aget v1, v3, v1

    const/16 v2, 0x4a

    aget v2, v3, v2

    const/16 v4, 0x4b

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    const/16 v0, 0x48

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x49

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x4a

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x4b

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x4c

    aget v0, v3, v0

    const/16 v1, 0x4d

    aget v1, v3, v1

    const/16 v2, 0x4e

    aget v2, v3, v2

    const/16 v4, 0x4f

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    const/16 v0, 0x4c

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x4d

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x4e

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x4f

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x50

    aget v0, v3, v0

    const/16 v1, 0x51

    aget v1, v3, v1

    const/16 v2, 0x52

    aget v2, v3, v2

    const/16 v4, 0x53

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    const/16 v0, 0x50

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x51

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x52

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x53

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x54

    aget v0, v3, v0

    const/16 v1, 0x55

    aget v1, v3, v1

    const/16 v2, 0x56

    aget v2, v3, v2

    const/16 v4, 0x57

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    const/16 v0, 0x54

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x55

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x56

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x57

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x58

    aget v0, v3, v0

    const/16 v1, 0x59

    aget v1, v3, v1

    const/16 v2, 0x5a

    aget v2, v3, v2

    const/16 v4, 0x5b

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    const/16 v0, 0x58

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x59

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x5a

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x5b

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x5c

    aget v0, v3, v0

    const/16 v1, 0x5d

    aget v1, v3, v1

    const/16 v2, 0x5e

    aget v2, v3, v2

    const/16 v4, 0x5f

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    const/16 v0, 0x5c

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x5d

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x5e

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x5f

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x60

    aget v0, v3, v0

    const/16 v1, 0x61

    aget v1, v3, v1

    const/16 v2, 0x62

    aget v2, v3, v2

    const/16 v4, 0x63

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    const/16 v0, 0x60

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x61

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x62

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x63

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x64

    aget v0, v3, v0

    const/16 v1, 0x65

    aget v1, v3, v1

    const/16 v2, 0x66

    aget v2, v3, v2

    const/16 v4, 0x67

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    const/16 v0, 0x64

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x65

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x66

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x67

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x68

    aget v0, v3, v0

    const/16 v1, 0x69

    aget v1, v3, v1

    const/16 v2, 0x6a

    aget v2, v3, v2

    const/16 v4, 0x6b

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    const/16 v0, 0x68

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x69

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x6a

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x6b

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x6c

    aget v0, v3, v0

    const/16 v1, 0x6d

    aget v1, v3, v1

    const/16 v2, 0x6e

    aget v2, v3, v2

    const/16 v4, 0x6f

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    const/16 v0, 0x6c

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x6d

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x6e

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x6f

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x70

    aget v0, v3, v0

    const/16 v1, 0x71

    aget v1, v3, v1

    const/16 v2, 0x72

    aget v2, v3, v2

    const/16 v4, 0x73

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    const/16 v0, 0x70

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x71

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x72

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x73

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x74

    aget v0, v3, v0

    const/16 v1, 0x75

    aget v1, v3, v1

    const/16 v2, 0x76

    aget v2, v3, v2

    const/16 v4, 0x77

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    const/16 v0, 0x74

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x75

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x76

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x77

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x78

    aget v0, v3, v0

    const/16 v1, 0x79

    aget v1, v3, v1

    const/16 v2, 0x7a

    aget v2, v3, v2

    const/16 v4, 0x7b

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    const/16 v0, 0x78

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x79

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x7a

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x7b

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x7c

    aget v0, v3, v0

    const/16 v1, 0x7d

    aget v1, v3, v1

    const/16 v2, 0x7e

    aget v2, v3, v2

    const/16 v4, 0x7f

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    const/16 v0, 0x7c

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x7d

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x7e

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x7f

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x80

    aget v0, v3, v0

    const/16 v1, 0x81

    aget v1, v3, v1

    const/16 v2, 0x82

    aget v2, v3, v2

    const/16 v4, 0x83

    aget v4, v3, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    const/16 v0, 0x80

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x81

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x82

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x83

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    return-object v3

    :cond_5ae
    aput v9, v5, v3

    goto/16 :goto_33

    :cond_5b2
    add-int/lit8 v4, v0, -0x8

    aget v4, v5, v4

    add-int/lit8 v6, v0, -0x5

    aget v6, v5, v6

    xor-int/2addr v4, v6

    add-int/lit8 v6, v0, -0x3

    aget v6, v5, v6

    xor-int/2addr v4, v6

    add-int/lit8 v6, v0, -0x1

    aget v6, v5, v6

    xor-int/2addr v4, v6

    const v6, -0x61c88647

    xor-int/2addr v4, v6

    add-int/lit8 v6, v0, -0x8

    xor-int/2addr v4, v6

    invoke-direct {p0, v4, v7}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v4

    aput v4, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_38

    :cond_5d6
    add-int/lit8 v4, v0, -0x8

    aget v4, v3, v4

    add-int/lit8 v5, v0, -0x5

    aget v5, v3, v5

    xor-int/2addr v4, v5

    add-int/lit8 v5, v0, -0x3

    aget v5, v3, v5

    xor-int/2addr v4, v5

    add-int/lit8 v5, v0, -0x1

    aget v5, v3, v5

    xor-int/2addr v4, v5

    const v5, -0x61c88647

    xor-int/2addr v4, v5

    xor-int/2addr v4, v0

    invoke-direct {p0, v4, v7}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3e
.end method

.method private rotateLeft(II)I
    .registers 5

    shl-int v0, p1, p2

    neg-int v1, p2

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private rotateRight(II)I
    .registers 5

    ushr-int v0, p1, p2

    neg-int v1, p2

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private sb0(IIII)V
    .registers 9

    xor-int v0, p1, p4

    xor-int v1, p3, v0

    xor-int v2, p2, v1

    and-int v3, p1, p4

    xor-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    and-int/2addr v0, p2

    xor-int/2addr v0, p1

    or-int v3, p3, v0

    xor-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int v3, v1, v0

    and-int/2addr v2, v3

    xor-int/lit8 v1, v1, -0x1

    xor-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/lit8 v0, v0, -0x1

    xor-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    return-void
.end method

.method private sb1(IIII)V
    .registers 9

    xor-int/lit8 v0, p1, -0x1

    xor-int/2addr v0, p2

    or-int v1, p1, v0

    xor-int/2addr v1, p3

    xor-int v2, p4, v1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    or-int v2, p4, v0

    xor-int/2addr v2, p2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v0, v3

    and-int v3, v1, v2

    xor-int/2addr v3, v0

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v1

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    and-int/2addr v0, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    return-void
.end method

.method private sb2(IIII)V
    .registers 10

    xor-int/lit8 v0, p1, -0x1

    xor-int v1, p2, p4

    and-int v2, p3, v0

    xor-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int v2, p3, v0

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v3, p3

    and-int/2addr v3, p2

    xor-int v4, v2, v3

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    or-int/2addr v3, p4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    or-int/2addr v2, v4

    and-int/2addr v2, v3

    xor-int/2addr v2, p1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    or-int/2addr v0, p4

    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    return-void
.end method

.method private sb3(IIII)V
    .registers 10

    xor-int v0, p1, p2

    and-int v1, p1, p3

    or-int v2, p1, p4

    xor-int v3, p3, p4

    and-int v4, v0, v2

    or-int/2addr v1, v4

    xor-int v4, v3, v1

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, p2

    xor-int/2addr v1, v2

    and-int v2, v3, v1

    xor-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    and-int/2addr v0, v2

    xor-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    or-int v1, p2, p4

    xor-int/2addr v0, v3

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    return-void
.end method

.method private sb4(IIII)V
    .registers 10

    xor-int v0, p1, p4

    and-int v1, p4, v0

    xor-int/2addr v1, p3

    or-int v2, p2, v1

    xor-int v3, v0, v2

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/lit8 v3, p2, -0x1

    or-int v4, v0, v3

    xor-int/2addr v4, v1

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    and-int/2addr v4, p1

    xor-int/2addr v0, v3

    and-int/2addr v2, v0

    xor-int/2addr v2, v4

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, p1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    and-int/2addr v0, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    return-void
.end method

.method private sb5(IIII)V
    .registers 10

    xor-int/lit8 v0, p1, -0x1

    xor-int v1, p1, p2

    xor-int v2, p1, p4

    xor-int v3, p3, v0

    or-int v4, v1, v2

    xor-int/2addr v3, v4

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    and-int/2addr v3, p4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v4, v1

    xor-int/2addr v4, v3

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    or-int/2addr v0, v4

    or-int/2addr v1, v3

    xor-int/2addr v0, v2

    xor-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int v1, p2, v3

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    and-int/2addr v0, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    return-void
.end method

.method private sb6(IIII)V
    .registers 9

    xor-int/lit8 v0, p1, -0x1

    xor-int v1, p1, p4

    xor-int v2, p2, v1

    or-int/2addr v0, v1

    xor-int/2addr v0, p3

    xor-int v3, p2, v0

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    or-int/2addr v1, v3

    xor-int/2addr v1, p4

    and-int v3, v0, v1

    xor-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v0

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v3, v1

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    return-void
.end method

.method private sb7(IIII)V
    .registers 10

    xor-int v0, p2, p3

    and-int v1, p3, v0

    xor-int/2addr v1, p4

    xor-int v2, p1, v1

    or-int v3, p4, v0

    and-int/2addr v3, v2

    xor-int/2addr v3, p2

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    or-int/2addr v3, v1

    and-int v4, p1, v2

    xor-int/2addr v0, v4

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int v0, v2, v3

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    and-int/2addr v2, v0

    xor-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    return-void
.end method

.method private wordToBytes(I[BI)V
    .registers 6

    add-int/lit8 v0, p3, 0x3

    int-to-byte v1, p1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "Serpent"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid parameter passed to Serpent init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->encrypting:Z

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->makeWorkingKey([B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    return-void
.end method

.method public final processBlock([BI[BI)I
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    if-eqz v0, :cond_18

    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_21

    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_2a

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->encrypting:Z

    if-nez v0, :cond_33

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->decryptBlock([BI[BI)V

    :goto_15
    const/16 v0, 0x10

    return v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Serpent not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->encryptBlock([BI[BI)V

    goto :goto_15
.end method

.method public reset()V
    .registers 1

    return-void
.end method
