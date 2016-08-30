.class Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;
.super Ljava/lang/Object;
.source "MidiProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leff/midi/util/MidiProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MidiTrackEventQueue"
.end annotation


# instance fields
.field private mEventsToDispatch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/leff/midi/event/MidiEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/leff/midi/event/MidiEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mNext:Lcom/leff/midi/event/MidiEvent;

.field private mTrack:Lcom/leff/midi/MidiTrack;

.field final synthetic this$0:Lcom/leff/midi/util/MidiProcessor;


# direct methods
.method public constructor <init>(Lcom/leff/midi/util/MidiProcessor;Lcom/leff/midi/MidiTrack;)V
    .registers 4
    .param p2, "track"    # Lcom/leff/midi/MidiTrack;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->this$0:Lcom/leff/midi/util/MidiProcessor;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p2, p0, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->mTrack:Lcom/leff/midi/MidiTrack;

    .line 325
    iget-object v0, p0, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->mTrack:Lcom/leff/midi/MidiTrack;

    invoke-virtual {v0}, Lcom/leff/midi/MidiTrack;->getEvents()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->mIterator:Ljava/util/Iterator;

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->mEventsToDispatch:Ljava/util/ArrayList;

    .line 328
    iget-object v0, p0, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 330
    iget-object v0, p0, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leff/midi/event/MidiEvent;

    iput-object v0, p0, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->mNext:Lcom/leff/midi/event/MidiEvent;

    .line 332
    :cond_2c
    return-void
.end method


# virtual methods
.method public getNextEventsUpToTick(D)Ljava/util/ArrayList;
    .registers 6
    .param p1, "tick"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/leff/midi/event/MidiEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->mEventsToDispatch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 339
    :goto_5
    iget-object v0, p0, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->mNext:Lcom/leff/midi/event/MidiEvent;

    if-nez v0, :cond_c

    .line 361
    :cond_9
    iget-object v0, p0, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->mEventsToDispatch:Ljava/util/ArrayList;

    return-object v0

    .line 342
    :cond_c
    iget-object v0, p0, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->mNext:Lcom/leff/midi/event/MidiEvent;

    invoke-virtual {v0}, Lcom/leff/midi/event/MidiEvent;->getTick()J

    move-result-wide v0

    long-to-double v0, v0

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_9

    .line 344
    iget-object v0, p0, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->mEventsToDispatch:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->mNext:Lcom/leff/midi/event/MidiEvent;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v0, p0, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 348
    iget-object v0, p0, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leff/midi/event/MidiEvent;

    iput-object v0, p0, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->mNext:Lcom/leff/midi/event/MidiEvent;

    goto :goto_5

    .line 352
    :cond_31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->mNext:Lcom/leff/midi/event/MidiEvent;

    goto :goto_5
.end method

.method public hasMoreEvents()Z
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/leff/midi/util/MidiProcessor$MidiTrackEventQueue;->mNext:Lcom/leff/midi/event/MidiEvent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
