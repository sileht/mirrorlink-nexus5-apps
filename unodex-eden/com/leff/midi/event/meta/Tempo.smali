.class public Lcom/leff/midi/event/meta/Tempo;
.super Lcom/leff/midi/event/meta/MetaEvent;
.source "Tempo.java"


# static fields
.field public static final DEFAULT_BPM:F = 120.0f

.field public static final DEFAULT_MPQN:I = 0x7a120


# instance fields
.field private mBPM:F

.field private mMPQN:I


# direct methods
.method public constructor <init>()V
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    .line 21
    const v6, 0x7a120

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v1 .. v6}, Lcom/leff/midi/event/meta/Tempo;-><init>(JJI)V

    .line 22
    return-void
.end method

.method public constructor <init>(JJI)V
    .registers 15
    .param p1, "tick"    # J
    .param p3, "delta"    # J
    .param p5, "mpqn"    # I

    .prologue
    .line 26
    const/16 v6, 0x51

    new-instance v7, Lcom/leff/midi/util/VariableLengthInt;

    const/4 v0, 0x3

    invoke-direct {v7, v0}, Lcom/leff/midi/util/VariableLengthInt;-><init>(I)V

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/leff/midi/event/meta/MetaEvent;-><init>(JJILcom/leff/midi/util/VariableLengthInt;)V

    .line 28
    invoke-virtual {p0, p5}, Lcom/leff/midi/event/meta/Tempo;->setMpqn(I)V

    .line 29
    return-void
.end method

.method public static parseTempo(JJLcom/leff/midi/event/meta/MetaEvent$MetaEventData;)Lcom/leff/midi/event/meta/MetaEvent;
    .registers 13
    .param p0, "tick"    # J
    .param p2, "delta"    # J
    .param p4, "info"    # Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;

    .prologue
    const/4 v2, 0x3

    .line 79
    iget-object v0, p4, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->length:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v0

    if-eq v0, v2, :cond_12

    .line 81
    new-instance v1, Lcom/leff/midi/event/meta/GenericMetaEvent;

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/leff/midi/event/meta/GenericMetaEvent;-><init>(JJLcom/leff/midi/event/meta/MetaEvent$MetaEventData;)V

    .line 86
    :goto_11
    return-object v1

    .line 84
    :cond_12
    iget-object v0, p4, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/leff/midi/util/MidiUtil;->bytesToInt([BII)I

    move-result v6

    .line 86
    .local v6, "mpqn":I
    new-instance v1, Lcom/leff/midi/event/meta/Tempo;

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/leff/midi/event/meta/Tempo;-><init>(JJI)V

    goto :goto_11
.end method


# virtual methods
.method public compareTo(Lcom/leff/midi/event/MidiEvent;)I
    .registers 10
    .param p1, "other"    # Lcom/leff/midi/event/MidiEvent;

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 92
    iget-wide v4, p0, Lcom/leff/midi/event/meta/Tempo;->mTick:J

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_19

    .line 94
    iget-wide v4, p0, Lcom/leff/midi/event/meta/Tempo;->mTick:J

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_17

    .line 112
    :cond_16
    :goto_16
    return v1

    :cond_17
    move v1, v2

    .line 94
    goto :goto_16

    .line 96
    :cond_19
    iget-object v3, p0, Lcom/leff/midi/event/meta/Tempo;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v3}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getDelta()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3b

    .line 98
    iget-object v3, p0, Lcom/leff/midi/event/meta/Tempo;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

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

    .line 101
    :cond_3b
    instance-of v3, p1, Lcom/leff/midi/event/meta/Tempo;

    if-nez v3, :cond_41

    move v1, v2

    .line 103
    goto :goto_16

    :cond_41
    move-object v0, p1

    .line 106
    check-cast v0, Lcom/leff/midi/event/meta/Tempo;

    .line 108
    .local v0, "o":Lcom/leff/midi/event/meta/Tempo;
    iget v3, p0, Lcom/leff/midi/event/meta/Tempo;->mMPQN:I

    iget v4, v0, Lcom/leff/midi/event/meta/Tempo;->mMPQN:I

    if-eq v3, v4, :cond_52

    .line 110
    iget v3, p0, Lcom/leff/midi/event/meta/Tempo;->mMPQN:I

    iget v4, v0, Lcom/leff/midi/event/meta/Tempo;->mMPQN:I

    if-lt v3, v4, :cond_16

    move v1, v2

    goto :goto_16

    .line 112
    :cond_52
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/leff/midi/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/leff/midi/event/meta/Tempo;->compareTo(Lcom/leff/midi/event/MidiEvent;)I

    move-result v0

    return v0
.end method

.method public getBpm()F
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/leff/midi/event/meta/Tempo;->mBPM:F

    return v0
.end method

.method protected getEventSize()I
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x6

    return v0
.end method

.method public getMpqn()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/leff/midi/event/meta/Tempo;->mMPQN:I

    return v0
.end method

.method public setBpm(F)V
    .registers 4
    .param p1, "b"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/leff/midi/event/meta/Tempo;->mBPM:F

    .line 50
    const v0, 0x4c64e1c0    # 6.0E7f

    iget v1, p0, Lcom/leff/midi/event/meta/Tempo;->mBPM:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/leff/midi/event/meta/Tempo;->mMPQN:I

    .line 51
    return-void
.end method

.method public setMpqn(I)V
    .registers 4
    .param p1, "m"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/leff/midi/event/meta/Tempo;->mMPQN:I

    .line 44
    const v0, 0x4c64e1c0    # 6.0E7f

    iget v1, p0, Lcom/leff/midi/event/meta/Tempo;->mMPQN:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/leff/midi/event/meta/Tempo;->mBPM:F

    .line 45
    return-void
.end method

.method public writeToFile(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 62
    invoke-super {p0, p1}, Lcom/leff/midi/event/meta/MetaEvent;->writeToFile(Ljava/io/OutputStream;)V

    .line 64
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 65
    iget v0, p0, Lcom/leff/midi/event/meta/Tempo;->mMPQN:I

    invoke-static {v0, v1}, Lcom/leff/midi/util/MidiUtil;->intToBytes(II)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 66
    return-void
.end method

.method public writeToFile(Ljava/io/RandomAccessFile;)V
    .registers 4
    .param p1, "out"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 71
    invoke-super {p0, p1}, Lcom/leff/midi/event/meta/MetaEvent;->writeToFile(Ljava/io/RandomAccessFile;)V

    .line 73
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 74
    iget v0, p0, Lcom/leff/midi/event/meta/Tempo;->mMPQN:I

    invoke-static {v0, v1}, Lcom/leff/midi/util/MidiUtil;->intToBytes(II)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 75
    return-void
.end method
