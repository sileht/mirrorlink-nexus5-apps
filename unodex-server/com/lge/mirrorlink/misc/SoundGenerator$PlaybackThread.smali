.class Lcom/lge/mirrorlink/misc/SoundGenerator$PlaybackThread;
.super Ljava/lang/Thread;
.source "SoundGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/misc/SoundGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlaybackThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/misc/SoundGenerator;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/misc/SoundGenerator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/misc/SoundGenerator;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lge/mirrorlink/misc/SoundGenerator$PlaybackThread;->this$0:Lcom/lge/mirrorlink/misc/SoundGenerator;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 27
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 31
    const-wide/16 v2, 0x1f4

    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_10

    .line 37
    :goto_8
    iget-object v1, p0, Lcom/lge/mirrorlink/misc/SoundGenerator$PlaybackThread;->this$0:Lcom/lge/mirrorlink/misc/SoundGenerator;

    iget-object v1, v1, Lcom/lge/mirrorlink/misc/SoundGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 25
    return-void

    .line 32
    :catch_10
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8
.end method
