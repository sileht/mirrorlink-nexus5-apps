.class public Lcom/leff/midi/event/meta/TimeSignature;
.super Lcom/leff/midi/event/meta/MetaEvent;
.source "TimeSignature.java"


# static fields
.field public static final DEFAULT_DIVISION:I = 0x8

.field public static final DEFAULT_METER:I = 0x18

.field public static final METER_EIGHTH:I = 0xc

.field public static final METER_HALF:I = 0x30

.field public static final METER_QUARTER:I = 0x18

.field public static final METER_WHOLE:I = 0x60


# instance fields
.field private mDenominator:I

.field private mDivision:I

.field private mMeter:I

.field private mNumerator:I


# direct methods
.method public constructor <init>()V
    .registers 11

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x4

    .line 27
    const/16 v8, 0x18

    const/16 v9, 0x8

    move-object v1, p0

    move-wide v4, v2

    move v7, v6

    invoke-direct/range {v1 .. v9}, Lcom/leff/midi/event/meta/TimeSignature;-><init>(JJIIII)V

    .line 28
    return-void
.end method

.method public constructor <init>(JJIIII)V
    .registers 22
    .param p1, "tick"    # J
    .param p3, "delta"    # J
    .param p5, "num"    # I
    .param p6, "den"    # I
    .param p7, "meter"    # I
    .param p8, "div"    # I

    .prologue
    .line 32
    const/16 v10, 0x58

    new-instance v11, Lcom/leff/midi/util/VariableLengthInt;

    const/4 v4, 0x4

    invoke-direct {v11, v4}, Lcom/leff/midi/util/VariableLengthInt;-><init>(I)V

    move-object v5, p0

    move-wide v6, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v5 .. v11}, Lcom/leff/midi/event/meta/MetaEvent;-><init>(JJILcom/leff/midi/util/VariableLengthInt;)V

    .line 34
    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/leff/midi/event/meta/TimeSignature;->setTimeSignature(IIII)V

    .line 35
    return-void
.end method

.method private log2(I)I
    .registers 3
    .param p1, "den"    # I

    .prologue
    .line 119
    sparse-switch p1, :sswitch_data_10

    .line 132
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 122
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 124
    :sswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 126
    :sswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 128
    :sswitch_b
    const/4 v0, 0x4

    goto :goto_4

    .line 130
    :sswitch_d
    const/4 v0, 0x5

    goto :goto_4

    .line 119
    nop

    :sswitch_data_10
    .sparse-switch
        0x2 -> :sswitch_5
        0x4 -> :sswitch_7
        0x8 -> :sswitch_9
        0x10 -> :sswitch_b
        0x20 -> :sswitch_d
    .end sparse-switch
.end method

.method public static parseTimeSignature(JJLcom/leff/midi/event/meta/MetaEvent$MetaEventData;)Lcom/leff/midi/event/meta/MetaEvent;
    .registers 15
    .param p0, "tick"    # J
    .param p2, "delta"    # J
    .param p4, "info"    # Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;

    .prologue
    .line 102
    iget-object v0, p4, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->length:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_12

    .line 104
    new-instance v1, Lcom/leff/midi/event/meta/GenericMetaEvent;

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/leff/midi/event/meta/GenericMetaEvent;-><init>(JJLcom/leff/midi/event/meta/MetaEvent$MetaEventData;)V

    .line 114
    :goto_11
    return-object v1

    .line 107
    :cond_12
    iget-object v0, p4, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v1, 0x0

    aget-byte v6, v0, v1

    .line 108
    .local v6, "num":I
    iget-object v0, p4, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v1, 0x1

    aget-byte v7, v0, v1

    .line 109
    .local v7, "den":I
    iget-object v0, p4, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v1, 0x2

    aget-byte v8, v0, v1

    .line 110
    .local v8, "met":I
    iget-object v0, p4, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v1, 0x3

    aget-byte v9, v0, v1

    .line 112
    .local v9, "fps":I
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v2, v7

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v7, v0

    .line 114
    new-instance v1, Lcom/leff/midi/event/meta/TimeSignature;

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/leff/midi/event/meta/TimeSignature;-><init>(JJIIII)V

    goto :goto_11
.end method


