.class public Landroid/media/RingtoneEx$PrivateAccess;
.super Ljava/lang/Object;
.source "RingtoneEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RingtoneEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivateAccess"
.end annotation

.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Landroid/media/RingtoneEx$PrivateAccess;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 857
    :try_start_0
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Landroid/media/RingtoneEx$PrivateAccess;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$android_media_RingtoneEx$PrivateAccess$1$dfd8214dproceed(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 4
    .param p0, "this"    # Landroid/media/RingtoneEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 872
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic ajc$around$android_media_RingtoneEx$PrivateAccess$10$5c34a259proceed(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/os/Binder;
    .registers 4
    .param p0, "this"    # Landroid/media/RingtoneEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 908
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic ajc$around$android_media_RingtoneEx$PrivateAccess$11$b6e1204eproceed(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p0, "this"    # Landroid/media/RingtoneEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 912
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$android_media_RingtoneEx$PrivateAccess$12$b6d91ef8proceed(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .param p0, "this"    # Landroid/media/RingtoneEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 916
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$android_media_RingtoneEx$PrivateAccess$13$c54d2de2proceed(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)F
    .registers 4
    .param p0, "this"    # Landroid/media/RingtoneEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 920
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->floatValue(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$android_media_RingtoneEx$PrivateAccess$14$f8c628eeproceed(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;
    .registers 4
    .param p0, "this"    # Landroid/media/RingtoneEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 924
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic ajc$around$android_media_RingtoneEx$PrivateAccess$2$6d91299dproceed(Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .param p0, "this"    # Landroid/media/RingtoneEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 876
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$android_media_RingtoneEx$PrivateAccess$3$9372cc16proceed(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;
    .registers 4
    .param p0, "this"    # Landroid/media/RingtoneEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 880
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    return-object v0
.end method

.method static synthetic ajc$around$android_media_RingtoneEx$PrivateAccess$4$e2f84354proceed(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 4
    .param p0, "this"    # Landroid/media/RingtoneEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 884
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic ajc$around$android_media_RingtoneEx$PrivateAccess$5$3011ff64proceed(Landroid/media/RingtoneEx;Landroid/net/Uri;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .param p0, "this"    # Landroid/media/RingtoneEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 888
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$android_media_RingtoneEx$PrivateAccess$6$f8b609f3proceed(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .param p0, "this"    # Landroid/media/RingtoneEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 892
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$android_media_RingtoneEx$PrivateAccess$7$19bf89f4proceed(Lorg/aspectj/runtime/internal/AroundClosure;)[Ljava/lang/String;
    .registers 2
    .param p0, "this"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 896
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ajc$around$android_media_RingtoneEx$PrivateAccess$8$3e891904proceed(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioManager;
    .registers 4
    .param p0, "this"    # Landroid/media/RingtoneEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 900
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic ajc$around$android_media_RingtoneEx$PrivateAccess$9$920bbadfproceed(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/IRingtonePlayer;
    .registers 4
    .param p0, "this"    # Landroid/media/RingtoneEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 904
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$MEDIA_COLUMNS()[Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/media/RingtoneEx;->ajc$get$MEDIA_COLUMNS()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAllowRemote(Landroid/media/RingtoneEx;)Z
    .registers 2

    invoke-static {p0}, Landroid/media/RingtoneEx;->ajc$get$mAllowRemote(Landroid/media/RingtoneEx;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioAttributes(Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;
    .registers 2

    invoke-static {p0}, Landroid/media/RingtoneEx;->ajc$get$mAudioAttributes(Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioManager(Landroid/media/RingtoneEx;)Landroid/media/AudioManager;
    .registers 2

    invoke-static {p0}, Landroid/media/RingtoneEx;->ajc$get$mAudioManager(Landroid/media/RingtoneEx;)Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mIsLooping(Landroid/media/RingtoneEx;)Z
    .registers 2

    invoke-static {p0}, Landroid/media/RingtoneEx;->ajc$get$mIsLooping(Landroid/media/RingtoneEx;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 2

    invoke-static {p0}, Landroid/media/RingtoneEx;->ajc$get$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mPlaybackSettingsLock(Landroid/media/RingtoneEx;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Landroid/media/RingtoneEx;->ajc$get$mPlaybackSettingsLock(Landroid/media/RingtoneEx;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mRemotePlayer(Landroid/media/RingtoneEx;)Landroid/media/IRingtonePlayer;
    .registers 2

    invoke-static {p0}, Landroid/media/RingtoneEx;->ajc$get$mRemotePlayer(Landroid/media/RingtoneEx;)Landroid/media/IRingtonePlayer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;)Landroid/net/Uri;
    .registers 2

    invoke-static {p0}, Landroid/media/RingtoneEx;->ajc$get$mUri(Landroid/media/RingtoneEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mVolume(Landroid/media/RingtoneEx;)F
    .registers 2

    invoke-static {p0}, Landroid/media/RingtoneEx;->ajc$get$mVolume(Landroid/media/RingtoneEx;)F

    move-result v0

    return v0
.end method

.method public static ajc$interFieldInit$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$MEDIA_COLUMNS()V
    .registers 0

    .prologue
    .line 863
    return-void
.end method

.method public static ajc$interFieldInit$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAllowRemote(Landroid/media/RingtoneEx;)V
    .registers 1

    .prologue
    .line 862
    return-void
.end method

.method public static ajc$interFieldInit$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioAttributes(Landroid/media/RingtoneEx;)V
    .registers 1

    .prologue
    .line 860
    return-void
.end method

.method public static ajc$interFieldInit$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioManager(Landroid/media/RingtoneEx;)V
    .registers 1

    .prologue
    .line 864
    return-void
.end method

.method public static ajc$interFieldInit$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mIsLooping(Landroid/media/RingtoneEx;)V
    .registers 1

    .prologue
    .line 866
    return-void
.end method

.method public static ajc$interFieldInit$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)V
    .registers 1

    .prologue
    .line 859
    return-void
.end method

.method public static ajc$interFieldInit$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mPlaybackSettingsLock(Landroid/media/RingtoneEx;)V
    .registers 1

    .prologue
    .line 868
    return-void
.end method

.method public static ajc$interFieldInit$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mRemotePlayer(Landroid/media/RingtoneEx;)V
    .registers 1

    .prologue
    .line 865
    return-void
.end method

.method public static ajc$interFieldInit$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;)V
    .registers 1

    .prologue
    .line 861
    return-void
.end method

.method public static ajc$interFieldInit$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mVolume(Landroid/media/RingtoneEx;)V
    .registers 1

    .prologue
    .line 867
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$MEDIA_COLUMNS([Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroid/media/RingtoneEx;->ajc$set$MEDIA_COLUMNS([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAllowRemote(Landroid/media/RingtoneEx;Z)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/RingtoneEx;->ajc$set$mAllowRemote(Landroid/media/RingtoneEx;Z)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioAttributes(Landroid/media/RingtoneEx;Landroid/media/AudioAttributes;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/RingtoneEx;->ajc$set$mAudioAttributes(Landroid/media/RingtoneEx;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioManager(Landroid/media/RingtoneEx;Landroid/media/AudioManager;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/RingtoneEx;->ajc$set$mAudioManager(Landroid/media/RingtoneEx;Landroid/media/AudioManager;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mIsLooping(Landroid/media/RingtoneEx;Z)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/RingtoneEx;->ajc$set$mIsLooping(Landroid/media/RingtoneEx;Z)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/RingtoneEx;->ajc$set$mLocalPlayer(Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mPlaybackSettingsLock(Landroid/media/RingtoneEx;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/RingtoneEx;->ajc$set$mPlaybackSettingsLock(Landroid/media/RingtoneEx;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mRemotePlayer(Landroid/media/RingtoneEx;Landroid/media/IRingtonePlayer;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/RingtoneEx;->ajc$set$mRemotePlayer(Landroid/media/RingtoneEx;Landroid/media/IRingtonePlayer;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;Landroid/net/Uri;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/RingtoneEx;->ajc$set$mUri(Landroid/media/RingtoneEx;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mVolume(Landroid/media/RingtoneEx;F)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/RingtoneEx;->ajc$set$mVolume(Landroid/media/RingtoneEx;F)V

    return-void
.end method

.method public static ajc$interMethod$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$applyPlaybackProperties_sync(Landroid/media/RingtoneEx;)V
    .registers 1
    .param p0, "ajc$this_"    # Landroid/media/RingtoneEx;

    .prologue
    .line 934
    invoke-virtual {p0}, Landroid/media/Ringtone;->ajc$privMethod$android_media_RingtoneEx$PrivateAccess$android_media_Ringtone$applyPlaybackProperties_sync()V

    .line 935
    return-void
.end method

.method public static ajc$interMethod$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$destroyLocalPlayer(Landroid/media/RingtoneEx;)V
    .registers 4
    .param p0, "ajc$this_"    # Landroid/media/RingtoneEx;

    .prologue
    .line 870
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance v2, Landroid/media/RingtoneEx$PrivateAccess$AjcClosure1;

    invoke-direct {v2, v1}, Landroid/media/RingtoneEx$PrivateAccess$AjcClosure1;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$around$android_media_RingtoneEx$PrivateAccess$11$b6e1204e(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method public static ajc$interMethod$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$startLocalPlayer(Landroid/media/RingtoneEx;)V
    .registers 1
    .param p0, "ajc$this_"    # Landroid/media/RingtoneEx;

    .prologue
    .line 938
    invoke-virtual {p0}, Landroid/media/Ringtone;->ajc$privMethod$android_media_RingtoneEx$PrivateAccess$android_media_Ringtone$startLocalPlayer()V

    .line 939
    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$applyPlaybackProperties_sync(Landroid/media/RingtoneEx;)V
    .registers 1
    .param p0, "ajc$this_"    # Landroid/media/RingtoneEx;

    .prologue
    invoke-virtual {p0}, Landroid/media/RingtoneEx;->ajc$interMethodDispatch2$android_media_RingtoneEx$applyPlaybackProperties_sync()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$destroyLocalPlayer(Landroid/media/RingtoneEx;)V
    .registers 1
    .param p0, "ajc$this_"    # Landroid/media/RingtoneEx;

    .prologue
    invoke-virtual {p0}, Landroid/media/RingtoneEx;->ajc$interMethodDispatch2$android_media_RingtoneEx$destroyLocalPlayer()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$startLocalPlayer(Landroid/media/RingtoneEx;)V
    .registers 1
    .param p0, "ajc$this_"    # Landroid/media/RingtoneEx;

    .prologue
    invoke-virtual {p0}, Landroid/media/RingtoneEx;->ajc$interMethodDispatch2$android_media_RingtoneEx$startLocalPlayer()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Landroid/media/RingtoneEx$PrivateAccess;

    invoke-direct {v0}, Landroid/media/RingtoneEx$PrivateAccess;-><init>()V

    sput-object v0, Landroid/media/RingtoneEx$PrivateAccess;->ajc$perSingletonInstance:Landroid/media/RingtoneEx$PrivateAccess;

    return-void
.end method

.method public static aspectOf()Landroid/media/RingtoneEx$PrivateAccess;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Landroid/media/RingtoneEx$PrivateAccess;->ajc$perSingletonInstance:Landroid/media/RingtoneEx$PrivateAccess;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "android_media_RingtoneEx$PrivateAccess"

    sget-object v2, Landroid/media/RingtoneEx$PrivateAccess;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Landroid/media/RingtoneEx$PrivateAccess;->ajc$perSingletonInstance:Landroid/media/RingtoneEx$PrivateAccess;

    return-object v0
.end method

.method static final destroyLocalPlayer_aroundBody0(Landroid/media/RingtoneEx;)V
    .registers 1

    .prologue
    .line 870
    return-void
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/media/RingtoneEx$PrivateAccess;->ajc$perSingletonInstance:Landroid/media/RingtoneEx$PrivateAccess;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$android_media_RingtoneEx$PrivateAccess$1$dfd8214d(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 4
    .param p1, "obj"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private MediaPlayer RingtoneEx.mLocalPlayer))"
    .end annotation

    .prologue
    .line 873
    invoke-static {p1}, Landroid/media/Ringtone;->ajc$get$mLocalPlayer(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$android_media_RingtoneEx$PrivateAccess$10$5c34a259(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/os/Binder;
    .registers 4
    .param p1, "obj"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private Binder RingtoneEx.mRemoteToken))"
    .end annotation

    .prologue
    .line 909
    invoke-static {p1}, Landroid/media/Ringtone;->ajc$get$mRemoteToken(Landroid/media/Ringtone;)Landroid/os/Binder;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$android_media_RingtoneEx$PrivateAccess$11$b6e1204e(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 3
    .param p1, "obj"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && execution(private void RingtoneEx.destroyLocalPlayer()))"
    .end annotation

    .prologue
    .line 913
    invoke-virtual {p1}, Landroid/media/Ringtone;->ajc$privMethod$android_media_RingtoneEx$PrivateAccess$android_media_Ringtone$destroyLocalPlayer()V

    .line 914
    return-void
.end method

.method public ajc$around$android_media_RingtoneEx$PrivateAccess$12$b6d91ef8(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .param p1, "obj"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private boolean RingtoneEx.mIsLooping))"
    .end annotation

    .prologue
    .line 917
    invoke-static {p1}, Landroid/media/Ringtone;->ajc$get$mIsLooping(Landroid/media/Ringtone;)Z

    move-result v0

    return v0
.end method

.method public ajc$around$android_media_RingtoneEx$PrivateAccess$13$c54d2de2(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)F
    .registers 4
    .param p1, "obj"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private float RingtoneEx.mVolume))"
    .end annotation

    .prologue
    .line 921
    invoke-static {p1}, Landroid/media/Ringtone;->ajc$get$mVolume(Landroid/media/Ringtone;)F

    move-result v0

    return v0
.end method

.method public ajc$around$android_media_RingtoneEx$PrivateAccess$14$f8c628ee(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;
    .registers 4
    .param p1, "obj"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private Object RingtoneEx.mPlaybackSettingsLock))"
    .end annotation

    .prologue
    .line 925
    invoke-static {p1}, Landroid/media/Ringtone;->ajc$get$mPlaybackSettingsLock(Landroid/media/Ringtone;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$android_media_RingtoneEx$PrivateAccess$2$6d91299d(Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p1, "obj"    # Landroid/media/RingtoneEx;
    .param p2, "val"    # Landroid/media/MediaPlayer;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,val,ajc$aroundClosure"
        value = "(target(obj) && (set(private MediaPlayer RingtoneEx.mLocalPlayer) && args(val)))"
    .end annotation

    .prologue
    .line 877
    invoke-static {p1, p2}, Landroid/media/Ringtone;->ajc$set$mLocalPlayer(Landroid/media/Ringtone;Landroid/media/MediaPlayer;)V

    .line 878
    return-void
.end method

.method public ajc$around$android_media_RingtoneEx$PrivateAccess$3$9372cc16(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;
    .registers 4
    .param p1, "obj"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private AudioAttributes RingtoneEx.mAudioAttributes))"
    .end annotation

    .prologue
    .line 881
    invoke-static {p1}, Landroid/media/Ringtone;->ajc$get$mAudioAttributes(Landroid/media/Ringtone;)Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$android_media_RingtoneEx$PrivateAccess$4$e2f84354(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 4
    .param p1, "obj"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private Uri RingtoneEx.mUri))"
    .end annotation

    .prologue
    .line 885
    invoke-static {p1}, Landroid/media/Ringtone;->ajc$get$mUri(Landroid/media/Ringtone;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$android_media_RingtoneEx$PrivateAccess$5$3011ff64(Landroid/media/RingtoneEx;Landroid/net/Uri;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p1, "obj"    # Landroid/media/RingtoneEx;
    .param p2, "val"    # Landroid/net/Uri;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,val,ajc$aroundClosure"
        value = "(target(obj) && (set(private Uri RingtoneEx.mUri) && args(val)))"
    .end annotation

    .prologue
    .line 889
    invoke-static {p1, p2}, Landroid/media/Ringtone;->ajc$set$mUri(Landroid/media/Ringtone;Landroid/net/Uri;)V

    .line 890
    return-void
.end method

.method public ajc$around$android_media_RingtoneEx$PrivateAccess$6$f8b609f3(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .param p1, "obj"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private boolean RingtoneEx.mAllowRemote))"
    .end annotation

    .prologue
    .line 893
    invoke-static {p1}, Landroid/media/Ringtone;->ajc$get$mAllowRemote(Landroid/media/Ringtone;)Z

    move-result v0

    return v0
.end method

.method public ajc$around$android_media_RingtoneEx$PrivateAccess$7$19bf89f4(Lorg/aspectj/runtime/internal/AroundClosure;)[Ljava/lang/String;
    .registers 3
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "get(private static String RingtoneEx.MEDIA_COLUMNS)"
    .end annotation

    .prologue
    .line 897
    invoke-static {}, Landroid/media/Ringtone;->ajc$get$MEDIA_COLUMNS()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$android_media_RingtoneEx$PrivateAccess$8$3e891904(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioManager;
    .registers 4
    .param p1, "obj"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private AudioManager RingtoneEx.mAudioManager))"
    .end annotation

    .prologue
    .line 901
    invoke-static {p1}, Landroid/media/Ringtone;->ajc$get$mAudioManager(Landroid/media/Ringtone;)Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$android_media_RingtoneEx$PrivateAccess$9$920bbadf(Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/IRingtonePlayer;
    .registers 4
    .param p1, "obj"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private IRingtonePlayer RingtoneEx.mRemotePlayer))"
    .end annotation

    .prologue
    .line 905
    invoke-static {p1}, Landroid/media/Ringtone;->ajc$get$mRemotePlayer(Landroid/media/Ringtone;)Landroid/media/IRingtonePlayer;

    move-result-object v0

    return-object v0
.end method
