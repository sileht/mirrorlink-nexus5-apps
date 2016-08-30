.class public Lcom/leff/midi/event/ChannelEvent;
.super Lcom/leff/midi/event/MidiEvent;
.source "ChannelEvent.java"


# static fields
.field public static final CHANNEL_AFTERTOUCH:I = 0xd

.field public static final CONTROLLER:I = 0xb

.field public static final NOTE_AFTERTOUCH:I = 0xa

.field public static final NOTE_OFF:I = 0x8

.field public static final NOTE_ON:I = 0x9

.field public static final PITCH_BEND:I = 0xe

.field public static final PROGRAM_CHANGE:I = 0xc

.field private static mOrderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mChannel:I

.field protected mType:I

.field protected mValue1:I

.field protected mValue2:I


# direct methods
.method protected constructor <init>(JIIII)V
    .registers 18
    .param p1, "tick"    # J
    .param p3, "type"    # I
    .param p4, "channel"    # I
    .param p5, "param1"    # I
    .param p6, "param2"    # I

    .prologue
    .line 20
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/leff/midi/event/ChannelEvent;-><init>(JJIIII)V

    .line 21
    return-void
.end method

.method protected constructor <init>(JJIIII)V
    .registers 10
    .param p1, "tick"    # J
    .param p3, "delta"    # J
    .param p5, "type"    # I
    .param p6, "channel"    # I
    .param p7, "param1"    # I
    .param p8, "param2"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/leff/midi/event/MidiEvent;-><init>(JJ)V

    .line 27
    and-int/lit8 v0, p5, 0xf

    iput v0, p0, Lcom/leff/midi/event/ChannelEvent;->mType:I

    .line 28
    and-int/lit8 v0, p6, 0xf

    iput v0, p0, Lcom/leff/midi/event/ChannelEvent;->mChannel:I

    .line 29
    and-int/lit16 v0, p7, 0xff

    iput v0, p0, Lcom/leff/midi/event/ChannelEvent;->mValue1:I

    .line 30
    and-int/lit16 v0, p8, 0xff

    iput v0, p0, Lcom/leff/midi/event/ChannelEvent;->mValue2:I

    .line 31
    return-void
.end method

.method private static buildOrderMap()V
    .registers 3

    .prologue
    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/leff/midi/event/ChannelEvent;->mOrderMap:Ljava/util/HashMap;

    .line 200
    sget-object v0, Lcom/leff/midi/event/ChannelEvent;->mOrderMap:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/leff/midi/event/ChannelEvent;->mOrderMap:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/leff/midi/event/ChannelEvent;->mOrderMap:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/leff/midi/event/ChannelEvent;->mOrderMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/leff/midi/event/ChannelEvent;->mOrderMap:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/leff/midi/event/ChannelEvent;->mOrderMap:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/leff/midi/event/ChannelEvent;->mOrderMap:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    return-void
.end method

