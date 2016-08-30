.class public Lcom/leff/midi/event/PitchBend;
.super Lcom/leff/midi/event/ChannelEvent;
.source "PitchBend.java"


# direct methods
.method public constructor <init>(JIII)V
    .registers 15
    .param p1, "tick"    # J
    .param p3, "channel"    # I
    .param p4, "lsb"    # I
    .param p5, "msb"    # I

    .prologue
    .line 7
    const/16 v4, 0xe

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
    .param p6, "lsb"    # I
    .param p7, "msb"    # I

    .prologue
    .line 12
    const/16 v6, 0xe

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
.method public getBendAmount()I
    .registers 4

    .prologue
    .line 27
    iget v2, p0, Lcom/leff/midi/event/PitchBend;->mValue2:I

    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v1, v2, 0x7

    .line 28
    .local v1, "y":I
    iget v0, p0, Lcom/leff/midi/event/PitchBend;->mValue1:I

    .line 30
    .local v0, "x":I
    add-int v2, v1, v0

    return v2
.end method

.method public getLeastSignificantBits()I
    .registers 2

    .prologue
    .line 17
    iget v0, p0, Lcom/leff/midi/event/PitchBend;->mValue1:I

    return v0
.end method

.method public getMostSignificantBits()I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcom/leff/midi/event/PitchBend;->mValue2:I

    return v0
.end method

.method public setBendAmount(I)V
    .registers 3
    .param p1, "amount"    # I

    .prologue
    .line 45
    and-int/lit16 p1, p1, 0x3fff

    .line 46
    and-int/lit8 v0, p1, 0x7f

    iput v0, p0, Lcom/leff/midi/event/PitchBend;->mValue1:I

    .line 47
    shr-int/lit8 v0, p1, 0x7

    iput v0, p0, Lcom/leff/midi/event/PitchBend;->mValue2:I

    .line 48
    return-void
.end method

.method public setLeastSignificantBits(I)V
    .registers 3
    .param p1, "p"    # I

    .prologue
    .line 35
    and-int/lit8 v0, p1, 0x7f

    iput v0, p0, Lcom/leff/midi/event/PitchBend;->mValue1:I

    .line 36
    return-void
.end method

.method public setMostSignificantBits(I)V
    .registers 3
    .param p1, "p"    # I

    .prologue
    .line 40
    and-int/lit8 v0, p1, 0x7f

    iput v0, p0, Lcom/leff/midi/event/PitchBend;->mValue2:I

    .line 41
    return-void
.end method
