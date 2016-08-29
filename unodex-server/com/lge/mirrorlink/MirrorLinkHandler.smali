.class public Lcom/lge/mirrorlink/MirrorLinkHandler;
.super Landroid/os/Handler;
.source "MirrorLinkHandler.java"


# static fields
.field private static final NCM_RELEASE_PREPARE_TIME:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MirrorLinkHandler"

.field private static volatile sMirrorLinkHandler:Lcom/lge/mirrorlink/MirrorLinkHandler;

.field private static sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;


# instance fields
.field private flags:I

.field private mContext:Landroid/content/Context;

.field private mMirrorLinkPreference:Lcom/lge/mirrorlink/MirrorLinkPreference;

.field private mPowerMgr:Landroid/os/PowerManager;

.field private mRestoreStateManager:Lcom/lge/mirrorlink/RestoreStateManager;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private upnpServiceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/lge/mirrorlink/MirrorLinkHandler;->sMirrorLinkHandler:Lcom/lge/mirrorlink/MirrorLinkHandler;

    .line 35
    sput-object v0, Lcom/lge/mirrorlink/MirrorLinkHandler;->sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mPowerMgr:Landroid/os/PowerManager;

    .line 33
    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 34
    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mRestoreStateManager:Lcom/lge/mirrorlink/RestoreStateManager;

    .line 36
    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->upnpServiceLock:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->flags:I

    .line 53
    iput-object p1, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/lge/mirrorlink/MirrorLinkPreference;

    invoke-direct {v0, p1}, Lcom/lge/mirrorlink/MirrorLinkPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mMirrorLinkPreference:Lcom/lge/mirrorlink/MirrorLinkPreference;

    .line 55
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mPowerMgr:Landroid/os/PowerManager;

    .line 56
    new-instance v0, Lcom/lge/mirrorlink/RestoreStateManager;

    invoke-direct {v0, p1}, Lcom/lge/mirrorlink/RestoreStateManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mRestoreStateManager:Lcom/lge/mirrorlink/RestoreStateManager;

    .line 57
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    .line 58
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 52
    return-void
.end method

.method private aquireWakeLock()V
    .registers 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_17

    .line 120
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mPowerMgr:Landroid/os/PowerManager;

    const-string/jumbo v1, "ML_VNC"

    const v2, 0x10000006

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 121
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 118
    :cond_17
    return-void
.end method

.method private disableExpandandNavi()V
    .registers 3

    .prologue
    .line 229
    iget v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->flags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->flags:I

    .line 230
    iget v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->flags:I

    const/high16 v1, 0x1200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->flags:I

    .line 231
    iget v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->flags:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->flags:I

    .line 232
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget v1, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->flags:I

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 228
    return-void
.end method

.method private enableExpandandNavi()V
    .registers 3

    .prologue
    .line 236
    iget v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->flags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->flags:I

    .line 237
    iget v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->flags:I

    const v1, -0x1200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->flags:I

    .line 238
    iget v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->flags:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->flags:I

    .line 239
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget v1, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->flags:I

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 235
    return-void
.end method

.method public static getInstance()Lcom/lge/mirrorlink/MirrorLinkHandler;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/lge/mirrorlink/MirrorLinkHandler;->sMirrorLinkHandler:Lcom/lge/mirrorlink/MirrorLinkHandler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/MirrorLinkHandler;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-object v0, Lcom/lge/mirrorlink/MirrorLinkHandler;->sMirrorLinkHandler:Lcom/lge/mirrorlink/MirrorLinkHandler;

    if-nez v0, :cond_b

    .line 43
    new-instance v0, Lcom/lge/mirrorlink/MirrorLinkHandler;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/MirrorLinkHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/mirrorlink/MirrorLinkHandler;->sMirrorLinkHandler:Lcom/lge/mirrorlink/MirrorLinkHandler;

    .line 45
    :cond_b
    sget-object v0, Lcom/lge/mirrorlink/MirrorLinkHandler;->sMirrorLinkHandler:Lcom/lge/mirrorlink/MirrorLinkHandler;

    return-object v0
.end method

.method private getTopActivity()Landroid/content/ComponentName;
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 158
    iget-object v3, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 159
    .local v1, "am":Landroid/app/ActivityManager;
    if-nez v1, :cond_10

    .line 160
    return-object v5

    .line 162
    :cond_10
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 163
    .local v2, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_1d

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1e

    .line 164
    :cond_1d
    return-object v5

    .line 166
    :cond_1e
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 168
    .local v0, "activity":Landroid/content/ComponentName;
    if-nez v0, :cond_29

    .line 169
    return-object v5

    .line 172
    :cond_29
    return-object v0
