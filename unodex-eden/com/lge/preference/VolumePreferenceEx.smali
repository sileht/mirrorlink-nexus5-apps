.class public Lcom/lge/preference/VolumePreferenceEx;
.super Landroid/preference/VolumePreference;
.source "VolumePreferenceEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/preference/VolumePreferenceEx$MethodOverride;,
        Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;,
        Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumePreferenceEx"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field protected mOriginalRingerMode:I

.field protected mOriginalZenMode:I

.field private mStreamType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p0}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$interFieldInit$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$mStreamType(Lcom/lge/preference/VolumePreferenceEx;)V

    .line 38
    const-string v0, "VolumePreferenceEx"

    const-string v1, "CTOR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/preference/VolumePreferenceEx;->mAudioManager:Landroid/media/AudioManager;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/lge/preference/VolumePreferenceEx;)Landroid/media/AudioManager;
    .registers 2
    .param p0, "arg0"    # Lcom/lge/preference/VolumePreferenceEx;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public static ajc$get$mStreamType(Lcom/lge/preference/VolumePreferenceEx;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx;->mStreamType:I

    return v0
.end method

.method public static ajc$set$mStreamType(Lcom/lge/preference/VolumePreferenceEx;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/lge/preference/VolumePreferenceEx;->mStreamType:I

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    :try_start_0
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    .line 45
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/lge/preference/VolumePreferenceEx;->mOriginalRingerMode:I

    .line 46
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/preference/VolumePreferenceEx;->mOriginalZenMode:I
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_24

    .line 47
    invoke-static {}, Lcom/lge/preference/VolumePreferenceEx$MethodOverride;->aspectOf()Lcom/lge/preference/VolumePreferenceEx$MethodOverride;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lge/preference/VolumePreferenceEx$MethodOverride;->ajc$after$com_lge_preference_VolumePreferenceEx$MethodOverride$1$99bb3ec8(Lcom/lge/preference/VolumePreferenceEx;Landroid/view/View;)V

    return-void

    :catch_24
    move-exception v0

    invoke-static {}, Lcom/lge/preference/VolumePreferenceEx$MethodOverride;->aspectOf()Lcom/lge/preference/VolumePreferenceEx$MethodOverride;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/lge/preference/VolumePreferenceEx$MethodOverride;->ajc$after$com_lge_preference_VolumePreferenceEx$MethodOverride$1$99bb3ec8(Lcom/lge/preference/VolumePreferenceEx;Landroid/view/View;)V

    throw v0
.end method
