.class Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$3;
.super Ljava/lang/Object;
.source "MirrorLinkSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$3;->this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 198
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_49

    move-object v0, p2

    .line 199
    check-cast v0, Ljava/lang/Boolean;

    .line 200
    .local v0, "isChecked":Ljava/lang/Boolean;
    const-string/jumbo v1, "MirrorLink_Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceChange(mSwitchCheckListener) isChecked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 203
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$3;->this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-static {v1}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->-get1(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)Lcom/lge/mirrorlink/MirrorLinkPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lge/mirrorlink/MirrorLinkPreference;->setSwitchPref(Z)V

    .line 204
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$3;->this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-static {v1}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->-wrap0(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)V

    .line 208
    :goto_36
    return v4

    .line 206
    :cond_37
    invoke-static {}, Lcom/lge/mirrorlink/MirrorLinkHandler;->getInstance()Lcom/lge/mirrorlink/MirrorLinkHandler;

    move-result-object v1

    invoke-static {}, Lcom/lge/mirrorlink/MirrorLinkHandler;->getInstance()Lcom/lge/mirrorlink/MirrorLinkHandler;

    move-result-object v2

    const/16 v3, 0x3ed

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/mirrorlink/MirrorLinkHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_36

    .line 210
    .end local v0    # "isChecked":Ljava/lang/Boolean;
    :cond_49
    const/4 v1, 0x0

    return v1
.end method