.end method

.method private isMirrorLinkSettingForeground()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 143
    invoke-direct {p0}, Lcom/lge/mirrorlink/MirrorLinkHandler;->getTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 144
    .local v0, "topActivity":Landroid/content/ComponentName;
    if-nez v0, :cond_8

    .line 145
    return v4

    .line 148
    :cond_8
    const-string/jumbo v1, "MirrorLinkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "topActivity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/lge/mirrorlink/MirrorLinkSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 151
    const/4 v1, 0x1

    return v1

    .line 154
    :cond_34
    return v4
.end method

.method private releaseWakeLock()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 127
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 128
    iput-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 125
    :cond_14
    return-void
.end method

.method private resetNCM()V
    .registers 7

    .prologue
    .line 134
    sget-object v1, Lcom/lge/mirrorlink/MirrorLinkHandler;->sMirrorLinkHandler:Lcom/lge/mirrorlink/MirrorLinkHandler;

    sget-object v2, Lcom/lge/mirrorlink/MirrorLinkHandler;->sMirrorLinkHandler:Lcom/lge/mirrorlink/MirrorLinkHandler;

    const/16 v3, 0x3eb

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lcom/lge/mirrorlink/MirrorLinkHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 137
    const-string/jumbo v1, "MirrorLinkHandler"

    const-string/jumbo v2, "send broadcast msg com.lge.mirrorlink.server.STOP"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.lge.mirrorlink.server.STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    return-void
.end method

