.class Lcom/lge/media/SmartRingtone$1;
.super Ljava/lang/Object;
.source "SmartRingtone.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/media/SmartRingtone;->setMediaPlayer(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/media/SmartRingtone;


# direct methods
.method constructor <init>(Lcom/lge/media/SmartRingtone;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/media/SmartRingtone$1;->this$0:Lcom/lge/media/SmartRingtone;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 110
    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/lge/media/SmartRingtone$1;->this$0:Lcom/lge/media/SmartRingtone;

    invoke-virtual {v0}, Lcom/lge/media/SmartRingtone;->restoreVolumeAfterStop()V

    .line 112
    return-void
.end method
