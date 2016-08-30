.class public Lcom/leff/midi/event/SystemExclusiveEvent;
.super Lcom/leff/midi/event/MidiEvent;
.source "SystemExclusiveEvent.java"


# instance fields
.field private mData:[B

.field private mLength:Lcom/leff/midi/util/VariableLengthInt;

.field private mType:I


# direct methods
.method public constructor <init>(IJJ[B)V
    .registers 11
    .param p1, "type"    # I
    .param p2, "tick"    # J
    .param p4, "delta"    # J
    .param p6, "data"    # [B

    .prologue
    const/16 v2, 0xf0

    .line 26
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/leff/midi/event/MidiEvent;-><init>(JJ)V

    .line 28
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mType:I

    .line 29
    iget v0, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mType:I

    if-eq v0, v2, :cond_15

    iget v0, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mType:I

    const/16 v1, 0xf7

    if-eq v0, v1, :cond_15

    .line 31
    iput v2, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mType:I

    .line 34
    :cond_15
    new-instance v0, Lcom/leff/midi/util/VariableLengthInt;

    array-length v1, p6

    invoke-direct {v0, v1}, Lcom/leff/midi/util/VariableLengthInt;-><init>(I)V

    iput-object v0, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mLength:Lcom/leff/midi/util/VariableLengthInt;

    .line 35
    iput-object p6, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mData:[B

    .line 36
    return-void
.end method

.method public constructor <init>(IJ[B)V
    .registers 13
    .param p1, "type"    # I
    .param p2, "tick"    # J
    .param p4, "data"    # [B

    .prologue
    .line 21
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/leff/midi/event/SystemExclusiveEvent;-><init>(IJJ[B)V

    .line 22
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/leff/midi/event/MidiEvent;)I
    .registers 10
    .param p1, "other"    # Lcom/leff/midi/event/MidiEvent;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 78
    iget-wide v4, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mTick:J

    iget-wide v6, p1, Lcom/leff/midi/event/MidiEvent;->mTick:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_b

    .line 103
    .end local p1    # "other":Lcom/leff/midi/event/MidiEvent;
    :cond_a
    :goto_a
    return v2

    .line 82
    .restart local p1    # "other":Lcom/leff/midi/event/MidiEvent;
    :cond_b
    iget-wide v4, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mTick:J

    iget-wide v6, p1, Lcom/leff/midi/event/MidiEvent;->mTick:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_15

    move v2, v3

    .line 84
    goto :goto_a

    .line 87
    :cond_15
    iget-object v4, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v4}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v4

    iget-object v5, p1, Lcom/leff/midi/event/MidiEvent;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v5}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v5

    if-gt v4, v5, :cond_a

    .line 91
    iget-object v2, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v2}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v2

    iget-object v4, p1, Lcom/leff/midi/event/MidiEvent;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v4}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v4

    if-ge v2, v4, :cond_33

    move v2, v3

    .line 93
    goto :goto_a

    .line 96
    :cond_33
    instance-of v2, p1, Lcom/leff/midi/event/SystemExclusiveEvent;

    if-eqz v2, :cond_4c

    .line 98
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mData:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 99
    .local v1, "curr":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    check-cast p1, Lcom/leff/midi/event/SystemExclusiveEvent;

    .end local p1    # "other":Lcom/leff/midi/event/MidiEvent;
    iget-object v2, p1, Lcom/leff/midi/event/SystemExclusiveEvent;->mData:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 100
    .local v0, "comp":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_a

    .end local v0    # "comp":Ljava/lang/String;
    .end local v1    # "curr":Ljava/lang/String;
    .restart local p1    # "other":Lcom/leff/midi/event/MidiEvent;
    :cond_4c
    move v2, v3

    .line 103
    goto :goto_a
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/leff/midi/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/leff/midi/event/SystemExclusiveEvent;->compareTo(Lcom/leff/midi/event/MidiEvent;)I

    move-result v0

    return v0
.end method

.method public getData()[B
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mData:[B

    return-object v0
.end method

.method protected getEventSize()I
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mLength:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/leff/midi/util/VariableLengthInt;->getByteCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public requiresStatusByte(Lcom/leff/midi/event/MidiEvent;)Z
    .registers 3
    .param p1, "prevEvent"    # Lcom/leff/midi/event/MidiEvent;

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public setData([B)V
    .registers 4
    .param p1, "data"    # [B

    .prologue
    .line 45
    iget-object v0, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mLength:Lcom/leff/midi/util/VariableLengthInt;

    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/leff/midi/util/VariableLengthInt;->setValue(I)V

    .line 46
    iput-object p1, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mData:[B

    .line 47
    return-void
.end method

.method public writeToFile(Ljava/io/OutputStream;Z)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "writeType"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/leff/midi/event/MidiEvent;->writeToFile(Ljava/io/OutputStream;Z)V

    .line 60
    iget v0, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mType:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 61
    iget-object v0, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mLength:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/leff/midi/util/VariableLengthInt;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 62
    iget-object v0, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mData:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 63
    return-void
.end method

.method public writeToFile(Ljava/io/RandomAccessFile;Z)V
    .registers 4
    .param p1, "out"    # Ljava/io/RandomAccessFile;
    .param p2, "writeType"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/leff/midi/event/MidiEvent;->writeToFile(Ljava/io/RandomAccessFile;Z)V

    .line 70
    iget v0, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mType:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 71
    iget-object v0, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mLength:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/leff/midi/util/VariableLengthInt;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 72
    iget-object v0, p0, Lcom/leff/midi/event/SystemExclusiveEvent;->mData:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 73
    return-void
.end method
