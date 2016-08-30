.class public Lcom/leff/midi/event/meta/SmpteOffset;
.super Lcom/leff/midi/event/meta/MetaEvent;
.source "SmpteOffset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;
    }
.end annotation


# static fields
.field public static final FRAME_RATE_24:I = 0x0

.field public static final FRAME_RATE_25:I = 0x1

.field public static final FRAME_RATE_30:I = 0x3

.field public static final FRAME_RATE_30_DROP:I = 0x2


# instance fields
.field private mFrameRate:Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

.field private mFrames:I

.field private mHours:I

.field private mMinutes:I

.field private mSeconds:I

.field private mSubFrames:I


# direct methods
.method public constructor <init>(JJLcom/leff/midi/event/meta/SmpteOffset$FrameRate;IIIII)V
    .registers 22
    .param p1, "tick"    # J
    .param p3, "delta"    # J
    .param p5, "fps"    # Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;
    .param p6, "hour"    # I
    .param p7, "min"    # I
    .param p8, "sec"    # I
    .param p9, "fr"    # I
    .param p10, "subfr"    # I

    .prologue
    .line 26
    const/16 v8, 0x54

    new-instance v9, Lcom/leff/midi/util/VariableLengthInt;

    const/4 v2, 0x5

    invoke-direct {v9, v2}, Lcom/leff/midi/util/VariableLengthInt;-><init>(I)V

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v3 .. v9}, Lcom/leff/midi/event/meta/MetaEvent;-><init>(JJILcom/leff/midi/util/VariableLengthInt;)V

    .line 28
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mFrameRate:Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    .line 29
    move/from16 v0, p6

    iput v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mHours:I

    .line 30
    move/from16 v0, p7

    iput v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mMinutes:I

    .line 31
    move/from16 v0, p8

    iput v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mSeconds:I

    .line 32
    move/from16 v0, p9

    iput v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mFrames:I

    .line 33
    move/from16 v0, p10

    iput v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mSubFrames:I

    .line 34
    return-void
.end method

.method public static parseSmpteOffset(JJLcom/leff/midi/event/meta/MetaEvent$MetaEventData;)Lcom/leff/midi/event/meta/MetaEvent;
    .registers 21
    .param p0, "tick"    # J
    .param p2, "delta"    # J
    .param p4, "info"    # Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;

    .prologue
    .line 130
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->length:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v3}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_17

    .line 132
    new-instance v3, Lcom/leff/midi/event/meta/GenericMetaEvent;

    move-wide/from16 v4, p0

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/leff/midi/event/meta/GenericMetaEvent;-><init>(JJLcom/leff/midi/event/meta/MetaEvent$MetaEventData;)V

    .line 146
    :goto_16
    return-object v3

    .line 135
    :cond_17
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v4, 0x0

    aget-byte v14, v3, v4

    .line 137
    .local v14, "rrHours":I
    shr-int/lit8 v2, v14, 0x5

    .line 138
    .local v2, "rr":I
    invoke-static {v2}, Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;->fromInt(I)Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    move-result-object v8

    .line 139
    .local v8, "fps":Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;
    and-int/lit8 v9, v14, 0x1f

    .line 141
    .local v9, "hour":I
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v4, 0x1

    aget-byte v10, v3, v4

    .line 142
    .local v10, "min":I
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v4, 0x2

    aget-byte v11, v3, v4

    .line 143
    .local v11, "sec":I
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v4, 0x3

    aget-byte v12, v3, v4

    .line 144
    .local v12, "frm":I
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v4, 0x4

    aget-byte v13, v3, v4

    .line 146
    .local v13, "sub":I
    new-instance v3, Lcom/leff/midi/event/meta/SmpteOffset;

    move-wide/from16 v4, p0

    move-wide/from16 v6, p2

    invoke-direct/range {v3 .. v13}, Lcom/leff/midi/event/meta/SmpteOffset;-><init>(JJLcom/leff/midi/event/meta/SmpteOffset$FrameRate;IIIII)V

    goto :goto_16
.end method


# virtual methods
.method public compareTo(Lcom/leff/midi/event/MidiEvent;)I
    .registers 8
    .param p1, "other"    # Lcom/leff/midi/event/MidiEvent;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 180
    iget-wide v2, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mTick:J

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    .line 182
    iget-wide v2, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mTick:J

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_18

    :goto_16
    move v1, v0

    .line 194
    :cond_17
    :goto_17
    return v1

    :cond_18
    move v0, v1

    .line 182
    goto :goto_16

    .line 184
    :cond_1a
    iget-object v2, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v2}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getDelta()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3a

    .line 186
    iget-object v2, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v2}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getDelta()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_17

    move v1, v0

    goto :goto_17

    .line 189
    :cond_3a
    instance-of v0, p1, Lcom/leff/midi/event/meta/SmpteOffset;

    if-eqz v0, :cond_17

    .line 194
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/leff/midi/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/leff/midi/event/meta/SmpteOffset;->compareTo(Lcom/leff/midi/event/MidiEvent;)I

    move-result v0

    return v0
.end method

.method protected getEventSize()I
    .registers 2

    .prologue
    .line 99
    const/16 v0, 0x8

    return v0
.end method

.method public getFrameRate()Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mFrameRate:Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    return-object v0
.end method

.method public getFrames()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mFrames:I

    return v0
.end method

.method public getHours()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mHours:I

    return v0
.end method

.method public getMinutes()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mMinutes:I

    return v0
.end method

.method public getSeconds()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mSeconds:I

    return v0
.end method

.method public getSubFrames()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mSubFrames:I

    return v0
.end method

.method public setFrameRate(Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;)V
    .registers 2
    .param p1, "fps"    # Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mFrameRate:Lcom/leff/midi/event/meta/SmpteOffset$FrameRate;

    .line 39
    return-void
.end method

.method public setFrames(I)V
    .registers 2
    .param p1, "f"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mFrames:I

    .line 79
    return-void
.end method

.method public setHours(I)V
    .registers 2
    .param p1, "h"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mHours:I

    .line 49
    return-void
.end method

.method public setMinutes(I)V
    .registers 2
    .param p1, "m"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mMinutes:I

    .line 59
    return-void
.end method

.method public setSeconds(I)V
    .registers 2
    .param p1, "s"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mSeconds:I

    .line 69
    return-void
.end method

.method public setSubFrames(I)V
    .registers 2
    .param p1, "s"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mSubFrames:I

    .line 89
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
    .line 105
    invoke-super {p0, p1}, Lcom/leff/midi/event/meta/MetaEvent;->writeToFile(Ljava/io/OutputStream;)V

    .line 107
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 108
    iget v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mHours:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 109
    iget v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mMinutes:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 110
    iget v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mSeconds:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 111
    iget v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mFrames:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 112
    iget v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mSubFrames:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 113
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
    .line 118
    invoke-super {p0, p1}, Lcom/leff/midi/event/meta/MetaEvent;->writeToFile(Ljava/io/RandomAccessFile;)V

    .line 120
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 121
    iget v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mHours:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 122
    iget v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mMinutes:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 123
    iget v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mSeconds:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 124
    iget v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mFrames:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 125
    iget v0, p0, Lcom/leff/midi/event/meta/SmpteOffset;->mSubFrames:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 126
    return-void
.end method
