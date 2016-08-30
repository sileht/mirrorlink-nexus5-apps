.class public Lcom/leff/midi/util/VariableLengthInt;
.super Ljava/lang/Object;
.source "VariableLengthInt.java"


# instance fields
.field private mBytes:[B

.field private mSizeInBytes:I

.field private mValue:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p0, p1}, Lcom/leff/midi/util/VariableLengthInt;->setValue(I)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-direct {p0, p1}, Lcom/leff/midi/util/VariableLengthInt;->parseBytes(Ljava/io/InputStream;)V

    .line 19
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3
    .param p1, "buffer"    # [B
    .param p2, "off"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/leff/midi/util/VariableLengthInt;->parseBytes([BI)V

    .line 24
    return-void
.end method

.method private buildBytes()V
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    iget v3, p0, Lcom/leff/midi/util/VariableLengthInt;->mValue:I

    if-nez v3, :cond_12

    .line 112
    new-array v3, v5, [B

    iput-object v3, p0, Lcom/leff/midi/util/VariableLengthInt;->mBytes:[B

    .line 113
    iget-object v3, p0, Lcom/leff/midi/util/VariableLengthInt;->mBytes:[B

    aput-byte v4, v3, v4

    .line 114
    iput v5, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    .line 137
    :cond_11
    return-void

    .line 118
    :cond_12
    iput v4, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    .line 119
    new-array v2, v6, [I

    .line 120
    .local v2, "vals":[I
    iget v1, p0, Lcom/leff/midi/util/VariableLengthInt;->mValue:I

    .line 122
    .local v1, "tmpVal":I
    :goto_18
    iget v3, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    if-ge v3, v6, :cond_1e

    if-gtz v1, :cond_3d

    .line 129
    :cond_1e
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1f
    iget v3, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    if-lt v0, v3, :cond_4c

    .line 133
    iget v3, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/leff/midi/util/VariableLengthInt;->mBytes:[B

    .line 134
    const/4 v0, 0x0

    :goto_2a
    iget v3, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    if-ge v0, v3, :cond_11

    .line 135
    iget-object v3, p0, Lcom/leff/midi/util/VariableLengthInt;->mBytes:[B

    iget v4, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    aget v4, v2, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 123
    .end local v0    # "i":I
    :cond_3d
    iget v3, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    and-int/lit8 v4, v1, 0x7f

    aput v4, v2, v3

    .line 125
    iget v3, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    .line 126
    shr-int/lit8 v1, v1, 0x7

    goto :goto_18

    .line 130
    .restart local v0    # "i":I
    :cond_4c
    aget v3, v2, v0

    or-int/lit16 v3, v3, 0x80

    aput v3, v2, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f
.end method

.method private parseBytes(Ljava/io/InputStream;)V
    .registers 12
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 42
    new-array v2, v9, [I

    .line 44
    .local v2, "ints":[I
    iput v5, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    .line 45
    iput v6, p0, Lcom/leff/midi/util/VariableLengthInt;->mValue:I

    .line 46
    const/4 v3, 0x0

    .line 48
    .local v3, "shift":I
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 49
    .local v0, "b":I
    :goto_e
    iget v7, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    if-le v7, v9, :cond_23

    .line 62
    :goto_12
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_13
    iget v5, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    if-lt v1, v5, :cond_48

    .line 66
    iget v5, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/leff/midi/util/VariableLengthInt;->mBytes:[B

    .line 67
    const/4 v1, 0x0

    :goto_1e
    iget v5, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    if-lt v1, v5, :cond_4d

    .line 73
    return-void

    .line 51
    .end local v1    # "i":I
    :cond_23
    and-int/lit16 v7, v0, 0x80

    if-lez v7, :cond_33

    move v4, v5

    .line 52
    .local v4, "variable":Z
    :goto_28
    if-nez v4, :cond_35

    .line 53
    iget v5, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    add-int/lit8 v5, v5, -0x1

    and-int/lit8 v6, v0, 0x7f

    aput v6, v2, v5

    goto :goto_12

    .end local v4    # "variable":Z
    :cond_33
    move v4, v6

    .line 51
    goto :goto_28

    .line 56
    .restart local v4    # "variable":Z
    :cond_35
    iget v7, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    add-int/lit8 v7, v7, -0x1

    and-int/lit8 v8, v0, 0x7f

    aput v8, v2, v7

    .line 58
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 59
    iget v7, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    goto :goto_e

    .line 63
    .end local v4    # "variable":Z
    .restart local v1    # "i":I
    :cond_48
    add-int/lit8 v3, v3, 0x7

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 68
    :cond_4d
    iget-object v5, p0, Lcom/leff/midi/util/VariableLengthInt;->mBytes:[B

    aget v6, v2, v1

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 70
    iget v5, p0, Lcom/leff/midi/util/VariableLengthInt;->mValue:I

    aget v6, v2, v1

    shl-int/2addr v6, v3

    add-int/2addr v5, v6

    iput v5, p0, Lcom/leff/midi/util/VariableLengthInt;->mValue:I

    .line 71
    add-int/lit8 v3, v3, -0x7

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e
.end method

.method private parseBytes([BI)V
    .registers 12
    .param p1, "buffer"    # [B
    .param p2, "off"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v5, 0x1

    .line 77
    new-array v1, v8, [I

    .line 79
    .local v1, "ints":[I
    move v0, p2

    .line 80
    .local v0, "i":I
    iput v5, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    .line 81
    const/4 v3, 0x0

    .line 82
    .local v3, "size":I
    const/4 v2, 0x0

    .line 84
    .local v2, "shift":I
    :goto_9
    iget v6, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    if-le v6, v8, :cond_22

    .line 97
    :goto_d
    const/4 v0, 0x1

    :goto_e
    iget v5, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    if-lt v0, v5, :cond_4b

    .line 100
    const/4 v0, 0x0

    :goto_13
    iget v5, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    if-lt v0, v5, :cond_50

    .line 105
    iget v5, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    invoke-static {p1, p2, v5}, Lcom/leff/midi/util/MidiUtil;->extractBytes([BII)[B

    move-result-object v5

    iput-object v5, p0, Lcom/leff/midi/util/VariableLengthInt;->mBytes:[B

    .line 106
    iput v3, p0, Lcom/leff/midi/util/VariableLengthInt;->mValue:I

    .line 107
    return-void

    .line 86
    :cond_22
    aget-byte v6, p1, v0

    and-int/lit16 v6, v6, 0x80

    if-lez v6, :cond_36

    move v4, v5

    .line 87
    .local v4, "variable":Z
    :goto_29
    if-nez v4, :cond_38

    .line 88
    iget v5, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    add-int/lit8 v5, v5, -0x1

    aget-byte v6, p1, v0

    and-int/lit16 v6, v6, 0xff

    aput v6, v1, v5

    goto :goto_d

    .line 86
    .end local v4    # "variable":Z
    :cond_36
    const/4 v4, 0x0

    goto :goto_29

    .line 91
    .restart local v4    # "variable":Z
    :cond_38
    iget v6, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    add-int/lit8 v6, v6, -0x1

    aget-byte v7, p1, v0

    and-int/lit8 v7, v7, 0x7f

    aput v7, v1, v6

    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 94
    iget v6, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    goto :goto_9

    .line 98
    .end local v4    # "variable":Z
    :cond_4b
    add-int/lit8 v2, v2, 0x7

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 101
    :cond_50
    aget v5, v1, v0

    shl-int/2addr v5, v2

    add-int/2addr v3, v5

    .line 102
    add-int/lit8 v2, v2, -0x7

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method


# virtual methods
.method public getByteCount()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/leff/midi/util/VariableLengthInt;->mSizeInBytes:I

    return v0
.end method

.method public getBytes()[B
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/leff/midi/util/VariableLengthInt;->mBytes:[B

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/leff/midi/util/VariableLengthInt;->mValue:I

    return v0
.end method

.method public setValue(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/leff/midi/util/VariableLengthInt;->mValue:I

    .line 28
    invoke-direct {p0}, Lcom/leff/midi/util/VariableLengthInt;->buildBytes()V

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leff/midi/util/VariableLengthInt;->mBytes:[B

    invoke-static {v1}, Lcom/leff/midi/util/MidiUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/leff/midi/util/VariableLengthInt;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
