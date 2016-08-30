.class Lcom/leff/midi/util/MidiProcessor$1;
.super Ljava/lang/Object;
.source "MidiProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leff/midi/util/MidiProcessor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leff/midi/util/MidiProcessor;


# direct methods
.method constructor <init>(Lcom/leff/midi/util/MidiProcessor;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/leff/midi/util/MidiProcessor$1;->this$0:Lcom/leff/midi/util/MidiProcessor;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/leff/midi/util/MidiProcessor$1;->this$0:Lcom/leff/midi/util/MidiProcessor;

    # invokes: Lcom/leff/midi/util/MidiProcessor;->process()V
    invoke-static {v0}, Lcom/leff/midi/util/MidiProcessor;->access$0(Lcom/leff/midi/util/MidiProcessor;)V

    .line 58
    return-void
.end method
