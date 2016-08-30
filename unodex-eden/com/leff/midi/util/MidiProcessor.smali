.class public Lcom/leff/midi/util/MidiProcessor;
.super Ljava/lang/Object;
.source "MidiProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;
    }
.end annotation


# static fields
.field private static final PROCESS_RATE_MS:I = 0x8


# instance fields
.field private mEventQueues:[Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;

.field private mEventsToListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/leff/midi/event/MidiEvent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/leff/midi/util/MidiEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListenersToEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/leff/midi/util/MidiEventListener;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/leff/midi/event/MidiEvent;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mMPQN:I

.field private mMetronome:Lcom/leff/midi/util/MetronomeTick;

.field private mMidiFile:Lcom/leff/midi/MidiFile;

.field private mMsElapsed:J

.field private mPPQ:I

.field private mRunning:Z

.field private mTicksElapsed:D


# direct methods
.method public constructor <init>(Lcom/leff/midi/MidiFile;)V
    .registers 5
    .param p1, "input"    # Lcom/leff/midi/MidiFile;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/leff/midi/util/MidiProcessor;->mMidiFile:Lcom/leff/midi/MidiFile;

    .line 36
    const v0, 0x7a120

    iput v0, p0, Lcom/leff/midi/util/MidiProcessor;->mMPQN:I

    .line 37
    iget-object v0, p0, Lcom/leff/midi/util/MidiProcessor;->mMidiFile:Lcom/leff/midi/MidiFile;

    invoke-virtual {v0}, Lcom/leff/midi/MidiFile;->getResolution()I

    move-result v0

    iput v0, p0, Lcom/leff/midi/util/MidiProcessor;->mPPQ:I

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/leff/midi/util/MidiProcessor;->mEventsToListeners:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/leff/midi/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    .line 42
    new-instance v0, Lcom/leff/midi/util/MetronomeTick;

    new-instance v1, Lcom/leff/midi/event/meta/TimeSignature;

    invoke-direct {v1}, Lcom/leff/midi/event/meta/TimeSignature;-><init>()V

    iget v2, p0, Lcom/leff/midi/util/MidiProcessor;->mPPQ:I

    invoke-direct {v0, v1, v2}, Lcom/leff/midi/util/MetronomeTick;-><init>(Lcom/leff/midi/event/meta/TimeSignature;I)V

    iput-object v0, p0, Lcom/leff/midi/util/MidiProcessor;->mMetronome:Lcom/leff/midi/util/MetronomeTick;

    .line 44
    invoke-virtual {p0}, Lcom/leff/midi/util/MidiProcessor;->reset()V

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/leff/midi/util/MidiProcessor;)V
    .registers 1

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/leff/midi/util/MidiProcessor;->process()V

    return-void
.end method

