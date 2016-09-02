.class public Lcom/lge/android/atservice/HexDump;
.super Ljava/lang/Object;
.source "HexDump.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/lge/android/atservice/HexDump;->HEX_DIGITS:[C

    .line 19
    return-void

    .line 21
    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpHexString([B)Ljava/lang/String;
    .registers 3
    .param p0, "array"    # [B

    .prologue
    .line 25
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/lge/android/atservice/HexDump;->dumpHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dumpHexString([BII)Ljava/lang/String;
    .registers 13
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 30
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .local v7, "result":Ljava/lang/StringBuilder;
    const/16 v8, 0x10

    new-array v4, v8, [B

    .line 33
    .local v4, "line":[B
    const/4 v5, 0x0

    .line 35
    .local v5, "lineIndex":I
    const-string/jumbo v8, "\n0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {p1}, Lcom/lge/android/atservice/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move v2, p1

    .local v2, "i":I
    :goto_18
    add-int v8, p1, p2

    if-ge v2, v8, :cond_7c

    .line 40
    const/16 v8, 0x10

    if-ne v5, v8, :cond_58

    .line 42
    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_27
    const/16 v8, 0x10

    if-ge v3, v8, :cond_4a

    .line 46
    aget-byte v8, v4, v3

    const/16 v9, 0x20

    if-le v8, v9, :cond_43

    aget-byte v8, v4, v3

    const/16 v9, 0x7e

    if-ge v8, v9, :cond_43

    .line 48
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x1

    invoke-direct {v8, v4, v3, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 52
    :cond_43
    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 56
    :cond_4a
    const-string/jumbo v8, "\n0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-static {v2}, Lcom/lge/android/atservice/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const/4 v5, 0x0

    .line 61
    .end local v3    # "j":I
    :cond_58
    aget-byte v0, p0, v2

    .line 62
    .local v0, "b":B
    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    sget-object v8, Lcom/lge/android/atservice/HexDump;->HEX_DIGITS:[C

    ushr-int/lit8 v9, v0, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    sget-object v8, Lcom/lge/android/atservice/HexDump;->HEX_DIGITS:[C

    and-int/lit8 v9, v0, 0xf

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "lineIndex":I
    .local v6, "lineIndex":I
    aput-byte v0, v4, v5

    .line 38
    add-int/lit8 v2, v2, 0x1

    move v5, v6

    .end local v6    # "lineIndex":I
    .restart local v5    # "lineIndex":I
    goto :goto_18

    .line 69
    .end local v0    # "b":B
    :cond_7c
    const/16 v8, 0x10

    if-eq v5, v8, :cond_b4

    .line 71
    rsub-int/lit8 v8, v5, 0x10

    mul-int/lit8 v1, v8, 0x3

    .line 72
    .local v1, "count":I
    add-int/lit8 v1, v1, 0x1

    .line 73
    const/4 v2, 0x0

    :goto_87
    if-ge v2, v1, :cond_92

    .line 75
    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    .line 78
    :cond_92
    const/4 v2, 0x0

    :goto_93
    if-ge v2, v5, :cond_b4

    .line 80
    aget-byte v8, v4, v2

    const/16 v9, 0x20

    if-le v8, v9, :cond_ad

    aget-byte v8, v4, v2

    const/16 v9, 0x7e

    if-ge v8, v9, :cond_ad

    .line 82
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x1

    invoke-direct {v8, v4, v2, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :goto_aa
    add-int/lit8 v2, v2, 0x1

    goto :goto_93

    .line 86
    :cond_ad
    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_aa

    .line 91
    .end local v1    # "count":I
    :cond_b4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 7
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 161
    .local v2, "length":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 163
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v2, :cond_28

    .line 165
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/lge/android/atservice/HexDump;->toByte(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/lge/android/atservice/HexDump;->toByte(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 163
    add-int/lit8 v1, v1, 0x2

    goto :goto_9

    .line 168
    :cond_28
    return-object v0
.end method

.method private static toByte(C)I
    .registers 4
    .param p0, "c"    # C

    .prologue
    .line 145
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 146
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 148
    :cond_b
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-gt p0, v0, :cond_18

    .line 149
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 151
    :cond_18
    const/16 v0, 0x61

    if-lt p0, v0, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    .line 152
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 155
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toByteArray(B)[B
    .registers 3
    .param p0, "b"    # B

    .prologue
    .line 126
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 127
    .local v0, "array":[B
    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 128
    return-object v0
.end method

.method public static toByteArray(I)[B
    .registers 4
    .param p0, "i"    # I

    .prologue
    .line 133
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 135
    .local v0, "array":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 136
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 137
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 138
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 140
    return-object v0
.end method

.method public static toHexString(B)Ljava/lang/String;
    .registers 2
    .param p0, "b"    # B

    .prologue
    .line 96
    invoke-static {p0}, Lcom/lge/android/atservice/HexDump;->toByteArray(B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString(I)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # I

    .prologue
    .line 121
    invoke-static {p0}, Lcom/lge/android/atservice/HexDump;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 3
    .param p0, "array"    # [B

    .prologue
    .line 101
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/lge/android/atservice/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .registers 10
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 106
    mul-int/lit8 v5, p2, 0x2

    new-array v1, v5, [C

    .line 108
    .local v1, "buf":[C
    const/4 v2, 0x0

    .line 109
    .local v2, "bufIndex":I
    move v4, p1

    .local v4, "i":I
    move v3, v2

    .end local v2    # "bufIndex":I
    .local v3, "bufIndex":I
    :goto_7
    add-int v5, p1, p2

    if-ge v4, v5, :cond_26

    .line 111
    aget-byte v0, p0, v4

    .line 112
    .local v0, "b":B
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "bufIndex":I
    .restart local v2    # "bufIndex":I
    sget-object v5, Lcom/lge/android/atservice/HexDump;->HEX_DIGITS:[C

    ushr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    .line 113
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "bufIndex":I
    .restart local v3    # "bufIndex":I
    sget-object v5, Lcom/lge/android/atservice/HexDump;->HEX_DIGITS:[C

    and-int/lit8 v6, v0, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v2

    .line 109
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 116
    .end local v0    # "b":B
    :cond_26
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method
