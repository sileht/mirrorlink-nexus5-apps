.class public Lcom/leff/midi/MidiTrack;
.super Ljava/lang/Object;
.source "MidiTrack.java"


# static fields
.field public static final IDENTIFIER:[B

.field private static final VERBOSE:Z


# instance fields
.field private mClosed:Z

.field private mEndOfTrackDelta:J

.field private mEvents:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/leff/midi/event/MidiEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I

.field private mSizeNeedsRecalculating:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/leff/midi/MidiTrack;->IDENTIFIER:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x4dt
        0x54t
        0x72t
        0x6bt
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/leff/midi/MidiTrack;->mEvents:Ljava/util/TreeSet;

    .line 46
    iput v1, p0, Lcom/leff/midi/MidiTrack;->mSize:I

    .line 47
    iput-boolean v1, p0, Lcom/leff/midi/MidiTrack;->mSizeNeedsRecalculating:Z

    .line 48
    iput-boolean v1, p0, Lcom/leff/midi/MidiTrack;->mClosed:Z

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/leff/midi/MidiTrack;->mEndOfTrackDelta:J

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, -0x1

    .line 54
    invoke-direct {p0}, Lcom/leff/midi/MidiTrack;-><init>()V

    .line 57
    new-array v0, v3, [B

    .line 58
    .local v0, "buffer":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ne v1, v2, :cond_14

    .line 59
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 62
    :cond_14
    sget-object v1, Lcom/leff/midi/MidiTrack;->IDENTIFIER:[B

    invoke-static {v0, v1, v4, v3}, Lcom/leff/midi/util/MidiUtil;->bytesEqual([B[BII)Z

    move-result v1

    if-nez v1, :cond_24

    .line 64
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Track identifier did not match MTrk!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    :cond_23
    :goto_23
    return-void

    .line 68
    :cond_24
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v1, v2, :cond_30

    .line 69
    invoke-static {v0, v4, v3}, Lcom/leff/midi/util/MidiUtil;->bytesToInt([BII)I

    move-result v1

    iput v1, p0, Lcom/leff/midi/MidiTrack;->mSize:I

    .line 72
    :cond_30
    iget v1, p0, Lcom/leff/midi/MidiTrack;->mSize:I

    new-array v0, v1, [B

    .line 73
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v1, v2, :cond_23

    .line 74
    invoke-direct {p0, v0}, Lcom/leff/midi/MidiTrack;->readTrackData([B)V

    goto :goto_23
.end method

.method public static createTempoTrack()Lcom/leff/midi/MidiTrack;
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lcom/leff/midi/MidiTrack;

    invoke-direct {v0}, Lcom/leff/midi/MidiTrack;-><init>()V

    .line 37
    .local v0, "T":Lcom/leff/midi/MidiTrack;
    new-instance v1, Lcom/leff/midi/event/meta/TimeSignature;

    invoke-direct {v1}, Lcom/leff/midi/event/meta/TimeSignature;-><init>()V

    invoke-virtual {v0, v1}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 38
    new-instance v1, Lcom/leff/midi/event/meta/Tempo;

    invoke-direct {v1}, Lcom/leff/midi/event/meta/Tempo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 40
    return-object v0
.end method

.method private readTrackData([B)V
    .registers 10
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 82
    .local v2, "in":Ljava/io/InputStream;
    const-wide/16 v4, 0x0

    .line 84
    .local v4, "totalTicks":J
    :goto_7
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    if-gtz v3, :cond_e

    .line 111
    :goto_d
    return-void

    .line 86
    :cond_e
    new-instance v1, Lcom/leff/midi/util/VariableLengthInt;

    invoke-direct {v1, v2}, Lcom/leff/midi/util/VariableLengthInt;-><init>(Ljava/io/InputStream;)V

    .line 87
    .local v1, "delta":Lcom/leff/midi/util/VariableLengthInt;
    invoke-virtual {v1}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 89
    invoke-virtual {v1}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v4, v5, v6, v7, v2}, Lcom/leff/midi/event/MidiEvent;->parseEvent(JJLjava/io/InputStream;)Lcom/leff/midi/event/MidiEvent;

    move-result-object v0

    .line 90
    .local v0, "E":Lcom/leff/midi/event/MidiEvent;
    if-nez v0, :cond_2c

    .line 92
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Event skipped!"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 104
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v6, Lcom/leff/midi/event/meta/EndOfTrack;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 106
    invoke-virtual {v0}, Lcom/leff/midi/event/MidiEvent;->getDelta()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/leff/midi/MidiTrack;->mEndOfTrackDelta:J

    goto :goto_d

    .line 109
    :cond_3f
    iget-object v3, p0, Lcom/leff/midi/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v3, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method private recalculateSize()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 305
    iput v5, p0, Lcom/leff/midi/MidiTrack;->mSize:I

    .line 307
    iget-object v3, p0, Lcom/leff/midi/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 308
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/leff/midi/event/MidiEvent;>;"
    const/4 v2, 0x0

    .line 309
    .local v2, "last":Lcom/leff/midi/event/MidiEvent;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_13

    .line 323
    iput-boolean v5, p0, Lcom/leff/midi/MidiTrack;->mSizeNeedsRecalculating:Z

    .line 324
    return-void

    .line 311
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leff/midi/event/MidiEvent;

    .line 312
    .local v0, "E":Lcom/leff/midi/event/MidiEvent;
    iget v3, p0, Lcom/leff/midi/MidiTrack;->mSize:I

    invoke-virtual {v0}, Lcom/leff/midi/event/MidiEvent;->getSize()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/leff/midi/MidiTrack;->mSize:I

    .line 316
    if-eqz v2, :cond_30

    invoke-virtual {v0, v2}, Lcom/leff/midi/event/MidiEvent;->requiresStatusByte(Lcom/leff/midi/event/MidiEvent;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 318
    iget v3, p0, Lcom/leff/midi/MidiTrack;->mSize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/leff/midi/MidiTrack;->mSize:I

    .line 320
    :cond_30
    move-object v2, v0

    goto :goto_a
.end method


# virtual methods
.method public closeTrack()V
    .registers 9

    .prologue
    .line 284
    const-wide/16 v2, 0x0

    .line 285
    .local v2, "lastTick":J
    iget-object v4, p0, Lcom/leff/midi/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    if-lez v4, :cond_16

    .line 287
    iget-object v4, p0, Lcom/leff/midi/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leff/midi/event/MidiEvent;

    .line 288
    .local v1, "last":Lcom/leff/midi/event/MidiEvent;
    invoke-virtual {v1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v2

    .line 290
    .end local v1    # "last":Lcom/leff/midi/event/MidiEvent;
    :cond_16
    new-instance v0, Lcom/leff/midi/event/meta/EndOfTrack;

    iget-wide v4, p0, Lcom/leff/midi/MidiTrack;->mEndOfTrackDelta:J

    add-long/2addr v4, v2

    const-wide/16 v6, 0x0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/leff/midi/event/meta/EndOfTrack;-><init>(JJ)V

    .line 291
    .local v0, "eot":Lcom/leff/midi/event/meta/EndOfTrack;
    invoke-virtual {p0, v0}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 292
    return-void
.end method

.method public dumpEvents()V
    .registers 4

    .prologue
    .line 296
    iget-object v1, p0, Lcom/leff/midi/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 297
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/leff/midi/event/MidiEvent;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    .line 301
    return-void

    .line 299
    :cond_d
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public getEndOfTrackDelta()J
    .registers 3

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/leff/midi/MidiTrack;->mEndOfTrackDelta:J

    return-wide v0
.end method

.method public getEventCount()I
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/leff/midi/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    return v0
.end method

.method public getEvents()Ljava/util/TreeSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/leff/midi/event/MidiEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/leff/midi/MidiTrack;->mEvents:Ljava/util/TreeSet;

    return-object v0
.end method

.method public getLengthInTicks()J
    .registers 5

    .prologue
    .line 134
    iget-object v1, p0, Lcom/leff/midi/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-nez v1, :cond_b

    .line 136
    const-wide/16 v2, 0x0

    .line 140
    :goto_a
    return-wide v2

    .line 139
    :cond_b
    iget-object v1, p0, Lcom/leff/midi/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leff/midi/event/MidiEvent;

    .line 140
    .local v0, "E":Lcom/leff/midi/event/MidiEvent;
    invoke-virtual {v0}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v2

    goto :goto_a
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/leff/midi/MidiTrack;->mSizeNeedsRecalculating:Z

    if-eqz v0, :cond_7

    .line 127
    invoke-direct {p0}, Lcom/leff/midi/MidiTrack;->recalculateSize()V

    .line 129
    :cond_7
    iget v0, p0, Lcom/leff/midi/MidiTrack;->mSize:I

    return v0
.end method

.method public insertEvent(Lcom/leff/midi/event/MidiEvent;)V
    .registers 15
    .param p1, "newEvent"    # Lcom/leff/midi/event/MidiEvent;

    .prologue
    const/4 v12, 0x1

    .line 163
    if-nez p1, :cond_4

    .line 237
    :cond_3
    :goto_3
    return-void

    .line 168
    :cond_4
    iget-boolean v8, p0, Lcom/leff/midi/MidiTrack;->mClosed:Z

    if-eqz v8, :cond_10

    .line 170
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Error: Cannot add an event to a closed track."

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 174
    :cond_10
    const/4 v6, 0x0

    .local v6, "prev":Lcom/leff/midi/event/MidiEvent;
    const/4 v5, 0x0

    .line 180
    .local v5, "next":Lcom/leff/midi/event/MidiEvent;
    :try_start_12
    const-string v8, "java.util.TreeSet"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 181
    .local v7, "treeSet":Ljava/lang/Class;
    const-string v8, "floor"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/Object;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 182
    .local v3, "floor":Ljava/lang/reflect/Method;
    const-string v8, "ceiling"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/Object;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 184
    .local v2, "ceiling":Ljava/lang/reflect/Method;
    iget-object v8, p0, Lcom/leff/midi/MidiTrack;->mEvents:Ljava/util/TreeSet;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/leff/midi/event/MidiEvent;

    move-object v6, v0

    .line 185
    iget-object v8, p0, Lcom/leff/midi/MidiTrack;->mEvents:Ljava/util/TreeSet;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/leff/midi/event/MidiEvent;

    move-object v5, v0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_54} :catch_96

    .line 207
    .end local v2    # "ceiling":Ljava/lang/reflect/Method;
    .end local v3    # "floor":Ljava/lang/reflect/Method;
    .end local v7    # "treeSet":Ljava/lang/Class;
    :cond_54
    iget-object v8, p0, Lcom/leff/midi/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v8, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 208
    iput-boolean v12, p0, Lcom/leff/midi/MidiTrack;->mSizeNeedsRecalculating:Z

    .line 212
    if-eqz v6, :cond_b8

    .line 214
    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v8

    invoke-virtual {v6}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {p1, v8, v9}, Lcom/leff/midi/event/MidiEvent;->setDelta(J)V

    .line 222
    :goto_69
    if-eqz v5, :cond_77

    .line 224
    invoke-virtual {v5}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v8

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Lcom/leff/midi/event/MidiEvent;->setDelta(J)V

    .line 227
    :cond_77
    iget v8, p0, Lcom/leff/midi/MidiTrack;->mSize:I

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getSize()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/leff/midi/MidiTrack;->mSize:I

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lcom/leff/midi/event/meta/EndOfTrack;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 231
    if-eqz v5, :cond_c0

    .line 233
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Attempting to insert EndOfTrack before an existing event. Use closeTrack() when finished with MidiTrack."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 191
    :catch_96
    move-exception v8

    iget-object v8, p0, Lcom/leff/midi/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 193
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/leff/midi/event/MidiEvent;>;"
    :goto_9d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    .line 195
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "next":Lcom/leff/midi/event/MidiEvent;
    check-cast v5, Lcom/leff/midi/event/MidiEvent;

    .line 197
    .restart local v5    # "next":Lcom/leff/midi/event/MidiEvent;
    invoke-virtual {v5}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v8

    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_54

    .line 202
    move-object v6, v5

    .line 203
    const/4 v5, 0x0

    goto :goto_9d

    .line 218
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/leff/midi/event/MidiEvent;>;"
    :cond_b8
    invoke-virtual {p1}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Lcom/leff/midi/event/MidiEvent;->setDelta(J)V

    goto :goto_69

    .line 235
    :cond_c0
    iput-boolean v12, p0, Lcom/leff/midi/MidiTrack;->mClosed:Z

    goto/16 :goto_3
.end method

.method public insertNote(IIIJJ)V
    .registers 16
    .param p1, "channel"    # I
    .param p2, "pitch"    # I
    .param p3, "velocity"    # I
    .param p4, "tick"    # J
    .param p6, "duration"    # J

    .prologue
    .line 156
    new-instance v1, Lcom/leff/midi/event/NoteOn;

    move-wide v2, p4

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    invoke-virtual {p0, v1}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 157
    new-instance v1, Lcom/leff/midi/event/NoteOn;

    add-long v2, p4, p6

    const/4 v6, 0x0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    invoke-virtual {p0, v1}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 158
    return-void
.end method

.method public removeEvent(Lcom/leff/midi/event/MidiEvent;)Z
    .registers 10
    .param p1, "E"    # Lcom/leff/midi/event/MidiEvent;

    .prologue
    .line 241
    iget-object v4, p0, Lcom/leff/midi/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 242
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/leff/midi/event/MidiEvent;>;"
    const/4 v3, 0x0

    .local v3, "prev":Lcom/leff/midi/event/MidiEvent;
    const/4 v0, 0x0

    .local v0, "curr":Lcom/leff/midi/event/MidiEvent;
    const/4 v2, 0x0

    .line 244
    .local v2, "next":Lcom/leff/midi/event/MidiEvent;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_18

    .line 258
    :cond_f
    if-nez v2, :cond_28

    .line 263
    iget-object v4, p0, Lcom/leff/midi/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 279
    :goto_17
    return v4

    .line 246
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "next":Lcom/leff/midi/event/MidiEvent;
    check-cast v2, Lcom/leff/midi/event/MidiEvent;

    .line 248
    .restart local v2    # "next":Lcom/leff/midi/event/MidiEvent;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 253
    move-object v3, v0

    .line 254
    move-object v0, v2

    .line 255
    const/4 v2, 0x0

    goto :goto_9

    .line 266
    :cond_28
    iget-object v4, p0, Lcom/leff/midi/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 268
    const/4 v4, 0x0

    goto :goto_17

    .line 271
    :cond_32
    if-eqz v3, :cond_42

    .line 273
    invoke-virtual {v2}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/leff/midi/event/MidiEvent;->setDelta(J)V

    .line 279
    :goto_40
    const/4 v4, 0x1

    goto :goto_17

    .line 277
    :cond_42
    invoke-virtual {v2}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/leff/midi/event/MidiEvent;->setDelta(J)V

    goto :goto_40
.end method

.method public setEndOfTrackDelta(J)V
    .registers 4
    .param p1, "delta"    # J

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/leff/midi/MidiTrack;->mEndOfTrackDelta:J

    .line 151
    return-void
.end method

.method public writeToFile(Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    iget-boolean v3, p0, Lcom/leff/midi/MidiTrack;->mClosed:Z

    if-nez v3, :cond_7

    .line 330
    invoke-virtual {p0}, Lcom/leff/midi/MidiTrack;->closeTrack()V

    .line 333
    :cond_7
    iget-boolean v3, p0, Lcom/leff/midi/MidiTrack;->mSizeNeedsRecalculating:Z

    if-eqz v3, :cond_e

    .line 335
    invoke-direct {p0}, Lcom/leff/midi/MidiTrack;->recalculateSize()V

    .line 338
    :cond_e
    sget-object v3, Lcom/leff/midi/MidiTrack;->IDENTIFIER:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 339
    iget v3, p0, Lcom/leff/midi/MidiTrack;->mSize:I

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/leff/midi/util/MidiUtil;->intToBytes(II)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 341
    iget-object v3, p0, Lcom/leff/midi/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 342
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/leff/midi/event/MidiEvent;>;"
    const/4 v2, 0x0

    .line 344
    .local v2, "lastEvent":Lcom/leff/midi/event/MidiEvent;
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 356
    return-void

    .line 346
    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leff/midi/event/MidiEvent;

    .line 352
    .local v0, "event":Lcom/leff/midi/event/MidiEvent;
    invoke-virtual {v0, v2}, Lcom/leff/midi/event/MidiEvent;->requiresStatusByte(Lcom/leff/midi/event/MidiEvent;)Z

    move-result v3

    invoke-virtual {v0, p1, v3}, Lcom/leff/midi/event/MidiEvent;->writeToFile(Ljava/io/OutputStream;Z)V

    .line 354
    move-object v2, v0

    goto :goto_24
.end method

.method public writeToFile(Ljava/io/RandomAccessFile;)V
    .registers 7
    .param p1, "out"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    iget-boolean v3, p0, Lcom/leff/midi/MidiTrack;->mClosed:Z

    if-nez v3, :cond_7

    .line 362
    invoke-virtual {p0}, Lcom/leff/midi/MidiTrack;->closeTrack()V

    .line 365
    :cond_7
    iget-boolean v3, p0, Lcom/leff/midi/MidiTrack;->mSizeNeedsRecalculating:Z

    if-eqz v3, :cond_e

    .line 367
    invoke-direct {p0}, Lcom/leff/midi/MidiTrack;->recalculateSize()V

    .line 370
    :cond_e
    sget-object v3, Lcom/leff/midi/MidiTrack;->IDENTIFIER:[B

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 371
    iget v3, p0, Lcom/leff/midi/MidiTrack;->mSize:I

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/leff/midi/util/MidiUtil;->intToBytes(II)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 373
    iget-object v3, p0, Lcom/leff/midi/MidiTrack;->mEvents:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 374
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/leff/midi/event/MidiEvent;>;"
    const/4 v2, 0x0

    .line 376
    .local v2, "lastEvent":Lcom/leff/midi/event/MidiEvent;
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 388
    return-void

    .line 378
    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leff/midi/event/MidiEvent;

    .line 384
    .local v0, "event":Lcom/leff/midi/event/MidiEvent;
    invoke-virtual {v0, v2}, Lcom/leff/midi/event/MidiEvent;->requiresStatusByte(Lcom/leff/midi/event/MidiEvent;)Z

    move-result v3

    invoke-virtual {v0, p1, v3}, Lcom/leff/midi/event/MidiEvent;->writeToFile(Ljava/io/RandomAccessFile;Z)V

    .line 386
    move-object v2, v0

    goto :goto_24
.end method
