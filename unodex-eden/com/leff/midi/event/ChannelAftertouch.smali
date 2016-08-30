.class public Lcom/leff/midi/event/ChannelAftertouch;
.super Lcom/leff/midi/event/ChannelEvent;
.source "ChannelAftertouch.java"


# direct methods
.method public constructor <init>(JII)V
    .registers 14
    .param p1, "tick"    # J
    .param p3, "channel"    # I
    .param p4, "amount"    # I

    .prologue
    .line 7
    const/16 v4, 0xd

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/leff/midi/event/ChannelEvent;-><init>(JIIII)V

    .line 8
    return-void
.end method

.method public constructor <init>(JJII)V
    .registers 18
    .param p1, "tick"    # J
    .param p3, "delta"    # J
    .param p5, "channel"    # I
    .param p6, "amount"    # I

    .prologue
    .line 12
    const/16 v6, 0xd

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/leff/midi/event/ChannelEvent;-><init>(JJIIII)V

    .line 13
    return-void
.end method


# virtual methods
.method public getAmount()I
    .registers 2

    .prologue
    .line 17
    iget v0, p0, Lcom/leff/midi/event/ChannelAftertouch;->mValue1:I

    return v0
.end method

.method public setAmount(I)V
    .registers 2
    .param p1, "p"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/leff/midi/event/ChannelAftertouch;->mValue1:I

    .line 23
    return-void
.end method
