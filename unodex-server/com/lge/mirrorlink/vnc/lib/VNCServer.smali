.class public Lcom/lge/mirrorlink/vnc/lib/VNCServer;
.super Ljava/lang/Object;
.source "VNCServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;,
        Lcom/lge/mirrorlink/vnc/lib/VNCServer$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLIENT_FB_HEIGHT:I = 0x1e0

.field private static final DEFAULT_CLIENT_FB_WIDTH:I = 0x320

.field public static final TAG:Ljava/lang/String; = "MirrorLink_VNC"


# instance fields
.field private deviceStatusData:Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;

.field private encodings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private eventInjectorThread:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

.field private framebufferUpdateThread:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;

.field private mClientDistanceMM:I

.field private mClientHeight:I

.field private mClientHeightMM:I

.field private mClientWidth:I

.field private mClientWidthMM:I

.field private mContext:Landroid/content/Context;

.field private mContextInformationUpdated:Z

.field private mKeyguardMgr:Landroid/app/KeyguardManager;

.field private mPhoneScreenHeight:I

.field private mPhoneScreenWidth:I

.field private mPowerMgr:Landroid/os/PowerManager;

.field private mPreviousDeviceStatus:I

.field private mRatio:D

.field private mRatioH:D

.field private mRatioW:D

.field private mRemoteFBHeight:I

.field private mRemoteFBWidth:I

.field mRotationWatcher:Landroid/view/IRotationWatcher;

.field private mSig_SendSwitchToClientNativeUI:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWidthHeightSwitched:Z

.field private pixelFormat:Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;

.field private preferredEncoding:I

