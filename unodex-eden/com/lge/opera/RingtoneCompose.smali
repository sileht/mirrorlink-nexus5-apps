.class public Lcom/lge/opera/RingtoneCompose;
.super Ljava/lang/Object;
.source "RingtoneCompose.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/opera/RingtoneCompose$Major5CPR2_MelodyPitch;
    }
.end annotation


# static fields
.field private static final BONGO1:I = 0x2b

.field private static final BONGO2:I = 0x2d

.field private static final CONGA1:I = 0x26

.field private static final CONGA2:I = 0x29

.field private static final KICK:I = 0x24

.field private static final RIMSHOT:I = 0x27

.field private static final SNARE:I = 0x28

.field private static final TAG:Ljava/lang/String; = "RingtoneCompose"

.field private static final TAM:I = 0x30

.field private static final baseKeyArray:[Ljava/lang/String;

.field private static final chordKeyArray:[[Ljava/lang/String;


# instance fields
.field private final BeatChannel:I

.field private final ChordChannel:I

.field private final MelodyChannel:I

.field private TPQN:I

.field private bank:I

.field private final channel:I

.field private methodNum:I

.field private program:I

.field private final velocity:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A-"

    aput-object v1, v0, v4

    const-string v1, "E-"

    aput-object v1, v0, v5

    const-string v1, "B-"

    aput-object v1, v0, v6

    const-string v1, "B"

    aput-object v1, v0, v7

    const-string v1, "A"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "G"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/opera/RingtoneCompose;->baseKeyArray:[Ljava/lang/String;

    .line 23
    const/16 v0, 0xa

    new-array v0, v0, [[Ljava/lang/String;

    .line 24
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "A-"

    aput-object v2, v1, v4

    const-string v2, "B-"

    aput-object v2, v1, v5

    const-string v2, "C"

    aput-object v2, v1, v6

    const-string v2, "D-"

    aput-object v2, v1, v7

    const-string v2, "E-"

    aput-object v2, v1, v8

    aput-object v1, v0, v4

    .line 25
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "E-"

    aput-object v2, v1, v4

    const-string v2, "F"

    aput-object v2, v1, v5

    const-string v2, "G"

    aput-object v2, v1, v6

    const-string v2, "A-"

    aput-object v2, v1, v7

    const-string v2, "B-"

    aput-object v2, v1, v8

    aput-object v1, v0, v5

    .line 26
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "B-"

    aput-object v2, v1, v4

    const-string v2, "C"

    aput-object v2, v1, v5

    const-string v2, "D"

    aput-object v2, v1, v6

    const-string v2, "E-"

    aput-object v2, v1, v7

    const-string v2, "F"

    aput-object v2, v1, v8

    aput-object v1, v0, v6

    .line 27
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "B"

    aput-object v2, v1, v4

    const-string v2, "C+"

    aput-object v2, v1, v5

    const-string v2, "D+"

    aput-object v2, v1, v6

    const-string v2, "E"

    aput-object v2, v1, v7

    const-string v2, "F+"

    aput-object v2, v1, v8

    aput-object v1, v0, v7

    .line 28
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "A"

    aput-object v2, v1, v4

    const-string v2, "B"

    aput-object v2, v1, v5

    const-string v2, "C+"

    aput-object v2, v1, v6

    const-string v2, "D"

    aput-object v2, v1, v7

    const-string v2, "E"

    aput-object v2, v1, v8

    aput-object v1, v0, v8

    const/4 v1, 0x5

    .line 29
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "E"

    aput-object v3, v2, v4

    const-string v3, "F+"

    aput-object v3, v2, v5

    const-string v3, "G+"

    aput-object v3, v2, v6

    const-string v3, "A"

    aput-object v3, v2, v7

    const-string v3, "B"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 30
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "D"

    aput-object v3, v2, v4

    const-string v3, "E"

    aput-object v3, v2, v5

    const-string v3, "F+"

    aput-object v3, v2, v6

    const-string v3, "G"

    aput-object v3, v2, v7

    const-string v3, "A"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 31
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "C"

    aput-object v3, v2, v4

    const-string v3, "D"

    aput-object v3, v2, v5

    const-string v3, "E"

    aput-object v3, v2, v6

    const-string v3, "F"

    aput-object v3, v2, v7

    const-string v3, "G"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 32
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "F"

    aput-object v3, v2, v4

    const-string v3, "G"

    aput-object v3, v2, v5

    const-string v3, "A"

    aput-object v3, v2, v6

    const-string v3, "B-"

    aput-object v3, v2, v7

    const-string v3, "C"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 33
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "G"

    aput-object v3, v2, v4

    const-string v3, "A"

    aput-object v3, v2, v5

    const-string v3, "B"

    aput-object v3, v2, v6

    const-string v3, "C"

    aput-object v3, v2, v7

    const-string v3, "D"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    .line 23
    sput-object v0, Lcom/lge/opera/RingtoneCompose;->chordKeyArray:[[Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 6
    .param p1, "tick_per_quarter_note"    # I
    .param p2, "b"    # I
    .param p3, "p"    # I
    .param p4, "m"    # I

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/lge/opera/RingtoneCompose;->channel:I

    .line 18
    iput v0, p0, Lcom/lge/opera/RingtoneCompose;->MelodyChannel:I

    .line 19
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/opera/RingtoneCompose;->ChordChannel:I

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/opera/RingtoneCompose;->BeatChannel:I

    .line 21
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/opera/RingtoneCompose;->velocity:I

    .line 47
    iput p1, p0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    .line 48
    iput p2, p0, Lcom/lge/opera/RingtoneCompose;->bank:I

    .line 49
    iput p3, p0, Lcom/lge/opera/RingtoneCompose;->program:I

    .line 50
    iput p4, p0, Lcom/lge/opera/RingtoneCompose;->methodNum:I

    .line 51
    return-void
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/lge/opera/RingtoneCompose;->baseKeyArray:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method Major_5CP_R2_with_Rhythm2(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 35
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/leff/midi/MidiTrack;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "noteTracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/MidiTrack;>;"
    const-string v5, "RingtoneCompose"

    const-string v6, "Major 5 chord progression, rear 2 numbers, rhythm pattern #2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v5, Lcom/leff/midi/MidiTrack;

    invoke-direct {v5}, Lcom/leff/midi/MidiTrack;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/leff/midi/MidiTrack;

    .line 284
    .local v4, "mTrack":Lcom/leff/midi/MidiTrack;
    new-instance v5, Lcom/leff/midi/MidiTrack;

    invoke-direct {v5}, Lcom/leff/midi/MidiTrack;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/leff/midi/MidiTrack;

    .line 286
    .local v23, "cTrack":Lcom/leff/midi/MidiTrack;
    new-instance v5, Lcom/leff/midi/MidiTrack;

    invoke-direct {v5}, Lcom/leff/midi/MidiTrack;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    const/4 v5, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/leff/midi/MidiTrack;

    .line 289
    .local v22, "bTrack":Lcom/leff/midi/MidiTrack;
    new-instance v5, Lcom/leff/midi/event/Controller;

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/leff/midi/event/Controller;-><init>(JIII)V

    invoke-virtual {v4, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 290
    new-instance v5, Lcom/leff/midi/event/Controller;

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-direct/range {v5 .. v10}, Lcom/leff/midi/event/Controller;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 291
    new-instance v5, Lcom/leff/midi/event/Controller;

    const-wide/16 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-direct/range {v5 .. v10}, Lcom/leff/midi/event/Controller;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 293
    new-instance v5, Lcom/leff/midi/event/ProgramChange;

    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/opera/RingtoneCompose;->program:I

    invoke-direct {v5, v8, v9, v6, v10}, Lcom/leff/midi/event/ProgramChange;-><init>(JII)V

    invoke-virtual {v4, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 294
    new-instance v5, Lcom/leff/midi/event/ProgramChange;

    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/opera/RingtoneCompose;->program:I

    invoke-direct {v5, v8, v9, v6, v10}, Lcom/leff/midi/event/ProgramChange;-><init>(JII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 295
    new-instance v5, Lcom/leff/midi/event/ProgramChange;

    const-wide/16 v8, 0x0

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/opera/RingtoneCompose;->program:I

    invoke-direct {v5, v8, v9, v6, v10}, Lcom/leff/midi/event/ProgramChange;-><init>(JII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 297
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lge/opera/RingtoneCompose;->selectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 298
    .local v29, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lge/opera/RingtoneCompose;->selectChordProgress(Ljava/lang/String;)[I

    move-result-object v25

    .line 299
    .local v25, "cp":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/lge/opera/RingtoneCompose;->getChord([ILjava/lang/String;)[[I

    move-result-object v24

    .line 300
    .local v24, "chord":[[I
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/lge/opera/RingtoneCompose;->getMelodyScale(Ljava/lang/String;[I)[[I

    move-result-object v31

    .line 301
    .local v31, "melodyScale":[[I
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/lge/opera/RingtoneCompose;->getMelody([[ILjava/lang/String;)[I

    move-result-object v30

    .line 304
    .local v30, "melody":[I
    const/16 v19, 0x0

    .line 305
    .local v19, "NoteOffset":I
    const/16 v7, 0x6e

    .line 308
    .local v7, "Velocity":I
    const/16 v5, 0xd

    new-array v0, v5, [I

    move-object/from16 v18, v0

    .line 309
    .local v18, "Melody":[I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_d6
    const/16 v5, 0xd

    move/from16 v0, v26

    if-lt v0, v5, :cond_241

    .line 313
    const/16 v5, 0xd

    new-array v0, v5, [I

    move-object/from16 v21, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v21, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v21, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v21, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v21, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v21, v5

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v21, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v21, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v21, v5

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v21, v5

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v21, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v21, v5

    const/16 v5, 0xb

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v21, v5

    const/16 v5, 0xc

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x2

    aput v6, v21, v5

    .line 314
    .local v21, "TickofNote":[I
    const/16 v26, 0x0

    :goto_16a
    const/4 v5, 0x1

    move/from16 v0, v26

    if-lt v0, v5, :cond_24b

    .line 329
    const/16 v16, 0x0

    .line 330
    .local v16, "ChordOffset":I
    const/16 v5, 0x9

    new-array v0, v5, [I

    move-object/from16 v20, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v20, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v20, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v20, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v20, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v20, v5

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v20, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v20, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v20, v5

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v20, v5

    .line 331
    .local v20, "TickofChord":[I
    const/16 v5, 0xa

    new-array v0, v5, [I

    move-object/from16 v17, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v17, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v17, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v17, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v17, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v17, v5

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v17, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v17, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v17, v5

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v17, v5

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v17, v5

    .line 333
    .local v17, "DurationofChord":[I
    const/16 v26, 0x0

    :goto_233
    const/4 v5, 0x1

    move/from16 v0, v26

    if-lt v0, v5, :cond_298

    .line 398
    const/4 v15, 0x0

    .line 399
    .local v15, "BeatOffset":I
    const/16 v26, 0x0

    :goto_23b
    const/4 v5, 0x1

    move/from16 v0, v26

    if-lt v0, v5, :cond_664

    .line 453
    return-void

    .line 310
    .end local v15    # "BeatOffset":I
    .end local v16    # "ChordOffset":I
    .end local v17    # "DurationofChord":[I
    .end local v20    # "TickofChord":[I
    .end local v21    # "TickofNote":[I
    :cond_241
    rem-int/lit8 v5, v26, 0x8

    aget v5, v30, v5

    aput v5, v18, v26

    .line 309
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_d6

    .line 315
    .restart local v21    # "TickofNote":[I
    :cond_24b
    const/16 v27, 0x0

    .local v27, "j":I
    :goto_24d
    const/4 v5, 0x4

    move/from16 v0, v27

    if-lt v0, v5, :cond_25e

    .line 325
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v5, v5, 0x4

    add-int v19, v19, v5

    .line 314
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_16a

    .line 316
    :cond_25e
    const/16 v28, 0x0

    .line 317
    .local v28, "k":I
    const/16 v28, 0x0

    :goto_262
    const/16 v5, 0xc

    move/from16 v0, v28

    if-lt v0, v5, :cond_281

    .line 322
    const/4 v5, 0x1

    aget v6, v18, v28

    move/from16 v0, v19

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v10, v10, 0x3

    mul-int/lit8 v10, v10, 0x2

    int-to-long v10, v10

    invoke-virtual/range {v4 .. v11}, Lcom/leff/midi/MidiTrack;->insertNote(IIIJJ)V

    .line 323
    aget v5, v21, v28

    add-int v19, v19, v5

    .line 315
    add-int/lit8 v27, v27, 0x1

    goto :goto_24d

    .line 318
    :cond_281
    const/4 v5, 0x1

    aget v6, v18, v28

    move/from16 v0, v19

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v10, v10, 0x3

    int-to-long v10, v10

    invoke-virtual/range {v4 .. v11}, Lcom/leff/midi/MidiTrack;->insertNote(IIIJJ)V

    .line 319
    aget v5, v21, v28

    add-int v19, v19, v5

    .line 317
    add-int/lit8 v28, v28, 0x1

    goto :goto_262

    .line 334
    .end local v27    # "j":I
    .end local v28    # "k":I
    .restart local v16    # "ChordOffset":I
    .restart local v17    # "DurationofChord":[I
    .restart local v20    # "TickofChord":[I
    :cond_298
    const/16 v27, 0x0

    .restart local v27    # "j":I
    :goto_29a
    const/4 v5, 0x4

    move/from16 v0, v27

    if-lt v0, v5, :cond_2ea

    .line 391
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v5, v5, 0x4

    add-int v16, v16, v5

    .line 392
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    const/4 v6, 0x1

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 393
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    const/4 v6, 0x2

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 394
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    const/4 v6, 0x3

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 333
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_233

    .line 335
    :cond_2ea
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v24, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/16 v14, 0x46

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 336
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x0

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v24, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 337
    const/4 v5, 0x0

    aget v5, v20, v5

    add-int v16, v16, v5

    .line 339
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v24, v5

    const/4 v6, 0x1

    aget v13, v5, v6

    const/16 v14, 0x32

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 340
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v24, v5

    const/4 v6, 0x2

    aget v13, v5, v6

    const/16 v14, 0x3c

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 341
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v24, v5

    const/4 v6, 0x3

    aget v13, v5, v6

    const/16 v14, 0x46

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 342
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x1

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v24, v5

    const/4 v6, 0x1

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 343
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x1

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v24, v5

    const/4 v6, 0x2

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 344
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x1

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v24, v5

    const/4 v6, 0x3

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 345
    const/4 v5, 0x1

    aget v5, v20, v5

    add-int v16, v16, v5

    .line 347
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v24, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/16 v14, 0x32

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 348
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x2

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v24, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 349
    const/4 v5, 0x2

    aget v5, v20, v5

    add-int v16, v16, v5

    .line 351
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/16 v14, 0x46

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 352
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x3

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 353
    const/4 v5, 0x3

    aget v5, v20, v5

    add-int v16, v16, v5

    .line 355
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    const/4 v6, 0x1

    aget v13, v5, v6

    const/16 v14, 0x32

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 356
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    const/4 v6, 0x2

    aget v13, v5, v6

    const/16 v14, 0x3c

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 357
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    const/4 v6, 0x3

    aget v13, v5, v6

    const/16 v14, 0x46

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 358
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x4

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    const/4 v6, 0x1

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 359
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x4

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    const/4 v6, 0x2

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 360
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x4

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    const/4 v6, 0x3

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 361
    const/4 v5, 0x4

    aget v5, v20, v5

    add-int v16, v16, v5

    .line 363
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/16 v14, 0x32

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 364
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x5

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 365
    const/4 v5, 0x5

    aget v5, v20, v5

    add-int v16, v16, v5

    .line 367
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v24, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/16 v14, 0x46

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 368
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x6

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v24, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 369
    const/4 v5, 0x6

    aget v5, v20, v5

    add-int v16, v16, v5

    .line 371
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v24, v5

    const/4 v6, 0x1

    aget v13, v5, v6

    const/16 v14, 0x32

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 372
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v24, v5

    const/4 v6, 0x2

    aget v13, v5, v6

    const/16 v14, 0x3c

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 373
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v24, v5

    const/4 v6, 0x3

    aget v13, v5, v6

    const/16 v14, 0x46

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 374
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x7

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v24, v5

    const/4 v6, 0x1

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 375
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x7

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v24, v5

    const/4 v6, 0x2

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 376
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x7

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v24, v5

    const/4 v6, 0x3

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 377
    const/4 v5, 0x7

    aget v5, v20, v5

    add-int v16, v16, v5

    .line 379
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/16 v14, 0x3c

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 380
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/16 v5, 0x8

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 381
    const/16 v5, 0x8

    aget v5, v20, v5

    add-int v16, v16, v5

    .line 383
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    const/4 v6, 0x1

    aget v13, v5, v6

    const/16 v14, 0x32

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 384
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    const/4 v6, 0x2

    aget v13, v5, v6

    const/16 v14, 0x3c

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 385
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    const/4 v6, 0x3

    aget v13, v5, v6

    const/16 v14, 0x46

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 386
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/16 v5, 0x9

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    const/4 v6, 0x1

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 387
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/16 v5, 0x9

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    const/4 v6, 0x2

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 388
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/16 v5, 0x9

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    const/4 v6, 0x3

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 389
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v5, v5, 0x2

    add-int v16, v16, v5

    .line 334
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_29a

    .line 400
    .end local v27    # "j":I
    .restart local v15    # "BeatOffset":I
    :cond_664
    const/16 v27, 0x0

    .restart local v27    # "j":I
    :goto_666
    const/4 v5, 0x4

    move/from16 v0, v27

    if-lt v0, v5, :cond_676

    .line 450
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v15, v5

    .line 399
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_23b

    .line 401
    :cond_676
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x26

    const/16 v14, 0x64

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 402
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x30

    const/16 v14, 0x3c

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 403
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x26

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 404
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x30

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 406
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    add-int/2addr v15, v5

    .line 407
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x2d

    const/16 v14, 0x55

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 408
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x2d

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 410
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v15, v5

    .line 411
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x2b

    const/16 v14, 0x32

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 412
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x2b

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 414
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v15, v5

    .line 415
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x29

    const/16 v14, 0x41

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 416
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x30

    const/16 v14, 0x3c

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 417
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x29

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 418
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x30

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 420
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    add-int/2addr v15, v5

    .line 421
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x2d

    const/16 v14, 0x55

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 422
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x2d

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 424
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v15, v5

    .line 425
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x2b

    const/16 v14, 0x32

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 426
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x2b

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 428
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v15, v5

    .line 429
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x26

    const/16 v14, 0x64

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 430
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x30

    const/16 v14, 0x3c

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 431
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x26

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 432
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x30

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 434
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    add-int/2addr v15, v5

    .line 435
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x2d

    const/16 v14, 0x55

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 436
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x2d

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 438
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v15, v5

    .line 439
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x2b

    const/16 v14, 0x32

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 440
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x2b

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 442
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v15, v5

    .line 443
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x29

    const/16 v14, 0x41

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 444
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x30

    const/16 v14, 0x3c

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 445
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x29

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 446
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x30

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 448
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v15, v5

    .line 400
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_666
.end method

.method Major_5CP_R2_with_Rhythm3(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 33
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/leff/midi/MidiTrack;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 456
    .local p1, "noteTracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/MidiTrack;>;"
    const-string v5, "RingtoneCompose"

    const-string v6, "Major 5 chord progression, rear 2 numbers, rhythm pattern #2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance v5, Lcom/leff/midi/MidiTrack;

    invoke-direct {v5}, Lcom/leff/midi/MidiTrack;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/leff/midi/MidiTrack;

    .line 460
    .local v4, "mTrack":Lcom/leff/midi/MidiTrack;
    new-instance v5, Lcom/leff/midi/MidiTrack;

    invoke-direct {v5}, Lcom/leff/midi/MidiTrack;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/leff/midi/MidiTrack;

    .line 462
    .local v22, "cTrack":Lcom/leff/midi/MidiTrack;
    new-instance v5, Lcom/leff/midi/MidiTrack;

    invoke-direct {v5}, Lcom/leff/midi/MidiTrack;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    const/4 v5, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/leff/midi/MidiTrack;

    .line 465
    .local v21, "bTrack":Lcom/leff/midi/MidiTrack;
    new-instance v5, Lcom/leff/midi/event/Controller;

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/leff/midi/event/Controller;-><init>(JIII)V

    invoke-virtual {v4, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 466
    new-instance v5, Lcom/leff/midi/event/Controller;

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-direct/range {v5 .. v10}, Lcom/leff/midi/event/Controller;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 467
    new-instance v5, Lcom/leff/midi/event/Controller;

    const-wide/16 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-direct/range {v5 .. v10}, Lcom/leff/midi/event/Controller;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 469
    new-instance v5, Lcom/leff/midi/event/ProgramChange;

    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/opera/RingtoneCompose;->program:I

    invoke-direct {v5, v8, v9, v6, v10}, Lcom/leff/midi/event/ProgramChange;-><init>(JII)V

    invoke-virtual {v4, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 470
    new-instance v5, Lcom/leff/midi/event/ProgramChange;

    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/opera/RingtoneCompose;->program:I

    invoke-direct {v5, v8, v9, v6, v10}, Lcom/leff/midi/event/ProgramChange;-><init>(JII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 471
    new-instance v5, Lcom/leff/midi/event/ProgramChange;

    const-wide/16 v8, 0x0

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/opera/RingtoneCompose;->program:I

    invoke-direct {v5, v8, v9, v6, v10}, Lcom/leff/midi/event/ProgramChange;-><init>(JII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 473
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lge/opera/RingtoneCompose;->selectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 474
    .local v27, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lge/opera/RingtoneCompose;->selectChordProgress(Ljava/lang/String;)[I

    move-result-object v24

    .line 475
    .local v24, "cp":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/lge/opera/RingtoneCompose;->getChord([ILjava/lang/String;)[[I

    move-result-object v23

    .line 476
    .local v23, "chord":[[I
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/lge/opera/RingtoneCompose;->getMelodyScale(Ljava/lang/String;[I)[[I

    move-result-object v29

    .line 477
    .local v29, "melodyScale":[[I
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/lge/opera/RingtoneCompose;->getMelody([[ILjava/lang/String;)[I

    move-result-object v28

    .line 480
    .local v28, "melody":[I
    const/16 v18, 0x0

    .line 481
    .local v18, "NoteOffset":I
    const/16 v7, 0x6e

    .line 483
    .local v7, "Velocity":I
    const/16 v5, 0x8

    new-array v0, v5, [I

    move-object/from16 v20, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v20, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v20, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v20, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    aput v6, v20, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v20, v5

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v20, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v20, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    aput v6, v20, v5

    .line 484
    .local v20, "TickofNote":[I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_134
    const/4 v5, 0x1

    move/from16 v0, v25

    if-lt v0, v5, :cond_20b

    .line 508
    const/16 v16, 0x0

    .line 509
    .local v16, "ChordOffset":I
    const/16 v5, 0x9

    new-array v0, v5, [I

    move-object/from16 v19, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v19, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v19, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v19, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v19, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v19, v5

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v19, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v19, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v19, v5

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v19, v5

    .line 510
    .local v19, "TickofChord":[I
    const/16 v5, 0xa

    new-array v0, v5, [I

    move-object/from16 v17, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v17, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v17, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v17, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v17, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v17, v5

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v17, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v17, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v17, v5

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v17, v5

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v17, v5

    .line 512
    .local v17, "DurationofChord":[I
    const/16 v25, 0x0

    :goto_1fd
    const/4 v5, 0x1

    move/from16 v0, v25

    if-lt v0, v5, :cond_2da

    .line 577
    const/4 v15, 0x0

    .line 578
    .local v15, "BeatOffset":I
    const/16 v25, 0x0

    :goto_205
    const/4 v5, 0x1

    move/from16 v0, v25

    if-lt v0, v5, :cond_6a6

    .line 632
    return-void

    .line 485
    .end local v15    # "BeatOffset":I
    .end local v16    # "ChordOffset":I
    .end local v17    # "DurationofChord":[I
    .end local v19    # "TickofChord":[I
    :cond_20b
    const/16 v26, 0x0

    .local v26, "j":I
    :goto_20d
    const/4 v5, 0x4

    move/from16 v0, v26

    if-lt v0, v5, :cond_21e

    .line 504
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v5, v5, 0x4

    add-int v18, v18, v5

    .line 484
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_134

    .line 487
    :cond_21e
    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v6, v28, v6

    move/from16 v0, v18

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v10, v10, 0x3

    mul-int/lit8 v10, v10, 0x2

    int-to-long v10, v10

    invoke-virtual/range {v4 .. v11}, Lcom/leff/midi/MidiTrack;->insertNote(IIIJJ)V

    .line 488
    const/4 v5, 0x0

    aget v5, v20, v5

    add-int v18, v18, v5

    .line 489
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, v28, v6

    move/from16 v0, v18

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v10, v10, 0x3

    int-to-long v10, v10

    invoke-virtual/range {v4 .. v11}, Lcom/leff/midi/MidiTrack;->insertNote(IIIJJ)V

    .line 490
    const/4 v5, 0x1

    aget v5, v20, v5

    add-int v18, v18, v5

    .line 491
    const/4 v5, 0x1

    const/4 v6, 0x2

    aget v6, v28, v6

    move/from16 v0, v18

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v10, v10, 0x3

    mul-int/lit8 v10, v10, 0x2

    int-to-long v10, v10

    invoke-virtual/range {v4 .. v11}, Lcom/leff/midi/MidiTrack;->insertNote(IIIJJ)V

    .line 492
    const/4 v5, 0x2

    aget v5, v20, v5

    add-int v18, v18, v5

    .line 493
    const/4 v5, 0x1

    const/4 v6, 0x3

    aget v6, v28, v6

    move/from16 v0, v18

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v10, v10, 0x3

    int-to-long v10, v10

    invoke-virtual/range {v4 .. v11}, Lcom/leff/midi/MidiTrack;->insertNote(IIIJJ)V

    .line 494
    const/4 v5, 0x3

    aget v5, v20, v5

    add-int v18, v18, v5

    .line 495
    const/4 v5, 0x1

    const/4 v6, 0x4

    aget v6, v28, v6

    move/from16 v0, v18

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v10, v10, 0x3

    mul-int/lit8 v10, v10, 0x2

    int-to-long v10, v10

    invoke-virtual/range {v4 .. v11}, Lcom/leff/midi/MidiTrack;->insertNote(IIIJJ)V

    .line 496
    const/4 v5, 0x4

    aget v5, v20, v5

    add-int v18, v18, v5

    .line 497
    const/4 v5, 0x1

    const/4 v6, 0x5

    aget v6, v28, v6

    move/from16 v0, v18

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v10, v10, 0x3

    int-to-long v10, v10

    invoke-virtual/range {v4 .. v11}, Lcom/leff/midi/MidiTrack;->insertNote(IIIJJ)V

    .line 498
    const/4 v5, 0x5

    aget v5, v20, v5

    add-int v18, v18, v5

    .line 499
    const/4 v5, 0x1

    const/4 v6, 0x6

    aget v6, v28, v6

    move/from16 v0, v18

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v10, v10, 0x3

    mul-int/lit8 v10, v10, 0x2

    int-to-long v10, v10

    invoke-virtual/range {v4 .. v11}, Lcom/leff/midi/MidiTrack;->insertNote(IIIJJ)V

    .line 500
    const/4 v5, 0x6

    aget v5, v20, v5

    add-int v18, v18, v5

    .line 501
    const/4 v5, 0x1

    const/4 v6, 0x7

    aget v6, v28, v6

    move/from16 v0, v18

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v10, v10, 0x3

    int-to-long v10, v10

    invoke-virtual/range {v4 .. v11}, Lcom/leff/midi/MidiTrack;->insertNote(IIIJJ)V

    .line 502
    const/4 v5, 0x7

    aget v5, v20, v5

    add-int v18, v18, v5

    .line 485
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_20d

    .line 513
    .end local v26    # "j":I
    .restart local v16    # "ChordOffset":I
    .restart local v17    # "DurationofChord":[I
    .restart local v19    # "TickofChord":[I
    :cond_2da
    const/16 v26, 0x0

    .restart local v26    # "j":I
    :goto_2dc
    const/4 v5, 0x4

    move/from16 v0, v26

    if-lt v0, v5, :cond_32c

    .line 570
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v5, v5, 0x4

    add-int v16, v16, v5

    .line 571
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v6, 0x1

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 572
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v6, 0x2

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 573
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v6, 0x3

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 512
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1fd

    .line 514
    :cond_32c
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v23, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/16 v14, 0x46

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 515
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x0

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v23, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 516
    const/4 v5, 0x0

    aget v5, v19, v5

    add-int v16, v16, v5

    .line 518
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v23, v5

    const/4 v6, 0x1

    aget v13, v5, v6

    const/16 v14, 0x32

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 519
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v23, v5

    const/4 v6, 0x2

    aget v13, v5, v6

    const/16 v14, 0x3c

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 520
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v23, v5

    const/4 v6, 0x3

    aget v13, v5, v6

    const/16 v14, 0x46

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 521
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x1

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v23, v5

    const/4 v6, 0x1

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 522
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x1

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v23, v5

    const/4 v6, 0x2

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 523
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x1

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v23, v5

    const/4 v6, 0x3

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 524
    const/4 v5, 0x1

    aget v5, v19, v5

    add-int v16, v16, v5

    .line 526
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v23, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/16 v14, 0x32

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 527
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x2

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v23, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 528
    const/4 v5, 0x2

    aget v5, v19, v5

    add-int v16, v16, v5

    .line 530
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/16 v14, 0x46

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 531
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x3

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 532
    const/4 v5, 0x3

    aget v5, v19, v5

    add-int v16, v16, v5

    .line 534
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v6, 0x1

    aget v13, v5, v6

    const/16 v14, 0x32

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 535
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v6, 0x2

    aget v13, v5, v6

    const/16 v14, 0x3c

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 536
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v6, 0x3

    aget v13, v5, v6

    const/16 v14, 0x46

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 537
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x4

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v6, 0x1

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 538
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x4

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v6, 0x2

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 539
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x4

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v6, 0x3

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 540
    const/4 v5, 0x4

    aget v5, v19, v5

    add-int v16, v16, v5

    .line 542
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/16 v14, 0x32

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 543
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x5

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 544
    const/4 v5, 0x5

    aget v5, v19, v5

    add-int v16, v16, v5

    .line 546
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v23, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/16 v14, 0x46

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 547
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x6

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v23, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 548
    const/4 v5, 0x6

    aget v5, v19, v5

    add-int v16, v16, v5

    .line 550
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v23, v5

    const/4 v6, 0x1

    aget v13, v5, v6

    const/16 v14, 0x32

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 551
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v23, v5

    const/4 v6, 0x2

    aget v13, v5, v6

    const/16 v14, 0x3c

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 552
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v23, v5

    const/4 v6, 0x3

    aget v13, v5, v6

    const/16 v14, 0x46

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 553
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x7

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v23, v5

    const/4 v6, 0x1

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 554
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x7

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v23, v5

    const/4 v6, 0x2

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 555
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/4 v5, 0x7

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x0

    aget-object v5, v23, v5

    const/4 v6, 0x3

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 556
    const/4 v5, 0x7

    aget v5, v19, v5

    add-int v16, v16, v5

    .line 558
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/16 v14, 0x3c

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 559
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/16 v5, 0x8

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v6, 0x0

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 560
    const/16 v5, 0x8

    aget v5, v19, v5

    add-int v16, v16, v5

    .line 562
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v6, 0x1

    aget v13, v5, v6

    const/16 v14, 0x32

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 563
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v6, 0x2

    aget v13, v5, v6

    const/16 v14, 0x3c

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 564
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v6, 0x3

    aget v13, v5, v6

    const/16 v14, 0x46

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 565
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/16 v5, 0x9

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v6, 0x1

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 566
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/16 v5, 0x9

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v6, 0x2

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 567
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    const/16 v5, 0x9

    aget v5, v17, v5

    add-int v5, v5, v16

    int-to-long v10, v5

    const/4 v12, 0x2

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v6, 0x3

    aget v13, v5, v6

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 568
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v5, v5, 0x2

    add-int v16, v16, v5

    .line 513
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_2dc

    .line 579
    .end local v26    # "j":I
    .restart local v15    # "BeatOffset":I
    :cond_6a6
    const/16 v26, 0x0

    .restart local v26    # "j":I
    :goto_6a8
    const/4 v5, 0x4

    move/from16 v0, v26

    if-lt v0, v5, :cond_6b8

    .line 629
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v15, v5

    .line 578
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_205

    .line 580
    :cond_6b8
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x26

    const/16 v14, 0x64

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 581
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x30

    const/16 v14, 0x3c

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 582
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x26

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 583
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x30

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 585
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    add-int/2addr v15, v5

    .line 586
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x2d

    const/16 v14, 0x55

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 587
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x2d

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 589
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v15, v5

    .line 590
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x2b

    const/16 v14, 0x32

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 591
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x2b

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 593
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v15, v5

    .line 594
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x29

    const/16 v14, 0x41

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 595
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x30

    const/16 v14, 0x3c

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 596
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x29

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 597
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x30

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 599
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    add-int/2addr v15, v5

    .line 600
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x2d

    const/16 v14, 0x55

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 601
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x2d

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 603
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v15, v5

    .line 604
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x2b

    const/16 v14, 0x32

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 605
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x2b

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 607
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v15, v5

    .line 608
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x26

    const/16 v14, 0x64

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 609
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x30

    const/16 v14, 0x3c

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 610
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x26

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 611
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x30

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 613
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    add-int/2addr v15, v5

    .line 614
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x2d

    const/16 v14, 0x55

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 615
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x2d

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 617
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v15, v5

    .line 618
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x2b

    const/16 v14, 0x32

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 619
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x2b

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 621
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v15, v5

    .line 622
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x29

    const/16 v14, 0x41

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 623
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    int-to-long v10, v15

    const/4 v12, 0x3

    const/16 v13, 0x30

    const/16 v14, 0x3c

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 624
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x29

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 625
    new-instance v9, Lcom/leff/midi/event/NoteOn;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    int-to-long v10, v5

    const/4 v12, 0x3

    const/16 v13, 0x30

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 627
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v15, v5

    .line 579
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_6a8
.end method

.method Opera_Synth_L0(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 30
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/leff/midi/MidiTrack;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "noteTracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/MidiTrack;>;"
    const-string v5, "RingtoneCompose"

    const-string v6, "Opera Synth L0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v5, Lcom/leff/midi/MidiTrack;

    invoke-direct {v5}, Lcom/leff/midi/MidiTrack;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/leff/midi/MidiTrack;

    .line 127
    .local v4, "mTrack":Lcom/leff/midi/MidiTrack;
    new-instance v5, Lcom/leff/midi/MidiTrack;

    invoke-direct {v5}, Lcom/leff/midi/MidiTrack;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/leff/midi/MidiTrack;

    .line 129
    .local v19, "cTrack":Lcom/leff/midi/MidiTrack;
    new-instance v5, Lcom/leff/midi/MidiTrack;

    invoke-direct {v5}, Lcom/leff/midi/MidiTrack;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    const/4 v5, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/leff/midi/MidiTrack;

    .line 132
    .local v18, "bTrack":Lcom/leff/midi/MidiTrack;
    new-instance v5, Lcom/leff/midi/event/Controller;

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/leff/midi/event/Controller;-><init>(JIII)V

    invoke-virtual {v4, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 133
    new-instance v5, Lcom/leff/midi/event/Controller;

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-direct/range {v5 .. v10}, Lcom/leff/midi/event/Controller;-><init>(JIII)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 134
    new-instance v5, Lcom/leff/midi/event/Controller;

    const-wide/16 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-direct/range {v5 .. v10}, Lcom/leff/midi/event/Controller;-><init>(JIII)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 136
    new-instance v5, Lcom/leff/midi/event/ProgramChange;

    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/opera/RingtoneCompose;->program:I

    invoke-direct {v5, v8, v9, v6, v10}, Lcom/leff/midi/event/ProgramChange;-><init>(JII)V

    invoke-virtual {v4, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 137
    new-instance v5, Lcom/leff/midi/event/ProgramChange;

    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/opera/RingtoneCompose;->program:I

    invoke-direct {v5, v8, v9, v6, v10}, Lcom/leff/midi/event/ProgramChange;-><init>(JII)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 138
    new-instance v5, Lcom/leff/midi/event/ProgramChange;

    const-wide/16 v8, 0x0

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/opera/RingtoneCompose;->program:I

    invoke-direct {v5, v8, v9, v6, v10}, Lcom/leff/midi/event/ProgramChange;-><init>(JII)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 141
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lge/opera/RingtoneCompose;->selectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 142
    .local v24, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lge/opera/RingtoneCompose;->selectChordProgress(Ljava/lang/String;)[I

    move-result-object v20

    .line 143
    .local v20, "cp":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/lge/opera/RingtoneCompose;->getChord([ILjava/lang/String;)[[I

    .line 144
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/lge/opera/RingtoneCompose;->getMelodyScale(Ljava/lang/String;[I)[[I

    move-result-object v26

    .line 145
    .local v26, "melodyScale":[[I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/lge/opera/RingtoneCompose;->getMelody([[ILjava/lang/String;)[I

    move-result-object v25

    .line 148
    .local v25, "melody":[I
    const/16 v16, 0x0

    .line 149
    .local v16, "NoteOffset":I
    const/16 v7, 0x6e

    .line 150
    .local v7, "Velocity":I
    const/16 v5, 0x8

    new-array v0, v5, [I

    move-object/from16 v17, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v17, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v17, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v17, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    aput v6, v17, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v17, v5

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v17, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v17, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    aput v6, v17, v5

    .line 151
    .local v17, "TickofNote":[I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_12b
    const/4 v5, 0x1

    move/from16 v0, v21

    if-lt v0, v5, :cond_131

    .line 161
    return-void

    .line 152
    :cond_131
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_133
    const/4 v5, 0x4

    move/from16 v0, v22

    if-lt v0, v5, :cond_156

    .line 158
    const/4 v9, 0x1

    const/4 v5, 0x0

    aget v10, v25, v5

    const/4 v11, 0x0

    move/from16 v0, v16

    int-to-long v12, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v5, v5, 0x4

    int-to-long v14, v5

    move-object v8, v4

    invoke-virtual/range {v8 .. v15}, Lcom/leff/midi/MidiTrack;->insertNote(IIIJJ)V

    .line 159
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v5, v5, 0x4

    add-int v16, v16, v5

    .line 151
    add-int/lit8 v21, v21, 0x1

    goto :goto_12b

    .line 153
    :cond_156
    const/16 v23, 0x0

    .local v23, "k":I
    :goto_158
    const/16 v5, 0x8

    move/from16 v0, v23

    if-lt v0, v5, :cond_161

    .line 152
    add-int/lit8 v22, v22, 0x1

    goto :goto_133

    .line 154
    :cond_161
    const/4 v5, 0x1

    aget v6, v25, v23

    move/from16 v0, v16

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v10, v10, 0x2

    int-to-long v10, v10

    invoke-virtual/range {v4 .. v11}, Lcom/leff/midi/MidiTrack;->insertNote(IIIJJ)V

    .line 155
    aget v5, v17, v23

    add-int v16, v16, v5

    .line 153
    add-int/lit8 v23, v23, 0x1

    goto :goto_158
.end method

.method Opera_Synth_L1(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 48
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/leff/midi/MidiTrack;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "noteTracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/MidiTrack;>;"
    const-string v5, "RingtoneCompose"

    const-string v6, "Opera Synth L1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v5, Lcom/leff/midi/MidiTrack;

    invoke-direct {v5}, Lcom/leff/midi/MidiTrack;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/leff/midi/MidiTrack;

    .line 169
    .local v4, "mTrack":Lcom/leff/midi/MidiTrack;
    new-instance v5, Lcom/leff/midi/MidiTrack;

    invoke-direct {v5}, Lcom/leff/midi/MidiTrack;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/leff/midi/MidiTrack;

    .line 171
    .local v23, "c1Track":Lcom/leff/midi/MidiTrack;
    new-instance v5, Lcom/leff/midi/MidiTrack;

    invoke-direct {v5}, Lcom/leff/midi/MidiTrack;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    const/4 v5, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/leff/midi/MidiTrack;

    .line 174
    .local v24, "c2Track":Lcom/leff/midi/MidiTrack;
    new-instance v5, Lcom/leff/midi/event/Controller;

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/leff/midi/event/Controller;-><init>(JIII)V

    invoke-virtual {v4, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 175
    new-instance v5, Lcom/leff/midi/event/Controller;

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-direct/range {v5 .. v10}, Lcom/leff/midi/event/Controller;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 176
    new-instance v5, Lcom/leff/midi/event/Controller;

    const-wide/16 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-direct/range {v5 .. v10}, Lcom/leff/midi/event/Controller;-><init>(JIII)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 178
    new-instance v5, Lcom/leff/midi/event/ProgramChange;

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/opera/RingtoneCompose;->program:I

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/leff/midi/event/ProgramChange;-><init>(JII)V

    invoke-virtual {v4, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 179
    new-instance v5, Lcom/leff/midi/event/ProgramChange;

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/opera/RingtoneCompose;->program:I

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/leff/midi/event/ProgramChange;-><init>(JII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 180
    new-instance v5, Lcom/leff/midi/event/ProgramChange;

    const-wide/16 v6, 0x0

    const/4 v8, 0x3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/opera/RingtoneCompose;->program:I

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/leff/midi/event/ProgramChange;-><init>(JII)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 182
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lge/opera/RingtoneCompose;->selectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 183
    .local v37, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lge/opera/RingtoneCompose;->selectChordProgress(Ljava/lang/String;)[I

    move-result-object v32

    .line 185
    .local v32, "cp":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/lge/opera/RingtoneCompose;->getMelodyScale(Ljava/lang/String;[I)[[I

    move-result-object v42

    .line 186
    .local v42, "melodyScale":[[I
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 187
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/lge/opera/RingtoneCompose;->getMelody([[ILjava/lang/String;)[I

    move-result-object v38

    .line 188
    .local v38, "melody":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/lge/opera/RingtoneCompose;->getChord([ILjava/lang/String;)[[I

    move-result-object v25

    .line 190
    .local v25, "chord":[[I
    const/16 v44, 0x0

    .line 194
    .local v44, "restOffset":I
    const/16 v5, 0x1a

    new-array v0, v5, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_90c

    .line 199
    .local v43, "melodyVelocity":[I
    const/16 v5, 0x1a

    new-array v0, v5, [I

    move-object/from16 v40, v0

    fill-array-data v40, :array_944

    .line 204
    .local v40, "melodyOrder":[I
    const/16 v5, 0x1a

    new-array v0, v5, [I

    move-object/from16 v41, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v41, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v41, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aput v6, v41, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x2

    aput v6, v41, v5

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aput v6, v41, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x3

    aput v6, v41, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aput v6, v41, v5

    const/16 v5, 0x8

    .line 205
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x4

    aput v6, v41, v5

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x5

    aput v6, v41, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    aput v6, v41, v5

    const/16 v5, 0xb

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aput v6, v41, v5

    const/16 v5, 0xc

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x6

    aput v6, v41, v5

    const/16 v5, 0xd

    .line 206
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x8

    aput v6, v41, v5

    const/16 v5, 0xe

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aput v6, v41, v5

    const/16 v5, 0xf

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x9

    aput v6, v41, v5

    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x9

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aput v6, v41, v5

    const/16 v5, 0x11

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0xa

    aput v6, v41, v5

    const/16 v5, 0x12

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0xa

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aput v6, v41, v5

    const/16 v5, 0x13

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0xb

    aput v6, v41, v5

    const/16 v5, 0x14

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0xb

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aput v6, v41, v5

    const/16 v5, 0x15

    .line 207
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0xc

    aput v6, v41, v5

    const/16 v5, 0x16

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0xd

    aput v6, v41, v5

    const/16 v5, 0x17

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0xd

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    aput v6, v41, v5

    const/16 v5, 0x18

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0xd

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aput v6, v41, v5

    const/16 v5, 0x19

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0xe

    aput v6, v41, v5

    .line 209
    .local v41, "melodyPosition":[I
    const/16 v5, 0x1a

    new-array v0, v5, [I

    move-object/from16 v39, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v39, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v39, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v39, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v39, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v39, v5

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v39, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v39, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v39, v5

    const/16 v5, 0x8

    .line 210
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v39, v5

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v39, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v39, v5

    const/16 v5, 0xb

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v39, v5

    const/16 v5, 0xc

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v39, v5

    const/16 v5, 0xd

    .line 211
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v39, v5

    const/16 v5, 0xe

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v39, v5

    const/16 v5, 0xf

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v39, v5

    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v39, v5

    const/16 v5, 0x11

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v39, v5

    const/16 v5, 0x12

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v39, v5

    const/16 v5, 0x13

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v39, v5

    const/16 v5, 0x14

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v39, v5

    const/16 v5, 0x15

    .line 212
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v39, v5

    const/16 v5, 0x16

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v39, v5

    const/16 v5, 0x17

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v39, v5

    const/16 v5, 0x18

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v39, v5

    const/16 v5, 0x19

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v39, v5

    .line 214
    .local v39, "melodyDuration":[I
    const/16 v33, 0x0

    .local v33, "i":I
    :goto_364
    const/4 v5, 0x1

    move/from16 v0, v33

    if-lt v0, v5, :cond_736

    .line 225
    const/16 v36, 0xc

    .line 227
    .local v36, "kOctave":I
    const/16 v10, 0x5a

    .line 229
    .local v10, "chord1Velocity":I
    const/16 v5, 0x16

    new-array v0, v5, [I

    move-object/from16 v27, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, v25, v6

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aget-object v6, v25, v6

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aget-object v6, v25, v6

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int v6, v6, v36

    aput v6, v27, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aget-object v6, v25, v6

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    aget-object v6, v25, v6

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    aget-object v6, v25, v6

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int v6, v6, v36

    aput v6, v27, v5

    const/4 v5, 0x6

    .line 230
    const/4 v6, 0x1

    aget-object v6, v25, v6

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    const/4 v5, 0x7

    const/4 v6, 0x1

    aget-object v6, v25, v6

    const/4 v7, 0x3

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0x8

    const/4 v6, 0x1

    aget-object v6, v25, v6

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int v6, v6, v36

    aput v6, v27, v5

    const/16 v5, 0x9

    const/4 v6, 0x1

    aget-object v6, v25, v6

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0xa

    const/4 v6, 0x1

    aget-object v6, v25, v6

    const/4 v7, 0x3

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0xb

    const/4 v6, 0x1

    aget-object v6, v25, v6

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int v6, v6, v36

    aput v6, v27, v5

    const/16 v5, 0xc

    .line 231
    const/4 v6, 0x0

    aget-object v6, v25, v6

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0xd

    const/4 v6, 0x0

    aget-object v6, v25, v6

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0xe

    const/4 v6, 0x0

    aget-object v6, v25, v6

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int v6, v6, v36

    aput v6, v27, v5

    const/16 v5, 0xf

    const/4 v6, 0x0

    aget-object v6, v25, v6

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0x10

    const/4 v6, 0x0

    aget-object v6, v25, v6

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0x11

    const/4 v6, 0x0

    aget-object v6, v25, v6

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int v6, v6, v36

    aput v6, v27, v5

    const/16 v5, 0x12

    .line 232
    const/4 v6, 0x1

    aget-object v6, v25, v6

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int v6, v6, v36

    aput v6, v27, v5

    const/16 v5, 0x13

    const/4 v6, 0x1

    aget-object v6, v25, v6

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int v6, v6, v36

    aput v6, v27, v5

    const/16 v5, 0x14

    const/4 v6, 0x1

    aget-object v6, v25, v6

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int v6, v6, v36

    aput v6, v27, v5

    const/16 v5, 0x15

    const/4 v6, 0x1

    aget-object v6, v25, v6

    const/4 v7, 0x3

    aget v6, v6, v7

    add-int v6, v6, v36

    aput v6, v27, v5

    .line 234
    .local v27, "chord1Melody":[I
    const/16 v5, 0x15

    new-array v0, v5, [I

    move-object/from16 v28, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v28, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    aput v6, v28, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v28, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    aput v6, v28, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aput v6, v28, v5

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x3

    aput v6, v28, v5

    const/4 v5, 0x6

    .line 235
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    aput v6, v28, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aput v6, v28, v5

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x5

    aput v6, v28, v5

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    aput v6, v28, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aput v6, v28, v5

    const/16 v5, 0xb

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x7

    aput v6, v28, v5

    const/16 v5, 0xc

    .line 236
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    aput v6, v28, v5

    const/16 v5, 0xd

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aput v6, v28, v5

    const/16 v5, 0xe

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x9

    aput v6, v28, v5

    const/16 v5, 0xf

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0xa

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    aput v6, v28, v5

    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0xa

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aput v6, v28, v5

    const/16 v5, 0x11

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0xb

    aput v6, v28, v5

    const/16 v5, 0x12

    .line 237
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0xc

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    aput v6, v28, v5

    const/16 v5, 0x13

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0xc

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aput v6, v28, v5

    const/16 v5, 0x14

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0xd

    aput v6, v28, v5

    .line 239
    .local v28, "chord1Position":[I
    const/16 v5, 0x15

    new-array v0, v5, [I

    move-object/from16 v26, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v26, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v26, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v26, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v26, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v26, v5

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v26, v5

    const/4 v5, 0x6

    .line 240
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v26, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v26, v5

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v26, v5

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v26, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v26, v5

    const/16 v5, 0xb

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v26, v5

    const/16 v5, 0xc

    .line 241
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v26, v5

    const/16 v5, 0xd

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v26, v5

    const/16 v5, 0xe

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v26, v5

    const/16 v5, 0xf

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v26, v5

    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v26, v5

    const/16 v5, 0x11

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v26, v5

    const/16 v5, 0x12

    .line 242
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v26, v5

    const/16 v5, 0x13

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v26, v5

    const/16 v5, 0x14

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v26, v5

    .line 243
    .local v26, "chord1Duration":[I
    const/16 v33, 0x0

    :goto_64f
    const/4 v5, 0x1

    move/from16 v0, v33

    if-lt v0, v5, :cond_79f

    .line 260
    const/16 v16, 0x5a

    .line 262
    .local v16, "chord2Velocity":I
    const/16 v5, 0x8

    new-array v0, v5, [I

    move-object/from16 v30, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, v25, v6

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v30, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aget-object v6, v25, v6

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v30, v5

    const/4 v5, 0x2

    const/4 v6, 0x1

    aget-object v6, v25, v6

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v30, v5

    const/4 v5, 0x3

    const/4 v6, 0x1

    aget-object v6, v25, v6

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v30, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    aget-object v6, v25, v6

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v30, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    aget-object v6, v25, v6

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v30, v5

    const/4 v5, 0x6

    const/4 v6, 0x1

    aget-object v6, v25, v6

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v30, v5

    const/4 v5, 0x7

    const/4 v6, 0x1

    aget-object v6, v25, v6

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v30, v5

    .line 264
    .local v30, "chord2Melody":[I
    const/16 v5, 0x8

    new-array v0, v5, [I

    move-object/from16 v31, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v31, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x3

    aput v6, v31, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x5

    aput v6, v31, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x7

    aput v6, v31, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x9

    aput v6, v31, v5

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0xb

    aput v6, v31, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0xc

    aput v6, v31, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0xd

    aput v6, v31, v5

    .line 266
    .local v31, "chord2Position":[I
    const/16 v5, 0x8

    new-array v0, v5, [I

    move-object/from16 v29, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v29, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v29, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v29, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v29, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v29, v5

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v29, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v29, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    aput v6, v29, v5

    .line 267
    .local v29, "chord2Duration":[I
    const/16 v33, 0x0

    :goto_730
    const/4 v5, 0x1

    move/from16 v0, v33

    if-lt v0, v5, :cond_88d

    .line 277
    return-void

    .line 215
    .end local v10    # "chord1Velocity":I
    .end local v16    # "chord2Velocity":I
    .end local v26    # "chord1Duration":[I
    .end local v27    # "chord1Melody":[I
    .end local v28    # "chord1Position":[I
    .end local v29    # "chord2Duration":[I
    .end local v30    # "chord2Melody":[I
    .end local v31    # "chord2Position":[I
    .end local v36    # "kOctave":I
    :cond_736
    const/16 v34, 0x0

    .local v34, "j":I
    :goto_738
    const/4 v5, 0x2

    move/from16 v0, v34

    if-lt v0, v5, :cond_757

    .line 222
    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v6, v38, v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    add-int v8, v8, v44

    int-to-long v8, v8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v11, v11, 0x4

    int-to-long v10, v11

    invoke-virtual/range {v4 .. v11}, Lcom/leff/midi/MidiTrack;->insertNote(IIIJJ)V

    .line 214
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_364

    .line 216
    :cond_757
    const/16 v35, 0x0

    .local v35, "k":I
    :goto_759
    const/16 v5, 0x1a

    move/from16 v0, v35

    if-lt v0, v5, :cond_772

    .line 220
    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v6, v38, v6

    const/4 v7, 0x0

    move/from16 v0, v44

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    int-to-long v10, v11

    invoke-virtual/range {v4 .. v11}, Lcom/leff/midi/MidiTrack;->insertNote(IIIJJ)V

    .line 215
    add-int/lit8 v34, v34, 0x1

    goto :goto_738

    .line 217
    :cond_772
    const/4 v5, 0x1

    aget v6, v40, v35

    add-int/lit8 v6, v6, -0x1

    aget v6, v38, v6

    aget v7, v43, v35

    aget v8, v41, v35

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v9, v9, 0x10

    mul-int v9, v9, v34

    add-int/2addr v8, v9

    int-to-long v8, v8

    aget v11, v39, v35

    int-to-long v10, v11

    invoke-virtual/range {v4 .. v11}, Lcom/leff/midi/MidiTrack;->insertNote(IIIJJ)V

    .line 218
    aget v5, v41, v35

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x10

    mul-int v6, v6, v34

    add-int/2addr v5, v6

    aget v6, v39, v35

    add-int v44, v5, v6

    .line 216
    add-int/lit8 v35, v35, 0x1

    goto :goto_759

    .line 244
    .end local v34    # "j":I
    .end local v35    # "k":I
    .restart local v10    # "chord1Velocity":I
    .restart local v26    # "chord1Duration":[I
    .restart local v27    # "chord1Melody":[I
    .restart local v28    # "chord1Position":[I
    .restart local v36    # "kOctave":I
    :cond_79f
    const/16 v34, 0x0

    .restart local v34    # "j":I
    :goto_7a1
    const/4 v5, 0x2

    move/from16 v0, v34

    if-lt v0, v5, :cond_7aa

    .line 243
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_64f

    .line 245
    :cond_7aa
    const/16 v35, 0x0

    .restart local v35    # "k":I
    :goto_7ac
    const/16 v5, 0x15

    move/from16 v0, v35

    if-lt v0, v5, :cond_7cb

    .line 256
    new-instance v11, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v44

    int-to-long v12, v0

    const/4 v14, 0x2

    const/4 v5, 0x0

    aget-object v5, v25, v5

    const/4 v6, 0x0

    aget v15, v5, v6

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 244
    add-int/lit8 v34, v34, 0x1

    goto :goto_7a1

    .line 246
    :cond_7cb
    const/16 v5, 0x15

    move/from16 v0, v35

    if-ne v0, v5, :cond_852

    .line 247
    new-instance v5, Lcom/leff/midi/event/NoteOn;

    aget v6, v28, v35

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v7, v7, 0x10

    mul-int v7, v7, v34

    add-int/2addr v6, v7

    int-to-long v6, v6

    const/4 v8, 0x2

    aget v9, v27, v35

    invoke-direct/range {v5 .. v10}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 248
    new-instance v5, Lcom/leff/midi/event/NoteOn;

    aget v6, v28, v35

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v7, v7, 0x10

    mul-int v7, v7, v34

    add-int/2addr v6, v7

    int-to-long v6, v6

    const/4 v8, 0x2

    add-int/lit8 v9, v35, 0x1

    aget v9, v27, v9

    invoke-direct/range {v5 .. v10}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 249
    new-instance v11, Lcom/leff/midi/event/NoteOn;

    aget v5, v28, v35

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x10

    mul-int v6, v6, v34

    add-int/2addr v5, v6

    aget v6, v26, v35

    add-int/2addr v5, v6

    int-to-long v12, v5

    const/4 v14, 0x2

    aget v15, v27, v35

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 250
    new-instance v11, Lcom/leff/midi/event/NoteOn;

    aget v5, v28, v35

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x10

    mul-int v6, v6, v34

    add-int/2addr v5, v6

    aget v6, v26, v35

    add-int/2addr v5, v6

    int-to-long v12, v5

    const/4 v14, 0x2

    add-int/lit8 v5, v35, 0x1

    aget v15, v27, v5

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 251
    aget v5, v28, v35

    aget v6, v26, v35

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x10

    mul-int v6, v6, v34

    add-int v44, v5, v6

    .line 253
    :cond_852
    new-instance v5, Lcom/leff/midi/event/NoteOn;

    aget v6, v28, v35

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v7, v7, 0x10

    mul-int v7, v7, v34

    add-int/2addr v6, v7

    int-to-long v6, v6

    const/4 v8, 0x2

    aget v9, v27, v35

    invoke-direct/range {v5 .. v10}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 254
    new-instance v11, Lcom/leff/midi/event/NoteOn;

    aget v5, v28, v35

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x10

    mul-int v6, v6, v34

    add-int/2addr v5, v6

    aget v6, v26, v35

    add-int/2addr v5, v6

    int-to-long v12, v5

    const/4 v14, 0x2

    aget v15, v27, v35

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 245
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_7ac

    .line 268
    .end local v34    # "j":I
    .end local v35    # "k":I
    .restart local v16    # "chord2Velocity":I
    .restart local v29    # "chord2Duration":[I
    .restart local v30    # "chord2Melody":[I
    .restart local v31    # "chord2Position":[I
    :cond_88d
    const/16 v34, 0x0

    .restart local v34    # "j":I
    :goto_88f
    const/4 v5, 0x2

    move/from16 v0, v34

    if-lt v0, v5, :cond_898

    .line 267
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_730

    .line 269
    :cond_898
    const/16 v35, 0x0

    .restart local v35    # "k":I
    :goto_89a
    const/16 v5, 0x8

    move/from16 v0, v35

    if-lt v0, v5, :cond_8be

    .line 274
    new-instance v17, Lcom/leff/midi/event/NoteOn;

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v20, 0x2

    const/4 v5, 0x0

    aget-object v5, v25, v5

    const/4 v6, 0x0

    aget v21, v5, v6

    const/16 v22, 0x0

    invoke-direct/range {v17 .. v22}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 268
    add-int/lit8 v34, v34, 0x1

    goto :goto_88f

    .line 270
    :cond_8be
    new-instance v11, Lcom/leff/midi/event/NoteOn;

    aget v5, v31, v35

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x10

    mul-int v6, v6, v34

    add-int/2addr v5, v6

    int-to-long v12, v5

    const/4 v14, 0x2

    aget v15, v30, v35

    invoke-direct/range {v11 .. v16}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 271
    new-instance v17, Lcom/leff/midi/event/NoteOn;

    aget v5, v31, v35

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x10

    mul-int v6, v6, v34

    add-int/2addr v5, v6

    aget v6, v29, v35

    add-int/2addr v5, v6

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const/16 v20, 0x2

    aget v21, v30, v35

    const/16 v22, 0x0

    invoke-direct/range {v17 .. v22}, Lcom/leff/midi/event/NoteOn;-><init>(JIII)V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 272
    aget v5, v31, v35

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/opera/RingtoneCompose;->TPQN:I

    mul-int/lit8 v6, v6, 0x10

    mul-int v6, v6, v34

    add-int/2addr v5, v6

    aget v6, v29, v35

    add-int v44, v5, v6

    .line 269
    add-int/lit8 v35, v35, 0x1

    goto :goto_89a

    .line 194
    :array_90c
    .array-data 4
        0x6e
        0x67
        0x64
        0x61
        0x6e
        0x68
        0x64
        0x61
        0x68
        0x69
        0x66
        0x60
        0x67
        0x6e
        0x67
        0x64
        0x61
        0x6e
        0x68
        0x64
        0x61
        0x68
        0x69
        0x66
        0x60
        0x67
    .end array-data

    .line 199
    :array_944
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x7
        0x1
        0x2
        0x3
        0x4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x7
    .end array-data
.end method

.method public compose(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 4
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/leff/midi/MidiTrack;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "noteTracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/MidiTrack;>;"
    iget v0, p0, Lcom/lge/opera/RingtoneCompose;->methodNum:I

    packed-switch v0, :pswitch_data_10

    .line 66
    :goto_5
    const/4 v0, 0x1

    return v0

    .line 58
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/lge/opera/RingtoneCompose;->Opera_Synth_L0(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_5

    .line 62
    :pswitch_b
    invoke-virtual {p0, p1, p2}, Lcom/lge/opera/RingtoneCompose;->Opera_Synth_L1(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_5

    .line 55
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method getChord([ILjava/lang/String;)[[I
    .registers 14
    .param p1, "cp"    # [I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 676
    filled-new-array {v6, v8}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 679
    .local v0, "chord":[[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-lt v1, v6, :cond_15

    .line 717
    return-object v0

    .line 680
    :cond_15
    aget v4, p1, v1

    invoke-virtual {p0, v4, p2}, Lcom/lge/opera/RingtoneCompose;->getKeyForHarmonics(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 681
    .local v2, "progressKey":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/lge/opera/RingtoneCompose;->getDiatonicScale(Ljava/lang/String;)[I

    move-result-object v3

    .line 682
    .local v3, "scale":[I
    aget v4, p1, v1

    packed-switch v4, :pswitch_data_9c

    .line 679
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 686
    :pswitch_27
    aget-object v4, v0, v1

    aget v5, v3, v7

    aput v5, v4, v7

    .line 687
    aget-object v4, v0, v1

    aget v5, v3, v6

    aput v5, v4, v9

    .line 688
    aget-object v4, v0, v1

    aget v5, v3, v8

    aput v5, v4, v6

    .line 689
    aget-object v4, v0, v1

    const/4 v5, 0x6

    aget v5, v3, v5

    aput v5, v4, v10

    goto :goto_24

    .line 695
    :pswitch_41
    aget-object v4, v0, v1

    aget v5, v3, v7

    aput v5, v4, v7

    .line 696
    aget-object v4, v0, v1

    aget v5, v3, v6

    add-int/lit8 v5, v5, -0x1

    aput v5, v4, v9

    .line 697
    aget-object v4, v0, v1

    aget v5, v3, v8

    aput v5, v4, v6

    .line 698
    aget-object v4, v0, v1

    const/4 v5, 0x6

    aget v5, v3, v5

    add-int/lit8 v5, v5, -0x1

    aput v5, v4, v10

    goto :goto_24

    .line 702
    :pswitch_5f
    aget-object v4, v0, v1

    aget v5, v3, v7

    aput v5, v4, v7

    .line 703
    aget-object v4, v0, v1

    aget v5, v3, v6

    aput v5, v4, v9

    .line 704
    aget-object v4, v0, v1

    aget v5, v3, v8

    aput v5, v4, v6

    .line 705
    aget-object v4, v0, v1

    const/4 v5, 0x6

    aget v5, v3, v5

    add-int/lit8 v5, v5, -0x1

    aput v5, v4, v10

    goto :goto_24

    .line 709
    :pswitch_7b
    aget-object v4, v0, v1

    aget v5, v3, v7

    aput v5, v4, v7

    .line 710
    aget-object v4, v0, v1

    aget v5, v3, v6

    add-int/lit8 v5, v5, -0x1

    aput v5, v4, v9

    .line 711
    aget-object v4, v0, v1

    aget v5, v3, v8

    add-int/lit8 v5, v5, -0x1

    aput v5, v4, v6

    .line 712
    aget-object v4, v0, v1

    const/4 v5, 0x6

    aget v5, v3, v5

    add-int/lit8 v5, v5, -0x1

    aput v5, v4, v10

    goto :goto_24

    .line 682
    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_41
        :pswitch_41
        :pswitch_27
        :pswitch_5f
        :pswitch_41
        :pswitch_7b
    .end packed-switch
.end method

.method getDiatonicScale(Ljava/lang/String;)[I
    .registers 11
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 650
    const/16 v3, 0x8

    new-array v2, v3, [I

    .line 651
    .local v2, "scale":[I
    const/4 v3, 0x7

    new-array v1, v3, [I

    fill-array-data v1, :array_5c

    .line 652
    .local v1, "rootPitchArray":[I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x41

    aget v0, v1, v3

    .line 653
    .local v0, "rootPitch":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_24

    .line 654
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_6e

    .line 663
    :cond_24
    :goto_24
    :pswitch_24
    aput v0, v2, v4

    .line 664
    aget v3, v2, v4

    add-int/lit8 v3, v3, 0x2

    aput v3, v2, v5

    .line 665
    aget v3, v2, v5

    add-int/lit8 v3, v3, 0x2

    aput v3, v2, v6

    .line 666
    aget v3, v2, v6

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v7

    .line 667
    aget v3, v2, v7

    add-int/lit8 v3, v3, 0x2

    aput v3, v2, v8

    .line 668
    const/4 v3, 0x5

    aget v4, v2, v8

    add-int/lit8 v4, v4, 0x2

    aput v4, v2, v3

    .line 669
    const/4 v3, 0x6

    const/4 v4, 0x5

    aget v4, v2, v4

    add-int/lit8 v4, v4, 0x2

    aput v4, v2, v3

    .line 670
    const/4 v3, 0x7

    const/4 v4, 0x6

    aget v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 672
    return-object v2

    .line 656
    :pswitch_56
    add-int/lit8 v0, v0, 0x1

    .line 657
    goto :goto_24

    .line 659
    :pswitch_59
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    .line 651
    :array_5c
    .array-data 4
        0x2d
        0x2f
        0x30
        0x32
        0x34
        0x35
        0x2b
    .end array-data

    .line 654
    :pswitch_data_6e
    .packed-switch 0x2b
        :pswitch_56
        :pswitch_24
        :pswitch_59
    .end packed-switch
.end method

.method getKeyForHarmonics(ILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "chord"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0xa

    .line 738
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_10

    if-lez p1, :cond_10

    const/4 v2, 0x7

    if-le p1, v2, :cond_11

    .line 748
    :cond_10
    :goto_10
    return-object v1

    .line 742
    :cond_11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-lt v0, v4, :cond_1f

    .line 745
    :cond_14
    if-eq v0, v4, :cond_10

    .line 748
    sget-object v1, Lcom/lge/opera/RingtoneCompose;->chordKeyArray:[[Ljava/lang/String;

    aget-object v1, v1, v0

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    goto :goto_10

    .line 743
    :cond_1f
    sget-object v2, Lcom/lge/opera/RingtoneCompose;->chordKeyArray:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 742
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method getMelody([[ILjava/lang/String;)[I
    .registers 7
    .param p1, "melodyScale"    # [[I
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 730
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [I

    .line 731
    .local v1, "melody":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_e

    .line 734
    return-object v1

    .line 732
    :cond_e
    div-int/lit8 v2, v0, 0x4

    aget-object v2, p1, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    aget v2, v2, v3

    aput v2, v1, v0

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method getMelodyScale(Ljava/lang/String;[I)[[I
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cp"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 721
    const/4 v1, 0x2

    const/16 v2, 0xa

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 723
    .local v0, "melodyScale":[[I
    aget v1, p2, v3

    invoke-static {p1, v1}, Lcom/lge/opera/RingtoneCompose$Major5CPR2_MelodyPitch;->getMelodyPitch(Ljava/lang/String;I)[I

    move-result-object v1

    aput-object v1, v0, v3

    .line 724
    aget v1, p2, v4

    invoke-static {p1, v1}, Lcom/lge/opera/RingtoneCompose$Major5CPR2_MelodyPitch;->getMelodyPitch(Ljava/lang/String;I)[I

    move-result-object v1

    aput-object v1, v0, v4

    .line 726
    return-object v0
.end method

.method selectChordProgress(Ljava/lang/String;)[I
    .registers 10
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 641
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v2, v3, -0x30

    .line 642
    .local v2, "num":I
    const/4 v3, 0x5

    new-array v0, v3, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_4a

    aput-object v3, v0, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_52

    aput-object v3, v0, v7

    new-array v3, v5, [I

    fill-array-data v3, :array_5a

    aput-object v3, v0, v5

    const/4 v3, 0x3

    new-array v4, v5, [I

    fill-array-data v4, :array_62

    aput-object v4, v0, v3

    const/4 v3, 0x4

    new-array v4, v5, [I

    fill-array-data v4, :array_6a

    aput-object v4, v0, v3

    .line 643
    .local v0, "chordProgression":[[I
    new-array v1, v5, [I

    .line 644
    .local v1, "cp":[I
    div-int/lit8 v3, v2, 0x2

    aget-object v3, v0, v3

    aget v3, v3, v6

    aput v3, v1, v6

    .line 645
    div-int/lit8 v3, v2, 0x2

    aget-object v3, v0, v3

    aget v3, v3, v7

    aput v3, v1, v7

    .line 646
    return-object v1

    .line 642
    :array_4a
    .array-data 4
        0x2
        0x1
    .end array-data

    :array_52
    .array-data 4
        0x3
        0x5
    .end array-data

    :array_5a
    .array-data 4
        0x4
        0x1
    .end array-data

    :array_62
    .array-data 4
        0x2
        0x5
    .end array-data

    :array_6a
    .array-data 4
        0x5
        0x1
    .end array-data
.end method

.method selectKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 635
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v0, v1, -0x30

    .line 637
    .local v0, "num":I
    sget-object v1, Lcom/lge/opera/RingtoneCompose;->baseKeyArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method