.method private process()V
    .registers 23

    .prologue
    .line 239
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/leff/midi/util/MidiProcessor;->mTicksElapsed:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_30

    const/16 v18, 0x1

    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/leff/midi/util/MidiProcessor;->onStart(Z)V

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 243
    .local v8, "lastMs":J
    const/4 v6, 0x0

    .line 245
    .local v6, "finished":Z
    :cond_1a
    :goto_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/leff/midi/util/MidiProcessor;->mRunning:Z

    move/from16 v18, v0

    if-nez v18, :cond_33

    .line 308
    :goto_22
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/leff/midi/util/MidiProcessor;->mRunning:Z

    .line 309
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/leff/midi/util/MidiProcessor;->onStop(Z)V

    .line 310
    return-void

    .line 239
    .end local v6    # "finished":Z
    .end local v8    # "lastMs":J
    :cond_30
    const/16 v18, 0x0

    goto :goto_e

    .line 248
    .restart local v6    # "finished":Z
    .restart local v8    # "lastMs":J
    :cond_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 249
    .local v14, "now":J
    sub-long v12, v14, v8

    .line 251
    .local v12, "msElapsed":J
    const-wide/16 v18, 0x8

    cmp-long v18, v12, v18

    if-gez v18, :cond_49

    .line 255
    const-wide/16 v18, 0x8

    sub-long v18, v18, v12

    :try_start_43
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_1a

    .line 260
    :catch_47
    move-exception v18

    goto :goto_1a

    .line 263
    :cond_49
    move-object/from16 v0, p0

    iget v0, v0, Lcom/leff/midi/util/MidiProcessor;->mMPQN:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/leff/midi/util/MidiProcessor;->mPPQ:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v12, v13, v0, v1}, Lcom/leff/midi/util/MidiUtil;->msToTicks(JII)D

    move-result-wide v16

    .line 265
    .local v16, "ticksElapsed":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpg-double v18, v16, v18

    if-ltz v18, :cond_1a

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/leff/midi/util/MidiProcessor;->mMetronome:Lcom/leff/midi/util/MetronomeTick;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/leff/midi/util/MetronomeTick;->update(D)Z

    move-result v18

    if-eqz v18, :cond_80

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/leff/midi/util/MidiProcessor;->mMetronome:Lcom/leff/midi/util/MetronomeTick;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/leff/midi/util/MidiProcessor;->dispatch(Lcom/leff/midi/event/MidiEvent;)V

    .line 275
    :cond_80
    move-wide v8, v14

    .line 276
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/leff/midi/util/MidiProcessor;->mMsElapsed:J

    move-wide/from16 v18, v0

    add-long v18, v18, v12

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/leff/midi/util/MidiProcessor;->mMsElapsed:J

    .line 277
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/leff/midi/util/MidiProcessor;->mTicksElapsed:D

    move-wide/from16 v18, v0

    add-double v18, v18, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/leff/midi/util/MidiProcessor;->mTicksElapsed:D

    .line 279
    const/4 v10, 0x0

    .line 280
    .local v10, "more":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/leff/midi/util/MidiProcessor;->mEventQueues:[Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v7, v0, :cond_b3

    .line 301
    if-nez v10, :cond_1a

    .line 303
    const/4 v6, 0x1

    .line 304
    goto/16 :goto_22

    .line 283
    :cond_b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/leff/midi/util/MidiProcessor;->mEventQueues:[Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;

    move-object/from16 v18, v0

    aget-object v11, v18, v7

    .line 284
    .local v11, "queue":Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;
    invoke-virtual {v11}, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->hasMoreEvents()Z

    move-result v18

    if-nez v18, :cond_c4

    .line 280
    :cond_c1
    :goto_c1
    add-int/lit8 v7, v7, 0x1

    goto :goto_9f

    .line 289
    :cond_c4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/leff/midi/util/MidiProcessor;->mTicksElapsed:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v11, v0, v1}, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->getNextEventsUpToTick(D)Ljava/util/ArrayList;

    move-result-object v5

    .line 290
    .local v5, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/event/MidiEvent;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_d4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_e2

    .line 295
    invoke-virtual {v11}, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->hasMoreEvents()Z

    move-result v18

    if-eqz v18, :cond_c1

    .line 297
    const/4 v10, 0x1

    goto :goto_c1

    .line 290
    :cond_e2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/leff/midi/event/MidiEvent;

    .line 292
    .local v4, "event":Lcom/leff/midi/event/MidiEvent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/leff/midi/util/MidiProcessor;->dispatch(Lcom/leff/midi/event/MidiEvent;)V

    goto :goto_d4
.end method

.method private sendOnEventForClass(Lcom/leff/midi/event/MidiEvent;Ljava/lang/Class;)V
    .registers 9
    .param p1, "event"    # Lcom/leff/midi/event/MidiEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/leff/midi/event/MidiEvent;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/leff/midi/event/MidiEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/leff/midi/event/MidiEvent;>;"
    iget-object v2, p0, Lcom/leff/midi/util/MidiProcessor;->mEventsToListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 225
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/util/MidiEventListener;>;"
    if-nez v0, :cond_b

    .line 234
    :cond_a
    return-void

    .line 230
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leff/midi/util/MidiEventListener;

    .line 232
    .local v1, "mel":Lcom/leff/midi/util/MidiEventListener;
    iget-wide v4, p0, Lcom/leff/midi/util/MidiProcessor;->mMsElapsed:J

    invoke-interface {v1, p1, v4, v5}, Lcom/leff/midi/util/MidiEventListener;->onEvent(Lcom/leff/midi/event/MidiEvent;J)V

    goto :goto_f
.end method


# virtual methods
.method protected dispatch(Lcom/leff/midi/event/MidiEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/leff/midi/event/MidiEvent;

    .prologue
    const/4 v0, 0x1

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/leff/midi/event/meta/Tempo;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move-object v1, p1

    .line 202
    check-cast v1, Lcom/leff/midi/event/meta/Tempo;

    invoke-virtual {v1}, Lcom/leff/midi/event/meta/Tempo;->getMpqn()I

    move-result v1

    iput v1, p0, Lcom/leff/midi/util/MidiProcessor;->mMPQN:I

    .line 216
    :cond_16
    :goto_16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/leff/midi/util/MidiProcessor;->sendOnEventForClass(Lcom/leff/midi/event/MidiEvent;Ljava/lang/Class;)V

    .line 217
    const-class v1, Lcom/leff/midi/event/MidiEvent;

    invoke-direct {p0, p1, v1}, Lcom/leff/midi/util/MidiProcessor;->sendOnEventForClass(Lcom/leff/midi/event/MidiEvent;Ljava/lang/Class;)V

    .line 218
    return-void

    .line 204
    :cond_23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/leff/midi/event/meta/TimeSignature;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 207
    iget-object v1, p0, Lcom/leff/midi/util/MidiProcessor;->mMetronome:Lcom/leff/midi/util/MetronomeTick;

    invoke-virtual {v1}, Lcom/leff/midi/util/MetronomeTick;->getBeatNumber()I

    move-result v1

    if-eq v1, v0, :cond_47

    .line 208
    .local v0, "shouldDispatch":Z
    :goto_37
    iget-object v2, p0, Lcom/leff/midi/util/MidiProcessor;->mMetronome:Lcom/leff/midi/util/MetronomeTick;

    move-object v1, p1

    check-cast v1, Lcom/leff/midi/event/meta/TimeSignature;

    invoke-virtual {v2, v1}, Lcom/leff/midi/util/MetronomeTick;->setTimeSignature(Lcom/leff/midi/event/meta/TimeSignature;)V

    .line 210
    if-eqz v0, :cond_16

    .line 212
    iget-object v1, p0, Lcom/leff/midi/util/MidiProcessor;->mMetronome:Lcom/leff/midi/util/MetronomeTick;

    invoke-virtual {p0, v1}, Lcom/leff/midi/util/MidiProcessor;->dispatch(Lcom/leff/midi/event/MidiEvent;)V

    goto :goto_16

    .line 207
    .end local v0    # "shouldDispatch":Z
    :cond_47
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/leff/midi/util/MidiProcessor;->mRunning:Z

    return v0
.end method

.method public isStarted()Z
    .registers 5

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/leff/midi/util/MidiProcessor;->mTicksElapsed:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected onStart(Z)V
    .registers 5
    .param p1, "fromBeginning"    # Z

    .prologue
    .line 102
    iget-object v2, p0, Lcom/leff/midi/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 104
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/leff/midi/util/MidiEventListener;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_11

    .line 110
    return-void

    .line 107
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leff/midi/util/MidiEventListener;

    .line 108
    .local v1, "mel":Lcom/leff/midi/util/MidiEventListener;
    invoke-interface {v1, p1}, Lcom/leff/midi/util/MidiEventListener;->onStart(Z)V

    goto :goto_a
.end method

.method protected onStop(Z)V
    .registers 5
    .param p1, "finished"    # Z

    .prologue
    .line 115
    iget-object v2, p0, Lcom/leff/midi/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 117
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/leff/midi/util/MidiEventListener;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_11

    .line 123
    return-void

    .line 120
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leff/midi/util/MidiEventListener;

    .line 121
    .local v1, "mel":Lcom/leff/midi/util/MidiEventListener;
    invoke-interface {v1, p1}, Lcom/leff/midi/util/MidiEventListener;->onStop(Z)V

    goto :goto_a
.end method

.method public registerEventListener(Lcom/leff/midi/util/MidiEventListener;Ljava/lang/Class;)V
    .registers 6
    .param p1, "mel"    # Lcom/leff/midi/util/MidiEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/leff/midi/util/MidiEventListener;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/leff/midi/event/MidiEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p2, "event":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/leff/midi/event/MidiEvent;>;"
    iget-object v2, p0, Lcom/leff/midi/util/MidiProcessor;->mEventsToListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 129
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/util/MidiEventListener;>;"
    if-nez v1, :cond_2f

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/util/MidiEventListener;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .restart local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/util/MidiEventListener;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v2, p0, Lcom/leff/midi/util/MidiProcessor;->mEventsToListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :goto_17
    iget-object v2, p0, Lcom/leff/midi/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 142
    .local v0, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/leff/midi/event/MidiEvent;>;>;"
    if-nez v0, :cond_33

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/leff/midi/event/MidiEvent;>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .restart local v0    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/leff/midi/event/MidiEvent;>;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v2, p0, Lcom/leff/midi/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :goto_2e
    return-void

    .line 138
    .end local v0    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/leff/midi/event/MidiEvent;>;>;"
    :cond_2f
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 151
    .restart local v0    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/leff/midi/event/MidiEvent;>;>;"
    :cond_33
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e
.end method

.method public reset()V
    .registers 6

    .prologue
    .line 70
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/leff/midi/util/MidiProcessor;->mRunning:Z

    .line 71
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/leff/midi/util/MidiProcessor;->mTicksElapsed:D

    .line 72
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/leff/midi/util/MidiProcessor;->mMsElapsed:J

    .line 74
    iget-object v2, p0, Lcom/leff/midi/util/MidiProcessor;->mMetronome:Lcom/leff/midi/util/MetronomeTick;

    new-instance v3, Lcom/leff/midi/event/meta/TimeSignature;

    invoke-direct {v3}, Lcom/leff/midi/event/meta/TimeSignature;-><init>()V

    invoke-virtual {v2, v3}, Lcom/leff/midi/util/MetronomeTick;->setTimeSignature(Lcom/leff/midi/event/meta/TimeSignature;)V

    .line 76
    iget-object v2, p0, Lcom/leff/midi/util/MidiProcessor;->mMidiFile:Lcom/leff/midi/MidiFile;

    invoke-virtual {v2}, Lcom/leff/midi/MidiFile;->getTracks()Ljava/util/ArrayList;

    move-result-object v1

    .line 78
    .local v1, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/MidiTrack;>;"
    iget-object v2, p0, Lcom/leff/midi/util/MidiProcessor;->mEventQueues:[Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;

    if-nez v2, :cond_27

    .line 80
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;

    iput-object v2, p0, Lcom/leff/midi/util/MidiProcessor;->mEventQueues:[Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;

    .line 83
    :cond_27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2f

    .line 87
    return-void

    .line 85
    :cond_2f
    iget-object v3, p0, Lcom/leff/midi/util/MidiProcessor;->mEventQueues:[Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;

    new-instance v4, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/leff/midi/MidiTrack;

    invoke-direct {v4, p0, v2}, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;-><init>(Lcom/leff/midi/util/MidiProcessor;Lcom/leff/midi/MidiTrack;)V

    aput-object v4, v3, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_28
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    .line 49
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/leff/midi/util/MidiProcessor;->mRunning:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-eqz v0, :cond_7

    .line 60
    :goto_5
    monitor-exit p0

    return-void

    .line 52
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/leff/midi/util/MidiProcessor;->mRunning:Z

    .line 53
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/leff/midi/util/MidiProcessor$1;

    invoke-direct {v1, p0}, Lcom/leff/midi/util/MidiProcessor$1;-><init>(Lcom/leff/midi/util/MidiProcessor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_18

    goto :goto_5

    .line 49
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leff/midi/util/MidiProcessor;->mRunning:Z

    .line 65
    return-void
.end method

.method public unregisterAllEventListeners()V
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/leff/midi/util/MidiProcessor;->mEventsToListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 193
    iget-object v0, p0, Lcom/leff/midi/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 194
    return-void
.end method

.method public unregisterEventListener(Lcom/leff/midi/util/MidiEventListener;)V
    .registers 7
    .param p1, "mel"    # Lcom/leff/midi/util/MidiEventListener;

    .prologue
    .line 158
    iget-object v3, p0, Lcom/leff/midi/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 159
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/leff/midi/event/MidiEvent;>;>;"
    if-nez v1, :cond_b

    .line 172
    :goto_a
    return-void

    .line 164
    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 171
    iget-object v3, p0, Lcom/leff/midi/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 164
    :cond_1b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 167
    .local v0, "event":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/leff/midi/event/MidiEvent;>;"
    iget-object v4, p0, Lcom/leff/midi/util/MidiProcessor;->mEventsToListeners:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 168
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/util/MidiEventListener;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method public unregisterEventListener(Lcom/leff/midi/util/MidiEventListener;Ljava/lang/Class;)V
    .registers 6
    .param p1, "mel"    # Lcom/leff/midi/util/MidiEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/leff/midi/util/MidiEventListener;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/leff/midi/event/MidiEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p2, "event":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/leff/midi/event/MidiEvent;>;"
    iget-object v2, p0, Lcom/leff/midi/util/MidiProcessor;->mEventsToListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 178
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/util/MidiEventListener;>;"
    if-eqz v1, :cond_d

    .line 180
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 183
    :cond_d
    iget-object v2, p0, Lcom/leff/midi/util/MidiProcessor;->mListenersToEvents:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 184
    .local v0, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/leff/midi/event/MidiEvent;>;>;"
    if-eqz v0, :cond_1a

    .line 186
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 188
    :cond_1a
    return-void
.end method
