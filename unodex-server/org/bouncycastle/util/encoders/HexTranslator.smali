.class public Lorg/bouncycastle/util/encoders/HexTranslator;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/util/encoders/Translator;


# static fields
.field private static final hexTable:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    sput-object v0, Lorg/bouncycastle/util/encoders/HexTranslator;->hexTable:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode([BII[BI)I
    .registers 11

    const/16 v4, 0x61

    div-int/lit8 v1, p3, 0x2

    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_8

    return v1

    :cond_8
    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p2

    aget-byte v2, p1, v2

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    if-lt v2, v4, :cond_33

    add-int/lit8 v2, v2, -0x61

    add-int/lit8 v2, v2, 0xa

    shl-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p4, p5

    :goto_20
    if-lt v3, v4, :cond_3c

    aget-byte v2, p4, p5

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    int-to-byte v3, v3

    add-int/2addr v2, v3

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p4, p5

    :goto_2e
    add-int/lit8 p5, p5, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_33
    add-int/lit8 v2, v2, -0x30

    shl-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p4, p5

    goto :goto_20

    :cond_3c
    aget-byte v2, p4, p5

    add-int/lit8 v3, v3, -0x30

    int-to-byte v3, v3

    add-int/2addr v2, v3

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p4, p5

    goto :goto_2e
.end method

.method public encode([BII[BI)I
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-lt v1, p3, :cond_7

    mul-int/lit8 v0, p3, 0x2

    return v0

    :cond_7
    add-int v2, p5, v0

    sget-object v3, Lorg/bouncycastle/util/encoders/HexTranslator;->hexTable:[B

    aget-byte v4, p1, p2

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    add-int v2, p5, v0

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lorg/bouncycastle/util/encoders/HexTranslator;->hexTable:[B

    aget-byte v4, p1, p2

    and-int/lit8 v4, v4, 0xf

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_2
.end method

.method public getDecodedBlockSize()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getEncodedBlockSize()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
