.class public abstract Lcom/leff/midi/event/meta/MetaEvent;
.super Lcom/leff/midi/event/MidiEvent;
.source "MetaEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;
    }
.end annotation


# static fields
.field public static final COPYRIGHT_NOTICE:I = 0x2

.field public static final CUE_POINT:I = 0x7

.field public static final END_OF_TRACK:I = 0x2f

.field public static final INSTRUMENT_NAME:I = 0x4

.field public static final KEY_SIGNATURE:I = 0x59

.field public static final LYRICS:I = 0x5

.field public static final MARKER:I = 0x6

.field public static final MIDI_CHANNEL_PREFIX:I = 0x20

.field public static final SEQUENCER_SPECIFIC:I = 0x7f

.field public static final SEQUENCE_NUMBER:I = 0x0

.field public static final SMPTE_OFFSET:I = 0x54

.field public static final TEMPO:I = 0x51

.field public static final TEXT_EVENT:I = 0x1

.field public static final TIME_SIGNATURE:I = 0x58

.field public static final TRACK_NAME:I = 0x3


# instance fields
.field protected mLength:Lcom/leff/midi/util/VariableLengthInt;

.field protected mType:I


# direct methods
.method protected constructor <init>(JJILcom/leff/midi/util/VariableLengthInt;)V
    .registers 8
    .param p1, "tick"    # J
    .param p3, "delta"    # J
    .param p5, "type"    # I
    .param p6, "length"    # Lcom/leff/midi/util/VariableLengthInt;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/leff/midi/event/MidiEvent;-><init>(JJ)V

    .line 20
    and-int/lit16 v0, p5, 0xff

    iput v0, p0, Lcom/leff/midi/event/meta/MetaEvent;->mType:I

    .line 21
    iput-object p6, p0, Lcom/leff/midi/event/meta/MetaEvent;->mLength:Lcom/leff/midi/util/VariableLengthInt;

    .line 22
    return-void
.end method

