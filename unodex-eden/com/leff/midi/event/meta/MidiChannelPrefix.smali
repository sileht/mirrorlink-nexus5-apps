.class public Lcom/leff/midi/event/meta/MidiChannelPrefix;
.super Lcom/leff/midi/event/meta/MetaEvent;
.source "MidiChannelPrefix.java"


# instance fields
.field private mChannel:I


# direct methods
.method public constructor <init>(JJI)V
    .registers 15
    .param p1, "tick"    # J
    .param p3, "delta"    # J
    .param p5, "channel"    # I

    .prologue
    .line 16
    const/16 v6, 0x20

    new-instance v7, Lcom/leff/midi/util/VariableLengthInt;

    const/4 v0, 0x4

    invoke-direct {v7, v0}, Lcom/leff/midi/util/VariableLengthInt;-><init>(I)V

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/leff/midi/event/meta/MetaEvent;-><init>(JJILcom/leff/midi/util/VariableLengthInt;)V

    .line 18
    iput p5, p0, Lcom/leff/midi/event/meta/MidiChannelPrefix;->mChannel:I

    .line 19
    return-void
.end method

.method public static parseMidiChannelPrefix(JJLcom/leff/midi/event/meta/MetaEvent$MetaEventData;)Lcom/leff/midi/event/meta/MetaEvent;
    .registers 13
    .param p0, "tick"    # J
    .param p2, "delta"    # J
    .param p4, "info"    # Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;

    .prologue
    .line 57
    iget-object v0, p4, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->length:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    .line 59
    new-instance v1, Lcom/leff/midi/event/meta/GenericMetaEvent;

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/leff/midi/event/meta/GenericMetaEvent;-><init>(JJLcom/leff/midi/event/meta/MetaEvent$MetaEventData;)V

    .line 64
    :goto_11
    return-object v1

    .line 62
    :cond_12
    iget-object v0, p4, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v1, 0x0

    aget-byte v6, v0, v1

    .line 64
    .local v6, "channel":I
    new-instance v1, Lcom/leff/midi/event/meta/MidiChannelPrefix;

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/leff/midi/event/meta/MidiChannelPrefix;-><init>(JJI)V

    goto :goto_11
.end method


# virtual methods
.method public compareTo(Lcom/leff/midi/event/MidiEvent;)I
    .registers 10
    .param p1, "other"    # Lcom/leff/midi/event/MidiEvent;

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 70
    iget-wide v4, p0, Lcom/leff/midi/event/meta/MidiChannelPrefix;->mTick:J

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_19

    .line 72
    iget-wide v4, p0, Lcom/leff/midi/event/meta/MidiChannelPrefix;->mTick:J

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_17

    .line 90
    :cond_16
    :goto_16
    return v1

    :cond_17
    move v1, v2

    .line 72
    goto :goto_16

    .line 74
    :cond_19
    iget-object v3, p0, Lcom/leff/midi/event/meta/MidiChannelPrefix;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v3}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getDelta()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3b

    .line 76
    iget-object v3, p0, Lcom/leff/midi/event/meta/MidiChannelPrefix;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v3}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getDelta()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_39

    :goto_37
    move v1, v2

    goto :goto_16

    :cond_39
    move v2, v1

    goto :goto_37

    .line 79
    :cond_3b
    instance-of v3, p1, Lcom/leff/midi/event/meta/MidiChannelPrefix;

    if-nez v3, :cond_41

    move v1, v2

    .line 81
    goto :goto_16

    :cond_41
    move-object v0, p1

    .line 84
    check-cast v0, Lcom/leff/midi/event/meta/MidiChannelPrefix;

    .line 86
    .local v0, "o":Lcom/leff/midi/event/meta/MidiChannelPrefix;
    iget v3, p0, Lcom/leff/midi/event/meta/MidiChannelPrefix;->mChannel:I

    iget v4, v0, Lcom/leff/midi/event/meta/MidiChannelPrefix;->mChannel:I

    if-eq v3, v4, :cond_52

    .line 88
    iget v3, p0, Lcom/leff/midi/event/meta/MidiChannelPrefix;->mChannel:I

    iget v4, v0, Lcom/leff/midi/event/meta/MidiChannelPrefix;->mChannel:I

    if-lt v3, v4, :cond_16

    move v1, v2

    goto :goto_16

    .line 90
    :cond_52
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/leff/midi/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/leff/midi/event/meta/MidiChannelPrefix;->compareTo(Lcom/leff/midi/event/MidiEvent;)I

    move-result v0

    return v0
.end method

.method public getChannel()I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/leff/midi/event/meta/MidiChannelPrefix;->mChannel:I

    return v0
.end method

.method protected getEventSize()I
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x4

    return v0
.end method

.method public setChannel(I)V
    .registers 2
    .param p1, "c"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/leff/midi/event/meta/MidiChannelPrefix;->mChannel:I

    .line 24
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
    .line 40
    invoke-super {p0, p1}, Lcom/leff/midi/event/meta/MetaEvent;->writeToFile(Ljava/io/OutputStream;)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 43
    iget v0, p0, Lcom/leff/midi/event/meta/MidiChannelPrefix;->mChannel:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 44
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
    .line 49
    invoke-super {p0, p1}, Lcom/leff/midi/event/meta/MetaEvent;->writeToFile(Ljava/io/RandomAccessFile;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 52
    iget v0, p0, Lcom/leff/midi/event/meta/MidiChannelPrefix;->mChannel:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 53
    return-void
.end method
