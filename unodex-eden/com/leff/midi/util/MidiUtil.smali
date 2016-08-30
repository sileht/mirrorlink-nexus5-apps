.class public Lcom/leff/midi/util/MidiUtil;
.super Ljava/lang/Object;
.source "MidiUtil.java"


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bpmToMpqn(F)I
    .registers 2
    .param p0, "bpm"    # F

    .prologue
    .line 30
    const v0, 0x4c64e1c0    # 6.0E7f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static byteToHex(B)Ljava/lang/String;
    .registers 5
    .param p0, "b"    # B

    .prologue
    .line 110
    and-int/lit16 v2, p0, 0xf0

    shr-int/lit8 v0, v2, 0x4

    .line 111
    .local v0, "high":I
    and-int/lit8 v1, p0, 0xf

    .line 113
    .local v1, "low":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0123456789ABCDEF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0123456789ABCDEF"

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static bytesEqual([B[BII)Z
    .registers 8
    .param p0, "buf1"    # [B
    .param p1, "buf2"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v1, 0x0

    .line 80
    move v0, p2

    .local v0, "i":I
    :goto_2
    add-int v2, p2, p3

    if-lt v0, v2, :cond_8

    .line 91
    const/4 v1, 0x1

    :cond_7
    return v1

    .line 82
    :cond_8
    array-length v2, p0

    if-ge v0, v2, :cond_7

    array-length v2, p1

    if-ge v0, v2, :cond_7

    .line 86
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_7

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 5
    .param p0, "b"    # [B

    .prologue
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v2, p0

    if-lt v0, v2, :cond_e

    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 121
    :cond_e
    aget-byte v2, p0, v0

    invoke-static {v2}, Lcom/leff/midi/util/MidiUtil;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public static bytesToInt([BII)I
    .registers 7
    .param p0, "buff"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 45
    .local v1, "num":I
    const/4 v2, 0x0

    .line 46
    .local v2, "shift":I
    add-int v3, p1, p2

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_6
    if-ge v0, p1, :cond_9

    .line 53
    return v1

    .line 49
    :cond_9
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 50
    add-int/lit8 v2, v2, 0x8

    .line 46
    add-int/lit8 v0, v0, -0x1

    goto :goto_6
.end method

.method public static extractBytes([BII)[B
    .registers 6
    .param p0, "buffer"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 96
    new-array v1, p2, [B

    .line 98
    .local v1, "ret":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-lt v0, p2, :cond_6

    .line 103
    return-object v1

    .line 100
    :cond_6
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static intToBytes(II)[B
    .registers 7
    .param p0, "val"    # I
    .param p1, "byteCount"    # I

    .prologue
    .line 58
    new-array v0, p1, [B

    .line 60
    .local v0, "buffer":[B
    new-array v2, p1, [I

    .line 62
    .local v2, "ints":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-lt v1, p1, :cond_8

    .line 75
    :cond_7
    return-object v0

    .line 64
    :cond_8
    and-int/lit16 v3, p0, 0xff

    aput v3, v2, v1

    .line 65
    sub-int v3, p1, v1

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v1

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 67
    shr-int/lit8 p0, p0, 0x8

    .line 69
    if-eqz p0, :cond_7

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public static mpqnToBpm(I)F
    .registers 3
    .param p0, "mpqn"    # I

    .prologue
    .line 35
    int-to-float v0, p0

    const v1, 0x4c64e1c0    # 6.0E7f

    div-float/2addr v0, v1

    return v0
.end method

.method public static msToTicks(JFI)D
    .registers 6
    .param p0, "ms"    # J
    .param p2, "bpm"    # F
    .param p3, "ppq"    # I

    .prologue
    .line 25
    invoke-static {p2}, Lcom/leff/midi/util/MidiUtil;->bpmToMpqn(F)I

    move-result v0

    invoke-static {p0, p1, v0, p3}, Lcom/leff/midi/util/MidiUtil;->msToTicks(JII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static msToTicks(JII)D
    .registers 8
    .param p0, "ms"    # J
    .param p2, "mpqn"    # I
    .param p3, "ppq"    # I

    .prologue
    .line 20
    long-to-double v0, p0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    int-to-double v2, p3

    mul-double/2addr v0, v2

    int-to-double v2, p2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static ticksToMs(JFI)J
    .registers 6
    .param p0, "ticks"    # J
    .param p2, "bpm"    # F
    .param p3, "resolution"    # I

    .prologue
    .line 15
    invoke-static {p2}, Lcom/leff/midi/util/MidiUtil;->bpmToMpqn(F)I

    move-result v0

    invoke-static {p0, p1, v0, p3}, Lcom/leff/midi/util/MidiUtil;->ticksToMs(JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static ticksToMs(JII)J
    .registers 8
    .param p0, "ticks"    # J
    .param p2, "mpqn"    # I
    .param p3, "resolution"    # I

    .prologue
    .line 10
    int-to-long v0, p2

    mul-long/2addr v0, p0

    int-to-long v2, p3

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method