# virtual methods
.method public compareTo(Lcom/leff/midi/event/MidiEvent;)I
    .registers 10
    .param p1, "other"    # Lcom/leff/midi/event/MidiEvent;

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 144
    iget-wide v4, p0, Lcom/leff/midi/event/meta/TimeSignature;->mTick:J

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_19

    .line 146
    iget-wide v4, p0, Lcom/leff/midi/event/meta/TimeSignature;->mTick:J

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_17

    .line 168
    :cond_16
    :goto_16
    return v1

    :cond_17
    move v1, v2

    .line 146
    goto :goto_16

    .line 148
    :cond_19
    iget-object v3, p0, Lcom/leff/midi/event/meta/TimeSignature;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v3}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getDelta()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3b

    .line 150
    iget-object v3, p0, Lcom/leff/midi/event/meta/TimeSignature;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

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

    .line 153
    :cond_3b
    instance-of v3, p1, Lcom/leff/midi/event/meta/TimeSignature;

    if-nez v3, :cond_41

    move v1, v2

    .line 155
    goto :goto_16

    :cond_41
    move-object v0, p1

    .line 158
    check-cast v0, Lcom/leff/midi/event/meta/TimeSignature;

    .line 160
    .local v0, "o":Lcom/leff/midi/event/meta/TimeSignature;
    iget v3, p0, Lcom/leff/midi/event/meta/TimeSignature;->mNumerator:I

    iget v4, v0, Lcom/leff/midi/event/meta/TimeSignature;->mNumerator:I

    if-eq v3, v4, :cond_52

    .line 162
    iget v3, p0, Lcom/leff/midi/event/meta/TimeSignature;->mNumerator:I

    iget v4, v0, Lcom/leff/midi/event/meta/TimeSignature;->mNumerator:I

    if-lt v3, v4, :cond_16

    move v1, v2

    goto :goto_16

    .line 164
    :cond_52
    iget v3, p0, Lcom/leff/midi/event/meta/TimeSignature;->mDenominator:I

    iget v4, v0, Lcom/leff/midi/event/meta/TimeSignature;->mDenominator:I

    if-eq v3, v4, :cond_60

    .line 166
    iget v3, p0, Lcom/leff/midi/event/meta/TimeSignature;->mDenominator:I

    iget v4, v0, Lcom/leff/midi/event/meta/TimeSignature;->mDenominator:I

    if-lt v3, v4, :cond_16

    move v1, v2

    goto :goto_16

    .line 168
    :cond_60
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/leff/midi/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/leff/midi/event/meta/TimeSignature;->compareTo(Lcom/leff/midi/event/MidiEvent;)I

    move-result v0

    return v0
.end method

.method public getDenominatorValue()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/leff/midi/event/meta/TimeSignature;->mDenominator:I

    return v0
.end method

.method public getDivision()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/leff/midi/event/meta/TimeSignature;->mDivision:I

    return v0
.end method

.method protected getEventSize()I
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x7

    return v0
.end method

.method public getMeter()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/leff/midi/event/meta/TimeSignature;->mMeter:I

    return v0
.end method

.method public getNumerator()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/leff/midi/event/meta/TimeSignature;->mNumerator:I

    return v0
.end method

.method public getRealDenominator()I
    .registers 5

    .prologue
    .line 57
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget v2, p0, Lcom/leff/midi/event/meta/TimeSignature;->mDenominator:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public setTimeSignature(IIII)V
    .registers 6
    .param p1, "num"    # I
    .param p2, "den"    # I
    .param p3, "meter"    # I
    .param p4, "div"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/leff/midi/event/meta/TimeSignature;->mNumerator:I

    .line 40
    invoke-direct {p0, p2}, Lcom/leff/midi/event/meta/TimeSignature;->log2(I)I

    move-result v0

    iput v0, p0, Lcom/leff/midi/event/meta/TimeSignature;->mDenominator:I

    .line 41
    iput p3, p0, Lcom/leff/midi/event/meta/TimeSignature;->mMeter:I

    .line 42
    iput p4, p0, Lcom/leff/midi/event/meta/TimeSignature;->mDivision:I

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/leff/midi/event/meta/MetaEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/leff/midi/event/meta/TimeSignature;->mNumerator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leff/midi/event/meta/TimeSignature;->getRealDenominator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 79
    invoke-super {p0, p1}, Lcom/leff/midi/event/meta/MetaEvent;->writeToFile(Ljava/io/OutputStream;)V

    .line 81
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 82
    iget v0, p0, Lcom/leff/midi/event/meta/TimeSignature;->mNumerator:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 83
    iget v0, p0, Lcom/leff/midi/event/meta/TimeSignature;->mDenominator:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 84
    iget v0, p0, Lcom/leff/midi/event/meta/TimeSignature;->mMeter:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 85
    iget v0, p0, Lcom/leff/midi/event/meta/TimeSignature;->mDivision:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 86
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
    .line 91
    invoke-super {p0, p1}, Lcom/leff/midi/event/meta/MetaEvent;->writeToFile(Ljava/io/RandomAccessFile;)V

    .line 93
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 94
    iget v0, p0, Lcom/leff/midi/event/meta/TimeSignature;->mNumerator:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 95
    iget v0, p0, Lcom/leff/midi/event/meta/TimeSignature;->mDenominator:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 96
    iget v0, p0, Lcom/leff/midi/event/meta/TimeSignature;->mMeter:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 97
    iget v0, p0, Lcom/leff/midi/event/meta/TimeSignature;->mDivision:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 98
    return-void
.end method
