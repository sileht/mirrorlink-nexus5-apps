.class Landroid/media/RingtoneEx$1;
.super Ljava/lang/Object;
.source "RingtoneEx.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RingtoneEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RingtoneEx;


# direct methods
.method constructor <init>(Landroid/media/RingtoneEx;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final mAllowRemote_aroundBody6(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;)Z
    .registers 3

    .prologue
    .line 802
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAllowRemote(Landroid/media/RingtoneEx;)Z

    move-result v0

    return v0
.end method

.method private static final mAllowRemote_aroundBody7$advice(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx$1;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 893
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mAllowRemote(Landroid/media/Ringtone;)Z

    move-result v0

    return v0
.end method

.method private static final mAudioAttributes_aroundBody16(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;
    .registers 3

    .prologue
    .line 811
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioAttributes(Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioAttributes_aroundBody17$advice(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx$1;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 881
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mAudioAttributes(Landroid/media/Ringtone;)Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method private static final mIsLooping_aroundBody10(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;)Z
    .registers 3

    .prologue
    .line 806
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mIsLooping(Landroid/media/RingtoneEx;)Z

    move-result v0

    return v0
.end method

.method private static final mIsLooping_aroundBody11$advice(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx$1;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 917
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mIsLooping(Landroid/media/Ringtone;)Z

    move-result v0

    return v0
.end method

.method private static final mLocalPlayer_aroundBody0(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 790
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody1$advice(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx$1;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 873
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mLocalPlayer(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody2(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 794
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody3$advice(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx$1;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 873
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mLocalPlayer(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody4(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;)V
    .registers 3

    .prologue
    .line 795
    invoke-static {p1, p2}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldSetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private static final mLocalPlayer_aroundBody5$advice(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 7
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx$1;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "mLocalPlayer"    # Landroid/media/MediaPlayer;
    .param p3, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p4, "obj"    # Landroid/media/RingtoneEx;
    .param p5, "val"    # Landroid/media/MediaPlayer;
    .param p6, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 877
    invoke-static {p4, p5}, Landroid/media/Ringtone;->ajc$set$mLocalPlayer(Landroid/media/Ringtone;Landroid/media/MediaPlayer;)V

    .line 878
    return-void
.end method

.method private static final mPlaybackSettingsLock_aroundBody8(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 805
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mPlaybackSettingsLock(Landroid/media/RingtoneEx;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final mPlaybackSettingsLock_aroundBody9$advice(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx$1;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 925
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mPlaybackSettingsLock(Landroid/media/Ringtone;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final mRemotePlayer_aroundBody14(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;)Landroid/media/IRingtonePlayer;
    .registers 3

    .prologue
    .line 811
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mRemotePlayer(Landroid/media/RingtoneEx;)Landroid/media/IRingtonePlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mRemotePlayer_aroundBody15$advice(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/IRingtonePlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx$1;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 905
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mRemotePlayer(Landroid/media/Ringtone;)Landroid/media/IRingtonePlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mVolume_aroundBody12(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;)F
    .registers 3

    .prologue
    .line 807
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mVolume(Landroid/media/RingtoneEx;)F

    move-result v0

    return v0
.end method

.method private static final mVolume_aroundBody13$advice(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)F
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx$1;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 921
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mVolume(Landroid/media/Ringtone;)F

    move-result v0

    return v0
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 13
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 782
    packed-switch p2, :pswitch_data_dc

    .line 790
    iget-object v1, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v3

    invoke-static {p0, v1, v3, v1, v2}, Landroid/media/RingtoneEx$1;->mLocalPlayer_aroundBody1$advice(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 791
    iget-object v1, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    # getter for: Landroid/media/RingtoneEx;->mErrorCheck:I
    invoke-static {v1}, Landroid/media/RingtoneEx;->access$0(Landroid/media/RingtoneEx;)I

    move-result v1

    if-nez v1, :cond_4d

    .line 792
    const-string v1, "RingtoneEx"

    const-string v3, "LocalPlayer play a default ringtone."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v1, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    invoke-static {v1, v0}, Landroid/media/RingtoneEx;->access$1(Landroid/media/RingtoneEx;I)V

    .line 794
    iget-object v0, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    invoke-static {p0, v0, v1, v0, v2}, Landroid/media/RingtoneEx$1;->mLocalPlayer_aroundBody3$advice(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 795
    iget-object v1, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v3

    move-object v0, p0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/RingtoneEx$1;->mLocalPlayer_aroundBody5$advice(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 797
    iget-object v0, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    invoke-virtual {v0}, Landroid/media/RingtoneEx;->playFallbackRingtone()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 798
    iget-object v0, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/RingtoneEx;->access$1(Landroid/media/RingtoneEx;I)V

    .line 818
    :cond_4d
    :goto_4d
    const/4 v0, 0x0

    :cond_4e
    :goto_4e
    return v0

    .line 784
    :pswitch_4f
    iget-object v1, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    # getter for: Landroid/media/RingtoneEx;->mErrorCheck:I
    invoke-static {v1}, Landroid/media/RingtoneEx;->access$0(Landroid/media/RingtoneEx;)I

    move-result v1

    if-nez v1, :cond_4e

    .line 785
    iget-object v1, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    invoke-static {v1, v0}, Landroid/media/RingtoneEx;->access$1(Landroid/media/RingtoneEx;I)V

    .line 786
    iget-object v1, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    invoke-virtual {v1}, Landroid/media/RingtoneEx;->stop()V

    goto :goto_4e

    .line 802
    :cond_62
    iget-object v0, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    invoke-static {p0, v0, v1, v0, v2}, Landroid/media/RingtoneEx$1;->mAllowRemote_aroundBody7$advice(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 805
    iget-object v0, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    invoke-static {p0, v0, v1, v0, v2}, Landroid/media/RingtoneEx$1;->mPlaybackSettingsLock_aroundBody9$advice(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 806
    :try_start_79
    iget-object v0, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v0, v3}, Landroid/media/RingtoneEx$1;->mIsLooping_aroundBody11$advice(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v5

    .line 807
    .local v5, "looping":Z
    iget-object v0, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v0, v3}, Landroid/media/RingtoneEx$1;->mVolume_aroundBody13$advice(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)F

    move-result v4

    .line 805
    .local v4, "volume":F
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_79 .. :try_end_90} :catchall_d8

    .line 810
    :try_start_90
    const-string v0, "RingtoneEx"

    const-string v1, "RemotePlayer play a default ringtone."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v0, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v0, v2}, Landroid/media/RingtoneEx$1;->mRemotePlayer_aroundBody15$advice(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/IRingtonePlayer;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    invoke-static {v1}, Landroid/media/RingtoneEx;->access$2(Landroid/media/RingtoneEx;)Landroid/os/Binder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    # invokes: Landroid/media/RingtoneEx;->getDefaultPath()Ljava/lang/String;
    invoke-static {v2}, Landroid/media/RingtoneEx;->access$3(Landroid/media/RingtoneEx;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {p0, v3, v6, v3, v8}, Landroid/media/RingtoneEx$1;->mAudioAttributes_aroundBody17$advice(Landroid/media/RingtoneEx$1;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-interface/range {v0 .. v5}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_c0} :catch_c1

    goto :goto_4d

    .line 812
    :catch_c1
    move-exception v7

    .line 813
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "RingtoneEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problem playing default ringtone: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    .line 805
    .end local v4    # "volume":F
    .end local v5    # "looping":Z
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_d8
    move-exception v0

    :try_start_d9
    monitor-exit v1
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    throw v0

    .line 782
    nop

    :pswitch_data_dc
    .packed-switch 0x64
        :pswitch_4f
    .end packed-switch
.end method
