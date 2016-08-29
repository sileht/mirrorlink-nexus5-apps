.class public Lorg/bouncycastle/crypto/params/DESParameters;
.super Lorg/bouncycastle/crypto/params/KeyParameter;
.source "Unknown"


# static fields
.field public static final DES_KEY_LENGTH:I = 0x8

.field private static DES_weak_keys:[B = null

.field private static final N_DES_WEAK_KEYS:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/16 v7, -0x20

    const/16 v6, 0x1f

    const/16 v5, 0xe

    const/4 v4, -0x2

    const/4 v3, 0x1

    const/16 v0, 0x80

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    aput-byte v3, v0, v3

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v6, v0, v1

    const/16 v1, 0x9

    aput-byte v6, v0, v1

    const/16 v1, 0xa

    aput-byte v6, v0, v1

    const/16 v1, 0xb

    aput-byte v6, v0, v1

    const/16 v1, 0xc

    aput-byte v5, v0, v1

    const/16 v1, 0xd

    aput-byte v5, v0, v1

    aput-byte v5, v0, v5

    const/16 v1, 0xf

    aput-byte v5, v0, v1

    const/16 v1, 0x10

    aput-byte v7, v0, v1

    const/16 v1, 0x11

    aput-byte v7, v0, v1

    const/16 v1, 0x12

    aput-byte v7, v0, v1

    const/16 v1, 0x13

    aput-byte v7, v0, v1

    const/16 v1, 0x14

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    aput-byte v4, v0, v1

    const/16 v1, 0x19

    aput-byte v4, v0, v1

    const/16 v1, 0x1a

    aput-byte v4, v0, v1

    const/16 v1, 0x1b

    aput-byte v4, v0, v1

    const/16 v1, 0x1c

    aput-byte v4, v0, v1

    const/16 v1, 0x1d

    aput-byte v4, v0, v1

    const/16 v1, 0x1e

    aput-byte v4, v0, v1

    aput-byte v4, v0, v6

    const/16 v1, 0x20

    aput-byte v3, v0, v1

    const/16 v1, 0x21

    aput-byte v4, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v4, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v4, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v4, v0, v1

    const/16 v1, 0x28

    aput-byte v6, v0, v1

    const/16 v1, 0x29

    aput-byte v7, v0, v1

    const/16 v1, 0x2a

    aput-byte v6, v0, v1

    const/16 v1, 0x2b

    aput-byte v7, v0, v1

    const/16 v1, 0x2c

    aput-byte v5, v0, v1

    const/16 v1, 0x2d

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    aput-byte v5, v0, v1

    const/16 v1, 0x2f

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    aput-byte v3, v0, v1

    const/16 v1, 0x31

    aput-byte v7, v0, v1

    const/16 v1, 0x32

    aput-byte v3, v0, v1

    const/16 v1, 0x33

    aput-byte v7, v0, v1

    const/16 v1, 0x34

    aput-byte v3, v0, v1

    const/16 v1, 0x35

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    aput-byte v3, v0, v1

    const/16 v1, 0x37

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    aput-byte v6, v0, v1

    const/16 v1, 0x39

    aput-byte v4, v0, v1

    const/16 v1, 0x3a

    aput-byte v6, v0, v1

    const/16 v1, 0x3b

    aput-byte v4, v0, v1

    const/16 v1, 0x3c

    aput-byte v5, v0, v1

    const/16 v1, 0x3d

    aput-byte v4, v0, v1

    const/16 v1, 0x3e

    aput-byte v5, v0, v1

    const/16 v1, 0x3f

    aput-byte v4, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x41

    aput-byte v6, v0, v1

    const/16 v1, 0x42

    aput-byte v3, v0, v1

    const/16 v1, 0x43

    aput-byte v6, v0, v1

    const/16 v1, 0x44

    aput-byte v3, v0, v1

    const/16 v1, 0x45

    aput-byte v5, v0, v1

    const/16 v1, 0x46

    aput-byte v3, v0, v1

    const/16 v1, 0x47

    aput-byte v5, v0, v1

    const/16 v1, 0x48

    aput-byte v7, v0, v1

    const/16 v1, 0x49

    aput-byte v4, v0, v1

    const/16 v1, 0x4a

    aput-byte v7, v0, v1

    const/16 v1, 0x4b

    aput-byte v4, v0, v1

    const/16 v1, 0x4c

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    aput-byte v4, v0, v1

    const/16 v1, 0x4e

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    aput-byte v4, v0, v1

    const/16 v1, 0x50

    aput-byte v4, v0, v1

    const/16 v1, 0x51

    aput-byte v3, v0, v1

    const/16 v1, 0x52

    aput-byte v4, v0, v1

    const/16 v1, 0x53

    aput-byte v3, v0, v1

    const/16 v1, 0x54

    aput-byte v4, v0, v1

    const/16 v1, 0x55

    aput-byte v3, v0, v1

    const/16 v1, 0x56

    aput-byte v4, v0, v1

    const/16 v1, 0x57

    aput-byte v3, v0, v1

    const/16 v1, 0x58

    aput-byte v7, v0, v1

    const/16 v1, 0x59

    aput-byte v6, v0, v1

    const/16 v1, 0x5a

    aput-byte v7, v0, v1

    const/16 v1, 0x5b

    aput-byte v6, v0, v1

    const/16 v1, 0x5c

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    aput-byte v5, v0, v1

    const/16 v1, 0x5e

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    aput-byte v5, v0, v1

    const/16 v1, 0x60

    aput-byte v7, v0, v1

    const/16 v1, 0x61

    aput-byte v3, v0, v1

    const/16 v1, 0x62

    aput-byte v7, v0, v1

    const/16 v1, 0x63

    aput-byte v3, v0, v1

    const/16 v1, 0x64

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    aput-byte v3, v0, v1

    const/16 v1, 0x66

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    aput-byte v3, v0, v1

    const/16 v1, 0x68

    aput-byte v4, v0, v1

    const/16 v1, 0x69

    aput-byte v6, v0, v1

    const/16 v1, 0x6a

    aput-byte v4, v0, v1

    const/16 v1, 0x6b

    aput-byte v6, v0, v1

    const/16 v1, 0x6c

    aput-byte v4, v0, v1

    const/16 v1, 0x6d

    aput-byte v5, v0, v1

    const/16 v1, 0x6e

    aput-byte v4, v0, v1

    const/16 v1, 0x6f

    aput-byte v5, v0, v1

    const/16 v1, 0x70

    aput-byte v6, v0, v1

    const/16 v1, 0x71

    aput-byte v3, v0, v1

    const/16 v1, 0x72

    aput-byte v6, v0, v1

    const/16 v1, 0x73

    aput-byte v3, v0, v1

    const/16 v1, 0x74

    aput-byte v5, v0, v1

    const/16 v1, 0x75

    aput-byte v3, v0, v1

    const/16 v1, 0x76

    aput-byte v5, v0, v1

    const/16 v1, 0x77

    aput-byte v3, v0, v1

    const/16 v1, 0x78

    aput-byte v4, v0, v1

    const/16 v1, 0x79

    aput-byte v7, v0, v1

    const/16 v1, 0x7a

    aput-byte v4, v0, v1

    const/16 v1, 0x7b

    aput-byte v7, v0, v1

    const/16 v1, 0x7c

    aput-byte v4, v0, v1

    const/16 v1, 0x7d

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    aput-byte v4, v0, v1

    const/16 v1, 0x7f

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/params/DESParameters;->DES_weak_keys:[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "attempt to create weak DES key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isWeakKey([BI)Z
    .registers 9

    const/16 v6, 0x8

    const/4 v1, 0x0

    array-length v0, p0

    sub-int/2addr v0, p1

    if-lt v0, v6, :cond_d

    move v2, v1

    :goto_8
    const/16 v0, 0x10

    if-lt v2, v0, :cond_16

    return v1

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key material too short."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    move v0, v1

    :goto_17
    if-lt v0, v6, :cond_1b

    const/4 v0, 0x1

    return v0

    :cond_1b
    add-int v3, v0, p1

    aget-byte v3, p0, v3

    sget-object v4, Lorg/bouncycastle/crypto/params/DESParameters;->DES_weak_keys:[B

    mul-int/lit8 v5, v2, 0x8

    add-int/2addr v5, v0

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_2b

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8
.end method

.method public static setOddParity([B)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    aget-byte v1, p0, v0

    and-int/lit16 v2, v1, 0xfe

    shr-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v1, 0x2

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x3

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x4

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x5

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x6

    xor-int/2addr v3, v4

    shr-int/lit8 v1, v1, 0x7

    xor-int/2addr v1, v3

    xor-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
