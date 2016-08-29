.class public Lcom/lge/mirrorlink/misc/SoundGenerator;
.super Ljava/lang/Object;
.source "SoundGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/misc/SoundGenerator$PlaybackThread;
    }
.end annotation


# instance fields
.field protected mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/misc/SoundGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 15
    const v0, 0x7f050028

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mirrorlink/misc/SoundGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 14
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 2

    .prologue
    .line 19
    new-instance v0, Lcom/lge/mirrorlink/misc/SoundGenerator$PlaybackThread;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/misc/SoundGenerator$PlaybackThread;-><init>(Lcom/lge/mirrorlink/misc/SoundGenerator;)V

    invoke-virtual {v0}, Lcom/lge/mirrorlink/misc/SoundGenerator$PlaybackThread;->start()V

    .line 18
    return-void
.end method