.field session:Lcom/lge/mirrorlink/vnc/lib/VNCSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/mirrorlink/vnc/lib/VNCSession;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v4, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mKeyguardMgr:Landroid/app/KeyguardManager;

    .line 53
    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPowerMgr:Landroid/os/PowerManager;

    .line 54
    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->encodings:Ljava/util/Set;

    .line 62
    iput v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->preferredEncoding:I

    .line 68
    iput v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenWidth:I

    .line 69
    iput v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenHeight:I

    .line 70
    iput v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRemoteFBWidth:I

    .line 71
    iput v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRemoteFBHeight:I

    .line 72
    iput v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mClientWidth:I

    .line 73
    iput v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mClientHeight:I

    .line 74
    iput v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mClientWidthMM:I

    .line 75
    iput v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mClientHeightMM:I

    .line 76
    iput v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mClientDistanceMM:I

    .line 77
    iput-boolean v4, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mWidthHeightSwitched:Z

    .line 78
    iput-wide v6, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRatio:D

    .line 79
    iput-wide v6, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRatioW:D

    .line 80
    iput-wide v6, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRatioH:D

    .line 81
    iput-boolean v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mSig_SendSwitchToClientNativeUI:Z

    .line 194
    new-instance v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer$1;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$1;-><init>(Lcom/lge/mirrorlink/vnc/lib/VNCServer;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRotationWatcher:Landroid/view/IRotationWatcher;

    .line 541
    iput-boolean v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mContextInformationUpdated:Z

    .line 544
    iput v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPreviousDeviceStatus:I

    .line 86
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->session:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    .line 88
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mKeyguardMgr:Landroid/app/KeyguardManager;

    .line 89
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPowerMgr:Landroid/os/PowerManager;

    .line 91
    new-instance v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;

    const/16 v1, 0x10

    const/16 v2, 0x10

    const/16 v5, 0x1f

    const/16 v6, 0x3f

    const/16 v7, 0x1f

    const/16 v8, 0xb

    const/4 v9, 0x5

    move v10, v3

    invoke-direct/range {v0 .. v10}, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;-><init>(IIZZIIIIII)V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->pixelFormat:Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;

    .line 94
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    .line 95
    .local v11, "display":Landroid/view/Display;
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 96
    .local v12, "size":Landroid/graphics/Point;
    invoke-virtual {v11, v12}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 101
    iget v0, v12, Landroid/graphics/Point;->x:I

    iget v1, v12, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_f4

    iget v0, v12, Landroid/graphics/Point;->x:I

    :goto_91
    iput v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenWidth:I

    .line 102
    iget v0, v12, Landroid/graphics/Point;->x:I

    iget v1, v12, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_f7

    iget v0, v12, Landroid/graphics/Point;->y:I

    :goto_9b
    iput v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenHeight:I

    .line 104
    iget v0, v12, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenWidth:I

    if-eq v0, v1, :cond_a5

    .line 105
    iput-boolean v4, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mWidthHeightSwitched:Z

    .line 108
    :cond_a5
    const-string/jumbo v0, "MirrorLink_VNC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Phone Display Size w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " switched:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mWidthHeightSwitched:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;-><init>(Lcom/lge/mirrorlink/vnc/lib/VNCServer;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->deviceStatusData:Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;

    .line 112
    new-instance v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;

    invoke-direct {v0, p0, p2}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;-><init>(Lcom/lge/mirrorlink/vnc/lib/VNCServer;Lcom/lge/mirrorlink/vnc/lib/VNCSession;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->framebufferUpdateThread:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;

    .line 113
    new-instance v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    invoke-direct {v0}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->eventInjectorThread:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    .line 115
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->onStartServer()V

    .line 84
    return-void

    .line 101
    :cond_f4
    iget v0, v12, Landroid/graphics/Point;->y:I

    goto :goto_91

    .line 102
    :cond_f7
    iget v0, v12, Landroid/graphics/Point;->x:I

    goto :goto_9b
.end method

.method private launchHome()V
    .registers 6

    .prologue
    .line 1154
    const-string/jumbo v3, "MirrorLink_VNC"

    const-string/jumbo v4, "Launch Dafault screen."

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1158
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.lge.mirrorlink"

    const-string/jumbo v4, "com.lge.mirrorlink.MirrorLinkSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1159
    const/high16 v3, 0x30000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1162
    :try_start_1f
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1f .. :try_end_28} :catch_29

    .line 1152
    :goto_28
    return-void

    .line 1163
    :catch_29
    move-exception v0

    .line 1165
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1166
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1167
    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1168
    const-string/jumbo v3, "android.intent.category.CAR_DOCK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1169
    const/high16 v3, 0x13a00000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1175
    :try_start_46
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_46 .. :try_end_4f} :catch_50

    goto :goto_28

    .line 1176
    :catch_50
    move-exception v1

    .local v1, "anfe2":Landroid/content/ActivityNotFoundException;
    goto :goto_28
.end method

.method private onStartServer()V
    .registers 5

    .prologue
    .line 142
    const-string/jumbo v2, "MirrorLink_VNC"

    const-string/jumbo v3, "onStartServer"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->deviceStatusData:Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;

    invoke-virtual {v2}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->initialize()V

    .line 154
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 155
    .local v1, "winManager":Landroid/view/IWindowManager;
    if-eqz v1, :cond_24

    .line 159
    const/4 v2, 0x1

    :try_start_1c
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 161
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_24} :catch_25

    .line 140
    :cond_24
    :goto_24
    return-void

    .line 162
    :catch_25
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MirrorLink_VNC"

    const-string/jumbo v3, "onStartServer:"

    invoke-static {v2, v3, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24
.end method

.method private onStopServer()V
    .registers 5

    .prologue
    .line 173
    const-string/jumbo v2, "MirrorLink_VNC"

    const-string/jumbo v3, "onStopServer"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string/jumbo v2, "MirrorLink_VNC"

    const-string/jumbo v3, "Make automatic orientation mode"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 185
    .local v1, "winManager":Landroid/view/IWindowManager;
    if-eqz v1, :cond_27

    .line 187
    :try_start_1f
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 188
    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_27} :catch_28

    .line 171
    :cond_27
    :goto_27
    return-void

    .line 189
    :catch_28
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_27
.end method

