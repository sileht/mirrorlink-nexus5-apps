.class public abstract Lcom/leff/midi/event/MidiEvent;
.super Ljava/lang/Object;
.source "MidiEvent.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/leff/midi/event/MidiEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static sChannel:I

.field private static sId:I

.field private static sType:I


# instance fields
.field protected mDelta:Lcom/leff/midi/util/VariableLengthInt;

.field protected mTick:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, -0x1

    .line 71
    sput v0, Lcom/leff/midi/event/MidiEvent;->sId:I

    .line 72
    sput v0, Lcom/leff/midi/event/MidiEvent;->sType:I

    .line 73
    sput v0, Lcom/leff/midi/event/MidiEvent;->sChannel:I

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 8
    .param p1, "tick"    # J
    .param p3, "delta"    # J

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/leff/midi/event/MidiEvent;->mTick:J

    .line 19
    new-instance v0, Lcom/leff/midi/util/VariableLengthInt;

    long-to-int v1, p3

    invoke-direct {v0, v1}, Lcom/leff/midi/util/VariableLengthInt;-><init>(I)V

    iput-object v0, p0, Lcom/leff/midi/event/MidiEvent;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    .line 20
    return-void
.end method

.method public static final parseEvent(JJLjava/io/InputStream;)Lcom/leff/midi/event/MidiEvent;
    .registers 15
    .param p0, "tick"    # J
    .param p2, "delta"    # J
    .param p4, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Ljava/io/InputStream;->mark(I)V

    .line 78
    const/4 v8, 0x0

    .line 80
    .local v8, "reset":Z
    invoke-virtual {p4}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 81
    .local v7, "id":I
    invoke-static {v7}, Lcom/leff/midi/event/MidiEvent;->verifyIdentifier(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 83
    invoke-virtual {p4}, Ljava/io/InputStream;->reset()V

    .line 84
    const/4 v8, 0x1

    .line 87
    :cond_13
    sget v0, Lcom/leff/midi/event/MidiEvent;->sType:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2b

    sget v0, Lcom/leff/midi/event/MidiEvent;->sType:I

    const/16 v1, 0xe

    if-gt v0, v1, :cond_2b

    .line 89
    sget v4, Lcom/leff/midi/event/MidiEvent;->sType:I

    sget v5, Lcom/leff/midi/event/MidiEvent;->sChannel:I

    move-wide v0, p0

    move-wide v2, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/leff/midi/event/ChannelEvent;->parseChannelEvent(JJIILjava/io/InputStream;)Lcom/leff/midi/event/ChannelEvent;

    move-result-object v0

    .line 114
    :goto_2a
    return-object v0

    .line 91
    :cond_2b
    sget v0, Lcom/leff/midi/event/MidiEvent;->sId:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_36

    .line 93
    invoke-static {p0, p1, p2, p3, p4}, Lcom/leff/midi/event/meta/MetaEvent;->parseMetaEvent(JJLjava/io/InputStream;)Lcom/leff/midi/event/meta/MetaEvent;

    move-result-object v0

    goto :goto_2a

    .line 95
    :cond_36
    sget v0, Lcom/leff/midi/event/MidiEvent;->sId:I

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_42

    sget v0, Lcom/leff/midi/event/MidiEvent;->sId:I

    const/16 v1, 0xf7

    if-ne v0, v1, :cond_64

    .line 97
    :cond_42
    new-instance v9, Lcom/leff/midi/util/VariableLengthInt;

    invoke-direct {v9, p4}, Lcom/leff/midi/util/VariableLengthInt;-><init>(Ljava/io/InputStream;)V

    .line 99
    .local v9, "size":Lcom/leff/midi/util/VariableLengthInt;
    invoke-virtual {v9}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v0

    new-array v6, v0, [B

    .line 100
    .local v6, "data":[B
    invoke-virtual {p4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5a

    .line 101
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 103
    :cond_5a
    new-instance v0, Lcom/leff/midi/event/SystemExclusiveEvent;

    sget v1, Lcom/leff/midi/event/MidiEvent;->sId:I

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/leff/midi/event/SystemExclusiveEvent;-><init>(IJJ[B)V

    goto :goto_2a

    .line 107
    .end local v6    # "data":[B
    .end local v9    # "size":Lcom/leff/midi/util/VariableLengthInt;
    :cond_64
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to handle status byte, skipping: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/leff/midi/event/MidiEvent;->sId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    if-eqz v8, :cond_7f

    .line 110
    invoke-virtual {p4}, Ljava/io/InputStream;->read()I

    .line 114
    :cond_7f
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method private static verifyIdentifier(I)Z
    .registers 5
    .param p0, "id"    # I

    .prologue
    const/4 v3, -0x1

    .line 119
    sput p0, Lcom/leff/midi/event/MidiEvent;->sId:I

    .line 121
    shr-int/lit8 v1, p0, 0x4

    .line 122
    .local v1, "type":I
    and-int/lit8 v0, p0, 0xf

    .line 124
    .local v0, "channel":I
    const/16 v2, 0x8

    if-lt v1, v2, :cond_17

    const/16 v2, 0xe

    if-gt v1, v2, :cond_17

    .line 126
    sput p0, Lcom/leff/midi/event/MidiEvent;->sId:I

    .line 127
    sput v1, Lcom/leff/midi/event/MidiEvent;->sType:I

    .line 128
    sput v0, Lcom/leff/midi/event/MidiEvent;->sChannel:I

    .line 146
    :goto_15
    const/4 v2, 0x1

    :goto_16
    return v2

    .line 130
    :cond_17
    const/16 v2, 0xff

    if-ne p0, v2, :cond_22

    .line 132
    sput p0, Lcom/leff/midi/event/MidiEvent;->sId:I

    .line 133
    sput v3, Lcom/leff/midi/event/MidiEvent;->sType:I

    .line 134
    sput v3, Lcom/leff/midi/event/MidiEvent;->sChannel:I

    goto :goto_15

    .line 136
    :cond_22
    const/16 v2, 0xf

    if-ne v1, v2, :cond_2d

    .line 138
    sput p0, Lcom/leff/midi/event/MidiEvent;->sId:I

    .line 139
    sput v1, Lcom/leff/midi/event/MidiEvent;->sType:I

    .line 140
    sput v3, Lcom/leff/midi/event/MidiEvent;->sChannel:I

    goto :goto_15

    .line 144
    :cond_2d
    const/4 v2, 0x0

    goto :goto_16
.end method


# virtual methods
.method public getDelta()J
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/leff/midi/event/MidiEvent;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected abstract getEventSize()I
.end method

.method public getSize()I
    .registers 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/leff/midi/event/MidiEvent;->getEventSize()I

    move-result v0

    iget-object v1, p0, Lcom/leff/midi/event/MidiEvent;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v1}, Lcom/leff/midi/util/VariableLengthInt;->getByteCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTick()J
    .registers 3

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/leff/midi/event/MidiEvent;->mTick:J

    return-wide v0
.end method

.method public requiresStatusByte(Lcom/leff/midi/event/MidiEvent;)Z
    .registers 5
    .param p1, "prevEvent"    # Lcom/leff/midi/event/MidiEvent;

    .prologue
    const/4 v0, 0x1

    .line 46
    if-nez p1, :cond_4

    .line 58
    :cond_3
    :goto_3
    return v0

    .line 50
    :cond_4
    instance-of v1, p0, Lcom/leff/midi/event/meta/MetaEvent;

    if-nez v1, :cond_3

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setDelta(J)V
    .registers 6
    .param p1, "d"    # J

    .prologue
    .line 34
    iget-object v0, p0, Lcom/leff/midi/event/MidiEvent;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/leff/midi/util/VariableLengthInt;->setValue(I)V

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/leff/midi/event/MidiEvent;->mTick:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/leff/midi/event/MidiEvent;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v1}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToFile(Ljava/io/OutputStream;Z)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "writeType"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/leff/midi/event/MidiEvent;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/leff/midi/util/VariableLengthInt;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 64
    return-void
.end method

.method public writeToFile(Ljava/io/RandomAccessFile;Z)V
    .registers 4
    .param p1, "out"    # Ljava/io/RandomAccessFile;
    .param p2, "writeType"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/leff/midi/event/MidiEvent;->mDelta:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/leff/midi/util/VariableLengthInt;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 69
    return-void
.end method
