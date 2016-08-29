.class public Lcom/lge/mirrorlink/common/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearBit(BI)B
    .registers 4
    .param p0, "data"    # B
    .param p1, "position"    # I

    .prologue
    .line 82
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    not-int v1, v1

    int-to-byte v0, v1

    .line 83
    .local v0, "bit":B
    and-int v1, p0, v0

    int-to-byte v1, v1

    return v1
.end method

.method public static clearBit(II)I
    .registers 4
    .param p0, "data"    # I
    .param p1, "position"    # I

    .prologue
    .line 94
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    not-int v0, v1

    .line 95
    .local v0, "bit":I
    and-int v1, p0, v0

    return v1
.end method

.method public static clearBit(JI)J
    .registers 7
    .param p0, "data"    # J
    .param p2, "position"    # I

    .prologue
    .line 100
    const/4 v1, 0x1

    shl-int/2addr v1, p2

    not-int v0, v1

    .line 101
    .local v0, "bit":I
    int-to-long v2, v0

    and-long/2addr v2, p0

    return-wide v2
.end method

.method public static clearBit(SI)S
    .registers 4
    .param p0, "data"    # S
    .param p1, "position"    # I

    .prologue
    .line 88
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    not-int v1, v1

    int-to-short v0, v1

    .line 89
    .local v0, "bit":S
    and-int v1, p0, v0

    int-to-short v1, v1

    return v1
.end method