.method private setFramebufferSize(II)Z
    .registers 10
    .param p1, "clientW"    # I
    .param p2, "clientH"    # I

    .prologue
    const/4 v6, 0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 254
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 256
    .local v0, "properSize":Landroid/graphics/Point;
    if-eqz p1, :cond_c

    if-nez p2, :cond_1b

    .line 257
    :cond_c
    iput-wide v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRatioW:D

    .line 258
    iput-wide v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRatioH:D

    .line 259
    iput-wide v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRatio:D

    .line 260
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenWidth:I

    iput v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRemoteFBWidth:I

    .line 261
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenHeight:I

    iput v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRemoteFBHeight:I

    .line 262
    return v6

    .line 265
    :cond_1b
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenWidth:I

    int-to-double v2, v1

    int-to-double v4, p1

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRatioW:D

    .line 266
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenHeight:I

    int-to-double v2, v1

    int-to-double v4, p2

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRatioH:D

    .line 267
    iget-wide v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRatioW:D

    iget-wide v4, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRatioH:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRatio:D

    .line 270
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenWidth:I

    int-to-double v2, v1

    iget-wide v4, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRatio:D

    div-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRemoteFBWidth:I

    .line 271
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenHeight:I

    int-to-double v2, v1

    iget-wide v4, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRatio:D

    div-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRemoteFBHeight:I

    .line 272
    return v6
.end method


# virtual methods
.method public calculateRealXY(II)Landroid/graphics/PointF;
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 469
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 470
    .local v1, "real":Landroid/graphics/PointF;
    iget-wide v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRatio:D

    double-to-float v0, v2

    .line 471
    .local v0, "ratio":F
    int-to-float v2, p1

    mul-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 472
    int-to-float v2, p2

    mul-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 473
    return-object v1
.end method