.method private startUpnpService()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 189
    const-string/jumbo v1, "MirrorLinkHandler"

    const-string/jumbo v2, "startUpnpService"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->upnpServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 192
    :try_start_d
    sget-object v1, Lcom/lge/mirrorlink/MirrorLinkHandler;->sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    if-nez v1, :cond_22

    .line 193
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/mirrorlink/upnp/UpnpService;->getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/upnp/UpnpService;

    move-result-object v1

    sput-object v1, Lcom/lge/mirrorlink/MirrorLinkHandler;->sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    .line 194
    const-string/jumbo v1, "MirrorLinkHandler"

    const-string/jumbo v3, "create mUpnpService, connected network exists"

    invoke-static {v1, v3}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_22
    sget-object v1, Lcom/lge/mirrorlink/MirrorLinkHandler;->sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    if-eqz v1, :cond_2e

    sget-object v1, Lcom/lge/mirrorlink/MirrorLinkHandler;->sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/UpnpService;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 204
    :cond_2e
    const-string/jumbo v1, "MirrorLinkHandler"

    const-string/jumbo v3, "mUpnpService is  already started"

    invoke-static {v1, v3}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_58

    monitor-exit v2

    .line 205
    return v4

    .line 197
    :cond_39
    :try_start_39
    sget-object v1, Lcom/lge/mirrorlink/MirrorLinkHandler;->sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/UpnpService;->stop()Z

    .line 198
    sget-object v1, Lcom/lge/mirrorlink/MirrorLinkHandler;->sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/UpnpService;->start()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.lge.mirrorlink.action.started"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_53
    .catchall {:try_start_39 .. :try_end_53} :catchall_58

    monitor-exit v2

    .line 201
    return v4

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_55
    monitor-exit v2

    .line 209
    const/4 v1, 0x0

    return v1

    .line 191
    :catchall_58
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private stopUpnpService()Z
    .registers 4

    .prologue
    .line 214
    const-string/jumbo v1, "MirrorLinkHandler"

    const-string/jumbo v2, "stopUpnpService"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->upnpServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 216
    :try_start_c
    sget-object v1, Lcom/lge/mirrorlink/MirrorLinkHandler;->sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    if-eqz v1, :cond_32

    sget-object v1, Lcom/lge/mirrorlink/MirrorLinkHandler;->sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/UpnpService;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 217
    sget-object v1, Lcom/lge/mirrorlink/MirrorLinkHandler;->sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/UpnpService;->stop()Z

    .line 218
    sget-object v1, Lcom/lge/mirrorlink/MirrorLinkHandler;->sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/UpnpService;->destroy()V

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.lge.mirrorlink.action.stopped"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_35

    .line 222
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_32
    monitor-exit v2

    .line 225
    const/4 v1, 0x0

    return v1

    .line 215
    :catchall_35
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private toastMirrorLinkTurnedOff()V
    .registers 4

    .prologue
    .line 176
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 175
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 64
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_d2

    .line 62
    :cond_a
    :goto_a
    return-void

    .line 66
    :pswitch_b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.lge.mirrorlink.action.updatelist"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v5, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_a

    .line 71
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1c
    const-string/jumbo v5, "MirrorLinkHandler"

    const-string/jumbo v6, "MESSAGE_NCM_CONFIGURE_TIMEOUT : set USB to default mode"

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lcom/lge/mirrorlink/MirrorLinkHandler;->resetNCM()V

    goto :goto_a

    .line 75
    :pswitch_29
    iget-object v5, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    if-eqz v5, :cond_32

    .line 76
    iget-object v5, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->bindATService()Z

    .line 78
    :cond_32
    iget-object v5, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mRestoreStateManager:Lcom/lge/mirrorlink/RestoreStateManager;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/RestoreStateManager;->saveState()V

    .line 79
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.mirrorlink.android.app.LAUNCH"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, "intent_start":Landroid/content/Intent;
    const-string/jumbo v5, "com.mirrorlink.android.commonapi"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v5, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 82
    invoke-direct {p0}, Lcom/lge/mirrorlink/MirrorLinkHandler;->startUpnpService()Z

    .line 83
    invoke-direct {p0}, Lcom/lge/mirrorlink/MirrorLinkHandler;->aquireWakeLock()V

    .line 84
    iget-object v5, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v6, ""

    invoke-static {v5, v8, v6}, Lcom/lge/mirrorlink/MirrorLinkNotificationManager;->updateNotification(Landroid/content/Context;ILjava/lang/String;)V

    .line 85

    goto :goto_a

    .line 88
    .end local v1    # "intent_start":Landroid/content/Intent;
    :pswitch_5c
    iget-object v5, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_a

    .line 89
    iget-object v5, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "usb"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbManager;

    .line 90
    .local v4, "usbManager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {v4, v7}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v4, v8}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    goto :goto_a

    .line 95
    .end local v4    # "usbManager":Landroid/hardware/usb/UsbManager;
    :pswitch_72

    .line 96
    invoke-direct {p0}, Lcom/lge/mirrorlink/MirrorLinkHandler;->stopUpnpService()Z

    .line 97
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.mirrorlink.android.app.TERMINATE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, "intent_stop":Landroid/content/Intent;
    const-string/jumbo v5, "com.mirrorlink.android.commonapi"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v5, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 101
    invoke-direct {p0}, Lcom/lge/mirrorlink/MirrorLinkHandler;->resetNCM()V

    .line 102
    iget-object v5, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mMirrorLinkPreference:Lcom/lge/mirrorlink/MirrorLinkPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lge/mirrorlink/MirrorLinkPreference;->setSwitchPref(Z)V

    .line 103
    new-instance v5, Lcom/lge/mirrorlink/misc/SoundGenerator;

    iget-object v6, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/lge/mirrorlink/misc/SoundGenerator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/lge/mirrorlink/misc/SoundGenerator;->execute()V

    .line 104
    invoke-direct {p0}, Lcom/lge/mirrorlink/MirrorLinkHandler;->releaseWakeLock()V

    .line 105
    invoke-direct {p0}, Lcom/lge/mirrorlink/MirrorLinkHandler;->isMirrorLinkSettingForeground()Z

    move-result v5

    if-nez v5, :cond_aa

    .line 106
    invoke-direct {p0}, Lcom/lge/mirrorlink/MirrorLinkHandler;->toastMirrorLinkTurnedOff()V

    .line 108
    :cond_aa
    iget-object v5, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v6, ""

    const/4 v7, 0x2

    invoke-static {v5, v7, v6}, Lcom/lge/mirrorlink/MirrorLinkNotificationManager;->updateNotification(Landroid/content/Context;ILjava/lang/String;)V

    .line 109
    iget-object v5, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mRestoreStateManager:Lcom/lge/mirrorlink/RestoreStateManager;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/RestoreStateManager;->loadState()V

    .line 110
    iget-object v5, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    if-eqz v5, :cond_c1

    .line 111
    iget-object v5, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->unbindATService()V

    .line 113
    :cond_c1
    iget-object v5, p0, Lcom/lge/mirrorlink/MirrorLinkHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "uimode"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/UiModeManager;

    .line 114
    .local v3, "uiModeManager":Landroid/app/UiModeManager;
    invoke-virtual {v3, v8}, Landroid/app/UiModeManager;->disableCarMode(I)V

    goto/16 :goto_a

    .line 64
    nop

    :pswitch_data_d2
    .packed-switch 0x3e9
        :pswitch_1c
        :pswitch_29
        :pswitch_5c
        :pswitch_b
        :pswitch_72
    .end packed-switch
.end method
