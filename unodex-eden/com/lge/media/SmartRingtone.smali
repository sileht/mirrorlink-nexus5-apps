.class public Lcom/lge/media/SmartRingtone;
.super Ljava/lang/Object;
.source "SmartRingtone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/media/SmartRingtone$NoiseEstimationThread;
    }
.end annotation


# static fields
.field private static final FILT_DEN:S = -0x60e4s

.field private static final FILT_NUM:[S

.field private static LGE_DEBUG:Z = false

.field private static final NUM_MAX_FRAMES:I = 0xf

.field private static final SAMPLE_RATE:I = 0xac44

.field private static TAG:Ljava/lang/String;

.field private static mNoiseAverage:I

.field private static smart_ringtone_level_1:I

.field private static smart_ringtone_level_2:I

.field private static smart_ringtone_level_3:I

.field private static smart_ringtone_level_4:I

.field private static smart_ringtone_level_vib_1:I

.field private static smart_ringtone_level_vib_2:I

.field private static smart_ringtone_level_vib_3:I

.field private static smart_ringtone_level_vib_4:I


# instance fields
.field arec:Landroid/media/AudioRecord;

.field buffer:[S

.field buffersize:I

.field private mAdjustVolume:I

.field private mAudio:Landroid/media/MediaPlayer;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDelayedVolumeUpHandler:Landroid/os/Handler;

.field private mExitThread:Z

.field private mInitializationLooper:Landroid/os/Looper;

.field private mIsFromPhoneApp:Z

.field private mMicTestDone:Z

.field private mPrevVolume:I

.field private mSmartRingtoneLevel:I

.field private mStreamType:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 24
    const-string v2, "SmartRingtone"

    sput-object v2, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    .line 25
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1b

    :goto_e
    sput-boolean v0, Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z

    .line 44
    sput v1, Lcom/lge/media/SmartRingtone;->mNoiseAverage:I

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [S

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/lge/media/SmartRingtone;->FILT_NUM:[S

    .line 59
    return-void

    :cond_1b
    move v0, v1

    .line 25
    goto :goto_e

    .line 49
    nop

    :array_1e
    .array-data 2
        0x7071s
        -0x7071s
    .end array-data
.end method

.method public constructor <init>(Landroid/media/AudioManager;Landroid/content/Context;)V
    .registers 6
    .param p1, "manager"    # Landroid/media/AudioManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mMicTestDone:Z

    .line 32
    iput-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mIsFromPhoneApp:Z

    .line 33
    iput v0, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/media/SmartRingtone;->mStreamType:I

    .line 61
    iput-object v1, p0, Lcom/lge/media/SmartRingtone;->mDelayedVolumeUpHandler:Landroid/os/Handler;

    .line 62
    iput-object v1, p0, Lcom/lge/media/SmartRingtone;->mInitializationLooper:Landroid/os/Looper;

    .line 65
    iput-object p1, p0, Lcom/lge/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    .line 66
    iput-object p2, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    .line 68
    sget-boolean v0, Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z

    if-eqz v0, :cond_34

    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mContext.toString() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_34
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneApp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 71
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 72
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LTECallApp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 73
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoTelephony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 74
    :cond_6c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mIsFromPhoneApp:Z

    .line 76
    :cond_6f
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/media/SmartRingtone;->mPrevVolume:I

    .line 78
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$integer;->config_smart_ringtone_level_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_1:I

    .line 79
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$integer;->config_smart_ringtone_level_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_2:I

    .line 80
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$integer;->config_smart_ringtone_level_3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_3:I

    .line 81
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$integer;->config_smart_ringtone_level_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_4:I

    .line 82
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$integer;->config_smart_ringtone_level_vib_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_1:I

    .line 83
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$integer;->config_smart_ringtone_level_vib_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_2:I

    .line 84
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$integer;->config_smart_ringtone_level_vib_3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_3:I

    .line 85
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$integer;->config_smart_ringtone_level_vib_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_4:I

    .line 87
    sget-boolean v0, Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z

    if-eqz v0, :cond_196

    .line 88
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vib_4 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_4:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vib_3 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vib_2 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vib_1 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "level_4 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_4:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "level_3 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "level_2 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "level_1 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_196
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/media/SmartRingtone;)I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/lge/media/SmartRingtone;->mStreamType:I

    return v0
.end method

.method static synthetic access$10()[S
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/lge/media/SmartRingtone;->FILT_NUM:[S

    return-object v0
.end method

.method static synthetic access$11(I)V
    .registers 1

    .prologue
    .line 44
    sput p0, Lcom/lge/media/SmartRingtone;->mNoiseAverage:I

    return-void
.end method

.method static synthetic access$12(Lcom/lge/media/SmartRingtone;)Landroid/media/MediaPlayer;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mAudio:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lge/media/SmartRingtone;I)V
    .registers 2

    .prologue
    .line 34
    iput p1, p0, Lcom/lge/media/SmartRingtone;->mPrevVolume:I

    return-void
.end method

.method static synthetic access$14(Lcom/lge/media/SmartRingtone;)I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/lge/media/SmartRingtone;->mPrevVolume:I

    return v0
.end method

.method static synthetic access$15(Lcom/lge/media/SmartRingtone;)V
    .registers 1

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/lge/media/SmartRingtone;->setSmartRingtoneLevel()V

    return-void
.end method

.method static synthetic access$16(Lcom/lge/media/SmartRingtone;)I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/lge/media/SmartRingtone;->mAdjustVolume:I

    return v0
.end method

.method static synthetic access$2(Lcom/lge/media/SmartRingtone;)Landroid/media/AudioManager;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$3()I
    .registers 1

    .prologue
    .line 44
    sget v0, Lcom/lge/media/SmartRingtone;->mNoiseAverage:I

    return v0
.end method

.method static synthetic access$4(Lcom/lge/media/SmartRingtone;I)V
    .registers 2

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/lge/media/SmartRingtone;->calculateSmartRingtoneLevel(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/lge/media/SmartRingtone;)I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    return v0
.end method

.method static synthetic access$6(Lcom/lge/media/SmartRingtone;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mDelayedVolumeUpHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lge/media/SmartRingtone;I)V
    .registers 2

    .prologue
    .line 33
    iput p1, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    return-void
.end method

.method static synthetic access$8()Z
    .registers 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z

    return v0
.end method

.method static synthetic access$9(Lcom/lge/media/SmartRingtone;)Z
    .registers 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mExitThread:Z

    return v0
.end method

.method private calculateSmartRingtoneLevel(I)V
    .registers 11
    .param p1, "noise"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 300
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VIBRATE_WHEN_RINGING = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_when_ringing"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4f

    .line 302
    sget v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_4:I

    if-lt p1, v0, :cond_3a

    .line 303
    iput v8, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    .line 322
    :cond_39
    :goto_39
    return-void

    .line 304
    :cond_3a
    sget v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_3:I

    if-lt p1, v0, :cond_41

    .line 305
    iput v7, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_39

    .line 306
    :cond_41
    sget v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_2:I

    if-lt p1, v0, :cond_48

    .line 307
    iput v6, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_39

    .line 308
    :cond_48
    sget v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_1:I

    if-lt p1, v0, :cond_39

    .line 309
    iput v5, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_39

    .line 312
    :cond_4f
    sget v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_4:I

    if-lt p1, v0, :cond_56

    .line 313
    iput v8, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_39

    .line 314
    :cond_56
    sget v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_3:I

    if-lt p1, v0, :cond_5d

    .line 315
    iput v7, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_39

    .line 316
    :cond_5d
    sget v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_2:I

    if-lt p1, v0, :cond_64

    .line 317
    iput v6, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_39

    .line 318
    :cond_64
    sget v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_1:I

    if-lt p1, v0, :cond_39

    .line 319
    iput v5, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_39
.end method

.method private getSmartRingtoneMode()Z
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 364
    iget-object v5, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/lge/internal/R$bool;->config_use_smart_ringtone:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 365
    .local v0, "config_use_smart_ringtone":Z
    if-eqz v0, :cond_35

    .line 366
    iget-object v5, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_ringtone"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 368
    .local v2, "isSmartRingtoneEnabled":I
    :try_start_1c
    iget-object v5, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_ringtone"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_27
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_27} :catch_2a

    .line 372
    :goto_27
    if-ne v2, v3, :cond_33

    .line 374
    .end local v2    # "isSmartRingtoneEnabled":I
    :goto_29
    return v3

    .line 369
    .restart local v2    # "isSmartRingtoneEnabled":I
    :catch_2a
    move-exception v1

    .line 370
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v5, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    const-string v6, "[smart ringtone] AudioManager:getSmartRingtoneMode: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_33
    move v3, v4

    .line 372
    goto :goto_29

    .end local v2    # "isSmartRingtoneEnabled":I
    :cond_35
    move v3, v4

    .line 374
    goto :goto_29
.end method

.method private setSmartRingtoneLevel()V
    .registers 5

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x2

    .line 326
    iget v0, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    if-lez v0, :cond_34

    .line 327
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v2, :cond_34

    .line 328
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/lge/media/SmartRingtone;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    if-ne v0, v2, :cond_34

    .line 329
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/lge/media/SmartRingtone;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_34

    .line 331
    iget v0, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    iget v1, p0, Lcom/lge/media/SmartRingtone;->mPrevVolume:I

    add-int/2addr v0, v1

    if-gt v0, v3, :cond_31

    .line 332
    iget v0, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    iget v1, p0, Lcom/lge/media/SmartRingtone;->mPrevVolume:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lge/media/SmartRingtone;->mAdjustVolume:I

    .line 339
    :goto_30
    return-void

    .line 334
    :cond_31
    iput v3, p0, Lcom/lge/media/SmartRingtone;->mAdjustVolume:I

    goto :goto_30

    .line 337
    :cond_34
    iget v0, p0, Lcom/lge/media/SmartRingtone;->mPrevVolume:I

    iput v0, p0, Lcom/lge/media/SmartRingtone;->mAdjustVolume:I

    goto :goto_30
.end method


# virtual methods
.method public onExitRecordingLoop()V
    .registers 2

    .prologue
    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mExitThread:Z

    .line 344
    return-void
.end method

.method public onNoiseEstimation()V
    .registers 9

    .prologue
    const v3, 0xac44

    const/16 v7, 0x140

    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 213
    iget-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mIsFromPhoneApp:Z

    if-nez v0, :cond_c

    .line 296
    :cond_b
    :goto_b
    return-void

    .line 216
    :cond_c
    iget-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mMicTestDone:Z

    if-nez v0, :cond_b

    .line 220
    invoke-direct {p0}, Lcom/lge/media/SmartRingtone;->getSmartRingtoneMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 224
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mDelayedVolumeUpHandler:Landroid/os/Handler;

    if-nez v0, :cond_33

    .line 225
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/media/SmartRingtone;->mInitializationLooper:Landroid/os/Looper;

    if-nez v0, :cond_28

    .line 226
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/media/SmartRingtone;->mInitializationLooper:Landroid/os/Looper;

    .line 229
    :cond_28
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mInitializationLooper:Landroid/os/Looper;

    if-eqz v0, :cond_33

    .line 230
    new-instance v0, Lcom/lge/media/SmartRingtone$2;

    invoke-direct {v0, p0}, Lcom/lge/media/SmartRingtone$2;-><init>(Lcom/lge/media/SmartRingtone;)V

    iput-object v0, p0, Lcom/lge/media/SmartRingtone;->mDelayedVolumeUpHandler:Landroid/os/Handler;

    .line 257
    :cond_33
    iput-boolean v2, p0, Lcom/lge/media/SmartRingtone;->mMicTestDone:Z

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mExitThread:Z

    .line 260
    invoke-static {v3, v1, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/lge/media/SmartRingtone;->buffersize:I

    .line 264
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_51

    .line 265
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    const-string v1, "Process doesn\'t have RECORD_AUDIO permission"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 270
    :cond_51
    :try_start_51
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    .line 271
    const v2, 0xac44

    .line 272
    const/4 v3, 0x2

    .line 273
    const/4 v4, 0x2

    .line 274
    iget v5, p0, Lcom/lge/media/SmartRingtone;->buffersize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 270
    iput-object v0, p0, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;
    :try_end_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_60} :catch_78

    .line 281
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_86

    .line 282
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    const-string v1, "arec AudioRecord.STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    goto :goto_b

    .line 275
    :catch_78
    move-exception v6

    .line 276
    .local v6, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    const-string v1, "smart ringtone caught "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    goto :goto_b

    .line 288
    .end local v6    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_86
    iget v0, p0, Lcom/lge/media/SmartRingtone;->buffersize:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/lge/media/SmartRingtone;->buffer:[S

    .line 289
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 291
    iget v0, p0, Lcom/lge/media/SmartRingtone;->buffersize:I

    if-le v0, v7, :cond_97

    .line 292
    iput v7, p0, Lcom/lge/media/SmartRingtone;->buffersize:I

    .line 295
    :cond_97
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;

    invoke-direct {v1, p0}, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;-><init>(Lcom/lge/media/SmartRingtone;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_b
.end method

.method public declared-synchronized restoreVolumeAfterStop()V
    .registers 5

    .prologue
    .line 348
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mIsFromPhoneApp:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4d

    if-nez v0, :cond_7

    .line 361
    :goto_5
    monitor-exit p0

    return-void

    .line 352
    :cond_7
    :try_start_7
    sget-boolean v0, Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z

    if-eqz v0, :cond_33

    .line 353
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "prev "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lge/media/SmartRingtone;->mPrevVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getStreamVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/lge/media/SmartRingtone;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_33
    iget v0, p0, Lcom/lge/media/SmartRingtone;->mPrevVolume:I

    if-lez v0, :cond_46

    iget-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mMicTestDone:Z

    if-eqz v0, :cond_46

    .line 356
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/lge/media/SmartRingtone;->mStreamType:I

    iget v2, p0, Lcom/lge/media/SmartRingtone;->mPrevVolume:I

    const/16 v3, 0x1800

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 359
    :cond_46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mMicTestDone:Z

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_4d

    goto :goto_5

    .line 348
    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMediaPlayer(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lge/media/SmartRingtone;->mAudio:Landroid/media/MediaPlayer;

    .line 106
    iget v0, p0, Lcom/lge/media/SmartRingtone;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 107
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mAudio:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/lge/media/SmartRingtone$1;

    invoke-direct {v1, p0}, Lcom/lge/media/SmartRingtone$1;-><init>(Lcom/lge/media/SmartRingtone;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 115
    :cond_11
    return-void
.end method

.method public setStreamType(I)V
    .registers 2
    .param p1, "streamType"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/lge/media/SmartRingtone;->mStreamType:I

    .line 101
    return-void
.end method
