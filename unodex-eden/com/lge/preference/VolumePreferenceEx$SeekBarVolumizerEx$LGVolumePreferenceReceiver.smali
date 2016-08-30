.class public final Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumePreferenceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LGVolumePreferenceReceiver"
.end annotation


# instance fields
.field private mListening:Z

.field private mOuter:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

.field private mSeekBar:Landroid/widget/SeekBar;

.field final synthetic this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;


# direct methods
.method private constructor <init>(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V
    .registers 4

    .prologue
    .line 133
    iput-object p1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {p0}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$interFieldInit$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver$mOuter(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;)V

    .line 134
    const/4 v0, 0x0

    :try_start_9
    iput-boolean v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->mListening:Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_b} :catch_13

    invoke-static {}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->aspectOf()Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$after$com_lge_preference_VolumePreferenceEx$PrivateAccess$1$aec90858(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;)V

    return-void

    :catch_13
    move-exception v0

    invoke-static {}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->aspectOf()Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$after$com_lge_preference_VolumePreferenceEx$PrivateAccess$1$aec90858(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;)V
    .registers 4

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;-><init>(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V

    invoke-static {}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->aspectOf()Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$after$com_lge_preference_VolumePreferenceEx$PrivateAccess$1$aec90858(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;)V

    return-void
.end method

.method public static ajc$get$mOuter(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;)Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->mOuter:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    return-object v0
.end method

.method public static ajc$set$mOuter(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->mOuter:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    return-void
.end method

.method private static final mSeekBar_aroundBody0(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;)Landroid/widget/SeekBar;
    .registers 3

    .prologue
    .line 164
    iget-object v0, p1, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private static final mSeekBar_aroundBody1$advice(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/widget/SeekBar;
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;
    .param p1, "target"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 240
    invoke-static {p3}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver$mOuter(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;)Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->ajc$get$mSeekBar(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    return-object v0
.end method

.method private static final mSeekBar_aroundBody2(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;)Landroid/widget/SeekBar;
    .registers 3

    .prologue
    .line 171
    iget-object v0, p1, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private static final mSeekBar_aroundBody3$advice(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/widget/SeekBar;
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;
    .param p1, "target"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 240
    invoke-static {p3}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver$mOuter(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;)Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->ajc$get$mSeekBar(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    return-object v0
.end method

.method private onActionHeadsetPlug(I)V
    .registers 7
    .param p1, "headsetState"    # I

    .prologue
    const/4 v4, 0x0

    .line 155
    const/4 v1, 0x1

    if-ne p1, v1, :cond_c

    .line 157
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_c} :catch_79

    .line 163
    :cond_c
    :goto_c
    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;
    invoke-static {v1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$5(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Lcom/lge/preference/VolumePreferenceEx;

    move-result-object v1

    # getter for: Lcom/lge/preference/VolumePreferenceEx;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/lge/preference/VolumePreferenceEx;->access$0(Lcom/lge/preference/VolumePreferenceEx;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I
    invoke-static {v2}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$2(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 164
    .local v0, "newOriginalvolume":I
    invoke-static {}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->aspectOf()Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;

    move-result-object v1

    invoke-static {p0, p0, v1, p0, v4}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->mSeekBar_aroundBody1$advice(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_78

    .line 165
    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;
    invoke-static {v1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$5(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Lcom/lge/preference/VolumePreferenceEx;

    move-result-object v1

    # getter for: Lcom/lge/preference/VolumePreferenceEx;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/lge/preference/VolumePreferenceEx;->access$0(Lcom/lge/preference/VolumePreferenceEx;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_44

    .line 166
    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I
    invoke-static {v1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$2(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_78

    .line 168
    :cond_44
    const-string v1, "SeekBarVolumizerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ACTION_HEADSET_PLUG: Org vol: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mOriginalStreamVolume:I
    invoke-static {v3}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$3(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 169
    const-string v3, ", New vol"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->aspectOf()Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;

    move-result-object v1

    invoke-static {p0, p0, v1, p0, v4}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->mSeekBar_aroundBody3$advice(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 172
    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    invoke-static {v1, v0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$4(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;I)V

    .line 174
    :cond_78
    return-void

    .end local v0    # "newOriginalvolume":I
    :catch_79
    move-exception v1

    goto :goto_c
.end method

.method private onActionPhoneStateChanged(Ljava/lang/String;)V
    .registers 3
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 177
    if-eqz p1, :cond_f

    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 178
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    invoke-virtual {v0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->stopSample()V

    .line 180
    :cond_f
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x2

    .line 184
    const-string v2, "SeekBarVolumizerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onReceive() action:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 187
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 188
    .local v0, "headsetState":I
    invoke-direct {p0, v0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->onActionHeadsetPlug(I)V

    .line 209
    .end local v0    # "headsetState":I
    :cond_2f
    :goto_2f
    return-void

    .line 194
    :cond_30
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 195
    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "state":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->onActionPhoneStateChanged(Ljava/lang/String;)V

    goto :goto_2f

    .line 201
    .end local v1    # "state":Ljava/lang/String;
    :cond_46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 202
    const-string v2, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_2f

    .line 203
    iget-object v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    invoke-virtual {v2}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->isSamplePlaying()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 204
    iget-object v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    invoke-virtual {v2}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->stopSample()V

    goto :goto_2f
.end method

.method public setListening(Z)V
    .registers 6
    .param p1, "listening"    # Z

    .prologue
    .line 140
    const-string v1, "SeekBarVolumizerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setListening() listening = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-boolean v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->mListening:Z

    if-ne v1, p1, :cond_19

    .line 152
    :goto_18
    return-void

    .line 142
    :cond_19
    iput-boolean p1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->mListening:Z

    .line 143
    if-eqz p1, :cond_41

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$0(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mReceiver:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;
    invoke-static {v2}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$1(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_18

    .line 150
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_41
    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$0(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mReceiver:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;
    invoke-static {v2}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$1(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_18
.end method
