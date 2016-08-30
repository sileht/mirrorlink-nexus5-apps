.class public Landroid/media/RingtoneEx;
.super Landroid/media/Ringtone;
.source "RingtoneEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RingtoneEx$PrivateAccess;
    }
.end annotation


# static fields
.field private static final CUPSS_ALARM_FILEPATH:Ljava/lang/String;

.field private static final CUPSS_NOTIFICATION_FILEPATH:Ljava/lang/String;

.field private static final CUPSS_RINGTONE_FILEPATH:Ljava/lang/String;

.field public static final DEFAULT_ALARMS_FILEPATH:Ljava/lang/String;

.field public static final DEFAULT_NOTIFICATIONS_FILEPATH:Ljava/lang/String;

.field public static final DEFAULT_RINGTONES_FILEPATH:Ljava/lang/String;

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final ERROR_CHECK_INIT:I = 0x0

.field private static final ERROR_CHECK_SETDEFAULT:I = 0x2

.field private static final ERROR_CHECK_START:I = 0x1

.field private static final LOGD:Z = true

.field private static MEDIA_COLUMNS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "RingtoneEx"

.field private static final USER_RINGTONE_FILEPATH:Ljava/lang/String;


# instance fields
.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mAllowRemote:Z

.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDrmFile:I

.field private mDrmPath:Ljava/lang/String;

.field private mDrmValid:Z

.field private mErrorCheck:I

.field private mIsLooping:Z

.field private mIsSoundException:Z

.field private mLocalPlayer:Landroid/media/MediaPlayer;

.field private mPlaybackSettingsLock:Ljava/lang/Object;

.field private mRemotePlayer:Landroid/media/IRingtonePlayer;

.field private mRemoteToken:Landroid/os/Binder;

.field private mUri:Landroid/net/Uri;

.field private mVolume:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldInit$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$MEDIA_COLUMNS()V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/system/media/audio/ringtones/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    const-string v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneEx;->DEFAULT_RINGTONES_FILEPATH:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/system/media/audio/notifications/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    const-string v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneEx;->DEFAULT_NOTIFICATIONS_FILEPATH:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/system/media/audio/alarms/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    const-string v1, "ro.config.alarm_alert"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneEx;->DEFAULT_ALARMS_FILEPATH:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ro.lge.capp_cupss.rootdir"

    const-string v2, "/cust"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/media/audio/ringtones/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    const-string v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    sput-object v0, Landroid/media/RingtoneEx;->CUPSS_RINGTONE_FILEPATH:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/local/media/audio/ringtones/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    sput-object v0, Landroid/media/RingtoneEx;->USER_RINGTONE_FILEPATH:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ro.lge.capp_cupss.rootdir"

    const-string v2, "/cust"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/media/audio/alarms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    const-string v1, "ro.config.alarm_alert"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    sput-object v0, Landroid/media/RingtoneEx;->CUPSS_ALARM_FILEPATH:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ro.lge.capp_cupss.rootdir"

    const-string v2, "/cust"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/media/audio/notifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const-string v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    sput-object v0, Landroid/media/RingtoneEx;->CUPSS_NOTIFICATION_FILEPATH:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowRemote"    # Z

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldInit$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)V

    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldInit$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioAttributes(Landroid/media/RingtoneEx;)V

    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldInit$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;)V

    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldInit$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAllowRemote(Landroid/media/RingtoneEx;)V

    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldInit$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioManager(Landroid/media/RingtoneEx;)V

    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldInit$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mRemotePlayer(Landroid/media/RingtoneEx;)V

    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldInit$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mIsLooping(Landroid/media/RingtoneEx;)V

    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldInit$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mVolume(Landroid/media/RingtoneEx;)V

    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldInit$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mPlaybackSettingsLock(Landroid/media/RingtoneEx;)V

    .line 51
    iput v1, p0, Landroid/media/RingtoneEx;->mDrmFile:I

    .line 52
    iput-boolean v1, p0, Landroid/media/RingtoneEx;->mDrmValid:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RingtoneEx;->mDrmPath:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Landroid/media/RingtoneEx;->mIsSoundException:Z

    .line 780
    new-instance v0, Landroid/media/RingtoneEx$1;

    invoke-direct {v0, p0}, Landroid/media/RingtoneEx$1;-><init>(Landroid/media/RingtoneEx;)V

    iput-object v0, p0, Landroid/media/RingtoneEx;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 110
    iput-object p1, p0, Landroid/media/RingtoneEx;->mContext:Landroid/content/Context;

    .line 112
    iput v1, p0, Landroid/media/RingtoneEx;->mErrorCheck:I

    .line 115
    const-string v0, "ro.lge.audio_soundexception"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/RingtoneEx;->mIsSoundException:Z

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowRemote"    # Z
    .param p3, "streamType"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Landroid/media/RingtoneEx;-><init>(Landroid/content/Context;Z)V

    .line 124
    invoke-virtual {p0, p3}, Landroid/media/RingtoneEx;->setStreamType(I)V

    .line 125
    return-void
.end method

