.class public Lcom/leff/midi/event/NoteOff;
.super Lcom/leff/midi/event/ChannelEvent;
.source "NoteOff.java"


# direct methods
.method public constructor <init>(JIII)V
    .registers 15
    .param p1, "tick"    # J
    .param p3, "channel"    # I
    .param p4, "note"    # I
    .param p5, "velocity"    # I

    .prologue
    .line 7
    const/16 v4, 0x8

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/leff/midi/event/ChannelEvent;-><init>(JIIII)V

    .line 8
    return-void
.end method

.method public constructor <init>(JJIII)V
    .registers 19
    .param p1, "tick"    # J
    .param p3, "delta"    # J
    .param p5, "channel"    # I
    .param p6, "note"    # I
    .param p7, "velocity"    # I

    .prologue
    .line 12
    const/16 v6, 0x8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/leff/midi/event/ChannelEvent;-><init>(JJIIII)V

    .line 13
    return-void
.end method


# virtual methods
.method public getNoteValue()I
    .registers 2

    .prologue
    .line 17
    iget v0, p0, Lcom/leff/midi/event/NoteOff;->mValue1:I

    return v0
.end method

.method public getVelocity()I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcom/leff/midi/event/NoteOff;->mValue2:I

    return v0
.end method

.method public setNoteValue(I)V
    .registers 2
    .param p1, "p"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/leff/midi/event/NoteOff;->mValue1:I

    .line 28
    return-void
.end method

.method public setVelocity(I)V
    .registers 2
    .param p1, "v"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/leff/midi/event/NoteOff;->mValue2:I

    .line 33
    return-void
.end method
