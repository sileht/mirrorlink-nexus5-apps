.class Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;
.super Ljava/lang/Object;
.source "VolumePreferenceEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->revertVolume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;


# direct methods
.method constructor <init>(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v2, 0x2

    .line 83
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I
    invoke-static {v0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$2(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v0

    if-ne v0, v2, :cond_42

    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;
    invoke-static {v0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$5(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Lcom/lge/preference/VolumePreferenceEx;

    move-result-object v0

    # getter for: Lcom/lge/preference/VolumePreferenceEx;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/lge/preference/VolumePreferenceEx;->access$0(Lcom/lge/preference/VolumePreferenceEx;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;
    invoke-static {v1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$5(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Lcom/lge/preference/VolumePreferenceEx;

    move-result-object v1

    iget v1, v1, Lcom/lge/preference/VolumePreferenceEx;->mOriginalRingerMode:I

    if-eq v0, v1, :cond_42

    .line 84
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;
    invoke-static {v0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$5(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Lcom/lge/preference/VolumePreferenceEx;

    move-result-object v0

    iget v0, v0, Lcom/lge/preference/VolumePreferenceEx;->mOriginalZenMode:I

    if-ne v0, v2, :cond_5e

    .line 85
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$0(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    iget-object v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;
    invoke-static {v2}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$5(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Lcom/lge/preference/VolumePreferenceEx;

    move-result-object v2

    iget v2, v2, Lcom/lge/preference/VolumePreferenceEx;->mOriginalZenMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;
    invoke-static {v0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$5(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Lcom/lge/preference/VolumePreferenceEx;

    move-result-object v0

    # getter for: Lcom/lge/preference/VolumePreferenceEx;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/lge/preference/VolumePreferenceEx;->access$0(Lcom/lge/preference/VolumePreferenceEx;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I
    invoke-static {v1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$2(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v1

    iget-object v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mOriginalStreamVolume:I
    invoke-static {v2}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$3(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v2

    .line 93
    const/16 v3, 0x1000

    .line 92
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 94
    return-void

    .line 87
    :cond_5e
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;
    invoke-static {v0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$5(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Lcom/lge/preference/VolumePreferenceEx;

    move-result-object v0

    # getter for: Lcom/lge/preference/VolumePreferenceEx;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/lge/preference/VolumePreferenceEx;->access$0(Lcom/lge/preference/VolumePreferenceEx;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;
    invoke-static {v1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$5(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Lcom/lge/preference/VolumePreferenceEx;

    move-result-object v1

    iget v1, v1, Lcom/lge/preference/VolumePreferenceEx;->mOriginalRingerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_42
.end method
