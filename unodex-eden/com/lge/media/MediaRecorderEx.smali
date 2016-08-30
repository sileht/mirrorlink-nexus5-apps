.class public Lcom/lge/media/MediaRecorderEx;
.super Landroid/media/MediaRecorder;
.source "MediaRecorderEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/media/MediaRecorderEx$LGAudioSource;
    }
.end annotation


# static fields
.field public static final MEDIA_RECORDER_TARS_STATE_INFO:I = 0x3e7

.field public static final OUTPUTFORMAT_AAC_TARS:I = 0x63

.field private static final TAG:Ljava/lang/String; = "LGMediaRecorder"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/media/MediaRecorder;-><init>()V

    .line 33
    const-string v0, "LGMediaRecorder"

    const-string v1, "MediaRecorder constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method private native native_audiozoom()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_changeMaxFileSize(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setAudioZoomExceptionCase()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setOutputFileFD(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setParameter(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setRecordAngle(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setRecordZoomEnable(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method


# virtual methods
.method public changeMaxFileSize(J)V
    .registers 6
    .param p1, "subsize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 197
    const-string v0, "LGMediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeMaxFileSize : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/lge/media/MediaRecorderEx;->native_changeMaxFileSize(J)V

    .line 199
    return-void
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/media/MediaRecorder;->finalize()V

    return-void
.end method

.method public pause()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/lge/media/MediaRecorderEx;->native_pause()V

    .line 93
    const-string v0, "LGMediaRecorder"

    const-string v1, "mediarecorder pause"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public resume()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/lge/media/MediaRecorderEx;->start()V

    .line 104
    const-string v0, "LGMediaRecorder"

    const-string v1, "Call start() in resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public setAudioZoomExceptionCase()V
    .registers 3

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lge/media/MediaRecorderEx;->native_setAudioZoomExceptionCase()V

    .line 57
    const-string v0, "LGMediaRecorder"

    const-string v1, "MediaRecorder setAudioZoomExceptionCase"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public setAudioZooming()V
    .registers 3

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lge/media/MediaRecorderEx;->native_audiozoom()V

    .line 46
    const-string v0, "LGMediaRecorder"

    const-string v1, "MediaRecorder setAudioZooming"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public setOutputFileFD(Ljava/io/FileDescriptor;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 129
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1a

    .line 130
    const-string v0, "LGMediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "mediarecorder setOutputFileFD:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    .line 131
    invoke-direct/range {v0 .. v5}, Lcom/lge/media/MediaRecorderEx;->native_setOutputFileFD(Ljava/io/FileDescriptor;JJ)V

    .line 132
    return-void
.end method

.method public setParameter(Ljava/lang/String;)V
    .registers 5
    .param p1, "nameValuePair"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 115
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_18

    .line 116
    const-string v0, "LGMediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mediarecorder setParameter:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_18
    invoke-direct {p0, p1}, Lcom/lge/media/MediaRecorderEx;->native_setParameter(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public setProfile(Lcom/lge/media/CamcorderProfileEx;)V
    .registers 4
    .param p1, "profile"    # Lcom/lge/media/CamcorderProfileEx;

    .prologue
    .line 143
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->fileFormat:I

    invoke-virtual {p0, v0}, Lcom/lge/media/MediaRecorderEx;->setOutputFormat(I)V

    .line 144
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->videoFrameRate:I

    invoke-virtual {p0, v0}, Lcom/lge/media/MediaRecorderEx;->setVideoFrameRate(I)V

    .line 145
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    iget v1, p1, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/lge/media/MediaRecorderEx;->setVideoSize(II)V

    .line 146
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->videoBitRate:I

    invoke-virtual {p0, v0}, Lcom/lge/media/MediaRecorderEx;->setVideoEncodingBitRate(I)V

    .line 147
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->videoCodec:I

    invoke-virtual {p0, v0}, Lcom/lge/media/MediaRecorderEx;->setVideoEncoder(I)V

    .line 148
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->quality:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_27

    .line 149
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->quality:I

    const/16 v1, 0x3f4

    if-le v0, v1, :cond_3f

    .line 152
    :cond_27
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->audioCodec:I

    if-ltz v0, :cond_3f

    .line 153
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->audioBitRate:I

    invoke-virtual {p0, v0}, Lcom/lge/media/MediaRecorderEx;->setAudioEncodingBitRate(I)V

    .line 154
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->audioChannels:I

    invoke-virtual {p0, v0}, Lcom/lge/media/MediaRecorderEx;->setAudioChannels(I)V

    .line 155
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->audioSampleRate:I

    invoke-virtual {p0, v0}, Lcom/lge/media/MediaRecorderEx;->setAudioSamplingRate(I)V

    .line 156
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->audioCodec:I

    invoke-virtual {p0, v0}, Lcom/lge/media/MediaRecorderEx;->setAudioEncoder(I)V

    .line 158
    :cond_3f
    return-void
.end method

.method public setRecordAngle(I)V
    .registers 4
    .param p1, "angle"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/lge/media/MediaRecorderEx;->native_setRecordAngle(I)V

    .line 69
    const-string v0, "LGMediaRecorder"

    const-string v1, "MediaRecorder setRecordAngle"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public setRecordZoomEnable(II)V
    .registers 5
    .param p1, "angle"    # I
    .param p2, "zoommode"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/lge/media/MediaRecorderEx;->native_setRecordZoomEnable(II)V

    .line 82
    const-string v0, "LGMediaRecorder"

    const-string v1, "MediaRecorder setRecordZoomEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method
