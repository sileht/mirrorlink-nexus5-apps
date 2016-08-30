.class public Lcom/leff/midi/event/meta/KeySignature;
.super Lcom/leff/midi/event/meta/MetaEvent;
.source "KeySignature.java"


# static fields
.field public static final SCALE_MAJOR:I = 0x0

.field public static final SCALE_MINOR:I = 0x1


# instance fields
.field private mKey:I

.field private mScale:I


# direct methods
.method public constructor <init>(JJII)V
    .registers 16
    .param p1, "tick"    # J
    .param p3, "delta"    # J
    .param p5, "key"    # I
    .param p6, "scale"    # I

    .prologue
    .line 20
    const/16 v6, 0x59

    new-instance v7, Lcom/leff/midi/util/VariableLengthInt;

    const/4 v0, 0x2

    invoke-direct {v7, v0}, Lcom/leff/midi/util/VariableLengthInt;-><init>(I)V

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/leff/midi/event/meta/MetaEvent;-><init>(JJILcom/leff/midi/util/VariableLengthInt;)V

    .line 22
    invoke-virtual {p0, p5}, Lcom/leff/midi/event/meta/KeySignature;->setKey(I)V

    .line 23
    iput p6, p0, Lcom/leff/midi/event/meta/KeySignature;->mScale:I

    .line 24
    return-void
.end method

.method public static parseKeySignature(JJLcom/leff/midi/event/meta/MetaEvent$MetaEventData;)Lcom/leff/midi/event/meta/MetaEvent;
    .registers 13
    .param p0, "tick"    # J
    .param p2, "delta"    # J
    .param p4, "info"    # Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;

    .prologue
    .line 79
    iget-object v0, p4, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->length:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    .line 81
    new-instance v1, Lcom/leff/midi/event/meta/GenericMetaEvent;

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/leff/midi/event/meta/GenericMetaEvent;-><init>(JJLcom/leff/midi/event/meta/MetaEvent$MetaEventData;)V

    .line 87
    :goto_11
    return-object v1

    .line 84
    :cond_12
    iget-object v0, p4, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v1, 0x0

    aget-byte v6, v0, v1

    .line 85
    .local v6, "key":I
    iget-object v0, p4, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v1, 0x1

    aget-byte v7, v0, v1

    .line 87
    .local v7, "scale":I
    new-instance v1, Lcom/leff/midi/event/meta/KeySignature;

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/leff/midi/event/meta/KeySignature;-><init>(JJII)V

    goto :goto_11
.end method


# virtual methods
.method public compareTo(Lcom/leff/midi/event/MidiEvent;)I
    .registers 10
    .param p1, "other"    # Lcom/leff/midi/event/MidiEvent;

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 93
    iget-wide v4, p0, Lcom/leff/midi/event/meta/KeySignature;->mTick:J

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_19

    .line 95
    iget-wide v4, p0, Lcom/leff/midi/event/meta/KeySignature;->mTick:J

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_17

    .line 118
    :cond_16
    :goto_16
    return v1

    :cond_17
    move v1, v2

    .line 95
    goto :goto_16

    .line 97
    :cond_19
    iget-object v3, p0, Lcom/leff/midi/event/meta/KeySignature;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v3}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getDelta()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3b

    .line 99
    iget-object v3, p0, Lcom/leff/midi/event/meta/KeySignature;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

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

    .line 102
    :cond_3b
    instance-of v3, p1, Lcom/leff/midi/event/meta/KeySignature;

    if-nez v3, :cond_41

    move v1, v2

    .line 104
    goto :goto_16

    :cond_41
    move-object v0, p1

    .line 107
    check-cast v0, Lcom/leff/midi/event/meta/KeySignature;

    .line 108
    .local v0, "o":Lcom/leff/midi/event/meta/KeySignature;
    iget v3, p0, Lcom/leff/midi/event/meta/KeySignature;->mKey:I

    iget v4, v0, Lcom/leff/midi/event/meta/KeySignature;->mKey:I

    if-eq v3, v4, :cond_52

    .line 110
    iget v3, p0, Lcom/leff/midi/event/meta/KeySignature;->mKey:I

    iget v4, v0, Lcom/leff/midi/event/meta/KeySignature;->mKey:I

    if-lt v3, v4, :cond_16

    move v1, v2

    goto :goto_16

    .line 113
    :cond_52
    iget v3, p0, Lcom/leff/midi/event/meta/KeySignature;->mScale:I

    iget v4, v0, Lcom/leff/midi/event/meta/KeySignature;->mScale:I

    if-eq v3, v4, :cond_60

    .line 115
    iget v3, p0, Lcom/leff/midi/event/meta/KeySignature;->mKey:I

    iget v4, v0, Lcom/leff/midi/event/meta/KeySignature;->mScale:I

    if-lt v3, v4, :cond_16

    move v1, v2

    goto :goto_16

    .line 118
    :cond_60
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/leff/midi/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/leff/midi/event/meta/KeySignature;->compareTo(Lcom/leff/midi/event/MidiEvent;)I

    move-result v0

    return v0
.end method

.method protected getEventSize()I
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x5

    return v0
.end method

.method public getKey()I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/leff/midi/event/meta/KeySignature;->mKey:I

    return v0
.end method

.method public getScale()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/leff/midi/event/meta/KeySignature;->mScale:I

    return v0
.end method

.method public setKey(I)V
    .registers 5
    .param p1, "key"    # I

    .prologue
    const/4 v2, 0x7

    const/4 v1, -0x7

    .line 28
    int-to-byte v0, p1

    iput v0, p0, Lcom/leff/midi/event/meta/KeySignature;->mKey:I

    .line 30
    iget v0, p0, Lcom/leff/midi/event/meta/KeySignature;->mKey:I

    if-ge v0, v1, :cond_c

    .line 31
    iput v1, p0, Lcom/leff/midi/event/meta/KeySignature;->mKey:I

    .line 34
    :cond_b
    :goto_b
    return-void

    .line 32
    :cond_c
    iget v0, p0, Lcom/leff/midi/event/meta/KeySignature;->mKey:I

    if-le v0, v2, :cond_b

    .line 33
    iput v2, p0, Lcom/leff/midi/event/meta/KeySignature;->mKey:I

    goto :goto_b
.end method

.method public setScale(I)V
    .registers 2
    .param p1, "scale"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/leff/midi/event/meta/KeySignature;->mScale:I

    .line 44
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
    .line 60
    invoke-super {p0, p1}, Lcom/leff/midi/event/meta/MetaEvent;->writeToFile(Ljava/io/OutputStream;)V

    .line 62
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 63
    iget v0, p0, Lcom/leff/midi/event/meta/KeySignature;->mKey:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 64
    iget v0, p0, Lcom/leff/midi/event/meta/KeySignature;->mScale:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 65
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
    .line 70
    invoke-super {p0, p1}, Lcom/leff/midi/event/meta/MetaEvent;->writeToFile(Ljava/io/RandomAccessFile;)V

    .line 72
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 73
    iget v0, p0, Lcom/leff/midi/event/meta/KeySignature;->mKey:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 74
    iget v0, p0, Lcom/leff/midi/event/meta/KeySignature;->mScale:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 75
    return-void
.end method
