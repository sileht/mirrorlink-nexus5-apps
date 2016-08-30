.class public Lcom/vzw/nfc/dos/VzwTlv;
.super Ljava/lang/Object;
.source "VzwTlv.java"


# instance fields
.field private mRawData:[B

.field private mTag:I

.field private mValueIndex:I

.field private mValueLength:I


# direct methods
.method public constructor <init>([BIII)V
    .registers 7
    .param p1, "rawData"    # [B
    .param p2, "tag"    # I
    .param p3, "valueIndex"    # I
    .param p4, "valueLength"    # I

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    .line 27
    iput v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mTag:I

    .line 29
    iput v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    .line 30
    iput v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    .line 33
    iput-object p1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    .line 34
    iput p2, p0, Lcom/vzw/nfc/dos/VzwTlv;->mTag:I

    .line 35
    iput p3, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    .line 36
    iput p4, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    .line 37
    return-void
.end method

.method public static encodeLength(ILjava/io/ByteArrayOutputStream;)V
    .registers 3
    .param p0, "length"    # I
    .param p1, "stream"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 105
    and-int/lit16 v0, p0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 106
    return-void
.end method

.method public static parse([BI)Lcom/vzw/nfc/dos/VzwTlv;
    .registers 9
    .param p0, "data"    # [B
    .param p1, "startIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vzw/nfc/dos/DoParserException;
        }
    .end annotation

    .prologue
    .line 42
    if-eqz p0, :cond_5

    array-length v4, p0

    if-nez v4, :cond_d

    .line 43
    :cond_5
    new-instance v4, Lcom/vzw/nfc/dos/DoParserException;

    const-string v5, "No data given!"

    invoke-direct {v4, v5}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 46
    :cond_d
    move v0, p1

    .line 47
    .local v0, "curIndex":I
    const/4 v3, 0x0

    .line 50
    .local v3, "tag":I
    array-length v4, p0

    if-ge v0, v4, :cond_27

    .line 51
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "curIndex":I
    .local v1, "curIndex":I
    aget-byte v4, p0, v0

    and-int/lit16 v3, v4, 0xff

    .line 58
    array-length v4, p0

    if-ge v1, v4, :cond_2f

    .line 59
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "curIndex":I
    .restart local v0    # "curIndex":I
    aget-byte v4, p0, v1

    and-int/lit16 v2, v4, 0xff

    .line 64
    .local v2, "length":I
    new-instance v4, Lcom/vzw/nfc/dos/VzwTlv;

    invoke-direct {v4, p0, v3, v0, v2}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    return-object v4

    .line 53
    .end local v2    # "length":I
    :cond_27
    new-instance v4, Lcom/vzw/nfc/dos/DoParserException;

    const-string v5, "Index out of bound"

    invoke-direct {v4, v5}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 61
    .end local v0    # "curIndex":I
    .restart local v1    # "curIndex":I
    :cond_2f
    new-instance v4, Lcom/vzw/nfc/dos/DoParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Index "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of range! [0..["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 112
    .local v1, "equals":Z
    instance-of v4, p1, Lcom/vzw/nfc/dos/VzwTlv;

    if-eqz v4, :cond_20

    move-object v0, p1

    .line 113
    check-cast v0, Lcom/vzw/nfc/dos/VzwTlv;

    .line 115
    .local v0, "berTlv":Lcom/vzw/nfc/dos/VzwTlv;
    iget v4, p0, Lcom/vzw/nfc/dos/VzwTlv;->mTag:I

    iget v5, v0, Lcom/vzw/nfc/dos/VzwTlv;->mTag:I

    if-ne v4, v5, :cond_21

    const/4 v1, 0x1

    .line 117
    :goto_f
    if-eqz v1, :cond_20

    .line 118
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/VzwTlv;->getValue()[B

    move-result-object v2

    .line 119
    .local v2, "test1":[B
    invoke-virtual {v0}, Lcom/vzw/nfc/dos/VzwTlv;->getValue()[B

    move-result-object v3

    .line 121
    .local v3, "test2":[B
    if-eqz v2, :cond_23

    .line 123
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    and-int/2addr v1, v4

    .line 129
    .end local v0    # "berTlv":Lcom/vzw/nfc/dos/VzwTlv;
    .end local v2    # "test1":[B
    .end local v3    # "test2":[B
    :cond_20
    :goto_20
    return v1

    .line 115
    .restart local v0    # "berTlv":Lcom/vzw/nfc/dos/VzwTlv;
    :cond_21
    const/4 v1, 0x0

    goto :goto_f

    .line 124
    .restart local v2    # "test1":[B
    .restart local v3    # "test2":[B
    :cond_23
    if-nez v2, :cond_20

    if-nez v3, :cond_20

    .line 125
    and-int/lit8 v1, v1, 0x1

    goto :goto_20
.end method

.method protected getRawData()[B
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/vzw/nfc/dos/VzwTlv;->mTag:I

    return v0
.end method

.method public getValue()[B
    .registers 6

    .prologue
    .line 83
    iget-object v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    if-eqz v1, :cond_1d

    .line 84
    iget v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    if-eqz v1, :cond_1d

    .line 85
    iget v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    if-ltz v1, :cond_1d

    iget v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    iget-object v2, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    array-length v2, v2

    if-gt v1, v2, :cond_1d

    .line 86
    iget v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    iget v2, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    array-length v2, v2

    if-le v1, v2, :cond_1f

    .line 87
    :cond_1d
    const/4 v0, 0x0

    .line 93
    :goto_1e
    return-object v0

    .line 90
    :cond_1f
    iget v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    new-array v0, v1, [B

    .line 92
    .local v0, "data":[B
    iget-object v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    iget v2, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_1e
.end method

.method public getValueIndex()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    return v0
.end method

.method public getValueLength()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    return v0
.end method

.method public translate()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vzw/nfc/dos/DoParserException;
        }
    .end annotation

    .prologue
    .line 70
    return-void
.end method
