.class public Landroid/media/AudioPlaybackHook;
.super Ljava/lang/Object;
.source "AudioPlaybackHook.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field public static final STATE_HOOKING:I = 0x2

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioHook-Java"


# instance fields
.field private mBufferSize:I

.field private mFlags:I

.field private mNativeCallbackCookie:J

.field private mNativeHookInJavaObj:J

.field private mState:I

.field private mStateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(II)V
    .registers 6
    .param p1, "bufferSize"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/16 v1, 0x1000

    iput v1, p0, Landroid/media/AudioPlaybackHook;->mBufferSize:I

    .line 97
    iput v2, p0, Landroid/media/AudioPlaybackHook;->mFlags:I

    .line 99
    iput v2, p0, Landroid/media/AudioPlaybackHook;->mState:I

    .line 101
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioPlaybackHook;->mStateLock:Ljava/lang/Object;

    .line 105
    iput p1, p0, Landroid/media/AudioPlaybackHook;->mBufferSize:I

    .line 106
    iput p2, p0, Landroid/media/AudioPlaybackHook;->mFlags:I

    .line 107
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1, p2}, Landroid/media/AudioPlaybackHook;->native_setup(Ljava/lang/Object;II)I

    move-result v0

    .line 108
    .local v0, "initResult":I
    if-eqz v0, :cond_3b

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when initializing native AudioHook object."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioPlaybackHook;->loge(Ljava/lang/String;)V

    .line 116
    :goto_3a
    return-void

    .line 113
    :cond_3b
    iget-object v2, p0, Landroid/media/AudioPlaybackHook;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 114
    const/4 v1, 0x1

    :try_start_3f
    iput v1, p0, Landroid/media/AudioPlaybackHook;->mState:I

    .line 113
    monitor-exit v2

    goto :goto_3a

    :catchall_43
    move-exception v1

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_43

    throw v1
.end method

.method public static native bufferSize(I)I
.end method

.method public static native getMixerOutput()I
.end method

.method public static native getMixerOutputFormat(I)I
.end method

.method public static native getMixerSampleRate(I)I
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 209
    const-string v0, "AudioHook-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ android.media.AudioPlaybackHook ] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 213
    const-string v0, "AudioHook-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ android.media.AudioPlaybackHook ] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method private final native native_finalize()V
.end method

.method private final native native_release()V
.end method

.method private final native native_setup(Ljava/lang/Object;II)I
.end method

.method private final native native_start()I
.end method

.method private final native native_stop()V
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/media/AudioPlaybackHook;->native_finalize()V

    .line 136
    return-void
.end method

.method public getBufferSize()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Landroid/media/AudioPlaybackHook;->mBufferSize:I

    return v0
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Landroid/media/AudioPlaybackHook;->mFlags:I

    return v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 154
    iget v0, p0, Landroid/media/AudioPlaybackHook;->mState:I

    return v0
.end method

.method public release()V
    .registers 3

    .prologue
    .line 121
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioPlaybackHook;->stop()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_11

    .line 126
    :goto_3
    iget-object v1, p0, Landroid/media/AudioPlaybackHook;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_6
    invoke-direct {p0}, Landroid/media/AudioPlaybackHook;->native_release()V

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioPlaybackHook;->mState:I

    .line 126
    monitor-exit v1

    .line 130
    return-void

    .line 126
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v0

    :catch_11
    move-exception v0

    goto :goto_3
.end method

.method public start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v1, p0, Landroid/media/AudioPlaybackHook;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_3
    invoke-direct {p0}, Landroid/media/AudioPlaybackHook;->native_start()I

    move-result v0

    if-nez v0, :cond_c

    .line 171
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioPlaybackHook;->mState:I

    .line 169
    :cond_c
    monitor-exit v1

    .line 174
    return-void

    .line 169
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public stop()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v1, p0, Landroid/media/AudioPlaybackHook;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_3
    invoke-direct {p0}, Landroid/media/AudioPlaybackHook;->native_stop()V

    .line 187
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioPlaybackHook;->mState:I

    .line 185
    monitor-exit v1

    .line 190
    return-void

    .line 185
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method
