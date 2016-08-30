.class public Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
.super Landroid/preference/SeekBarVolumizer;
.source "VolumePreferenceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/preference/VolumePreferenceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizerEx"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeekBarVolumizerEx"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLastProgress:I

.field private mOriginalStreamVolume:I

.field private final mReceiver:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;

.field private mRingtone:Landroid/media/Ringtone;

.field private final mStreamType:I

.field final synthetic this$0:Lcom/lge/preference/VolumePreferenceEx;


# direct methods
.method public constructor <init>(Lcom/lge/preference/VolumePreferenceEx;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V
    .registers 9
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "seekBar"    # Landroid/widget/SeekBar;
    .param p4, "streamType"    # I
    .param p5, "defaultUri"    # Landroid/net/Uri;
    .param p6, "callback"    # Landroid/preference/SeekBarVolumizer$Callback;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;

    .line 66
    invoke-direct {p0, p2, p4, p5, p6}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    invoke-static {p0}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$interFieldInit$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$mRingtone(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V

    invoke-static {p0}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$interFieldInit$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$mLastProgress(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V

    .line 58
    new-instance v0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;-><init>(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;)V

    iput-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mReceiver:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;

    .line 67
    iput-object p2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mContext:Landroid/content/Context;

    .line 68
    iput p4, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    .line 70
    const-string v0, "SeekBarVolumizerEx"

    const-string v1, "SeekBarVolumizerEx"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mReceiver:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->setListening(Z)V

    .line 72
    # getter for: Lcom/lge/preference/VolumePreferenceEx;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {p1}, Lcom/lge/preference/VolumePreferenceEx;->access$0(Lcom/lge/preference/VolumePreferenceEx;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mOriginalStreamVolume:I

    .line 73
    invoke-virtual {p0, p3}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/lge/preference/VolumePreferenceEx;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/preference/SeekBarVolumizer$Callback;)V
    .registers 13
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "seekBar"    # Landroid/widget/SeekBar;
    .param p4, "streamType"    # I
    .param p5, "callback"    # Landroid/preference/SeekBarVolumizer$Callback;

    .prologue
    .line 61
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;-><init>(Lcom/lge/preference/VolumePreferenceEx;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/content/Context;
    .registers 2
    .param p0, "arg0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;
    .registers 2
    .param p0, "arg0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mReceiver:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .registers 2
    .param p0, "arg0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 55
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    return v0
.end method

.method static synthetic access$3(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .registers 2
    .param p0, "arg0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 56
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mOriginalStreamVolume:I

    return v0
.end method

.method static synthetic access$4(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;I)V
    .registers 2
    .param p0, "arg0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .param p1, "arg1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mOriginalStreamVolume:I

    return-void
.end method

.method static synthetic access$5(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Lcom/lge/preference/VolumePreferenceEx;
    .registers 2
    .param p0, "arg0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;

    return-object v0
.end method

.method public static ajc$get$mLastProgress(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mLastProgress:I

    return v0
.end method

.method public static ajc$get$mRingtone(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/Ringtone;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method public static ajc$set$mLastProgress(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mLastProgress:I

    return-void
.end method

.method public static ajc$set$mRingtone(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Landroid/media/Ringtone;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mRingtone:Landroid/media/Ringtone;

    return-void
.end method

.method private static final mLastProgress_aroundBody0(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .registers 3

    .prologue
    .line 108
    invoke-static {p1}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$mLastProgress(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v0

    return v0
.end method

.method private static final mLastProgress_aroundBody1$advice(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .param p1, "target"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 250
    invoke-static {p3}, Landroid/preference/SeekBarVolumizer;->ajc$get$mLastProgress(Landroid/preference/SeekBarVolumizer;)I

    move-result v0

    return v0
.end method

.method private static final mLastProgress_aroundBody2(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .registers 3

    .prologue
    .line 109
    invoke-static {p1}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$mLastProgress(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v0

    return v0
.end method

.method private static final mLastProgress_aroundBody3$advice(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .param p1, "target"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 250
    invoke-static {p3}, Landroid/preference/SeekBarVolumizer;->ajc$get$mLastProgress(Landroid/preference/SeekBarVolumizer;)I

    move-result v0

    return v0
.end method

.method private static final mLastProgress_aroundBody4(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .registers 3

    .prologue
    .line 111
    invoke-static {p1}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$mLastProgress(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v0

    return v0
.end method

.method private static final mLastProgress_aroundBody5$advice(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .param p1, "target"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 250
    invoke-static {p3}, Landroid/preference/SeekBarVolumizer;->ajc$get$mLastProgress(Landroid/preference/SeekBarVolumizer;)I

    move-result v0

    return v0
.end method

.method private static final mLastProgress_aroundBody6(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .registers 3

    .prologue
    .line 114
    invoke-static {p1}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$mLastProgress(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v0

    return v0
.end method

.method private static final mLastProgress_aroundBody7$advice(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .param p1, "target"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 250
    invoke-static {p3}, Landroid/preference/SeekBarVolumizer;->ajc$get$mLastProgress(Landroid/preference/SeekBarVolumizer;)I

    move-result v0

    return v0
.end method

.method private static final mRingtone_aroundBody8(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/Ringtone;
    .registers 3

    .prologue
    .line 122
    invoke-static {p1}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$mRingtone(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method private static final mRingtone_aroundBody9$advice(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/Ringtone;
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .param p1, "target"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 245
    invoke-static {p3}, Landroid/preference/SeekBarVolumizer;->ajc$get$mRingtone(Landroid/preference/SeekBarVolumizer;)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ajc$interMethodDispatch2$com_lge_preference_VolumePreferenceEx$postStartSample()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$interMethod$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$postStartSample(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_33

    .line 108
    invoke-static {}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->aspectOf()Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v4}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mLastProgress_aroundBody1$advice(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    if-ltz v0, :cond_25

    .line 109
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/lge/preference/VolumePreferenceEx;->access$0(Lcom/lge/preference/VolumePreferenceEx;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    invoke-static {}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->aspectOf()Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;

    move-result-object v2

    invoke-static {p0, p0, v2, p0, v4}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mLastProgress_aroundBody3$advice(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 111
    :cond_25
    invoke-static {}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->aspectOf()Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v4}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mLastProgress_aroundBody5$advice(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    if-lez v0, :cond_32

    .line 112
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->startSample()V

    .line 118
    :cond_32
    :goto_32
    return-void

    .line 114
    :cond_33
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->isSamplePlaying()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->aspectOf()Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v4}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mLastProgress_aroundBody7$advice(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    if-nez v0, :cond_32

    .line 115
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->stopSample()V

    goto :goto_32
.end method

.method public revertVolume()V
    .registers 5

    .prologue
    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;

    invoke-direct {v1, p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;-><init>(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V

    .line 95
    const-wide/16 v2, 0x64

    .line 80
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    return-void
.end method

.method public startSample()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;

    invoke-virtual {v0, p0}, Lcom/lge/preference/VolumePreferenceEx;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    .line 122
    invoke-static {}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->aspectOf()Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mRingtone_aroundBody9$advice(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 124
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/lge/preference/VolumePreferenceEx;->access$0(Lcom/lge/preference/VolumePreferenceEx;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    .line 125
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->stopSample()V

    .line 131
    :cond_24
    :goto_24
    return-void

    .line 129
    :cond_25
    invoke-static {p0}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$interMethodDispatch1$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$postStartSample(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V

    goto :goto_24
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 101
    invoke-super {p0}, Landroid/preference/SeekBarVolumizer;->stop()V

    .line 102
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mReceiver:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->setListening(Z)V

    .line 103
    return-void
.end method
