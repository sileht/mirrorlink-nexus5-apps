.class public Lcom/leff/midi/event/meta/GenericMetaEvent;
.super Lcom/leff/midi/event/meta/MetaEvent;
.source "GenericMetaEvent.java"


# instance fields
.field private mData:[B


# direct methods
.method protected constructor <init>(JJLcom/leff/midi/event/meta/MetaEvent$MetaEventData;)V
    .registers 15
    .param p1, "tick"    # J
    .param p3, "delta"    # J
    .param p5, "info"    # Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;

    .prologue
    .line 15
    iget v6, p5, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->type:I

    iget-object v7, p5, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->length:Lcom/leff/midi/util/VariableLengthInt;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/leff/midi/event/meta/MetaEvent;-><init>(JJILcom/leff/midi/util/VariableLengthInt;)V

    .line 17
    iget-object v0, p5, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->data:[B

    iput-object v0, p0, Lcom/leff/midi/event/meta/GenericMetaEvent;->mData:[B

    .line 19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Warning: GenericMetaEvent used because type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p5, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") wasn\'t recognized or unexpected data length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p5, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->length:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v2}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/leff/midi/event/MidiEvent;)I
    .registers 8
    .param p1, "other"    # Lcom/leff/midi/event/MidiEvent;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 47
    iget-wide v2, p0, Lcom/leff/midi/event/meta/GenericMetaEvent;->mTick:J

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    .line 49
    iget-wide v2, p0, Lcom/leff/midi/event/meta/GenericMetaEvent;->mTick:J

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_18

    :goto_16
    move v1, v0

    .line 56
    :cond_17
    :goto_17
    return v1

    :cond_18
    move v0, v1

    .line 49
    goto :goto_16

    .line 51
    :cond_1a
    iget-object v2, p0, Lcom/leff/midi/event/meta/GenericMetaEvent;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v2}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getDelta()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_17

    .line 53
    iget-object v2, p0, Lcom/leff/midi/event/meta/GenericMetaEvent;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v2}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getDelta()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_17

    move v1, v0

    goto :goto_17
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/leff/midi/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/leff/midi/event/meta/GenericMetaEvent;->compareTo(Lcom/leff/midi/event/MidiEvent;)I

    move-result v0

    return v0
.end method

.method protected getEventSize()I
    .registers 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/leff/midi/event/meta/GenericMetaEvent;->mLength:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/leff/midi/util/VariableLengthInt;->getByteCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/leff/midi/event/meta/GenericMetaEvent;->mLength:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v1}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected writeToFile(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/leff/midi/event/meta/MetaEvent;->writeToFile(Ljava/io/OutputStream;)V

    .line 32
    iget-object v0, p0, Lcom/leff/midi/event/meta/GenericMetaEvent;->mLength:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/leff/midi/util/VariableLengthInt;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 33
    iget-object v0, p0, Lcom/leff/midi/event/meta/GenericMetaEvent;->mData:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 34
    return-void
.end method

.method protected writeToFile(Ljava/io/RandomAccessFile;)V
    .registers 3
    .param p1, "out"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/leff/midi/event/meta/MetaEvent;->writeToFile(Ljava/io/RandomAccessFile;)V

    .line 40
    iget-object v0, p0, Lcom/leff/midi/event/meta/GenericMetaEvent;->mLength:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/leff/midi/util/VariableLengthInt;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 41
    iget-object v0, p0, Lcom/leff/midi/event/meta/GenericMetaEvent;->mData:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 42
    return-void
.end method
