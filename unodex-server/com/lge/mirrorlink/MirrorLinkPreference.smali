.class public Lcom/lge/mirrorlink/MirrorLinkPreference;
.super Ljava/lang/Object;
.source "MirrorLinkPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkPreference;->mContext:Landroid/content/Context;

    .line 11
    iput-object p1, p0, Lcom/lge/mirrorlink/MirrorLinkPreference;->mContext:Landroid/content/Context;

    .line 10
    return-void
.end method


# virtual methods
.method public getAutoRotationPref()I
    .registers 5

    .prologue
    .line 58
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkPreference;->mContext:Landroid/content/Context;

    .line 59
    const-string/jumbo v2, "mirrorlink"

    .line 60
    const/4 v3, 0x0

    .line 58
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "key_auto_rotate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getRotationPref()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkPreference;->mContext:Landroid/content/Context;

    .line 66
    const-string/jumbo v2, "mirrorlink"

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "key_rotation"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getScreenTimeoutPref()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 72
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkPreference;->mContext:Landroid/content/Context;

    .line 73
    const-string/jumbo v2, "mirrorlink"

    .line 72
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "key_screen_off_timeout"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getSwitchPref()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 24
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkPreference;->mContext:Landroid/content/Context;

    .line 25
    const-string/jumbo v2, "mirrorlink"

    .line 24
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 27
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "key_switch_checked"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getUsbPref()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 40
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkPreference;->mContext:Landroid/content/Context;

    .line 41
    const-string/jumbo v2, "mirrorlink"

    .line 40
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 43
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "key_usb_connected"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setStatePref(III)V
    .registers 9
    .param p1, "autoRotation"    # I
    .param p2, "rotation"    # I
    .param p3, "screenTimeout"    # I

    .prologue
    .line 47
    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkPreference;->mContext:Landroid/content/Context;

    .line 48
    const-string/jumbo v3, "mirrorlink"

    .line 49
    const/4 v4, 0x0

    .line 47
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 50
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "key_auto_rotate"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 52
    const-string/jumbo v2, "key_rotation"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 53
    const-string/jumbo v2, "key_screen_off_timeout"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    return-void
.end method

.method public setSwitchPref(Z)V
    .registers 7
    .param p1, "isChecked"    # Z

    .prologue
    .line 15
    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkPreference;->mContext:Landroid/content/Context;

    .line 16
    const-string/jumbo v3, "mirrorlink"

    .line 17
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 18
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 19
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "key_switch_checked"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 14
    return-void
.end method

.method public setUsbPref(Z)V
    .registers 7
    .param p1, "isConnected"    # Z

    .prologue
    .line 31
    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkPreference;->mContext:Landroid/content/Context;

    .line 32
    const-string/jumbo v3, "mirrorlink"

    .line 33
    const/4 v4, 0x0

    .line 31
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 34
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 35
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "key_usb_connected"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    return-void
.end method