.method public static drawChangedArea([B[IIII)V
    .registers 16
    .param p0, "img"    # [B
    .param p1, "changedArea"    # [I
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "bpp"    # I

    .prologue
    .line 251
    const/4 v9, 0x2

    if-ne p4, v9, :cond_4

    .line 249
    :cond_3
    return-void

    .line 253
    :cond_4
    const/4 v9, 0x4

    if-ne p4, v9, :cond_60

    .line 254
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 255
    .local v1, "buf":Ljava/nio/IntBuffer;
    const v2, 0xff00

    .line 256
    .local v2, "color":I
    const/4 v9, 0x1

    aget v8, p1, v9

    .local v8, "top":I
    const/4 v9, 0x1

    aget v9, p1, v9

    const/4 v10, 0x3

    aget v10, p1, v10

    add-int/2addr v9, v10

    add-int/lit8 v0, v9, -0x1

    .line 257
    .local v0, "bottom":I
    const/4 v9, 0x0

    aget v6, p1, v9

    .local v6, "left":I
    const/4 v9, 0x0

    aget v9, p1, v9

    const/4 v10, 0x2

    aget v10, p1, v10

    add-int/2addr v9, v10

    add-int/lit8 v7, v9, -0x1

    .line 258
    .local v7, "right":I
    add-int/lit8 v5, v8, 0x1

    .local v5, "j":I
    :goto_2c
    add-int/lit8 v9, v0, -0x1

    if-ge v5, v9, :cond_43

    .line 259
    move v3, v6

    .line 260
    .local v3, "i":I
    mul-int v9, v5, p2

    add-int v4, v9, v3

    .line 261
    .local v4, "index":I
    invoke-virtual {v1, v4, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 262
    move v3, v7

    .line 263
    mul-int v9, v5, p2

    add-int v4, v9, v3

    .line 264
    invoke-virtual {v1, v4, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 258
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 266
    .end local v3    # "i":I
    .end local v4    # "index":I
    :cond_43
    move v5, v8

    .line 267
    move v3, v6

    .restart local v3    # "i":I
    :goto_45
    if-ge v3, v7, :cond_51

    .line 268
    mul-int v9, v5, p2

    add-int v4, v9, v3

    .line 269
    .restart local v4    # "index":I
    invoke-virtual {v1, v4, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 267
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 271
    .end local v4    # "index":I
    :cond_51
    add-int/lit8 v5, v0, -0x1

    .line 272
    move v3, v6

    :goto_54
    if-ge v3, v7, :cond_3

    .line 273
    mul-int v9, v5, p2

    add-int v4, v9, v3

    .line 274
    .restart local v4    # "index":I
    invoke-virtual {v1, v4, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 272
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 277
    .end local v0    # "bottom":I
    .end local v1    # "buf":Ljava/nio/IntBuffer;
    .end local v2    # "color":I
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "j":I
    .end local v6    # "left":I
    .end local v7    # "right":I
    .end local v8    # "top":I
    :cond_60
    return-void
.end method

.method public static getCodeString([BI)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 184
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public static getHexString(B)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # B

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "%02X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHexString(I)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # I

    .prologue
    .line 241
    const-string/jumbo v0, "%02X%02X%02X%02X "

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 242
    const/high16 v2, -0x1000000

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 243
    const/high16 v2, 0xff0000

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 244
    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 245
    and-int/lit16 v2, p0, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 241
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHexString(S)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # S

    .prologue
    .line 235
    const-string/jumbo v0, "%02X %02X"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 236
    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    and-int/lit16 v2, p0, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 235
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHexString([B)Ljava/lang/String;
    .registers 8
    .param p0, "array"    # [B

    .prologue
    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    .line 222
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_28

    .line 223
    const-string/jumbo v3, "%02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 225
    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getInt([BI)I
    .registers 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 189
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 190
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 189
    or-int/2addr v0, v1

    .line 191
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 189
    or-int/2addr v0, v1

    .line 192
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 189
    or-int/2addr v0, v1

    return v0
.end method

.method public static getIntString([BI)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 197
    const-string/jumbo v0, "0x%08X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/lge/mirrorlink/common/Utility;->getInt([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShort([BI)S
    .registers 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 173
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 174
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 173
    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static getShortString([BI)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 179
    const-string/jumbo v0, "0x%04X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/lge/mirrorlink/common/Utility;->getShort([BI)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isBitSet(BI)Z
    .registers 6
    .param p0, "data"    # B
    .param p1, "bit"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    shl-int v3, v1, p1

    int-to-byte v0, v3

    .line 203
    .local v0, "bitMask":B
    and-int v3, p0, v0

    if-lez v3, :cond_a

    :goto_9
    return v1

    :cond_a
    move v1, v2

    goto :goto_9
.end method

.method public static isBitSet(II)Z
    .registers 6
    .param p0, "data"    # I
    .param p1, "bit"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 214
    shl-int v0, v1, p1

    .line 215
    .local v0, "bitMask":I
    and-int v3, p0, v0

    if-lez v3, :cond_9

    :goto_8
    return v1

    :cond_9
    move v1, v2

    goto :goto_8
.end method

.method public static isBitSet(SI)Z
    .registers 6
    .param p0, "data"    # S
    .param p1, "bit"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    shl-int v3, v1, p1

    int-to-short v0, v3

    .line 209
    .local v0, "bitMask":S
    and-int v3, p0, v0

    if-lez v3, :cond_a

    :goto_9
    return v1

    :cond_a
    move v1, v2

    goto :goto_9
.end method

.method public static isModeChk(III)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # I
    .param p1, "high"    # I
    .param p2, "low"    # I

    .prologue
    .line 122
    invoke-static {p0, p1}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 123
    invoke-static {p0, p2}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 124
    const-string/jumbo v0, "enabled"

    return-object v0

    .line 126
    :cond_10
    const-string/jumbo v0, "disabled"

    return-object v0

    .line 129
    :cond_14
    invoke-static {p0, p2}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 130
    const-string/jumbo v0, "not used"

    return-object v0

    .line 132
    :cond_1e
    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method public static isOrientationChk(III)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # I
    .param p1, "high"    # I
    .param p2, "low"    # I

    .prologue
    .line 139
    invoke-static {p0, p1}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 140
    invoke-static {p0, p2}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 141
    const-string/jumbo v0, "Portrait"

    return-object v0

    .line 143
    :cond_10
    const-string/jumbo v0, "Landscape"

    return-object v0

    .line 146
    :cond_14
    invoke-static {p0, p2}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 147
    const-string/jumbo v0, "not used"

    return-object v0

    .line 149
    :cond_1e
    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method public static isRotationChk(IIII)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # I
    .param p1, "high"    # I
    .param p2, "mid"    # I
    .param p3, "low"    # I

    .prologue
    .line 156
    invoke-static {p0, p1}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 157
    invoke-static {p0, p2}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 158
    invoke-static {p0, p3}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "270"

    :goto_15
    return-object v0

    :cond_16
    const-string/jumbo v0, "180"

    goto :goto_15

    .line 160
    :cond_1a
    invoke-static {p0, p3}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo v0, "90"

    :goto_23
    return-object v0

    :cond_24
    const-string/jumbo v0, "0"

    goto :goto_23

    .line 163
    :cond_28
    invoke-static {p0, p2}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static {p0, p3}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 166
    :cond_34
    const-string/jumbo v0, "not used"

    return-object v0

    .line 164
    :cond_38
    const-string/jumbo v0, "unknwon"

    return-object v0
.end method

.method public static isSet(II)Z
    .registers 5
    .param p0, "data"    # I
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    const/16 v2, 0x1f

    if-le p1, v2, :cond_7

    .line 107
    return v1

    .line 109
    :cond_7
    shl-int v2, v0, p1

    and-int/2addr v2, p0

    if-eqz v2, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c
.end method

.method public static isSet(JI)Z
    .registers 9
    .param p0, "data"    # J
    .param p2, "position"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    const/16 v2, 0x3f

    if-le p2, v2, :cond_7

    .line 115
    return v1

    .line 117
    :cond_7
    shl-int v2, v0, p2

    int-to-long v2, v2

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method

.method public static setBit(BI)B
    .registers 4
    .param p0, "data"    # B
    .param p1, "position"    # I

    .prologue
    .line 36
    if-gez p1, :cond_3

    .line 37
    return p0

    .line 39
    :cond_3
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    int-to-byte v0, v1

    .line 40
    .local v0, "bit":B
    or-int v1, p0, v0

    int-to-byte v1, v1

    return v1
.end method

.method public static setBit(II)I
    .registers 4
    .param p0, "data"    # I
    .param p1, "position"    # I

    .prologue
    .line 54
    if-gez p1, :cond_3

    .line 55
    return p0

    .line 57
    :cond_3
    const/4 v1, 0x1

    shl-int v0, v1, p1

    .line 58
    .local v0, "bit":I
    or-int v1, p0, v0

    return v1
.end method

.method public static varargs setBit(I[Ljava/lang/Object;)I
    .registers 7
    .param p0, "data"    # I
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 72
    move v1, p0

    .line 73
    .local v1, "output":I
    const/4 v2, 0x0

    array-length v3, p1

    :goto_3
    if-ge v2, v3, :cond_14

    aget-object v0, p1, v2

    .line 74
    .local v0, "arg":Ljava/lang/Object;
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "arg":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v4}, Lcom/lge/mirrorlink/common/Utility;->setBit(II)I

    move-result v1

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 77
    :cond_14
    return v1
.end method

.method public static setBit(JI)J
    .registers 7
    .param p0, "data"    # J
    .param p2, "position"    # I

    .prologue
    .line 63
    if-gez p2, :cond_3

    .line 64
    return-wide p0

    .line 66
    :cond_3
    const/4 v2, 0x1

    shl-int/2addr v2, p2

    int-to-long v0, v2

    .line 67
    .local v0, "bit":J
    or-long v2, p0, v0

    return-wide v2
.end method

.method public static setBit(SI)S
    .registers 4
    .param p0, "data"    # S
    .param p1, "position"    # I

    .prologue
    .line 45
    if-gez p1, :cond_3

    .line 46
    return p0

    .line 48
    :cond_3
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    int-to-short v0, v1

    .line 49
    .local v0, "bit":S
    or-int v1, p0, v0

    int-to-short v1, v1

    return v1
.end method

.method public static setByte(IIB)I
    .registers 7
    .param p0, "data"    # I
    .param p1, "position"    # I
    .param p2, "value"    # B

    .prologue
    .line 28
    mul-int/lit8 v2, p1, 0x8

    shl-int v1, p2, v2

    .line 29
    .local v1, "setValue":I
    mul-int/lit8 v2, p1, 0x8

    const/16 v3, 0xff

    shl-int v2, v3, v2

    not-int v0, v2

    .line 30
    .local v0, "setMask":I
    and-int v2, p0, v0

    or-int/2addr v2, v1

    return v2
.end method
