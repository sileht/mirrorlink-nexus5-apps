.class public Lcom/lge/mirrorlink/MirrorLinkSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "MirrorLinkSwitchPreference.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mMirrorLinkEnabler:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

.field private mOnDivider:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/mirrorlink/MirrorLinkSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const-string v0, "MirrorLinkPref"

    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSwitchPreference;->TAG:Ljava/lang/String;

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/mirrorlink/MirrorLinkSwitchPreference;->mOnDivider:Z

    .line 21
    const v0, 0x7f04013c

    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/MirrorLinkSwitchPreference;->setWidgetLayoutResource(I)V

    .line 22
    new-instance v0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSwitchPreference;->mMirrorLinkEnabler:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    .line 23
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 40
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSwitchPreference;->TAG:Ljava/lang/String;

    const-string v2, "MirrorLinkSwitchPreference - onBindView() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const v1, 0x7f0e0023

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSwitchPreference;->mSwitch:Landroid/widget/Switch;

    .line 43
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSwitchPreference;->mMirrorLinkEnabler:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkSwitchPreference;->mSwitch:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->setSwitch(Landroid/widget/Switch;Z)V

    .line 45
    iget-boolean v1, p0, Lcom/lge/mirrorlink/MirrorLinkSwitchPreference;->mOnDivider:Z

    if-nez v1, :cond_2c

    .line 46
    const v1, 0x7f0e0022

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "vertical_divider":Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .end local v0    # "vertical_divider":Landroid/view/View;
    :cond_2c
    return-void
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSwitchPreference;->mMirrorLinkEnabler:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    if-eqz v0, :cond_10

    .line 61
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSwitchPreference;->TAG:Ljava/lang/String;

    const-string v1, "pause() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSwitchPreference;->mMirrorLinkEnabler:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->pause()V

    .line 64
    :cond_10
    return-void
.end method

.method public resume()V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSwitchPreference;->mMirrorLinkEnabler:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    if-eqz v0, :cond_10

    .line 54
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSwitchPreference;->TAG:Ljava/lang/String;

    const-string v1, "resume() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSwitchPreference;->mMirrorLinkEnabler:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->resume()V

    .line 57
    :cond_10
    return-void
.end method

.method public setDivider(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/lge/mirrorlink/MirrorLinkSwitchPreference;->mOnDivider:Z

    .line 31
    return-void
.end method

.method public setListener()V
    .registers 1

    .prologue
    .line 34
    return-void
.end method