.method public static parseChannelEvent(JJIILjava/io/InputStream;)Lcom/leff/midi/event/ChannelEvent;
    .registers 17
    .param p0, "tick"    # J
    .param p2, "delta"    # J
    .param p4, "type"    # I
    .param p5, "channel"    # I
    .param p6, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual/range {p6 .. p6}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 168
    .local v7, "val1":I
    const/4 v8, 0x0

    .line 169
    .local v8, "val2":I
    const/16 v0, 0xc

    if-eq p4, v0, :cond_11

    const/16 v0, 0xd

    if-eq p4, v0, :cond_11

    .line 171
    invoke-virtual/range {p6 .. p6}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 174
    :cond_11
    packed-switch p4, :pswitch_data_5e

    .line 191
    new-instance v0, Lcom/leff/midi/event/ChannelEvent;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/leff/midi/event/ChannelEvent;-><init>(JJIIII)V

    move-object v1, v0

    :goto_1e
    return-object v1

    .line 177
    :pswitch_1f
    new-instance v1, Lcom/leff/midi/event/NoteOff;

    move-wide v2, p0

    move-wide v4, p2

    move v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/leff/midi/event/NoteOff;-><init>(JJIII)V

    goto :goto_1e

    .line 179
    :pswitch_28
    new-instance v1, Lcom/leff/midi/event/NoteOn;

    move-wide v2, p0

    move-wide v4, p2

    move v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/leff/midi/event/NoteOn;-><init>(JJIII)V

    goto :goto_1e

    .line 181
    :pswitch_31
    new-instance v1, Lcom/leff/midi/event/NoteAftertouch;

    move-wide v2, p0

    move-wide v4, p2

    move v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/leff/midi/event/NoteAftertouch;-><init>(JJIII)V

    goto :goto_1e

    .line 183
    :pswitch_3a
    new-instance v1, Lcom/leff/midi/event/Controller;

    move-wide v2, p0

    move-wide v4, p2

    move v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/leff/midi/event/Controller;-><init>(JJIII)V

    goto :goto_1e

    .line 185
    :pswitch_43
    new-instance v1, Lcom/leff/midi/event/ProgramChange;

    move-wide v2, p0

    move-wide v4, p2

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/leff/midi/event/ProgramChange;-><init>(JJII)V

    goto :goto_1e

    .line 187
    :pswitch_4c
    new-instance v1, Lcom/leff/midi/event/ChannelAftertouch;

    move-wide v2, p0

    move-wide v4, p2

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/leff/midi/event/ChannelAftertouch;-><init>(JJII)V

    goto :goto_1e

    .line 189
    :pswitch_55
    new-instance v1, Lcom/leff/midi/event/PitchBend;

    move-wide v2, p0

    move-wide v4, p2

    move v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/leff/midi/event/PitchBend;-><init>(JJIII)V

    goto :goto_1e

    .line 174
    :pswitch_data_5e
    .packed-switch 0x8
        :pswitch_1f
        :pswitch_28
        :pswitch_31
        :pswitch_3a
        :pswitch_43
        :pswitch_4c
        :pswitch_55
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Lcom/leff/midi/event/MidiEvent;)I
    .registers 12
    .param p1, "other"    # Lcom/leff/midi/event/MidiEvent;

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 71
    iget-wide v6, p0, Lcom/leff/midi/event/ChannelEvent;->mTick:J

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1b

    .line 73
    iget-wide v6, p0, Lcom/leff/midi/event/ChannelEvent;->mTick:J

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-gez v3, :cond_19

    move v3, v4

    :goto_17
    move v4, v3

    .line 110
    :cond_18
    :goto_18
    return v4

    :cond_19
    move v3, v5

    .line 73
    goto :goto_17

    .line 75
    :cond_1b
    iget-object v3, p0, Lcom/leff/midi/event/ChannelEvent;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v3}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v3

    iget-object v6, p1, Lcom/leff/midi/event/MidiEvent;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v6}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v6

    if-eq v3, v6, :cond_3b

    .line 77
    iget-object v3, p0, Lcom/leff/midi/event/ChannelEvent;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v3}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v3

    iget-object v6, p1, Lcom/leff/midi/event/MidiEvent;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v6}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v6

    if-ge v3, v6, :cond_39

    :goto_37
    move v4, v5

    goto :goto_18

    :cond_39
    move v5, v4

    goto :goto_37

    .line 80
    :cond_3b
    instance-of v3, p1, Lcom/leff/midi/event/ChannelEvent;

    if-nez v3, :cond_41

    move v4, v5

    .line 82
    goto :goto_18

    :cond_41
    move-object v0, p1

    .line 85
    check-cast v0, Lcom/leff/midi/event/ChannelEvent;

    .line 86
    .local v0, "o":Lcom/leff/midi/event/ChannelEvent;
    iget v3, p0, Lcom/leff/midi/event/ChannelEvent;->mType:I

    invoke-virtual {v0}, Lcom/leff/midi/event/ChannelEvent;->getType()I

    move-result v6

    if-eq v3, v6, :cond_7d

    .line 88
    sget-object v3, Lcom/leff/midi/event/ChannelEvent;->mOrderMap:Ljava/util/HashMap;

    if-nez v3, :cond_53

    .line 90
    invoke-static {}, Lcom/leff/midi/event/ChannelEvent;->buildOrderMap()V

    .line 93
    :cond_53
    sget-object v3, Lcom/leff/midi/event/ChannelEvent;->mOrderMap:Ljava/util/HashMap;

    iget v6, p0, Lcom/leff/midi/event/ChannelEvent;->mType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 94
    .local v1, "order1":I
    sget-object v3, Lcom/leff/midi/event/ChannelEvent;->mOrderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/leff/midi/event/ChannelEvent;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 96
    .local v2, "order2":I
    if-lt v1, v2, :cond_18

    move v4, v5

    goto :goto_18

    .line 98
    .end local v1    # "order1":I
    .end local v2    # "order2":I
    :cond_7d
    iget v3, p0, Lcom/leff/midi/event/ChannelEvent;->mValue1:I

    iget v6, v0, Lcom/leff/midi/event/ChannelEvent;->mValue1:I

    if-eq v3, v6, :cond_8b

    .line 100
    iget v3, p0, Lcom/leff/midi/event/ChannelEvent;->mValue1:I

    iget v6, v0, Lcom/leff/midi/event/ChannelEvent;->mValue1:I

    if-lt v3, v6, :cond_18

    move v4, v5

    goto :goto_18

    .line 102
    :cond_8b
    iget v3, p0, Lcom/leff/midi/event/ChannelEvent;->mValue2:I

    iget v6, v0, Lcom/leff/midi/event/ChannelEvent;->mValue2:I

    if-eq v3, v6, :cond_99

    .line 104
    iget v3, p0, Lcom/leff/midi/event/ChannelEvent;->mValue2:I

    iget v6, v0, Lcom/leff/midi/event/ChannelEvent;->mValue2:I

    if-lt v3, v6, :cond_18

    move v4, v5

    goto :goto_18

    .line 106
    :cond_99
    iget v3, p0, Lcom/leff/midi/event/ChannelEvent;->mChannel:I

    invoke-virtual {v0}, Lcom/leff/midi/event/ChannelEvent;->getChannel()I

    move-result v6

    if-eq v3, v6, :cond_ac

    .line 108
    iget v3, p0, Lcom/leff/midi/event/ChannelEvent;->mChannel:I

    invoke-virtual {v0}, Lcom/leff/midi/event/ChannelEvent;->getChannel()I

    move-result v6

    if-lt v3, v6, :cond_18

    move v4, v5

    goto/16 :goto_18

    .line 110
    :cond_ac
    const/4 v4, 0x0

    goto/16 :goto_18
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/leff/midi/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/leff/midi/event/ChannelEvent;->compareTo(Lcom/leff/midi/event/MidiEvent;)I

    move-result v0

    return v0
