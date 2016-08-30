.class public Lcom/leff/midi/event/meta/EndOfTrack;
.super Lcom/leff/midi/event/meta/MetaEvent;
.source "EndOfTrack.java"


# direct methods
.method public constructor <init>(JJ)V
    .registers 14
    .param p1, "tick"    # J
    .param p3, "delta"    # J

    .prologue
    .line 14
    const/16 v6, 0x2f

    new-instance v7, Lcom/leff/midi/util/VariableLengthInt;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/leff/midi/util/VariableLengthInt;-><init>(I)V

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/leff/midi/event/meta/MetaEvent;-><init>(JJILcom/leff/midi/util/VariableLengthInt;)V

    .line 15
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/leff/midi/event/MidiEvent;)I
    .registers 8
    .param p1, "other"    # Lcom/leff/midi/event/MidiEvent;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 42
    iget-wide v2, p0, Lcom/leff/midi/event/meta/EndOfTrack;->mTick:J

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    .line 44
    iget-wide v2, p0, Lcom/leff/midi/event/meta/EndOfTrack;->mTick:J

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_18

    :goto_16
    move v1, v0

    .line 55
    :cond_17
    :goto_17
    return v1

    :cond_18
    move v0, v1

    .line 44
    goto :goto_16

    .line 46
    :cond_1a
    iget-object v2, p0, Lcom/leff/midi/event/meta/EndOfTrack;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v2}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getDelta()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3a

    .line 48
    iget-object v2, p0, Lcom/leff/midi/event/meta/EndOfTrack;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v2}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getDelta()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_17

    move v1, v0

    goto :goto_17

    .line 51
    :cond_3a
    instance-of v0, p1, Lcom/leff/midi/event/meta/EndOfTrack;

    if-eqz v0, :cond_17

    .line 55
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/leff/midi/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/leff/midi/event/meta/EndOfTrack;->compareTo(Lcom/leff/midi/event/MidiEvent;)I

    move-result v0

    return v0
.end method

.method protected getEventSize()I
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x3

    return v0
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
    .line 26
    invoke-super {p0, p1}, Lcom/leff/midi/event/meta/MetaEvent;->writeToFile(Ljava/io/OutputStream;)V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 29
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
    .line 34
    invoke-super {p0, p1}, Lcom/leff/midi/event/meta/MetaEvent;->writeToFile(Ljava/io/RandomAccessFile;)V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 37
    return-void
.end method
