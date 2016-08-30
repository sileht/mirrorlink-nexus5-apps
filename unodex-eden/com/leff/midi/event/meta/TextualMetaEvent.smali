.class public abstract Lcom/leff/midi/event/meta/TextualMetaEvent;
.super Lcom/leff/midi/event/meta/MetaEvent;
.source "TextualMetaEvent.java"


# instance fields
.field protected mText:Ljava/lang/String;


# direct methods
.method protected constructor <init>(JJILjava/lang/String;)V
    .registers 16
    .param p1, "tick"    # J
    .param p3, "delta"    # J
    .param p5, "type"    # I
    .param p6, "text"    # Ljava/lang/String;

    .prologue
    .line 16
    new-instance v7, Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v7, v0}, Lcom/leff/midi/util/VariableLengthInt;-><init>(I)V

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/leff/midi/event/meta/MetaEvent;-><init>(JJILcom/leff/midi/util/VariableLengthInt;)V

    .line 18
    invoke-virtual {p0, p6}, Lcom/leff/midi/event/meta/TextualMetaEvent;->setText(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/leff/midi/event/MidiEvent;)I
    .registers 10
    .param p1, "other"    # Lcom/leff/midi/event/MidiEvent;

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 59
    iget-wide v4, p0, Lcom/leff/midi/event/meta/TextualMetaEvent;->mTick:J

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1a

    .line 61
    iget-wide v4, p0, Lcom/leff/midi/event/meta/TextualMetaEvent;->mTick:J

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_18

    :goto_16
    move v2, v1

    .line 75
    :cond_17
    :goto_17
    return v2

    :cond_18
    move v1, v2

    .line 61
    goto :goto_16

    .line 63
    :cond_1a
    iget-object v3, p0, Lcom/leff/midi/event/meta/TextualMetaEvent;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v3}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getDelta()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3a

    .line 65
    iget-object v3, p0, Lcom/leff/midi/event/meta/TextualMetaEvent;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v3}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getDelta()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_17

    move v2, v1

    goto :goto_17

    .line 68
    :cond_3a
    instance-of v1, p1, Lcom/leff/midi/event/meta/TextualMetaEvent;

    if-eqz v1, :cond_17

    move-object v0, p1

    .line 73
    check-cast v0, Lcom/leff/midi/event/meta/TextualMetaEvent;

    .line 75
    .local v0, "o":Lcom/leff/midi/event/meta/TextualMetaEvent;
    iget-object v1, p0, Lcom/leff/midi/event/meta/TextualMetaEvent;->mText:Ljava/lang/String;

    iget-object v2, v0, Lcom/leff/midi/event/meta/TextualMetaEvent;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_17
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/leff/midi/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/leff/midi/event/meta/TextualMetaEvent;->compareTo(Lcom/leff/midi/event/MidiEvent;)I

    move-result v0

    return v0
.end method

.method protected getEventSize()I
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/leff/midi/event/meta/TextualMetaEvent;->mLength:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/leff/midi/util/VariableLengthInt;->getByteCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/leff/midi/event/meta/TextualMetaEvent;->mLength:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v1}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/leff/midi/event/meta/TextualMetaEvent;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected setText(Ljava/lang/String;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/leff/midi/event/meta/TextualMetaEvent;->mText:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/leff/midi/event/meta/TextualMetaEvent;->mLength:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/leff/midi/util/VariableLengthInt;->setValue(I)V

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/leff/midi/event/meta/MetaEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/leff/midi/event/meta/TextualMetaEvent;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    iget-object v0, p0, Lcom/leff/midi/event/meta/TextualMetaEvent;->mLength:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/leff/midi/util/VariableLengthInt;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 44
    iget-object v0, p0, Lcom/leff/midi/event/meta/TextualMetaEvent;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

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
    iget-object v0, p0, Lcom/leff/midi/event/meta/TextualMetaEvent;->mLength:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/leff/midi/util/VariableLengthInt;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 53
    iget-object v0, p0, Lcom/leff/midi/event/meta/TextualMetaEvent;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 54
    return-void
.end method
