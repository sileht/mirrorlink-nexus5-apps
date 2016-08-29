.class public Lcom/lge/mirrorlink/RestoreStateManager;
.super Ljava/lang/Object;
.source "RestoreStateManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_RestoreStateManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMirrorLinkPreference:Lcom/lge/mirrorlink/MirrorLinkPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/lge/mirrorlink/RestoreStateManager;->mContext:Landroid/content/Context;

    .line 17
    iput-object v0, p0, Lcom/lge/mirrorlink/RestoreStateManager;->mMirrorLinkPreference:Lcom/lge/mirrorlink/MirrorLinkPreference;

    .line 20
    iput-object p1, p0, Lcom/lge/mirrorlink/RestoreStateManager;->mContext:Landroid/content/Context;

    .line 21
    new-instance v0, Lcom/lge/mirrorlink/MirrorLinkPreference;

    invoke-direct {v0, p1}, Lcom/lge/mirrorlink/MirrorLinkPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/RestoreStateManager;->mMirrorLinkPreference:Lcom/lge/mirrorlink/MirrorLinkPreference;

    .line 19
    return-void
.end method


# virtual methods
.method public getAutoRotation()I
    .registers 6

    .prologue
    .line 46
    const/4 v0, 0x1

    .line 48
    .local v0, "autoRotation":I
    :try_start_1
    iget-object v2, p0, Lcom/lge/mirrorlink/RestoreStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accelerometer_rotation"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_e} :catch_10

    move-result v0

    .line 53
    :goto_f
    return v0

    .line 49
    :catch_10
    move-exception v1

    .line 50
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "MirrorLink_RestoreStateManager"

    const-string/jumbo v3, "NullPointerException:"

    invoke-static {v2, v3, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public getRotation()I
    .registers 4

    .prologue
    .line 57
    iget-object v1, p0, Lcom/lge/mirrorlink/RestoreStateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 58
    .local v0, "wm":Landroid/view/WindowManager;
    if-nez v0, :cond_f

    .line 59
    const/4 v1, 0x0

    return v1

    .line 61
    :cond_f
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    return v1
.end method

.method public getScreenOffTimeout()I
    .registers 6

    .prologue
    .line 100
    const v1, 0x1d4c0

    .line 102
    .local v1, "screenOffTimeout":I
    :try_start_3
    iget-object v2, p0, Lcom/lge/mirrorlink/RestoreStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_off_timeout"

    const v4, 0x1d4c0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_12} :catch_14

    move-result v1

    .line 107
    :goto_13
    return v1

    .line 103
    :catch_14
    move-exception v0

    .line 104
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "MirrorLink_RestoreStateManager"

    const-string/jumbo v3, "NullPointerException:"

    invoke-static {v2, v3, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method public loadState()V
    .registers 5

    .prologue
    .line 32
    const-string/jumbo v1, "MirrorLink_RestoreStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadState() AutoRotation, Rotation, ScreenOffTiemout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 33
    iget-object v3, p0, Lcom/lge/mirrorlink/RestoreStateManager;->mMirrorLinkPreference:Lcom/lge/mirrorlink/MirrorLinkPreference;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/MirrorLinkPreference;->getAutoRotationPref()I

    move-result v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 33
    const-string/jumbo v3, ","

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    iget-object v3, p0, Lcom/lge/mirrorlink/RestoreStateManager;->mMirrorLinkPreference:Lcom/lge/mirrorlink/MirrorLinkPreference;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/MirrorLinkPreference;->getRotationPref()I

    move-result v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    const-string/jumbo v3, ","

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/lge/mirrorlink/RestoreStateManager;->mMirrorLinkPreference:Lcom/lge/mirrorlink/MirrorLinkPreference;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/MirrorLinkPreference;->getScreenTimeoutPref()I

    move-result v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :try_start_42
    iget-object v1, p0, Lcom/lge/mirrorlink/RestoreStateManager;->mMirrorLinkPreference:Lcom/lge/mirrorlink/MirrorLinkPreference;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/MirrorLinkPreference;->getAutoRotationPref()I

    move-result v1

    iget-object v2, p0, Lcom/lge/mirrorlink/RestoreStateManager;->mMirrorLinkPreference:Lcom/lge/mirrorlink/MirrorLinkPreference;

    invoke-virtual {v2}, Lcom/lge/mirrorlink/MirrorLinkPreference;->getRotationPref()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/lge/mirrorlink/RestoreStateManager;->setOrientation(II)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_51} :catch_5b

    .line 42
    :goto_51
    iget-object v1, p0, Lcom/lge/mirrorlink/RestoreStateManager;->mMirrorLinkPreference:Lcom/lge/mirrorlink/MirrorLinkPreference;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/MirrorLinkPreference;->getScreenTimeoutPref()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lge/mirrorlink/RestoreStateManager;->setScreenOffTimeout(I)V

    .line 31
    return-void

    .line 39
    :catch_5b
    move-exception v0

    .line 40
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MirrorLink_RestoreStateManager"

    const-string/jumbo v2, "loadState() - fail to setOrientation"

    invoke-static {v1, v2, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_51
.end method

.method public saveState()V
    .registers 5

    .prologue
    .line 25
    const-string/jumbo v0, "MirrorLink_RestoreStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveState() AutoRotation, Rotation, ScreenOffTiemout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 26
    invoke-virtual {p0}, Lcom/lge/mirrorlink/RestoreStateManager;->getAutoRotation()I

    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 26
    const-string/jumbo v2, ","

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 26
    invoke-virtual {p0}, Lcom/lge/mirrorlink/RestoreStateManager;->getRotation()I

    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 26
    const-string/jumbo v2, ","

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 27
    invoke-virtual {p0}, Lcom/lge/mirrorlink/RestoreStateManager;->getScreenOffTimeout()I

    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/lge/mirrorlink/RestoreStateManager;->mMirrorLinkPreference:Lcom/lge/mirrorlink/MirrorLinkPreference;

    invoke-virtual {p0}, Lcom/lge/mirrorlink/RestoreStateManager;->getAutoRotation()I

    move-result v1

    invoke-virtual {p0}, Lcom/lge/mirrorlink/RestoreStateManager;->getRotation()I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/mirrorlink/RestoreStateManager;->getScreenOffTimeout()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mirrorlink/MirrorLinkPreference;->setStatePref(III)V

    .line 24
    return-void
.end method

.method public setOrientation(II)V
    .registers 9
    .param p1, "autoRotation"    # I
    .param p2, "rotate_angle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 65
    const-string/jumbo v2, "MirrorLink_RestoreStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOrientation() autoRotation, rotate_angle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :try_start_26
    iget-object v2, p0, Lcom/lge/mirrorlink/RestoreStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accelerometer_rotation"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_32
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_32} :catch_35

    .line 73
    :goto_32
    if-ne p1, v5, :cond_40

    .line 74
    return-void

    .line 69
    :catch_35
    move-exception v0

    .line 70
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "MirrorLink_RestoreStateManager"

    const-string/jumbo v3, "NullPointerException:"

    invoke-static {v2, v3, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    .line 77
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :cond_40
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 79
    .local v1, "wm":Landroid/view/IWindowManager;
    if-nez v1, :cond_4e

    .line 80
    return-void

    .line 83
    :cond_4e
    sparse-switch p2, :sswitch_data_66

    .line 64
    :goto_51
    return-void

    .line 85
    :sswitch_52
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V

    goto :goto_51

    .line 88
    :sswitch_57
    invoke-interface {v1, v5}, Landroid/view/IWindowManager;->freezeRotation(I)V

    goto :goto_51

    .line 91
    :sswitch_5b
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V

    goto :goto_51

    .line 94
    :sswitch_60
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V

    goto :goto_51

    .line 83
    nop

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_52
        0x5a -> :sswitch_57
        0xb4 -> :sswitch_5b
        0x10e -> :sswitch_60
    .end sparse-switch
.end method

.method public setScreenOffTimeout(I)V
    .registers 5
    .param p1, "timeout"    # I

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/lge/mirrorlink/RestoreStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_off_timeout"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d

    .line 110
    :goto_c
    return-void

    .line 113
    :catch_d
    move-exception v0

    .line 114
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "MirrorLink_RestoreStateManager"

    const-string/jumbo v2, "NullPointerException:"

    invoke-static {v1, v2, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method
