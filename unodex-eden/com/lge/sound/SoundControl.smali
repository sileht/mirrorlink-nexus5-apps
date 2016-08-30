.class public Lcom/lge/sound/SoundControl;
.super Ljava/lang/Object;
.source "SoundControl.java"


# static fields
.field private static final KEY_PARAMETER_LGE_PLAYBACK_PITCH:I = 0x138f

.field private static final KEY_PARAMETER_LGE_PLAYBACK_SPEED:I = 0x138e

.field private static final TAG:Ljava/lang/String; = "SoundControl"


# instance fields
.field private final DEBUG:Z

.field private mMediaPlayer:Lcom/lge/media/MediaPlayerEx;


# direct methods
.method public constructor <init>(Lcom/lge/media/MediaPlayerEx;)V
    .registers 5
    .param p1, "mp"    # Lcom/lge/media/MediaPlayerEx;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sound/SoundControl;->DEBUG:Z

    .line 32
    iput-object p1, p0, Lcom/lge/sound/SoundControl;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    .line 34
    const-string v0, "SoundControl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SoundControl MediaPlayer="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method private declared-synchronized getMediaPlayerParam(I)Landroid/os/Parcel;
    .registers 6
    .param p1, "key"    # I

    .prologue
    const/4 v1, 0x0

    .line 187
    monitor-enter p0

    const/4 v0, 0x0

    .line 189
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_3
    iget-object v2, p0, Lcom/lge/sound/SoundControl;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    if-eqz v2, :cond_d

    .line 191
    iget-object v2, p0, Lcom/lge/sound/SoundControl;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    invoke-virtual {v2, p1}, Lcom/lge/media/MediaPlayerEx;->getParcelParameter(I)Landroid/os/Parcel;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_2c
    .catchall {:try_start_3 .. :try_end_c} :catchall_38

    move-result-object v0

    .line 201
    :cond_d
    if-nez v0, :cond_29

    .line 203
    :try_start_f
    const-string v1, "SoundControl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMediaPlayerParam("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_38

    :cond_29
    move-object v1, v0

    .line 206
    :goto_2a
    monitor-exit p0

    return-object v1

    .line 196
    :catch_2c
    move-exception v2

    :try_start_2d
    const-string v2, "SoundControl"

    const-string v3, "Exception occurs calling on getParameter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/sound/SoundControl;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_38

    goto :goto_2a

    .line 187
    :catchall_38
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setMediaPlayerParam(ILandroid/os/Parcel;)Z
    .registers 7
    .param p1, "key"    # I
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 154
    monitor-enter p0

    const/4 v0, 0x0

    .line 157
    .local v0, "result":Z
    :try_start_2
    iget-object v1, p0, Lcom/lge/sound/SoundControl;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    if-eqz v1, :cond_c

    .line 159
    iget-object v1, p0, Lcom/lge/sound/SoundControl;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    invoke-virtual {v1, p1, p2}, Lcom/lge/media/MediaPlayerEx;->setParameter(ILandroid/os/Parcel;)Z
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_b} :catch_2b
    .catchall {:try_start_2 .. :try_end_b} :catchall_38

    move-result v0

    .line 169
    :cond_c
    if-nez v0, :cond_28

    .line 171
    :try_start_e
    const-string v1, "SoundControl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setMediaPlayerParam("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_38

    :cond_28
    move v1, v0

    .line 174
    :goto_29
    monitor-exit p0

    return v1

    .line 164
    :catch_2b
    move-exception v1

    :try_start_2c
    const-string v1, "SoundControl"

    const-string v2, "Exception occurs calling on setParameter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/sound/SoundControl;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_38

    .line 166
    const/4 v1, 0x0

    goto :goto_29

    .line 154
    :catchall_38
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public getPitch()I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 69
    iget-object v2, p0, Lcom/lge/sound/SoundControl;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    if-nez v2, :cond_d

    .line 71
    const-string v2, "SoundControl"

    const-string v3, "getPitch : media player has been released!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_c
    :goto_c
    return v0

    .line 75
    :cond_d
    const/16 v2, 0x138f

    invoke-direct {p0, v2}, Lcom/lge/sound/SoundControl;->getMediaPlayerParam(I)Landroid/os/Parcel;

    move-result-object v1

    .line 76
    .local v1, "parcel":Landroid/os/Parcel;
    if-eqz v1, :cond_c

    .line 80
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .local v0, "key":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 83
    const-string v2, "SoundControl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getPitch : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public getPlaybackSpeed()F
    .registers 6

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 124
    iget-object v2, p0, Lcom/lge/sound/SoundControl;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    if-nez v2, :cond_e

    .line 126
    const-string v2, "SoundControl"

    const-string v3, "getPlaybackSpeed : media player has been released!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_d
    :goto_d
    return v1

    .line 130
    :cond_e
    const/16 v2, 0x138e

    invoke-direct {p0, v2}, Lcom/lge/sound/SoundControl;->getMediaPlayerParam(I)Landroid/os/Parcel;

    move-result-object v0

    .line 131
    .local v0, "parcel":Landroid/os/Parcel;
    if-eqz v0, :cond_d

    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 136
    .local v1, "speed":F
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 138
    const-string v2, "SoundControl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getPlaybackSpeed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public setPitch(I)Z
    .registers 7
    .param p1, "key"    # I

    .prologue
    .line 45
    iget-object v2, p0, Lcom/lge/sound/SoundControl;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    if-nez v2, :cond_d

    .line 47
    const-string v2, "SoundControl"

    const-string v3, "setPitch : media player has been released!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v1, 0x0

    .line 59
    :goto_c
    return v1

    .line 52
    :cond_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 54
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    const-string v2, "SoundControl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setPitch : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/16 v2, 0x138f

    invoke-direct {p0, v2, v0}, Lcom/lge/sound/SoundControl;->setMediaPlayerParam(ILandroid/os/Parcel;)Z

    move-result v1

    .line 57
    .local v1, "result":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_c
.end method

.method public setPlaybackSpeed(F)Z
    .registers 7
    .param p1, "speed"    # F

    .prologue
    .line 98
    iget-object v2, p0, Lcom/lge/sound/SoundControl;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    if-nez v2, :cond_d

    .line 100
    const-string v2, "SoundControl"

    const-string v3, "setPlaybackSpeed : media player has been released!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v1, 0x0

    .line 112
    :goto_c
    return v1

    .line 105
    :cond_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 107
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 108
    const-string v2, "SoundControl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setPlaybackSpeed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/16 v2, 0x138e

    invoke-direct {p0, v2, v0}, Lcom/lge/sound/SoundControl;->setMediaPlayerParam(ILandroid/os/Parcel;)Z

    move-result v1

    .line 110
    .local v1, "result":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_c
.end method
