.class public Lcom/leff/midi/util/MetronomeTick;
.super Lcom/leff/midi/event/MidiEvent;
.source "MetronomeTick.java"


# instance fields
.field private mCurrentBeat:I

.field private mCurrentMeasure:I

.field private mMetronomeFrequency:I

.field private mMetronomeProgress:D

.field private mResolution:I

.field private mSignature:Lcom/leff/midi/event/meta/TimeSignature;


# direct methods
.method public constructor <init>(Lcom/leff/midi/event/meta/TimeSignature;I)V
    .registers 5
    .param p1, "sig"    # Lcom/leff/midi/event/meta/TimeSignature;
    .param p2, "resolution"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 23
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/leff/midi/event/MidiEvent;-><init>(JJ)V

    .line 25
    iput p2, p0, Lcom/leff/midi/util/MetronomeTick;->mResolution:I

    .line 27
    invoke-virtual {p0, p1}, Lcom/leff/midi/util/MetronomeTick;->setTimeSignature(Lcom/leff/midi/event/meta/TimeSignature;)V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/leff/midi/util/MetronomeTick;->mCurrentMeasure:I

    .line 29
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/leff/midi/event/MidiEvent;)I
    .registers 3
    .param p1, "o"    # Lcom/leff/midi/event/MidiEvent;

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/leff/midi/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/leff/midi/util/MetronomeTick;->compareTo(Lcom/leff/midi/event/MidiEvent;)I

    move-result v0

    return v0
.end method

.method public getBeatNumber()I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Lcom/leff/midi/util/MetronomeTick;->mCurrentBeat:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected getEventSize()I
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasure()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/leff/midi/util/MetronomeTick;->mCurrentMeasure:I

    return v0
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public setMetronomeFrequency(I)V
    .registers 3
    .param p1, "meter"    # I

    .prologue
    .line 61
    sparse-switch p1, :sswitch_data_1e

    .line 76
    :goto_3
    return-void

    .line 64
    :sswitch_4
    iget v0, p0, Lcom/leff/midi/util/MetronomeTick;->mResolution:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/leff/midi/util/MetronomeTick;->mMetronomeFrequency:I

    goto :goto_3

    .line 67
    :sswitch_b
    iget v0, p0, Lcom/leff/midi/util/MetronomeTick;->mResolution:I

    iput v0, p0, Lcom/leff/midi/util/MetronomeTick;->mMetronomeFrequency:I

    goto :goto_3

    .line 70
    :sswitch_10
    iget v0, p0, Lcom/leff/midi/util/MetronomeTick;->mResolution:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/leff/midi/util/MetronomeTick;->mMetronomeFrequency:I

    goto :goto_3

    .line 73
    :sswitch_17
    iget v0, p0, Lcom/leff/midi/util/MetronomeTick;->mResolution:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/leff/midi/util/MetronomeTick;->mMetronomeFrequency:I

    goto :goto_3

    .line 61
    :sswitch_data_1e
    .sparse-switch
        0xc -> :sswitch_4
        0x18 -> :sswitch_b
        0x30 -> :sswitch_10
        0x60 -> :sswitch_17
    .end sparse-switch
.end method

.method public setTimeSignature(Lcom/leff/midi/event/meta/TimeSignature;)V
    .registers 3
    .param p1, "sig"    # Lcom/leff/midi/event/meta/TimeSignature;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/leff/midi/util/MetronomeTick;->mSignature:Lcom/leff/midi/event/meta/TimeSignature;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/leff/midi/util/MetronomeTick;->mCurrentBeat:I

    .line 36
    invoke-virtual {p1}, Lcom/leff/midi/event/meta/TimeSignature;->getMeter()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leff/midi/util/MetronomeTick;->setMetronomeFrequency(I)V

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Metronome: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/leff/midi/util/MetronomeTick;->mCurrentMeasure:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leff/midi/util/MetronomeTick;->getBeatNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(D)Z
    .registers 8
    .param p1, "ticksElapsed"    # D

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/leff/midi/util/MetronomeTick;->mMetronomeProgress:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/leff/midi/util/MetronomeTick;->mMetronomeProgress:D

    .line 43
    iget-wide v0, p0, Lcom/leff/midi/util/MetronomeTick;->mMetronomeProgress:D

    iget v2, p0, Lcom/leff/midi/util/MetronomeTick;->mMetronomeFrequency:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2f

    .line 46
    iget-wide v0, p0, Lcom/leff/midi/util/MetronomeTick;->mMetronomeProgress:D

    iget v2, p0, Lcom/leff/midi/util/MetronomeTick;->mMetronomeFrequency:I

    int-to-double v2, v2

    rem-double/2addr v0, v2

    iput-wide v0, p0, Lcom/leff/midi/util/MetronomeTick;->mMetronomeProgress:D

    .line 48
    iget v0, p0, Lcom/leff/midi/util/MetronomeTick;->mCurrentBeat:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/leff/midi/util/MetronomeTick;->mSignature:Lcom/leff/midi/event/meta/TimeSignature;

    invoke-virtual {v1}, Lcom/leff/midi/event/meta/TimeSignature;->getNumerator()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/leff/midi/util/MetronomeTick;->mCurrentBeat:I

    .line 49
    iget v0, p0, Lcom/leff/midi/util/MetronomeTick;->mCurrentBeat:I

    if-nez v0, :cond_2d

    .line 51
    iget v0, p0, Lcom/leff/midi/util/MetronomeTick;->mCurrentMeasure:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/leff/midi/util/MetronomeTick;->mCurrentMeasure:I

    .line 54
    :cond_2d
    const/4 v0, 0x1

    .line 56
    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method