.method public calculateRemoteX(I)I
    .registers 6
    .param p1, "x"    # I

    .prologue
    .line 479
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRatio:D

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public calculateRemoteY(I)I
    .registers 6
    .param p1, "y"    # I

    .prologue
    .line 488
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRatio:D

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public declared-synchronized close()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 123
    :try_start_1
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->onStopServer()V

    .line 125
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->framebufferUpdateThread:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;

    if-eqz v0, :cond_10

    .line 126
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->framebufferUpdateThread:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->quit()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->framebufferUpdateThread:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;

    .line 130
    :cond_10
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->eventInjectorThread:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    if-eqz v0, :cond_1c

    .line 131
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->eventInjectorThread:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->quit()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->eventInjectorThread:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    :cond_1c
    monitor-exit p0

    .line 121
    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public framebufferUpdateRequest(ZIIII)V
    .registers 13
    .param p1, "incremental"    # Z
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    const/16 v1, 0x64

    const/4 v6, 0x0

    .line 420
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRemoteFBWidth:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRemoteFBHeight:I

    if-nez v0, :cond_5c

    .line 424
    :cond_b
    if-nez p2, :cond_54

    if-nez p3, :cond_54

    if-le p4, v1, :cond_54

    if-le p5, v1, :cond_54

    .line 425
    invoke-direct {p0, p4, p5}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->setFramebufferSize(II)Z

    .line 429
    :goto_16
    const-string/jumbo v0, "MirrorLink_VNC"

    const-string/jumbo v1, "ClientDisplayConfiguration is not received yet but Framebuffer Update Request is received"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string/jumbo v0, "MirrorLink_VNC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set default FB size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRemoteFBWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRemoteFBHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->framebufferUpdateThread:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;

    const/4 v6, 0x1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->update(ZIIIIZ)V

    .line 415
    :goto_53
    return-void

    .line 427
    :cond_54
    const/16 v0, 0x1e0

    const/16 v1, 0x320

    invoke-direct {p0, v0, v1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->setFramebufferSize(II)Z

    goto :goto_16

    .line 433
    :cond_5c
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->framebufferUpdateThread:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->update(ZIIIIZ)V

    goto :goto_53
.end method

.method public getClientDistanceMM()I
    .registers 2

    .prologue
    .line 329
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mClientDistanceMM:I

    return v0
.end method

.method public getClientHeight()I
    .registers 2

    .prologue
    .line 314
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mClientHeight:I

    return v0
.end method

.method public getClientHeightMM()I
    .registers 2

    .prologue
    .line 324
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mClientHeightMM:I

    return v0
.end method

.method public getClientWidth()I
    .registers 2

    .prologue
    .line 309
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mClientWidth:I

    return v0
.end method

.method public getClientWidthMM()I
    .registers 2

    .prologue
    .line 319
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mClientWidthMM:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDriveMode()Z
    .registers 2

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->deviceStatusData:Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->getDriveMode()Z

    move-result v0

    return v0
.end method

.method public getEventInjectorThread()Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->eventInjectorThread:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    return-object v0
.end method

.method public getFramebufferUpdateThread()Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->framebufferUpdateThread:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;

    return-object v0
.end method

.method public getMicInput()Z
    .registers 2

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->deviceStatusData:Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->getMicInput()Z

    move-result v0

    return v0
.end method

.method public getNightMode()Z
    .registers 2

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->deviceStatusData:Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->getNightMode()Z

    move-result v0

    return v0
.end method

.method public getPixelFormat()Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->pixelFormat:Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;

    return-object v0
.end method

.method public getPreferredEncoding()I
    .registers 2

    .prologue
    .line 389
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->preferredEncoding:I

    return v0
.end method

.method public getRotation()I
    .registers 4

    .prologue
    .line 1108
    const/16 v1, -0xdf

    invoke-virtual {p0, v1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->supportEncoding(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1109
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1110
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    return v1

    .line 1112
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method public getServerName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 338
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "mirrorlink"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 339
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "key_device_name"

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mContext:Landroid/content/Context;

    const v3, 0x7f09001a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getServerPixelHeight()I
    .registers 2

    .prologue
    .line 299
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRemoteFBHeight:I

    return v0
.end method

.method public getServerPixelWidth()I
    .registers 2

    .prologue
    .line 294
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRemoteFBWidth:I

    return v0
.end method

.method public getSystemDisplayHeight()I
    .registers 2

    .prologue
    .line 289
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenHeight:I

    return v0
.end method

.method public getSystemDisplayWidth()I
    .registers 2

    .prologue
    .line 285
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenWidth:I

    return v0
.end method

.method public getWidthHeightSwitched()Z
    .registers 2

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mWidthHeightSwitched:Z

    return v0
.end method

.method public handleDeviceStatusRequest(I)V
    .registers 15
    .param p1, "status"    # I

    .prologue
    .line 648
    const/4 v8, 0x0

    .line 650
    .local v8, "res":Z
    :try_start_1
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v0

    .line 652
    .local v0, "commonAPI":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    const/4 v10, 0x7

    const/4 v11, 0x6

    invoke-static {p1, v10, v11}, Lcom/lge/mirrorlink/common/Utility;->isModeChk(III)Ljava/lang/String;

    move-result-object v5

    .line 653
    .local v5, "nightMode":Ljava/lang/String;
    const/16 v10, 0x9

    const/16 v11, 0x8

    invoke-static {p1, v10, v11}, Lcom/lge/mirrorlink/common/Utility;->isModeChk(III)Ljava/lang/String;

    move-result-object v9

    .line 654
    .local v9, "voiceinput":Ljava/lang/String;
    const/16 v10, 0xb

    const/16 v11, 0xa

    invoke-static {p1, v10, v11}, Lcom/lge/mirrorlink/common/Utility;->isModeChk(III)Ljava/lang/String;

    move-result-object v4

    .line 655
    .local v4, "micinput":Ljava/lang/String;
    const/16 v10, 0x11

    const/16 v11, 0x10

    invoke-static {p1, v10, v11}, Lcom/lge/mirrorlink/common/Utility;->isModeChk(III)Ljava/lang/String;

    move-result-object v1

    .line 656
    .local v1, "driveMode":Ljava/lang/String;
    const/16 v10, 0x1a

    const/16 v11, 0x19

    const/16 v12, 0x18

    invoke-static {p1, v10, v11, v12}, Lcom/lge/mirrorlink/common/Utility;->isRotationChk(IIII)Ljava/lang/String;

    move-result-object v7

    .line 657
    .local v7, "requestedRotation":Ljava/lang/String;
    const/16 v10, 0x1c

    const/16 v11, 0x1b

    invoke-static {p1, v10, v11}, Lcom/lge/mirrorlink/common/Utility;->isOrientationChk(III)Ljava/lang/String;

    move-result-object v6

    .line 659
    .local v6, "orientation":Ljava/lang/String;
    const-string/jumbo v10, "enabled"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_47

    const-string/jumbo v10, "disabled"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_72

    .line 660
    :cond_47
    iget-object v10, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->deviceStatusData:Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;

    invoke-virtual {v10, v5}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->updateNightMode(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_72

    .line 661
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v10, "com.lge.mirrorlink.action.NightModeChanged"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 662
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v10, "enabled"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d8

    .line 663
    const-string/jumbo v10, "NightMode"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 664
    const/4 v8, 0x1

    .line 669
    :goto_68
    iget-object v10, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 670
    if-eqz v0, :cond_72

    .line 671
    invoke-virtual {v0, v8}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->onNightModeChanged(Z)V

    .line 675
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_72
    const-string/jumbo v10, "enabled"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_84

    const-string/jumbo v10, "disabled"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_84

    .line 688
    :cond_84
    const-string/jumbo v10, "enabled"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_96

    const-string/jumbo v10, "disabled"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_96

    .line 704
    :cond_96
    const-string/jumbo v10, "enabled"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a8

    const-string/jumbo v10, "disabled"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d3

    .line 705
    :cond_a8
    iget-object v10, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->deviceStatusData:Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;

    invoke-virtual {v10, v1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->updateDriveMode(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d3

    .line 706
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v10, "com.lge.mirrorlink.action.DriveModeChanged"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v10, "enabled"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e1

    .line 708
    const-string/jumbo v10, "DriveMode"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 709
    const/4 v8, 0x1

    .line 714
    :goto_c9
    iget-object v10, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 715
    if-eqz v0, :cond_d3

    .line 716
    invoke-virtual {v0, v8}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->onDriveModeChange(Z)V

    .line 769
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_d3
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->writeDeviceStatus(Z)V

    .line 770
    return-void

    .line 666
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_d8
    const-string/jumbo v10, "NightMode"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 667
    const/4 v8, 0x0

    goto :goto_68

    .line 711
    :cond_e1
    const-string/jumbo v10, "DriveMode"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e8} :catch_ea

    .line 712
    const/4 v8, 0x0

    goto :goto_c9

    .line 771
    .end local v0    # "commonAPI":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    .end local v1    # "driveMode":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "micinput":Ljava/lang/String;
    .end local v5    # "nightMode":Ljava/lang/String;
    .end local v6    # "orientation":Ljava/lang/String;
    .end local v7    # "requestedRotation":Ljava/lang/String;
    .end local v9    # "voiceinput":Ljava/lang/String;
    :catch_ea
    move-exception v2

    .line 772
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v10, "MirrorLink_VNC"

    const-string/jumbo v11, "handleDeviceStatusRequest:"

    invoke-static {v10, v11, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 646
    return-void
.end method

.method public handleDisplayConfiguration(IIIIIII)V
    .registers 25
    .param p1, "majorver"    # I
    .param p2, "minorver"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "widthMM"    # I
    .param p6, "heightMM"    # I
    .param p7, "distanceUserClient"    # I

    .prologue
    .line 559
    move/from16 v0, p3

    move/from16 v1, p4

    if-le v0, v1, :cond_a8

    if-eqz p3, :cond_a8

    if-eqz p4, :cond_a8

    .line 560
    const-string/jumbo v4, "MirrorLink_VNC"

    const-string/jumbo v5, "Phone is portrait mode but display configuration requests landscape mode."

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_13
    :goto_13
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mClientWidth:I

    .line 567
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mClientHeight:I

    .line 568
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mClientWidthMM:I

    .line 569
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mClientHeightMM:I

    .line 570
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mClientDistanceMM:I

    .line 573
    const/16 v4, -0xdf

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->supportEncoding(I)Z

    move-result v4

    if-nez v4, :cond_c2

    .line 574
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenWidth:I

    move/from16 v0, p3

    if-ne v0, v4, :cond_4b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenHeight:I

    move/from16 v0, p4

    if-eq v0, v4, :cond_c2

    .line 575
    :cond_4b
    const-string/jumbo v4, "MirrorLink_VNC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Client doesn\'t support Desitop Size Pseudo Encoding, but sent display width x height("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 576
    const-string/jumbo v6, "x"

    .line 575
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 576
    const-string/jumbo v6, ") is not match with server width x height("

    .line 575
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 577
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenWidth:I

    .line 575
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 577
    const-string/jumbo v6, "x"

    .line 575
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 577
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenHeight:I

    .line 575
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 577
    const-string/jumbo v6, ")"

    .line 575
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :try_start_99
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->session:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    invoke-virtual {v4}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeByeBye()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a0} :catch_bd

    .line 583
    :goto_a0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->session:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    invoke-virtual {v4}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->close()V

    .line 584
    return-void

    .line 562
    :cond_a8
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_13

    if-eqz p3, :cond_13

    if-eqz p4, :cond_13

    .line 563
    const-string/jumbo v4, "MirrorLink_VNC"

    const-string/jumbo v5, "Phone is landscape mode but display configuration requests portrait mode."

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 580
    :catch_bd
    move-exception v16

    .line 581
    .local v16, "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a0

    .line 597
    .end local v16    # "e":Ljava/io/IOException;
    :cond_c2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenWidth:I

    move/from16 v0, p3

    if-ge v0, v4, :cond_195

    .line 598
    :goto_ca
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenHeight:I

    move/from16 v0, p4

    if-ge v0, v4, :cond_19d

    .line 599
    :goto_d2
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->setFramebufferSize(II)Z

    .line 600
    const-string/jumbo v4, "MirrorLink_VNC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleDisplayConfiguration: clientW:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", clientH:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string/jumbo v4, "MirrorLink_VNC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "phoneW:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", phoneH:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string/jumbo v4, "MirrorLink_VNC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fbW: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRemoteFBWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", fbH:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRemoteFBHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v3

    .line 605
    .local v3, "commonAPI":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    if-eqz v3, :cond_194

    .line 606
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRemoteFBWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mRemoteFBHeight:I

    .line 607
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mClientWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mClientHeight:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mClientWidthMM:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mClientHeightMM:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mClientDistanceMM:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->pixelFormat:Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;

    iget v8, v8, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bitsPerPixel:I

    int-to-float v15, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 606
    invoke-virtual/range {v3 .. v15}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->onDisplayConfigurationChanged(IIIIIIIIIIIF)V

    .line 557
    :cond_194
    return-void

    .line 597
    .end local v3    # "commonAPI":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    :cond_195
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenWidth:I

    move/from16 p3, v0

    goto/16 :goto_ca

    .line 598
    :cond_19d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPhoneScreenHeight:I

    move/from16 p4, v0

    goto/16 :goto_d2
.end method

.method public handleFramebufferBlockingNotification(SSSSIS)V
    .registers 10
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "w"    # S
    .param p4, "h"    # S
    .param p5, "appid"    # I
    .param p6, "reason"    # S

    .prologue
    .line 625
    new-instance v0, Lcom/lge/mirrorlink/vnc/lib/FbBlockNotiReason;

    invoke-direct {v0, p6}, Lcom/lge/mirrorlink/vnc/lib/FbBlockNotiReason;-><init>(I)V

    .line 626
    .local v0, "fbBlockNotiReason":Lcom/lge/mirrorlink/vnc/lib/FbBlockNotiReason;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/FbBlockNotiReason;->notAllowedApplicationCategory()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/FbBlockNotiReason;->uiLayoutNotSupported()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 627
    :cond_11
    invoke-static {}, Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;->getInstance()Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;->supportSwitchToClientNativeUI()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 628
    const-string/jumbo v1, "MirrorLink_VNC"

    const-string/jumbo v2, "send message: switch to client native ui"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mSig_SendSwitchToClientNativeUI:Z

    .line 623
    :goto_27
    return-void

    .line 631
    :cond_28
    const-string/jumbo v1, "MirrorLink_VNC"

    const-string/jumbo v2, "move to previous activity"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->moveToPrevActivity()V

    goto :goto_27

    .line 634
    :cond_35
    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/FbBlockNotiReason;->notAllowedApplicationID()Z

    move-result v1

    if-nez v1, :cond_41

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/FbBlockNotiReason;->uiNotVisibleOnRemoteDisplay()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 635
    :cond_41
    const-string/jumbo v1, "MirrorLink_VNC"

    const-string/jumbo v2, "do nothing."

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 637
    :cond_4b
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->launchHome()V

    goto :goto_27
.end method

.method public injectKeyEvent(II)V
    .registers 4
    .param p1, "flag"    # I
    .param p2, "code"    # I

    .prologue
    .line 455
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->eventInjectorThread:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    invoke-virtual {v0, p1, p2}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->injectKeyEvent(II)V

    .line 453
    return-void
.end method

.method public injectPointerEvent(IFF)V
    .registers 5
    .param p1, "buttonMask"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 445
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->eventInjectorThread:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->injectPointerEvent(IFF)V

    .line 443
    return-void
.end method

.method public injectTouchEvent([Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;)V
    .registers 3
    .param p1, "data"    # [Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->eventInjectorThread:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    invoke-virtual {v0, p1}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->injectTouchEvent([Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;)V

    .line 462
    return-void
.end method

.method public isContextInfoUpdated()Z
    .registers 2

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mContextInformationUpdated:Z

    return v0
.end method

.method public isKeyguardLocked()Z
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mKeyguardMgr:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isScreenOn()Z
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPowerMgr:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public makeLandscapeMode()V
    .registers 5

    .prologue
    .line 1121
    const-string/jumbo v2, "MirrorLink_VNC"

    const-string/jumbo v3, "Make phone landscape mode."

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 1123
    .local v1, "winManager":Landroid/view/IWindowManager;
    if-eqz v1, :cond_1a

    .line 1127
    const/4 v2, 0x1

    :try_start_17
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 1119
    :cond_1a
    :goto_1a
    return-void

    .line 1128
    :catch_1b
    move-exception v0

    .line 1129
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MirrorLink_VNC"

    const-string/jumbo v3, "makeLandscapeMode:"

    invoke-static {v2, v3, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method public makePortraitMode()V
    .registers 5

    .prologue
    .line 1139
    const-string/jumbo v2, "MirrorLink_VNC"

    const-string/jumbo v3, "Make phone portrait mode."

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 1141
    .local v1, "winManager":Landroid/view/IWindowManager;
    if-eqz v1, :cond_1a

    .line 1145
    const/4 v2, 0x0

    :try_start_17
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 1137
    :cond_1a
    :goto_1a
    return-void

    .line 1146
    :catch_1b
    move-exception v0

    .line 1147
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MirrorLink_VNC"

    const-string/jumbo v3, "makePortraitMode:"

    invoke-static {v2, v3, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method public moveToPrevActivity()V
    .registers 6

    .prologue
    .line 1183
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->session:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1184
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 1185
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1186
    .local v1, "recentTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_2a

    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_2a

    .line 1187
    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 1188
    return-void

    .line 1182
    :cond_2a
    return-void
.end method

.method public onWindowRotationChanged(I)V
    .registers 5
    .param p1, "rotation"    # I

    .prologue
    const/4 v2, 0x1

    .line 777
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->deviceStatusData:Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->updateOrientation()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 778
    const/16 v1, -0xdf

    invoke-virtual {p0, v1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->supportEncoding(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 779
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->framebufferUpdateThread:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;

    invoke-virtual {v1, v2}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->setForceDesktopSize(Z)V

    .line 785
    :cond_16
    :goto_16
    const/4 v1, 0x1

    :try_start_17
    invoke-virtual {p0, v1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->writeDeviceStatus(Z)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_25

    .line 776
    :goto_1a
    return-void

    .line 781
    :cond_1b
    const-string/jumbo v1, "MirrorLink_VNC"

    const-string/jumbo v2, "onRotationChanged: client doesn\'t support DesktopSizePseudoEncoding."

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 786
    :catch_25
    move-exception v0

    .line 787
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "MirrorLink_VNC"

    const-string/jumbo v2, "onRotationChanged:"

    invoke-static {v1, v2, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method public popSigSendSwitchToClientNativeUI()Z
    .registers 3

    .prologue
    .line 1193
    iget-boolean v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mSig_SendSwitchToClientNativeUI:Z

    .line 1194
    .local v0, "need":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mSig_SendSwitchToClientNativeUI:Z

    .line 1195
    return v0
.end method

.method public setContextInfoUpdated(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 538
    iput-boolean p1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mContextInformationUpdated:Z

    .line 536
    return-void
.end method

.method public setEncoding(Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "encodings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->encodings:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 373
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->encodings:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "encoding$iterator":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 374
    .local v0, "encoding":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, -0x20d

    if-ne v2, v3, :cond_b

    .line 375
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->preferredEncoding:I

    .line 380
    .end local v0    # "encoding":Ljava/lang/Integer;
    :cond_25
    const-string/jumbo v2, "MirrorLink_VNC"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "VNCServer.setEncodings: "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->preferredEncoding:I

    invoke-static {v4}, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->getEncodingName(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    return-void
.end method

.method public setPixelFormat(Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;)V
    .registers 4
    .param p1, "pixelFormat"    # Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->pixelFormat:Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;

    .line 350
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v0

    .line 351
    .local v0, "commonAPI":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    if-eqz v0, :cond_f

    .line 352
    invoke-virtual {p1}, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->getPixelFormatTypes()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->onPixelFormatChanged(Landroid/os/Bundle;)V

    .line 346
    :cond_f
    return-void
.end method

.method public supportEncoding(I)Z
    .registers 5
    .param p1, "encoding"    # I

    .prologue
    .line 399
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->encodings:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 400
    .local v0, "e":I
    if-ne p1, v0, :cond_6

    .line 401
    const/4 v2, 0x1

    return v2

    .line 404
    .end local v0    # "e":I
    :cond_1a
    const/4 v2, 0x0

    return v2
.end method

.method public turnOnScreen()V
    .registers 5

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 511
    return-void

    .line 515
    :cond_7
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPowerMgr:Landroid/os/PowerManager;

    const-string/jumbo v2, "wakeup tag"

    const v3, 0x1000001a

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 516
    .local v0, "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 508
    return-void
.end method

.method public updateDeviceLock()Z
    .registers 2

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->deviceStatusData:Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->updateDeviceLock()Z

    move-result v0

    return v0
.end method

.method public updateKeyLock()Z
    .registers 2

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->deviceStatusData:Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->updateKeyLock()Z

    move-result v0

    return v0
.end method

.method public updateMicInput(Z)Z
    .registers 4
    .param p1, "mode"    # Z

    .prologue
    .line 1093
    const/4 v0, 0x0

    .line 1098
    .local v0, "status":Ljava/lang/String;
    const/4 v1, 0x0

    return v1
.end method

.method public updateOrientation()Z
    .registers 2

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->deviceStatusData:Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->updateOrientation()Z

    move-result v0

    return v0
.end method

.method public updateVoiceInput(Z)Z
    .registers 4
    .param p1, "mode"    # Z

    .prologue
    .line 1083
    const/4 v0, 0x0

    .line 1088
    .local v0, "status":Ljava/lang/String;
    const/4 v1, 0x0

    return v1
.end method

.method public writeDeviceStatus(Z)V
    .registers 4
    .param p1, "forceSend"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1045
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->deviceStatusData:Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer$DeviceStatusData;->getDeivceStatus()I

    move-result v0

    .line 1046
    .local v0, "currentDeviceStatus":I
    if-nez p1, :cond_c

    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPreviousDeviceStatus:I

    if-eq v0, v1, :cond_13

    .line 1047
    :cond_c
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->session:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    invoke-virtual {v1, v0}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeDeviceStatus(I)V

    .line 1048
    iput v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->mPreviousDeviceStatus:I

    .line 1043
    :cond_13
    return-void
.end method
