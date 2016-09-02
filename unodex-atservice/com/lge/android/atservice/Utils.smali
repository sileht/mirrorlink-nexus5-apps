.class public Lcom/lge/android/atservice/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToInt([BIILjava/nio/ByteOrder;)I
    .registers 10
    .param p0, "bytes"    # [B
    .param p1, "from"    # I
    .param p2, "length"    # I
    .param p3, "endian"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v5, 0x4

    .line 52
    const/4 v3, 0x4

    .line 53
    .local v3, "size":I
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 54
    .local v0, "buff":Ljava/nio/ByteBuffer;
    new-array v2, v5, [B

    .line 55
    .local v2, "newBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v5, :cond_1f

    .line 56
    add-int v4, v1, p2

    if-ge v4, v5, :cond_15

    .line 57
    const/4 v4, 0x0

    aput-byte v4, v2, v1

    .line 55
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 59
    :cond_15
    add-int v4, p1, v1

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, -0x4

    aget-byte v4, p0, v4

    aput-byte v4, v2, v1

    goto :goto_12

    .line 62
    :cond_1f
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 64
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    return v4
.end method

.method public static copyBytes([BI[B)V
    .registers 8
    .param p0, "dst"    # [B
    .param p1, "index"    # I
    .param p2, "src"    # [B

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, "index_temp":I
    const/4 v2, 0x0

    array-length v3, p2

    :goto_3
    if-ge v2, v3, :cond_a

    aget-byte v0, p2, v2

    .line 71
    .local v0, "b":B
    array-length v4, p0

    if-lt p1, v4, :cond_b

    .line 67
    .end local v0    # "b":B
    :cond_a
    return-void

    .line 74
    .restart local v0    # "b":B
    :cond_b
    aget-byte v4, p2, v1

    aput-byte v4, p0, p1

    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 76
    add-int/lit8 p1, p1, 0x1

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public static shortToByteArray([S)[B
    .registers 6
    .param p0, "samples"    # [S

    .prologue
    .line 87
    array-length v3, p0

    .line 88
    .local v3, "len":I
    mul-int/lit8 v4, v3, 0x2

    new-array v1, v4, [B

    .line 89
    .local v1, "data":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 90
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 91
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v3, :cond_19

    .line 92
    aget-short v4, p0, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 94
    :cond_19
    return-object v1
.end method

.method public static shortToByteArrayLittleEndian(S)[B
    .registers 4
    .param p0, "value"    # S

    .prologue
    .line 104
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 105
    .local v0, "converter":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 106
    move v1, p0

    .line 107
    .local v1, "sValue":S
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 108
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public static stringToHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "base"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 29
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_56

    .line 31
    const/4 v2, 0x0

    .line 32
    .local v2, "cursor":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 33
    .local v4, "intValue":I
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "binaryChar":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_32

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_2f

    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 34
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 41
    :cond_32
    rem-int/lit8 v6, v2, 0x2

    if-lez v6, :cond_38

    .line 43
    add-int/lit16 v4, v4, 0x80

    .line 45
    :cond_38
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 47
    .end local v0    # "binaryChar":Ljava/lang/String;
    .end local v2    # "cursor":I
    .end local v3    # "i":I
    .end local v4    # "intValue":I
    :cond_56
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