.method public static parseMetaEvent(JJLjava/io/InputStream;)Lcom/leff/midi/event/meta/MetaEvent;
    .registers 25
    .param p0, "tick"    # J
    .param p2, "delta"    # J
    .param p4, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v18, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;-><init>(Ljava/io/InputStream;)V

    .line 56
    .local v18, "eventData":Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;
    const/4 v6, 0x0

    .line 57
    .local v6, "isText":Z
    move-object/from16 v0, v18

    iget v7, v0, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->type:I

    sparse-switch v7, :sswitch_data_e8

    .line 77
    const/4 v6, 0x1

    .line 81
    :sswitch_12
    if-eqz v6, :cond_86

    .line 83
    new-instance v12, Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->data:[B

    invoke-direct {v12, v7}, Ljava/lang/String;-><init>([B)V

    .line 85
    .local v12, "text":Ljava/lang/String;
    move-object/from16 v0, v18

    iget v7, v0, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->type:I

    sparse-switch v7, :sswitch_data_106

    .line 104
    new-instance v13, Lcom/leff/midi/event/meta/GenericMetaEvent;

    move-wide/from16 v14, p0

    move-wide/from16 v16, p2

    invoke-direct/range {v13 .. v18}, Lcom/leff/midi/event/meta/GenericMetaEvent;-><init>(JJLcom/leff/midi/event/meta/MetaEvent$MetaEventData;)V

    move-object v7, v13

    .line 126
    .end local v12    # "text":Ljava/lang/String;
    .end local v18    # "eventData":Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;
    :goto_2e
    return-object v7

    .line 88
    .restart local v12    # "text":Ljava/lang/String;
    .restart local v18    # "eventData":Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;
    :sswitch_2f
    new-instance v7, Lcom/leff/midi/event/meta/Text;

    move-wide/from16 v8, p0

    move-wide/from16 v10, p2

    invoke-direct/range {v7 .. v12}, Lcom/leff/midi/event/meta/Text;-><init>(JJLjava/lang/String;)V

    goto :goto_2e

    .line 90
    :sswitch_39
    new-instance v7, Lcom/leff/midi/event/meta/CopyrightNotice;

    move-wide/from16 v8, p0

    move-wide/from16 v10, p2

    invoke-direct/range {v7 .. v12}, Lcom/leff/midi/event/meta/CopyrightNotice;-><init>(JJLjava/lang/String;)V

    goto :goto_2e

    .line 92
    :sswitch_43
    new-instance v7, Lcom/leff/midi/event/meta/TrackName;

    move-wide/from16 v8, p0

    move-wide/from16 v10, p2

    invoke-direct/range {v7 .. v12}, Lcom/leff/midi/event/meta/TrackName;-><init>(JJLjava/lang/String;)V

    goto :goto_2e

    .line 94
    :sswitch_4d
    new-instance v7, Lcom/leff/midi/event/meta/InstrumentName;

    move-wide/from16 v8, p0

    move-wide/from16 v10, p2

    invoke-direct/range {v7 .. v12}, Lcom/leff/midi/event/meta/InstrumentName;-><init>(JJLjava/lang/String;)V

    goto :goto_2e

    .line 96
    :sswitch_57
    new-instance v7, Lcom/leff/midi/event/meta/Lyrics;

    move-wide/from16 v8, p0

    move-wide/from16 v10, p2

    invoke-direct/range {v7 .. v12}, Lcom/leff/midi/event/meta/Lyrics;-><init>(JJLjava/lang/String;)V

    goto :goto_2e

    .line 98
    :sswitch_61
    new-instance v7, Lcom/leff/midi/event/meta/Marker;

    move-wide/from16 v8, p0

    move-wide/from16 v10, p2

    invoke-direct/range {v7 .. v12}, Lcom/leff/midi/event/meta/Marker;-><init>(JJLjava/lang/String;)V

    goto :goto_2e

    .line 100
    :sswitch_6b
    new-instance v7, Lcom/leff/midi/event/meta/CuePoint;

    move-wide/from16 v8, p0

    move-wide/from16 v10, p2

    invoke-direct/range {v7 .. v12}, Lcom/leff/midi/event/meta/CuePoint;-><init>(JJLjava/lang/String;)V

    goto :goto_2e

    .line 102
    :sswitch_75
    new-instance v13, Lcom/leff/midi/event/meta/SequencerSpecificEvent;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->data:[B

    move-object/from16 v18, v0

    .end local v18    # "eventData":Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;
    move-wide/from16 v14, p0

    move-wide/from16 v16, p2

    invoke-direct/range {v13 .. v18}, Lcom/leff/midi/event/meta/SequencerSpecificEvent;-><init>(JJ[B)V

    move-object v7, v13

    goto :goto_2e

    .line 108
    .end local v12    # "text":Ljava/lang/String;
    .restart local v18    # "eventData":Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;
    :cond_86
    move-object/from16 v0, v18

    iget v7, v0, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->type:I

    sparse-switch v7, :sswitch_data_128

    .line 125
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Completely broken in MetaEvent.parseMetaEvent()"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    const/4 v7, 0x0

    goto :goto_2e

    .line 111
    :sswitch_96
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/leff/midi/event/meta/SequenceNumber;->parseSequenceNumber(JJLcom/leff/midi/event/meta/MetaEvent$MetaEventData;)Lcom/leff/midi/event/meta/MetaEvent;

    move-result-object v7

    goto :goto_2e

    .line 113
    :sswitch_a1
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/leff/midi/event/meta/MidiChannelPrefix;->parseMidiChannelPrefix(JJLcom/leff/midi/event/meta/MetaEvent$MetaEventData;)Lcom/leff/midi/event/meta/MetaEvent;

    move-result-object v7

    goto :goto_2e

    .line 115
    :sswitch_ac
    new-instance v7, Lcom/leff/midi/event/meta/EndOfTrack;

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/leff/midi/event/meta/EndOfTrack;-><init>(JJ)V

    goto/16 :goto_2e

    .line 117
    :sswitch_b7
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/leff/midi/event/meta/Tempo;->parseTempo(JJLcom/leff/midi/event/meta/MetaEvent$MetaEventData;)Lcom/leff/midi/event/meta/MetaEvent;

    move-result-object v7

    goto/16 :goto_2e

    .line 119
    :sswitch_c3
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/leff/midi/event/meta/SmpteOffset;->parseSmpteOffset(JJLcom/leff/midi/event/meta/MetaEvent$MetaEventData;)Lcom/leff/midi/event/meta/MetaEvent;

    move-result-object v7

    goto/16 :goto_2e

    .line 121
    :sswitch_cf
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/leff/midi/event/meta/TimeSignature;->parseTimeSignature(JJLcom/leff/midi/event/meta/MetaEvent$MetaEventData;)Lcom/leff/midi/event/meta/MetaEvent;

    move-result-object v7

    goto/16 :goto_2e

    .line 123
    :sswitch_db
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/leff/midi/event/meta/KeySignature;->parseKeySignature(JJLcom/leff/midi/event/meta/MetaEvent$MetaEventData;)Lcom/leff/midi/event/meta/MetaEvent;

    move-result-object v7

    goto/16 :goto_2e

    .line 57
    nop

    :sswitch_data_e8
    .sparse-switch
        0x0 -> :sswitch_12
        0x20 -> :sswitch_12
        0x2f -> :sswitch_12
        0x51 -> :sswitch_12
        0x54 -> :sswitch_12
        0x58 -> :sswitch_12
        0x59 -> :sswitch_12
    .end sparse-switch

    .line 85
    :sswitch_data_106
    .sparse-switch
        0x1 -> :sswitch_2f
        0x2 -> :sswitch_39
        0x3 -> :sswitch_43
        0x4 -> :sswitch_4d
        0x5 -> :sswitch_57
        0x6 -> :sswitch_61
        0x7 -> :sswitch_6b
        0x7f -> :sswitch_75
    .end sparse-switch

    .line 108
    :sswitch_data_128
    .sparse-switch
        0x0 -> :sswitch_96
        0x20 -> :sswitch_a1
        0x2f -> :sswitch_ac
        0x51 -> :sswitch_b7
        0x54 -> :sswitch_c3
        0x58 -> :sswitch_cf
        0x59 -> :sswitch_db
    .end sparse-switch
.end method


# virtual methods
.method protected abstract getEventSize()I
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
    .line 34
    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, Lcom/leff/midi/event/MidiEvent;->writeToFile(Ljava/io/OutputStream;Z)V

    .line 35
    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 36
    iget v0, p0, Lcom/leff/midi/event/meta/MetaEvent;->mType:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 37
    return-void
.end method

.method public writeToFile(Ljava/io/OutputStream;Z)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "writeType"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/leff/midi/event/meta/MetaEvent;->writeToFile(Ljava/io/OutputStream;)V

    .line 30
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
    .line 47
    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, Lcom/leff/midi/event/MidiEvent;->writeToFile(Ljava/io/RandomAccessFile;Z)V

    .line 48
    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 49
    iget v0, p0, Lcom/leff/midi/event/meta/MetaEvent;->mType:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 50
    return-void
.end method

.method public writeToFile(Ljava/io/RandomAccessFile;Z)V
    .registers 3
    .param p1, "out"    # Ljava/io/RandomAccessFile;
    .param p2, "writeType"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/leff/midi/event/meta/MetaEvent;->writeToFile(Ljava/io/RandomAccessFile;)V

    .line 43
    return-void
.end method
