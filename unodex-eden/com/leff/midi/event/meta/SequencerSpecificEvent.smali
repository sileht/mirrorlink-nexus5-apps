.class public Lcom/leff/midi/event/meta/SequencerSpecificEvent;
.super Lcom/leff/midi/event/meta/MetaEvent;
.source "SequencerSpecificEvent.java"


# instance fields
.field private mData:[B


# direct methods
.method public constructor <init>(JJ[B)V
    .registers 15
    .param p1, "tick"    # J
    .param p3, "delta"    # J
    .param p5, "data"    # [B

    .prologue
    .line 17
    const/16 v6, 0x7f

    new-instance v7, Lcom/leff/midi/util/VariableLengthInt;

    array-length v0, p5

    invoke-direct {v7, v0}, Lcom/leff/midi/util/VariableLengthInt;-><init>(I)V

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/leff/midi/event/meta/MetaEvent;-><init>(JJILcom/leff/midi/util/VariableLengthInt;)V

    .line 19
    iput-object p5, p0, Lcom/leff/midi/event/meta/SequencerSpecificEvent;->mData:[B

    .line 20
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/leff/midi/event/MidiEvent;)I
    .registers 10
    .param p1, "other"    # Lcom/leff/midi/event/MidiEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 59
    iget-wide v4, p0, Lcom/leff/midi/event/meta/SequencerSpecificEvent;->mTick:J

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1b

    .line 61
    iget-wide v4, p0, Lcom/leff/midi/event/meta/SequencerSpecificEvent;->mTick:J

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_19

    :goto_17
    move v2, v1

    .line 79
    :cond_18
    :goto_18
    return v2

    :cond_19
    move v1, v2

    .line 61
    goto :goto_17

    .line 63
    :cond_1b
    iget-object v4, p0, Lcom/leff/midi/event/meta/SequencerSpecificEvent;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v4}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getDelta()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3b

    .line 65
    iget-object v3, p0, Lcom/leff/midi/event/meta/SequencerSpecificEvent;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v3}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getDelta()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_18

    move v2, v1

    goto :goto_18

    .line 68
    :cond_3b
    instance-of v1, p1, Lcom/leff/midi/event/meta/SequencerSpecificEvent;

    if-eqz v1, :cond_18

    move-object v0, p1

    .line 73
    check-cast v0, Lcom/leff/midi/event/meta/SequencerSpecificEvent;

    .line 75
    .local v0, "o":Lcom/leff/midi/event/meta/SequencerSpecificEvent;
    iget-object v1, p0, Lcom/leff/midi/event/meta/SequencerSpecificEvent;->mData:[B

    iget-object v4, v0, Lcom/leff/midi/event/meta/SequencerSpecificEvent;->mData:[B

    iget-object v5, p0, Lcom/leff/midi/event/meta/SequencerSpecificEvent;->mData:[B

    array-length v5, v5

    invoke-static {v1, v4, v3, v5}, Lcom/leff/midi/util/MidiUtil;->bytesEqual([B[BII)Z

    move-result v1

    if-eqz v1, :cond_18

    move v2, v3

    .line 77
    goto :goto_18
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/leff/midi/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/leff/midi/event/meta/SequencerSpecificEvent;->compareTo(Lcom/leff/midi/event/MidiEvent;)I

    move-result v0

    return v0
.end method

.method public getData()[B
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/leff/midi/event/meta/SequencerSpecificEvent;->mData:[B

    return-object v0
.end method

.method protected getEventSize()I
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/leff/midi/event/meta/SequencerSpecificEvent;->mLength:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/leff/midi/util/VariableLengthInt;->getByteCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/leff/midi/event/meta/SequencerSpecificEvent;->mData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setData([B)V
    .registers 4
    .param p1, "data"    # [B

    .prologue
    .line 24
    iput-object p1, p0, Lcom/leff/midi/event/meta/SequencerSpecificEvent;->mData:[B

    .line 25
    iget-object v0, p0, Lcom/leff/midi/event/meta/SequencerSpecificEvent;->mLength:Lcom/leff/midi/util/VariableLengthInt;

    iget-object v1, p0, Lcom/leff/midi/event/meta/SequencerSpecificEvent;->mData:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/leff/midi/util/VariableLengthInt;->setValue(I)V

    .line 26
    return-void
.end method

.method public writeToFile(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/leff/midi/event/meta/MetaEvent;->writeToFile(Ljava/io/OutputStream;)V

    .line 43
    iget-object v0, p0, Lcom/leff/midi/event/meta/SequencerSpecificEvent;->mLength:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/leff/midi/util/VariableLengthInt;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 44
    iget-object v0, p0, Lcom/leff/midi/event/meta/SequencerSpecificEvent;->mData:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 45
    return-void
.end method

.method public writeToFile(Ljava/io/RandomAccessFile;)V
    .registers 3
    .param p1, "out"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/leff/midi/event/meta/MetaEvent;->writeToFile(Ljava/io/RandomAccessFile;)V

    .line 52
    iget-object v0, p0, Lcom/leff/midi/event/meta/SequencerSpecificEvent;->mLength:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/leff/midi/util/VariableLengthInt;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 53
    iget-object v0, p0, Lcom/leff/midi/event/meta/SequencerSpecificEvent;->mData:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 54
    return-void
.end method