.end method

.method public getChannel()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lcom/leff/midi/event/ChannelEvent;->mChannel:I

    return v0
.end method

.method protected getEventSize()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/leff/midi/event/ChannelEvent;->mType:I

    packed-switch v0, :pswitch_data_a

    .line 64
    const/4 v0, 0x3

    :goto_6
    return v0

    .line 62
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_6

    .line 58
    nop

    :pswitch_data_a
    .packed-switch 0xc
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/leff/midi/event/ChannelEvent;->mType:I

    return v0
.end method

.method public requiresStatusByte(Lcom/leff/midi/event/MidiEvent;)Z
    .registers 6
    .param p1, "prevEvent"    # Lcom/leff/midi/event/MidiEvent;

    .prologue
    const/4 v1, 0x1

    .line 116
    if-nez p1, :cond_4

    .line 126
    :cond_3
    :goto_3
    return v1

    .line 120
    :cond_4
    instance-of v2, p1, Lcom/leff/midi/event/ChannelEvent;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 125
    check-cast v0, Lcom/leff/midi/event/ChannelEvent;

    .line 126
    .local v0, "ce":Lcom/leff/midi/event/ChannelEvent;
    iget v2, p0, Lcom/leff/midi/event/ChannelEvent;->mType:I

    invoke-virtual {v0}, Lcom/leff/midi/event/ChannelEvent;->getType()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/leff/midi/event/ChannelEvent;->mChannel:I

    invoke-virtual {v0}, Lcom/leff/midi/event/ChannelEvent;->getChannel()I

    move-result v3

    if-ne v2, v3, :cond_3

    const/4 v1, 0x0

    goto :goto_3
.end method

.method public setChannel(I)V
    .registers 3
    .param p1, "c"    # I

    .prologue
    .line 40
    if-gez p1, :cond_6

    .line 42
    const/4 p1, 0x0

    .line 48
    :cond_3
    :goto_3
    iput p1, p0, Lcom/leff/midi/event/ChannelEvent;->mChannel:I

    .line 49
    return-void

    .line 44
    :cond_6
    const/16 v0, 0xf

    if-le p1, v0, :cond_3

    .line 46
    const/16 p1, 0xf

    goto :goto_3
.end method

.method public writeToFile(Ljava/io/OutputStream;Z)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "writeType"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Lcom/leff/midi/event/MidiEvent;->writeToFile(Ljava/io/OutputStream;Z)V

    .line 134
    if-eqz p2, :cond_10

    .line 136
    iget v1, p0, Lcom/leff/midi/event/ChannelEvent;->mType:I

    shl-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/leff/midi/event/ChannelEvent;->mChannel:I

    add-int v0, v1, v2

    .line 137
    .local v0, "typeChannel":I
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 140
    .end local v0    # "typeChannel":I
    :cond_10
    iget v1, p0, Lcom/leff/midi/event/ChannelEvent;->mValue1:I

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 141
    iget v1, p0, Lcom/leff/midi/event/ChannelEvent;->mType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_26

    iget v1, p0, Lcom/leff/midi/event/ChannelEvent;->mType:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_26

    .line 143
    iget v1, p0, Lcom/leff/midi/event/ChannelEvent;->mValue2:I

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 145
    :cond_26
    return-void
.end method

.method public writeToFile(Ljava/io/RandomAccessFile;Z)V
    .registers 6
    .param p1, "out"    # Ljava/io/RandomAccessFile;
    .param p2, "writeType"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lcom/leff/midi/event/MidiEvent;->writeToFile(Ljava/io/RandomAccessFile;Z)V

    .line 152
    if-eqz p2, :cond_10

    .line 154
    iget v1, p0, Lcom/leff/midi/event/ChannelEvent;->mType:I

    shl-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/leff/midi/event/ChannelEvent;->mChannel:I

    add-int v0, v1, v2

    .line 155
    .local v0, "typeChannel":I
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 158
    .end local v0    # "typeChannel":I
    :cond_10
    iget v1, p0, Lcom/leff/midi/event/ChannelEvent;->mValue1:I

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 159
    iget v1, p0, Lcom/leff/midi/event/ChannelEvent;->mType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_26

    iget v1, p0, Lcom/leff/midi/event/ChannelEvent;->mType:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_26

    .line 161
    iget v1, p0, Lcom/leff/midi/event/ChannelEvent;->mValue2:I

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 163
    :cond_26
    return-void
.end method