.method private static final MEDIA_COLUMNS_aroundBody6()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 209
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$MEDIA_COLUMNS()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final MEDIA_COLUMNS_aroundBody7$advice(Landroid/media/RingtoneEx$PrivateAccess;Lorg/aspectj/runtime/internal/AroundClosure;)[Ljava/lang/String;
    .registers 3
    .param p0, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 897
    invoke-static {}, Landroid/media/Ringtone;->ajc$get$MEDIA_COLUMNS()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$0(Landroid/media/RingtoneEx;)I
    .registers 2
    .param p0, "arg0"    # Landroid/media/RingtoneEx;

    .prologue
    .line 99
    iget v0, p0, Landroid/media/RingtoneEx;->mErrorCheck:I

    return v0
.end method

.method static synthetic access$1(Landroid/media/RingtoneEx;I)V
    .registers 2
    .param p0, "arg0"    # Landroid/media/RingtoneEx;
    .param p1, "arg1"    # I

    .prologue
    .line 99
    iput p1, p0, Landroid/media/RingtoneEx;->mErrorCheck:I

    return-void
.end method

.method static synthetic access$2(Landroid/media/RingtoneEx;)Landroid/os/Binder;
    .registers 3
    .param p0, "arg0"    # Landroid/media/RingtoneEx;

    .prologue
    .line 49
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mRemoteToken_aroundBody191$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/os/Binder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Landroid/media/RingtoneEx;)Ljava/lang/String;
    .registers 2
    .param p0, "arg0"    # Landroid/media/RingtoneEx;

    .prologue
    .line 639
    invoke-direct {p0}, Landroid/media/RingtoneEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$get$MEDIA_COLUMNS()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/media/RingtoneEx;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public static ajc$get$mAllowRemote(Landroid/media/RingtoneEx;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Landroid/media/RingtoneEx;->mAllowRemote:Z

    return v0
.end method

.method public static ajc$get$mAudioAttributes(Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Landroid/media/RingtoneEx;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public static ajc$get$mAudioManager(Landroid/media/RingtoneEx;)Landroid/media/AudioManager;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Landroid/media/RingtoneEx;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public static ajc$get$mIsLooping(Landroid/media/RingtoneEx;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Landroid/media/RingtoneEx;->mIsLooping:Z

    return v0
.end method

.method public static ajc$get$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public static ajc$get$mPlaybackSettingsLock(Landroid/media/RingtoneEx;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Landroid/media/RingtoneEx;->mPlaybackSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static ajc$get$mRemotePlayer(Landroid/media/RingtoneEx;)Landroid/media/IRingtonePlayer;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Landroid/media/RingtoneEx;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public static ajc$get$mUri(Landroid/media/RingtoneEx;)Landroid/net/Uri;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Landroid/media/RingtoneEx;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static ajc$get$mVolume(Landroid/media/RingtoneEx;)F
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Landroid/media/RingtoneEx;->mVolume:F

    return v0
.end method

.method public static ajc$set$MEDIA_COLUMNS([Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Landroid/media/RingtoneEx;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public static ajc$set$mAllowRemote(Landroid/media/RingtoneEx;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Landroid/media/RingtoneEx;->mAllowRemote:Z

    return-void
.end method

.method public static ajc$set$mAudioAttributes(Landroid/media/RingtoneEx;Landroid/media/AudioAttributes;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/media/RingtoneEx;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-void
.end method

.method public static ajc$set$mAudioManager(Landroid/media/RingtoneEx;Landroid/media/AudioManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/media/RingtoneEx;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public static ajc$set$mIsLooping(Landroid/media/RingtoneEx;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Landroid/media/RingtoneEx;->mIsLooping:Z

    return-void
.end method

.method public static ajc$set$mLocalPlayer(Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public static ajc$set$mPlaybackSettingsLock(Landroid/media/RingtoneEx;Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/media/RingtoneEx;->mPlaybackSettingsLock:Ljava/lang/Object;

    return-void
.end method

.method public static ajc$set$mRemotePlayer(Landroid/media/RingtoneEx;Landroid/media/IRingtonePlayer;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/media/RingtoneEx;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    return-void
.end method

.method public static ajc$set$mUri(Landroid/media/RingtoneEx;Landroid/net/Uri;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/media/RingtoneEx;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public static ajc$set$mVolume(Landroid/media/RingtoneEx;F)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Landroid/media/RingtoneEx;->mVolume:F

    return-void
.end method

.method private checkDRM(Ljava/lang/String;)I
    .registers 8
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 584
    if-nez p1, :cond_6

    .line 617
    :cond_5
    :goto_5
    return v1

    .line 588
    :cond_6
    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Lcom/lge/lgdrm/DrmManager;->isSupportedExtension(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 592
    invoke-static {p1}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/media/RingtoneEx;->mDrmFile:I

    .line 593
    iget v4, p0, Landroid/media/RingtoneEx;->mDrmFile:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_1f

    iget v4, p0, Landroid/media/RingtoneEx;->mDrmFile:I

    const/16 v5, 0x3000

    if-le v4, v5, :cond_22

    .line 594
    :cond_1f
    iput v1, p0, Landroid/media/RingtoneEx;->mDrmFile:I

    goto :goto_5

    .line 599
    :cond_22
    :try_start_22
    iget-object v1, p0, Landroid/media/RingtoneEx;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v0

    .line 600
    .local v0, "session":Lcom/lge/lgdrm/DrmContentSession;
    if-nez v0, :cond_2c

    move v1, v2

    .line 601
    goto :goto_5

    .line 604
    :cond_2c
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v1

    if-nez v1, :cond_35

    move v1, v2

    .line 605
    goto :goto_5

    .line 608
    :cond_35
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmContentSession;->setDecryptionInfo(Z)I

    move-result v1

    if-eqz v1, :cond_3e

    move v1, v2

    .line 609
    goto :goto_5

    .line 612
    :cond_3e
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/RingtoneEx;->mDrmValid:Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_41} :catch_43

    move v1, v3

    .line 613
    goto :goto_5

    .line 617
    .end local v0    # "session":Lcom/lge/lgdrm/DrmContentSession;
    :catch_43
    move-exception v1

    move v1, v2

    goto :goto_5
.end method

.method private getDefaultAudioType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 693
    const/4 v0, 0x0

    .line 695
    .local v0, "audioType":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/media/RingtoneEx;->getStreamType()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    .line 706
    :pswitch_8
    const-string v0, "is_ringtone"

    .line 711
    :goto_a
    const-string v1, "RingtoneEx"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDefaultAudioType : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return-object v0

    .line 697
    :pswitch_1f
    const-string v0, "is_ringtone"

    .line 698
    goto :goto_a

    .line 700
    :pswitch_22
    const-string v0, "is_notification"

    .line 701
    goto :goto_a

    .line 703
    :pswitch_25
    const-string v0, "is_alarm"

    .line 704
    goto :goto_a

    .line 695
    :pswitch_data_28
    .packed-switch 0x2
        :pswitch_1f
        :pswitch_8
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

.method private getDefaultPath()Ljava/lang/String;
    .registers 9

    .prologue
    .line 640
    const/4 v3, 0x0

    .line 641
    .local v3, "defaultRingtone":Ljava/lang/String;
    const/4 v2, 0x0

    .line 642
    .local v2, "custPath":Ljava/io/File;
    const/4 v4, 0x0

    .line 643
    .local v4, "userPath":Ljava/io/File;
    invoke-virtual {p0}, Landroid/media/RingtoneEx;->getStreamType()I

    move-result v5

    packed-switch v5, :pswitch_data_82

    .line 679
    :pswitch_a
    sget-object v3, Landroid/media/RingtoneEx;->DEFAULT_NOTIFICATIONS_FILEPATH:Ljava/lang/String;

    .line 684
    :goto_c
    const-string v5, "RingtoneEx"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "default ringtone path: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    return-object v3

    .line 646
    :pswitch_21
    new-instance v2, Ljava/io/File;

    .end local v2    # "custPath":Ljava/io/File;
    sget-object v5, Landroid/media/RingtoneEx;->CUPSS_RINGTONE_FILEPATH:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 647
    .restart local v2    # "custPath":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    .end local v4    # "userPath":Ljava/io/File;
    sget-object v5, Landroid/media/RingtoneEx;->USER_RINGTONE_FILEPATH:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 648
    .restart local v4    # "userPath":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 649
    sget-object v3, Landroid/media/RingtoneEx;->USER_RINGTONE_FILEPATH:Ljava/lang/String;

    .line 650
    goto :goto_c

    :cond_3e
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 651
    sget-object v3, Landroid/media/RingtoneEx;->CUPSS_RINGTONE_FILEPATH:Ljava/lang/String;

    .line 652
    goto :goto_c

    .line 654
    :cond_4d
    sget-object v3, Landroid/media/RingtoneEx;->DEFAULT_RINGTONES_FILEPATH:Ljava/lang/String;

    .line 657
    goto :goto_c

    .line 660
    :pswitch_50
    new-instance v1, Ljava/io/File;

    sget-object v5, Landroid/media/RingtoneEx;->CUPSS_NOTIFICATION_FILEPATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 661
    .local v1, "custNotification":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 662
    sget-object v3, Landroid/media/RingtoneEx;->CUPSS_NOTIFICATION_FILEPATH:Ljava/lang/String;

    .line 663
    goto :goto_c

    .line 665
    :cond_66
    sget-object v3, Landroid/media/RingtoneEx;->DEFAULT_NOTIFICATIONS_FILEPATH:Ljava/lang/String;

    .line 667
    goto :goto_c

    .line 670
    .end local v1    # "custNotification":Ljava/io/File;
    :pswitch_69
    new-instance v0, Ljava/io/File;

    sget-object v5, Landroid/media/RingtoneEx;->CUPSS_ALARM_FILEPATH:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 671
    .local v0, "custAlarm":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 672
    sget-object v3, Landroid/media/RingtoneEx;->CUPSS_ALARM_FILEPATH:Ljava/lang/String;

    .line 673
    goto :goto_c

    .line 675
    :cond_7f
    sget-object v3, Landroid/media/RingtoneEx;->DEFAULT_ALARMS_FILEPATH:Ljava/lang/String;

    .line 677
    goto :goto_c

    .line 643
    :pswitch_data_82
    .packed-switch 0x2
        :pswitch_21
        :pswitch_a
        :pswitch_69
        :pswitch_50
    .end packed-switch
.end method

.method private getDefaultTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 722
    const/4 v6, 0x0

    .line 723
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 725
    .local v0, "res":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 726
    .local v9, "title":Ljava/lang/String;
    const/4 v8, 0x0

    .line 727
    .local v8, "defaultPath":Ljava/lang/String;
    const/4 v7, 0x0

    .line 729
    .local v7, "defaultAudioType":Ljava/lang/String;
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    invoke-static {p0, p0, v1, p0, v3}, Landroid/media/RingtoneEx;->mUri_aroundBody163$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    if-eq v1, v2, :cond_39

    .line 730
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    invoke-static {p0, p0, v1, p0, v3}, Landroid/media/RingtoneEx;->mUri_aroundBody165$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_39

    .line 731
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    invoke-static {p0, p0, v1, p0, v3}, Landroid/media/RingtoneEx;->mUri_aroundBody167$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9a

    .line 732
    :cond_39
    sget-object v8, Landroid/media/RingtoneEx;->DEFAULT_NOTIFICATIONS_FILEPATH:Ljava/lang/String;

    .line 733
    const-string v7, "is_notification"

    .line 741
    :goto_3d
    :try_start_3d
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 742
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    .line 743
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_data =? AND mime_type =?  AND "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 744
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " =? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 743
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 745
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-string v10, "application/ogg"

    aput-object v10, v4, v5

    const/4 v5, 0x2

    const-string v10, "1"

    aput-object v10, v4, v5

    .line 746
    const/4 v5, 0x0

    .line 740
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_70
    .catch Ljava/lang/SecurityException; {:try_start_3d .. :try_end_70} :catch_c7

    move-result-object v6

    .line 752
    :goto_71
    if-eqz v6, :cond_b1

    :try_start_73
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v11, :cond_b1

    .line 754
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 755
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 756
    invoke-virtual {p0}, Landroid/media/RingtoneEx;->getStreamType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_a3

    .line 758
    sget v1, Lcom/lge/internal/R$string;->notification_default_with_actual:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 759
    aput-object v9, v2, v3

    .line 758
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_93
    .catchall {:try_start_73 .. :try_end_93} :catchall_c0

    move-result-object v9

    .line 770
    :goto_94
    if-eqz v6, :cond_99

    .line 771
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 775
    :cond_99
    return-object v9

    .line 735
    :cond_9a
    invoke-direct {p0}, Landroid/media/RingtoneEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v8

    .line 736
    invoke-direct {p0}, Landroid/media/RingtoneEx;->getDefaultAudioType()Ljava/lang/String;

    move-result-object v7

    goto :goto_3d

    .line 762
    :cond_a3
    const v1, 0x10403b6

    const/4 v2, 0x1

    :try_start_a7
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 763
    aput-object v9, v2, v3

    .line 762
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 765
    goto :goto_94

    .line 766
    :cond_b1
    const-string v1, "RingtoneEx"

    const-string v2, "Default ringtone does NOT exist. "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const v1, 0x10403b9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_be
    .catchall {:try_start_a7 .. :try_end_be} :catchall_c0

    move-result-object v9

    .line 769
    goto :goto_94

    :catchall_c0
    move-exception v1

    .line 770
    if-eqz v6, :cond_c6

    .line 771
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 773
    :cond_c6
    throw v1

    :catch_c7
    move-exception v1

    goto :goto_71
.end method

.method protected static getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "followSettingsUri"    # Z

    .prologue
    .line 169
    const/4 v9, 0x0

    .line 170
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 172
    .local v0, "res":Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 174
    .local v11, "title":Ljava/lang/String;
    if-eqz p1, :cond_3f

    .line 175
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, "authority":Ljava/lang/String;
    const-string v1, "settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 178
    if-eqz p2, :cond_3f

    .line 180
    invoke-static {p1}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v10

    .line 181
    .local v10, "ringToneType":I
    invoke-static {p0, v10}, Lcom/lge/media/RingtoneManagerEx;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 182
    .local v7, "actualUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 184
    .local v6, "actualTitle":Ljava/lang/String;
    if-nez v7, :cond_41

    .line 185
    const v1, 0x10403b7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 194
    :cond_28
    const/4 v1, 0x2

    if-eq v10, v1, :cond_33

    const/16 v1, 0x10

    if-eq v10, v1, :cond_33

    .line 195
    const/16 v1, 0x100

    if-ne v10, v1, :cond_4a

    .line 197
    :cond_33
    sget v1, Lcom/lge/internal/R$string;->notification_default_with_actual:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 198
    aput-object v6, v2, v3

    .line 197
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .end local v6    # "actualTitle":Ljava/lang/String;
    .end local v7    # "actualUri":Landroid/net/Uri;
    .end local v8    # "authority":Ljava/lang/String;
    .end local v10    # "ringToneType":I
    :cond_3f
    :goto_3f
    move-object v1, v11

    .line 233
    :cond_40
    :goto_40
    return-object v1

    .line 187
    .restart local v6    # "actualTitle":Ljava/lang/String;
    .restart local v7    # "actualUri":Landroid/net/Uri;
    .restart local v8    # "authority":Ljava/lang/String;
    .restart local v10    # "ringToneType":I
    :cond_41
    const/4 v1, 0x0

    invoke-static {p0, v7, v1}, Landroid/media/RingtoneEx;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v6

    .line 189
    if-nez v6, :cond_28

    .line 190
    const/4 v1, 0x0

    goto :goto_40

    .line 201
    :cond_4a
    const v1, 0x10403b6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 202
    aput-object v6, v2, v3

    .line 201
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 206
    goto :goto_3f

    .line 208
    .end local v6    # "actualTitle":Ljava/lang/String;
    .end local v7    # "actualUri":Landroid/net/Uri;
    .end local v10    # "ringToneType":I
    :cond_58
    :try_start_58
    const-string v1, "media"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 209
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/RingtoneEx;->MEDIA_COLUMNS_aroundBody7$advice(Landroid/media/RingtoneEx$PrivateAccess;Lorg/aspectj/runtime/internal/AroundClosure;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_70
    .catch Ljava/lang/SecurityException; {:try_start_58 .. :try_end_70} :catch_96

    move-result-object v9

    .line 216
    :cond_71
    :goto_71
    if-eqz v9, :cond_88

    :try_start_73
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_88

    .line 217
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 218
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_81
    .catchall {:try_start_73 .. :try_end_81} :catchall_8f

    move-result-object v1

    .line 227
    if-eqz v9, :cond_40

    .line 228
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_40

    .line 227
    :cond_88
    if-eqz v9, :cond_8d

    .line 228
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_8d
    const/4 v1, 0x0

    goto :goto_40

    .line 226
    :catchall_8f
    move-exception v1

    .line 227
    if-eqz v9, :cond_95

    .line 228
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 230
    :cond_95
    throw v1

    :catch_96
    move-exception v1

    goto :goto_71
.end method

.method private static final mAllowRemote_aroundBody100(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Z
    .registers 3

    .prologue
    .line 386
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAllowRemote(Landroid/media/RingtoneEx;)Z

    move-result v0

    return v0
.end method

.method private static final mAllowRemote_aroundBody101$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mAllowRemote_aroundBody102(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Z
    .registers 3

    .prologue
    .line 392
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAllowRemote(Landroid/media/RingtoneEx;)Z

    move-result v0

    return v0
.end method

.method private static final mAllowRemote_aroundBody103$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mAllowRemote_aroundBody124(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Z
    .registers 3

    .prologue
    .line 434
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAllowRemote(Landroid/media/RingtoneEx;)Z

    move-result v0

    return v0
.end method

.method private static final mAllowRemote_aroundBody125$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mAllowRemote_aroundBody142(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Z
    .registers 3

    .prologue
    .line 495
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAllowRemote(Landroid/media/RingtoneEx;)Z

    move-result v0

    return v0
.end method

.method private static final mAllowRemote_aroundBody143$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mAllowRemote_aroundBody98(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Z
    .registers 3

    .prologue
    .line 380
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAllowRemote(Landroid/media/RingtoneEx;)Z

    move-result v0

    return v0
.end method

.method private static final mAllowRemote_aroundBody99$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mAudioAttributes_aroundBody110(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;
    .registers 3

    .prologue
    .line 404
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioAttributes(Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioAttributes_aroundBody111$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mAudioAttributes_aroundBody136(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;
    .registers 3

    .prologue
    .line 482
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioAttributes(Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioAttributes_aroundBody137$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mAudioAttributes_aroundBody156(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;
    .registers 3

    .prologue
    .line 504
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioAttributes(Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioAttributes_aroundBody157$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mAudioAttributes_aroundBody158(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;
    .registers 3

    .prologue
    .line 545
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioAttributes(Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioAttributes_aroundBody159$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mAudioAttributes_aroundBody170(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;
    .registers 3

    .prologue
    .line 825
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioAttributes(Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioAttributes_aroundBody171$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mAudioAttributes_aroundBody180(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;
    .registers 3

    .prologue
    .line 837
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioAttributes(Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioAttributes_aroundBody181$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mAudioAttributes_aroundBody22(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;
    .registers 3

    .prologue
    .line 276
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioAttributes(Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioAttributes_aroundBody23$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mAudioAttributes_aroundBody28(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;
    .registers 3

    .prologue
    .line 280
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioAttributes(Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioAttributes_aroundBody29$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mAudioAttributes_aroundBody42(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;
    .registers 3

    .prologue
    .line 321
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioAttributes(Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioAttributes_aroundBody43$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mAudioAttributes_aroundBody48(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;
    .registers 3

    .prologue
    .line 324
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioAttributes(Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioAttributes_aroundBody49$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mAudioAttributes_aroundBody54(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;
    .registers 3

    .prologue
    .line 329
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioAttributes(Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioAttributes_aroundBody55$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mAudioAttributes_aroundBody62(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;
    .registers 3

    .prologue
    .line 335
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioAttributes(Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioAttributes_aroundBody63$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mAudioAttributes_aroundBody68(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;
    .registers 3

    .prologue
    .line 340
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioAttributes(Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioAttributes_aroundBody69$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mAudioAttributes_aroundBody86(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;
    .registers 3

    .prologue
    .line 362
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioAttributes(Landroid/media/RingtoneEx;)Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioAttributes_aroundBody87$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mAudioManager_aroundBody134(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/AudioManager;
    .registers 3

    .prologue
    .line 481
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioManager(Landroid/media/RingtoneEx;)Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioManager_aroundBody135$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioManager;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 901
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mAudioManager(Landroid/media/Ringtone;)Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioManager_aroundBody168(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/AudioManager;
    .registers 3

    .prologue
    .line 825
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mAudioManager(Landroid/media/RingtoneEx;)Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioManager_aroundBody169$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioManager;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 901
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mAudioManager(Landroid/media/Ringtone;)Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method

.method private static final mIsLooping_aroundBody148(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Z
    .registers 3

    .prologue
    .line 500
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mIsLooping(Landroid/media/RingtoneEx;)Z

    move-result v0

    return v0
.end method

.method private static final mIsLooping_aroundBody149$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody104(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;)V
    .registers 3

    .prologue
    .line 402
    invoke-static {p1, p2}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldSetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private static final mLocalPlayer_aroundBody105$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 7
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody106(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 403
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody107$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody108(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 404
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody109$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody112(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 405
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody113$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody116(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 409
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody117$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody118(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 417
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody119$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody120(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 432
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody121$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody122(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 433
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody123$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody126(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 449
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody127$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody128(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 451
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody129$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody130(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 474
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody131$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody132(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 479
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody133$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody138(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 483
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody139$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody14(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;)V
    .registers 3

    .prologue
    .line 256
    invoke-static {p1, p2}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldSetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private static final mLocalPlayer_aroundBody140(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 490
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody141$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody15$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 7
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody160(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 627
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody161$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody174(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;)V
    .registers 3

    .prologue
    .line 835
    invoke-static {p1, p2}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldSetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private static final mLocalPlayer_aroundBody175$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 7
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody176(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 836
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody177$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody178(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 837
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody179$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody18(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 275
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody182(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 838
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody183$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody186(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 842
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody187$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody19$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody20(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 276
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody21$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody24(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 279
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody25$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody26(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 280
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody27$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody36(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 320
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody37$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody40(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 321
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody41$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody44(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 323
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody45$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody46(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 324
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody47$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody50(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 328
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody51$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody52(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 329
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody53$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody56(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 334
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody57$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody60(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 335
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody61$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody64(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 339
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody65$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody66(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 340
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody67$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody70(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 345
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody71$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody74(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 354
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody75$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody76(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 358
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody77$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody78(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;)V
    .registers 3

    .prologue
    .line 359
    invoke-static {p1, p2}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldSetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private static final mLocalPlayer_aroundBody79$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 7
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody80(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;)V
    .registers 3

    .prologue
    .line 360
    invoke-static {p1, p2}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldSetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private static final mLocalPlayer_aroundBody81$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 7
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody82(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 361
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody83$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody84(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 362
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody85$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody88(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 363
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody89$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody92(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 367
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody93$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mLocalPlayer_aroundBody96(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;
    .registers 3

    .prologue
    .line 373
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mLocalPlayer(Landroid/media/RingtoneEx;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mLocalPlayer_aroundBody97$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mPlaybackSettingsLock_aroundBody114(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 406
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mPlaybackSettingsLock(Landroid/media/RingtoneEx;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final mPlaybackSettingsLock_aroundBody115$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mPlaybackSettingsLock_aroundBody146(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 499
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mPlaybackSettingsLock(Landroid/media/RingtoneEx;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final mPlaybackSettingsLock_aroundBody147$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mPlaybackSettingsLock_aroundBody184(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 839
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mPlaybackSettingsLock(Landroid/media/RingtoneEx;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final mPlaybackSettingsLock_aroundBody185$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mPlaybackSettingsLock_aroundBody72(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 351
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mPlaybackSettingsLock(Landroid/media/RingtoneEx;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final mPlaybackSettingsLock_aroundBody73$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mPlaybackSettingsLock_aroundBody90(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 364
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mPlaybackSettingsLock(Landroid/media/RingtoneEx;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final mPlaybackSettingsLock_aroundBody91$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mPlaybackSettingsLock_aroundBody94(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 370
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mPlaybackSettingsLock(Landroid/media/RingtoneEx;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final mPlaybackSettingsLock_aroundBody95$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mRemotePlayer_aroundBody152(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/media/IRingtonePlayer;
    .registers 3

    .prologue
    .line 504
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mRemotePlayer(Landroid/media/RingtoneEx;)Landroid/media/IRingtonePlayer;

    move-result-object v0

    return-object v0
.end method

.method private static final mRemotePlayer_aroundBody153$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/IRingtonePlayer;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private static final mRemoteToken_aroundBody154(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/os/Binder;
    .registers 3

    .prologue
    .line 504
    iget-object v0, p1, Landroid/media/RingtoneEx;->mRemoteToken:Landroid/os/Binder;

    return-object v0
.end method

.method private static final mRemoteToken_aroundBody155$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/os/Binder;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 909
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mRemoteToken(Landroid/media/Ringtone;)Landroid/os/Binder;

    move-result-object v0

    return-object v0
.end method

.method private static final mRemoteToken_aroundBody190(Landroid/media/RingtoneEx;)Landroid/os/Binder;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Landroid/media/RingtoneEx;->mRemoteToken:Landroid/os/Binder;

    return-object v0
.end method

.method private static final mRemoteToken_aroundBody191$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/os/Binder;
    .registers 5
    .param p0, "target"    # Landroid/media/RingtoneEx;
    .param p1, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p2, "obj"    # Landroid/media/RingtoneEx;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 909
    invoke-static {p2}, Landroid/media/Ringtone;->ajc$get$mRemoteToken(Landroid/media/Ringtone;)Landroid/os/Binder;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody0(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 142
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody1$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 885
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mUri(Landroid/media/Ringtone;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody10(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 250
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody11$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 885
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mUri(Landroid/media/Ringtone;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody12(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 250
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody13$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 885
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mUri(Landroid/media/Ringtone;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody144(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 496
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody145$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 885
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mUri(Landroid/media/Ringtone;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody16(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 263
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody162(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 729
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody163$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 885
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mUri(Landroid/media/Ringtone;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody164(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 730
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody165$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 885
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mUri(Landroid/media/Ringtone;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody166(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 731
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody167$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 885
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mUri(Landroid/media/Ringtone;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody17$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 885
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mUri(Landroid/media/Ringtone;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody172(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 827
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody173$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 885
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mUri(Landroid/media/Ringtone;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody188(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 851
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody189$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 885
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mUri(Landroid/media/Ringtone;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody2(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 142
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody3$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 885
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mUri(Landroid/media/Ringtone;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody30(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 288
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody31$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 885
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mUri(Landroid/media/Ringtone;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody32(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 291
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody33$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 885
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mUri(Landroid/media/Ringtone;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody34(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 319
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody35$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 885
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mUri(Landroid/media/Ringtone;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody38(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 320
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody39$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 885
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mUri(Landroid/media/Ringtone;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody4(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 149
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody5$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 885
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mUri(Landroid/media/Ringtone;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody58(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 334
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody59$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p3, "obj"    # Landroid/media/RingtoneEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 885
    invoke-static {p3}, Landroid/media/Ringtone;->ajc$get$mUri(Landroid/media/Ringtone;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mUri_aroundBody8(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/net/Uri;)V
    .registers 3

    .prologue
    .line 249
    invoke-static {p1, p2}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldSetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mUri(Landroid/media/RingtoneEx;Landroid/net/Uri;)V

    return-void
.end method

.method private static final mUri_aroundBody9$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/net/Uri;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Landroid/net/Uri;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 7
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
    .param p1, "target"    # Landroid/media/RingtoneEx;
    .param p2, "mUri"    # Landroid/net/Uri;
    .param p3, "ajc$aspectInstance"    # Landroid/media/RingtoneEx$PrivateAccess;
    .param p4, "obj"    # Landroid/media/RingtoneEx;
    .param p5, "val"    # Landroid/net/Uri;
    .param p6, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 889
    invoke-static {p4, p5}, Landroid/media/Ringtone;->ajc$set$mUri(Landroid/media/Ringtone;Landroid/net/Uri;)V

    .line 890
    return-void
.end method

.method private static final mVolume_aroundBody150(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;)F
    .registers 3

    .prologue
    .line 501
    invoke-static {p1}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$mVolume(Landroid/media/RingtoneEx;)F

    move-result v0

    return v0
.end method

.method private static final mVolume_aroundBody151$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)F
    .registers 6
    .param p0, "ajc$this"    # Landroid/media/RingtoneEx;
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

.method private setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V
    .registers 11
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "player"    # Landroid/media/MediaPlayer;
    .param p3, "res"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 542
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_25

    .line 543
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 544
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p2

    .line 543
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 545
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mAudioAttributes_aroundBody159$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 546
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 548
    :cond_25
    return-void
.end method


# virtual methods
.method public ajc$interMethodDispatch2$android_media_RingtoneEx$applyPlaybackProperties_sync()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interMethod$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$applyPlaybackProperties_sync(Landroid/media/RingtoneEx;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$android_media_RingtoneEx$destroyLocalPlayer()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interMethod$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$destroyLocalPlayer(Landroid/media/RingtoneEx;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$android_media_RingtoneEx$startLocalPlayer()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interMethod$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$startLocalPlayer(Landroid/media/RingtoneEx;)V

    return-void
.end method

.method public getProperty(I)I
    .registers 6
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 556
    if-ne p1, v0, :cond_f

    .line 558
    iget v2, p0, Landroid/media/RingtoneEx;->mDrmFile:I

    if-nez v2, :cond_9

    .line 571
    :cond_8
    :goto_8
    return v0

    .line 561
    :cond_9
    iget-boolean v2, p0, Landroid/media/RingtoneEx;->mDrmValid:Z

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_8

    .line 562
    :cond_f
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2a

    .line 564
    iget v2, p0, Landroid/media/RingtoneEx;->mDrmFile:I

    if-eqz v2, :cond_28

    iget v2, p0, Landroid/media/RingtoneEx;->mDrmFile:I

    const/16 v3, 0x31

    if-eq v2, v3, :cond_28

    .line 566
    iget v2, p0, Landroid/media/RingtoneEx;->mDrmFile:I

    const/16 v3, 0x501

    if-eq v2, v3, :cond_28

    iget v2, p0, Landroid/media/RingtoneEx;->mDrmFile:I

    const/16 v3, 0x1800

    if-ne v2, v3, :cond_8

    :cond_28
    move v0, v1

    .line 567
    goto :goto_8

    :cond_2a
    move v0, v1

    .line 571
    goto :goto_8
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 141
    const-string v0, ""

    .line 142
    .local v0, "mTitle":Ljava/lang/String;
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v2

    invoke-static {p0, p0, v2, p0, v4}, Landroid/media/RingtoneEx;->mUri_aroundBody1$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v2

    invoke-static {p0, p0, v2, p0, v4}, Landroid/media/RingtoneEx;->mUri_aroundBody3$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 144
    const v2, 0x10403b7

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 156
    .end local v0    # "mTitle":Ljava/lang/String;
    .local v1, "mTitle":Ljava/lang/String;
    :goto_29
    return-object v1

    .line 149
    .end local v1    # "mTitle":Ljava/lang/String;
    .restart local v0    # "mTitle":Ljava/lang/String;
    :cond_2a
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v2

    invoke-static {p0, p0, v2, p0, v4}, Landroid/media/RingtoneEx;->mUri_aroundBody5$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Landroid/media/RingtoneEx;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    .line 151
    if-nez v0, :cond_3d

    .line 153
    invoke-direct {p0, p1}, Landroid/media/RingtoneEx;->getDefaultTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_3d
    move-object v1, v0

    .line 156
    .end local v0    # "mTitle":Ljava/lang/String;
    .restart local v1    # "mTitle":Ljava/lang/String;
    goto :goto_29
.end method

.method public isPlaying()Z
    .registers 3

    .prologue
    .line 627
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody161$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_19

    iget v0, p0, Landroid/media/RingtoneEx;->mErrorCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 628
    const-string v0, "RingtoneEx"

    const-string v1, "Can\'t check isPlaying() during ErrorChecking"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v0, 0x0

    .line 633
    :goto_18
    return v0

    :cond_19
    invoke-super {p0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    goto :goto_18
.end method

.method public play()V
    .registers 2

    .prologue
    .line 462
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/RingtoneEx;->play(Z)V

    .line 463
    return-void
.end method

.method public play(Z)V
    .registers 10
    .param p1, "loop"    # Z

    .prologue
    const/4 v3, 0x0

    .line 474
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v3}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody131$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 479
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v3}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody133$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RingtoneEx;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 481
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v3}, Landroid/media/RingtoneEx;->mAudioManager_aroundBody135$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioManager;

    move-result-object v0

    .line 482
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    invoke-static {p0, p0, v1, p0, v3}, Landroid/media/RingtoneEx;->mAudioAttributes_aroundBody137$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 481
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_41

    .line 483
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v3}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody139$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 484
    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interMethodDispatch1$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$startLocalPlayer(Landroid/media/RingtoneEx;)V

    .line 515
    :cond_40
    :goto_40
    return-void

    .line 488
    :cond_41
    iget-boolean v0, p0, Landroid/media/RingtoneEx;->mIsSoundException:Z

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Landroid/media/RingtoneEx;->getStreamType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_59

    .line 489
    invoke-virtual {p0}, Landroid/media/RingtoneEx;->getStreamType()I

    move-result v0

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Landroid/media/RingtoneEx;->getStreamType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_40

    .line 490
    :cond_59
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v3}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody141$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 491
    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interMethodDispatch1$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$startLocalPlayer(Landroid/media/RingtoneEx;)V

    goto :goto_40

    .line 495
    :cond_68
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v3}, Landroid/media/RingtoneEx;->mAllowRemote_aroundBody143$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 496
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v3}, Landroid/media/RingtoneEx;->mUri_aroundBody145$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v2

    .line 499
    .local v2, "canonicalUri":Landroid/net/Uri;
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v3}, Landroid/media/RingtoneEx;->mPlaybackSettingsLock_aroundBody147$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 500
    :try_start_87
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {p0, p0, v0, p0, v3}, Landroid/media/RingtoneEx;->mIsLooping_aroundBody149$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v5

    .line 501
    .local v5, "looping":Z
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {p0, p0, v0, p0, v3}, Landroid/media/RingtoneEx;->mVolume_aroundBody151$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)F

    move-result v4

    .line 499
    .local v4, "volume":F
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_87 .. :try_end_9a} :catchall_d6

    .line 504
    :try_start_9a
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mRemotePlayer_aroundBody153$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/IRingtonePlayer;

    move-result-object v0

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {p0, p0, v1, p0, v3}, Landroid/media/RingtoneEx;->mRemoteToken_aroundBody155$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/os/Binder;

    move-result-object v1

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static {p0, p0, v3, p0, v7}, Landroid/media/RingtoneEx;->mAudioAttributes_aroundBody157$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-interface/range {v0 .. v5}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_b8} :catch_b9

    goto :goto_40

    .line 505
    :catch_b9
    move-exception v6

    .line 506
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/media/RingtoneEx;->playFallbackRingtone()Z

    move-result v0

    if-nez v0, :cond_40

    .line 507
    const-string v0, "RingtoneEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Problem playing ringtone: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_40

    .line 499
    .end local v4    # "volume":F
    .end local v5    # "looping":Z
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_d6
    move-exception v0

    :try_start_d7
    monitor-exit v1
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    throw v0

    .line 511
    .end local v2    # "canonicalUri":Landroid/net/Uri;
    :cond_d9
    invoke-virtual {p0}, Landroid/media/RingtoneEx;->playFallbackRingtone()Z

    move-result v0

    if-nez v0, :cond_40

    .line 512
    const-string v0, "RingtoneEx"

    const-string v1, "Neither local nor remote playback available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_40
.end method

.method protected playFallbackRingtone()Z
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 824
    const-string v0, "RingtoneEx"

    const-string v1, "playFallbackRingtone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v3}, Landroid/media/RingtoneEx;->mAudioManager_aroundBody169$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    invoke-static {p0, p0, v1, p0, v3}, Landroid/media/RingtoneEx;->mAudioAttributes_aroundBody171$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_2d

    .line 826
    iget-boolean v0, p0, Landroid/media/RingtoneEx;->mIsSoundException:Z

    if-eqz v0, :cond_cd

    invoke-virtual {p0}, Landroid/media/RingtoneEx;->getStreamType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_cd

    .line 827
    :cond_2d
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v3}, Landroid/media/RingtoneEx;->mUri_aroundBody173$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v9

    .line 828
    .local v9, "ringtoneType":I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_44

    .line 829
    iget-object v0, p0, Landroid/media/RingtoneEx;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/lge/media/RingtoneManagerEx;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_cf

    .line 831
    :cond_44
    invoke-direct {p0}, Landroid/media/RingtoneEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v7

    .line 832
    .local v7, "defaultPath":Ljava/lang/String;
    const-string v0, "RingtoneEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "playFallbackRingtone() path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    if-eqz v7, :cond_cd

    .line 835
    :try_start_5e
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p0

    move-object v4, p0

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody175$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 836
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody177$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 837
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody179$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p0, v1, p0, v2}, Landroid/media/RingtoneEx;->mAudioAttributes_aroundBody181$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 838
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody183$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/RingtoneEx;->getStreamType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 839
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mPlaybackSettingsLock_aroundBody185$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_aa} :catch_c2

    .line 840
    :try_start_aa
    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interMethodDispatch1$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$applyPlaybackProperties_sync(Landroid/media/RingtoneEx;)V

    .line 839
    monitor-exit v1
    :try_end_ae
    .catchall {:try_start_aa .. :try_end_ae} :catchall_bf

    .line 842
    :try_start_ae
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody187$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 843
    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interMethodDispatch1$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$startLocalPlayer(Landroid/media/RingtoneEx;)V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_bd} :catch_c2

    .line 844
    const/4 v0, 0x1

    .line 854
    .end local v7    # "defaultPath":Ljava/lang/String;
    .end local v9    # "ringtoneType":I
    :goto_be
    return v0

    .line 839
    .restart local v7    # "defaultPath":Ljava/lang/String;
    .restart local v9    # "ringtoneType":I
    :catchall_bf
    move-exception v0

    :try_start_c0
    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    :try_start_c1
    throw v0
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c2} :catch_c2

    .line 845
    :catch_c2
    move-exception v8

    .line 846
    .local v8, "ex":Ljava/io/IOException;
    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interMethodDispatch1$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$destroyLocalPlayer(Landroid/media/RingtoneEx;)V

    .line 847
    const-string v0, "RingtoneEx"

    const-string v1, "default filepath is not set"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 854
    .end local v7    # "defaultPath":Ljava/lang/String;
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v9    # "ringtoneType":I
    :cond_cd
    :goto_cd
    const/4 v0, 0x0

    goto :goto_be

    .line 851
    .restart local v9    # "ringtoneType":I
    :cond_cf
    const-string v0, "RingtoneEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not playing fallback for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v2

    invoke-static {p0, p0, v2, p0, v3}, Landroid/media/RingtoneEx;->mUri_aroundBody189$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    const/4 v2, 0x0

    .line 449
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v2}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody127$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 450
    const-string v0, "RingtoneEx"

    const-string v1, "setOnCompletionListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v2}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody129$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 453
    :cond_1d
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .registers 17
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 246
    const/4 v14, 0x0

    .line 247
    .local v14, "setDefault":Z
    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interMethodDispatch1$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$destroyLocalPlayer(Landroid/media/RingtoneEx;)V

    .line 249
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object v4, p0

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v6}, Landroid/media/RingtoneEx;->mUri_aroundBody9$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/net/Uri;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Landroid/net/Uri;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 250
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mUri_aroundBody11$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mUri_aroundBody13$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 423
    :cond_33
    :goto_33
    return-void

    .line 256
    :cond_34
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p0

    move-object v4, p0

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody15$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 259
    const/4 v10, 0x0

    .line 260
    .local v10, "path":Ljava/lang/String;
    const/4 v9, 0x0

    .line 262
    .local v9, "nStatus":I
    :try_start_47
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v0, :cond_69

    .line 263
    iget-object v0, p0, Landroid/media/RingtoneEx;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p0, v1, p0, v2}, Landroid/media/RingtoneEx;->mUri_aroundBody17$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/lgdrm/DrmFwExt;->getActualRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 264
    if-eqz v10, :cond_69

    .line 265
    iget-object v0, p0, Landroid/media/RingtoneEx;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v10, v1, v2, v3}, Lcom/lge/lgdrm/DrmFwExt;->checkDRMRingtone(Landroid/content/Context;Ljava/lang/String;ZZZ)I

    move-result v9

    .line 268
    :cond_69
    const/4 v0, 0x1

    if-ne v9, v0, :cond_14d

    .line 275
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody19$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/RingtoneEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 276
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody21$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p0, v1, p0, v2}, Landroid/media/RingtoneEx;->mAudioAttributes_aroundBody23$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 345
    :goto_91
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody71$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/RingtoneEx;->getStreamType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 348
    const-string v0, "DCM"

    const-string v1, "ro.build.target_operator"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_ac
    .catch Ljava/lang/SecurityException; {:try_start_47 .. :try_end_ac} :catch_175
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_ac} :catch_2ac
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_47 .. :try_end_ac} :catch_2d8

    move-result v0

    if-eqz v0, :cond_3f2

    .line 350
    :try_start_af
    const-string v0, "RingtoneEx"

    const-string v1, "[hy] mLocalPlayer.prepare();"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mPlaybackSettingsLock_aroundBody73$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_c0} :catch_36c
    .catch Ljava/lang/SecurityException; {:try_start_af .. :try_end_c0} :catch_175
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_c0} :catch_2ac
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_af .. :try_end_c0} :catch_2d8

    .line 352
    :try_start_c0
    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interMethodDispatch1$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$applyPlaybackProperties_sync(Landroid/media/RingtoneEx;)V

    .line 351
    monitor-exit v1
    :try_end_c4
    .catchall {:try_start_c0 .. :try_end_c4} :catchall_369

    .line 354
    :try_start_c4
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody75$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_d0} :catch_36c
    .catch Ljava/lang/SecurityException; {:try_start_c4 .. :try_end_d0} :catch_175
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_d0} :catch_2ac
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c4 .. :try_end_d0} :catch_2d8

    .line 399
    :cond_d0
    :goto_d0
    if-eqz v14, :cond_139

    .line 400
    const-string v0, "RingtoneEx"

    const-string v1, "Set default ringtone!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :try_start_d9
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p0

    move-object v4, p0

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody105$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 403
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody107$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/RingtoneEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 404
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody109$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p0, v1, p0, v2}, Landroid/media/RingtoneEx;->mAudioAttributes_aroundBody111$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 405
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody113$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/RingtoneEx;->getStreamType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 406
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mPlaybackSettingsLock_aroundBody115$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_129} :catch_414

    .line 407
    :try_start_129
    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interMethodDispatch1$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$applyPlaybackProperties_sync(Landroid/media/RingtoneEx;)V

    .line 406
    monitor-exit v1
    :try_end_12d
    .catchall {:try_start_129 .. :try_end_12d} :catchall_411

    .line 409
    :try_start_12d
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody117$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_139} :catch_414

    .line 417
    :cond_139
    :goto_139
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody119$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_42b

    .line 418
    const-string v0, "RingtoneEx"

    const-string v1, "Successfully created local player"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33

    .line 278
    :cond_14d
    const/4 v0, 0x2

    if-ne v9, v0, :cond_19b

    .line 279
    :try_start_150
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody25$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 280
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody27$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p0, v1, p0, v2}, Landroid/media/RingtoneEx;->mAudioAttributes_aroundBody29$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 281
    iput-object v10, p0, Landroid/media/RingtoneEx;->mDrmPath:Ljava/lang/String;
    :try_end_173
    .catch Ljava/lang/SecurityException; {:try_start_150 .. :try_end_173} :catch_175
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_173} :catch_2ac
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_150 .. :try_end_173} :catch_2d8

    goto/16 :goto_91

    .line 378
    :catch_175
    move-exception v8

    .line 379
    .local v8, "e":Ljava/lang/SecurityException;
    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interMethodDispatch1$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$destroyLocalPlayer(Landroid/media/RingtoneEx;)V

    .line 380
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mAllowRemote_aroundBody99$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    if-nez v0, :cond_d0

    .line 381
    const-string v0, "RingtoneEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remote playback not allowed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v14, 0x1

    goto/16 :goto_d0

    .line 288
    .end local v8    # "e":Ljava/lang/SecurityException;
    :cond_19b
    :try_start_19b
    const-string v0, "RingtoneEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ringtone uri :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, p0, v2, p0, v3}, Landroid/media/RingtoneEx;->mUri_aroundBody31$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  path :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mUri_aroundBody33$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    .line 292
    .local v7, "authority":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v11

    .line 293
    .local v11, "ringToneType":I
    iget-object v0, p0, Landroid/media/RingtoneEx;->mContext:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/lge/media/RingtoneManagerEx;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v13

    .line 295
    .local v13, "ringtoneUri":Landroid/net/Uri;
    const-string v0, "settings"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2fd

    if-nez v13, :cond_2fd

    .line 299
    const-string v0, "DCM"

    const-string v1, "ro.build.target_operator"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d2

    .line 300
    const-string v0, "trigger_restart_min_framework"

    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d2

    .line 301
    const-string v0, "RingtoneEx"

    const-string v1, "Play ringtone in Encryption Mode for DCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_206
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_206} :catch_27d
    .catch Ljava/lang/SecurityException; {:try_start_19b .. :try_end_206} :catch_175
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19b .. :try_end_206} :catch_2d8

    .line 315
    :cond_206
    :goto_206
    if-nez v10, :cond_33b

    .line 319
    :try_start_208
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mUri_aroundBody35$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_314

    .line 320
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody37$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RingtoneEx;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, p0, v2, p0, v3}, Landroid/media/RingtoneEx;->mUri_aroundBody39$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 321
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody41$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p0, v1, p0, v2}, Landroid/media/RingtoneEx;->mAudioAttributes_aroundBody43$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V
    :try_end_23f
    .catch Ljava/lang/Exception; {:try_start_208 .. :try_end_23f} :catch_241
    .catch Ljava/io/IOException; {:try_start_208 .. :try_end_23f} :catch_27d
    .catch Ljava/lang/SecurityException; {:try_start_208 .. :try_end_23f} :catch_175
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_208 .. :try_end_23f} :catch_2d8

    goto/16 :goto_91

    .line 326
    :catch_241
    move-exception v8

    .line 327
    .local v8, "e":Ljava/lang/Exception;
    :try_start_242
    const-string v0, "RingtoneEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problem setDataSource; try to play default ringtone e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody51$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/RingtoneEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 329
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody53$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p0, v1, p0, v2}, Landroid/media/RingtoneEx;->mAudioAttributes_aroundBody55$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V
    :try_end_27b
    .catch Ljava/io/IOException; {:try_start_242 .. :try_end_27b} :catch_27d
    .catch Ljava/lang/SecurityException; {:try_start_242 .. :try_end_27b} :catch_175
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_242 .. :try_end_27b} :catch_2d8

    goto/16 :goto_91

    .line 338
    .end local v7    # "authority":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v11    # "ringToneType":I
    .end local v13    # "ringtoneUri":Landroid/net/Uri;
    :catch_27d
    move-exception v0

    :try_start_27e
    const-string v0, "RingtoneEx"

    const-string v1, "Problem setDataSource; try to play default ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody65$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/RingtoneEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 340
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody67$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p0, v1, p0, v2}, Landroid/media/RingtoneEx;->mAudioAttributes_aroundBody69$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V
    :try_end_2aa
    .catch Ljava/lang/SecurityException; {:try_start_27e .. :try_end_2aa} :catch_175
    .catch Ljava/io/IOException; {:try_start_27e .. :try_end_2aa} :catch_2ac
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27e .. :try_end_2aa} :catch_2d8

    goto/16 :goto_91

    .line 384
    :catch_2ac
    move-exception v8

    .line 385
    .local v8, "e":Ljava/io/IOException;
    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interMethodDispatch1$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$destroyLocalPlayer(Landroid/media/RingtoneEx;)V

    .line 386
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mAllowRemote_aroundBody101$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    if-nez v0, :cond_d0

    .line 387
    const-string v0, "RingtoneEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remote playback not allowed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v14, 0x1

    goto/16 :goto_d0

    .line 303
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v7    # "authority":Ljava/lang/String;
    .restart local v11    # "ringToneType":I
    .restart local v13    # "ringtoneUri":Landroid/net/Uri;
    :cond_2d2
    :try_start_2d2
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v0
    :try_end_2d8
    .catch Ljava/io/IOException; {:try_start_2d2 .. :try_end_2d8} :catch_27d
    .catch Ljava/lang/SecurityException; {:try_start_2d2 .. :try_end_2d8} :catch_175
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2d2 .. :try_end_2d8} :catch_2d8

    .line 390
    .end local v7    # "authority":Ljava/lang/String;
    .end local v11    # "ringToneType":I
    .end local v13    # "ringtoneUri":Landroid/net/Uri;
    :catch_2d8
    move-exception v8

    .line 391
    .local v8, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interMethodDispatch1$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$destroyLocalPlayer(Landroid/media/RingtoneEx;)V

    .line 392
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mAllowRemote_aroundBody103$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    if-nez v0, :cond_d0

    .line 393
    const-string v0, "RingtoneEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remote playback not allowed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d0

    .line 306
    .end local v8    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v7    # "authority":Ljava/lang/String;
    .restart local v11    # "ringToneType":I
    .restart local v13    # "ringtoneUri":Landroid/net/Uri;
    :cond_2fd
    if-eqz v10, :cond_206

    .line 307
    :try_start_2ff
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .local v12, "ringtoneFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_206

    .line 309
    const-string v0, "RingtoneEx"

    const-string v1, "File not exists, Change path to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_311
    .catch Ljava/io/IOException; {:try_start_2ff .. :try_end_311} :catch_27d
    .catch Ljava/lang/SecurityException; {:try_start_2ff .. :try_end_311} :catch_175
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2ff .. :try_end_311} :catch_2d8

    .line 310
    const/4 v10, 0x0

    goto/16 :goto_206

    .line 323
    .end local v12    # "ringtoneFile":Ljava/io/File;
    :cond_314
    :try_start_314
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody45$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/RingtoneEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 324
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody47$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p0, v1, p0, v2}, Landroid/media/RingtoneEx;->mAudioAttributes_aroundBody49$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V
    :try_end_339
    .catch Ljava/lang/Exception; {:try_start_314 .. :try_end_339} :catch_241
    .catch Ljava/io/IOException; {:try_start_314 .. :try_end_339} :catch_27d
    .catch Ljava/lang/SecurityException; {:try_start_314 .. :try_end_339} :catch_175
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_314 .. :try_end_339} :catch_2d8

    goto/16 :goto_91

    .line 334
    :cond_33b
    :try_start_33b
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody57$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RingtoneEx;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, p0, v2, p0, v3}, Landroid/media/RingtoneEx;->mUri_aroundBody59$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 335
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody61$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p0, v1, p0, v2}, Landroid/media/RingtoneEx;->mAudioAttributes_aroundBody63$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V
    :try_end_367
    .catch Ljava/io/IOException; {:try_start_33b .. :try_end_367} :catch_27d
    .catch Ljava/lang/SecurityException; {:try_start_33b .. :try_end_367} :catch_175
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_33b .. :try_end_367} :catch_2d8

    goto/16 :goto_91

    .line 351
    .end local v7    # "authority":Ljava/lang/String;
    .end local v11    # "ringToneType":I
    .end local v13    # "ringtoneUri":Landroid/net/Uri;
    :catchall_369
    move-exception v0

    :try_start_36a
    monitor-exit v1
    :try_end_36b
    .catchall {:try_start_36a .. :try_end_36b} :catchall_369

    :try_start_36b
    throw v0
    :try_end_36c
    .catch Ljava/lang/Exception; {:try_start_36b .. :try_end_36c} :catch_36c
    .catch Ljava/lang/SecurityException; {:try_start_36b .. :try_end_36c} :catch_175
    .catch Ljava/io/IOException; {:try_start_36b .. :try_end_36c} :catch_2ac
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_36b .. :try_end_36c} :catch_2d8

    .line 356
    :catch_36c
    move-exception v0

    :try_start_36d
    const-string v0, "RingtoneEx"

    const-string v1, "[run][hy] exception is occurred. mLocalPlayer.prepare() Error: Try to play a default Ringtone!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody77$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 359
    const/4 v2, 0x0

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p0

    move-object v4, p0

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody79$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 360
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p0

    move-object v4, p0

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody81$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Landroid/media/MediaPlayer;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 361
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody83$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/RingtoneEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 362
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody85$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p0, v1, p0, v2}, Landroid/media/RingtoneEx;->mAudioAttributes_aroundBody87$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 363
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody89$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/RingtoneEx;->getStreamType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 364
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mPlaybackSettingsLock_aroundBody91$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_3dd
    .catch Ljava/lang/SecurityException; {:try_start_36d .. :try_end_3dd} :catch_175
    .catch Ljava/io/IOException; {:try_start_36d .. :try_end_3dd} :catch_2ac
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_36d .. :try_end_3dd} :catch_2d8

    .line 365
    :try_start_3dd
    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interMethodDispatch1$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$applyPlaybackProperties_sync(Landroid/media/RingtoneEx;)V

    .line 364
    monitor-exit v1
    :try_end_3e1
    .catchall {:try_start_3dd .. :try_end_3e1} :catchall_3ef

    .line 367
    :try_start_3e1
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody93$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_3ed
    .catch Ljava/lang/SecurityException; {:try_start_3e1 .. :try_end_3ed} :catch_175
    .catch Ljava/io/IOException; {:try_start_3e1 .. :try_end_3ed} :catch_2ac
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3e1 .. :try_end_3ed} :catch_2d8

    goto/16 :goto_d0

    .line 364
    :catchall_3ef
    move-exception v0

    :try_start_3f0
    monitor-exit v1
    :try_end_3f1
    .catchall {:try_start_3f0 .. :try_end_3f1} :catchall_3ef

    :try_start_3f1
    throw v0

    .line 370
    :cond_3f2
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mPlaybackSettingsLock_aroundBody95$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_3fc
    .catch Ljava/lang/SecurityException; {:try_start_3f1 .. :try_end_3fc} :catch_175
    .catch Ljava/io/IOException; {:try_start_3f1 .. :try_end_3fc} :catch_2ac
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3f1 .. :try_end_3fc} :catch_2d8

    .line 371
    :try_start_3fc
    invoke-static {p0}, Landroid/media/RingtoneEx$PrivateAccess;->ajc$interMethodDispatch1$android_media_RingtoneEx$PrivateAccess$android_media_RingtoneEx$applyPlaybackProperties_sync(Landroid/media/RingtoneEx;)V

    .line 370
    monitor-exit v1
    :try_end_400
    .catchall {:try_start_3fc .. :try_end_400} :catchall_40e

    .line 373
    :try_start_400
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody97$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_40c
    .catch Ljava/lang/SecurityException; {:try_start_400 .. :try_end_40c} :catch_175
    .catch Ljava/io/IOException; {:try_start_400 .. :try_end_40c} :catch_2ac
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_400 .. :try_end_40c} :catch_2d8

    goto/16 :goto_d0

    .line 370
    :catchall_40e
    move-exception v0

    :try_start_40f
    monitor-exit v1
    :try_end_410
    .catchall {:try_start_40f .. :try_end_410} :catchall_40e

    :try_start_410
    throw v0
    :try_end_411
    .catch Ljava/lang/SecurityException; {:try_start_410 .. :try_end_411} :catch_175
    .catch Ljava/io/IOException; {:try_start_410 .. :try_end_411} :catch_2ac
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_410 .. :try_end_411} :catch_2d8

    .line 406
    :catchall_411
    move-exception v0

    :try_start_412
    monitor-exit v1
    :try_end_413
    .catchall {:try_start_412 .. :try_end_413} :catchall_411

    :try_start_413
    throw v0
    :try_end_414
    .catch Ljava/io/IOException; {:try_start_413 .. :try_end_414} :catch_414

    .line 410
    :catch_414
    move-exception v8

    .line 411
    .local v8, "e":Ljava/io/IOException;
    const-string v0, "RingtoneEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDefault Ringtone is errer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_139

    .line 420
    .end local v8    # "e":Ljava/io/IOException;
    :cond_42b
    const-string v0, "RingtoneEx"

    const-string v1, "Problem opening; delegating to remote player"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33
.end method

.method public setVolume(F)V
    .registers 4
    .param p1, "volume"    # F

    .prologue
    const/4 v1, 0x0

    .line 432
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody121$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 433
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mLocalPlayer_aroundBody123$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 439
    :goto_16
    return-void

    .line 434
    :cond_17
    invoke-static {}, Landroid/media/RingtoneEx$PrivateAccess;->aspectOf()Landroid/media/RingtoneEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/media/RingtoneEx;->mAllowRemote_aroundBody125$advice(Landroid/media/RingtoneEx;Landroid/media/RingtoneEx;Landroid/media/RingtoneEx$PrivateAccess;Landroid/media/RingtoneEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 435
    const-string v0, "RingtoneEx"

    const-string v1, "setVolume is only supported by local playback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 437
    :cond_29
    const-string v0, "RingtoneEx"

    const-string v1, "Neither local nor remote playback available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public stop()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 525
    iget-object v0, p0, Landroid/media/RingtoneEx;->mDrmPath:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 527
    iget-object v0, p0, Landroid/media/RingtoneEx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/RingtoneEx;->mDrmPath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v2, v3}, Lcom/lge/lgdrm/DrmFwExt;->checkDRMRingtone(Landroid/content/Context;Ljava/lang/String;ZZZ)I

    .line 530
    :cond_d
    invoke-super {p0}, Landroid/media/Ringtone;->stop()V

    .line 531
    return-void
.end method
