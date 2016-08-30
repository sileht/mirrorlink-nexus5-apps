.class public Lcom/lge/app/floating/FloatingWindowService;
.super Landroid/app/Service;
.source "FloatingWindowService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_ACCESSORY_EVENT:Ljava/lang/String; = "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

.field private static final ACTION_CAMERA_STARTED:Ljava/lang/String; = "com.lge.camera.action.LGE_CAMERA_STARTED"

.field private static final ACTION_FULLSCREEN_CALL_INCOMING:Ljava/lang/String; = "com.lge.action.INCOMING_FULLSCREEN"

.field private static final ACTION_INCOMING_CALL_POPUP:Ljava/lang/String; = "com.lge.action.CALLALERTING_SHOW"

.field private static final ACTION_REMOVEINCALLFLOATING:Ljava/lang/String; = "com.lge.incallfloating.ACTION_REMOVEINCALLFLOATING"

.field private static final ACTION_SOFT_INPUT_HIDDEN:Ljava/lang/String; = "com.lge.intent.action.SOFT_INPUT_HIDDEN"

.field private static final ACTION_SOFT_INPUT_SHOWN:Ljava/lang/String; = "com.lge.intent.action.SOFT_INPUT_SHOWN"

.field private static final ACTION_SOFT_KEYPAD_HIDE:Ljava/lang/String; = "com.lge.softkeypad.intent.HIDE"

.field private static final ACTION_SOFT_KEYPAD_SHOW:Ljava/lang/String; = "com.lge.softkeypad.intent.SHOW"

.field private static final EXTRA_ACCESSORY_COVER_STATE:Ljava/lang/String; = "com.lge.intent.extra.ACCESSORY_COVER_STATE"

.field public static final EXTRA_ACCESSORY_STATE_FRONT_CLOSED:I = 0x1

.field public static final EXTRA_ACCESSORY_STATE_FRONT_HALFOPEN:I = 0x2

.field public static final EXTRA_ACCESSORY_STATE_FRONT_OPENED:I = 0x0

.field static final EXTRA_ACTIVITY_NAME:Ljava/lang/String; = "ActivityName"

.field private static final EXTRA_CAMERA_ISSTARTED:Ljava/lang/String; = "isStart"

.field private static final TAG:Ljava/lang/String;

.field private static isServiceExist:Z

.field private static isServiceExistenceConfirmed:Z


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 45
    const-class v0, Lcom/lge/app/floating/FloatingWindowService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;

    .line 255
    sput-boolean v1, Lcom/lge/app/floating/FloatingWindowService;->isServiceExist:Z

    .line 256
    sput-boolean v1, Lcom/lge/app/floating/FloatingWindowService;->isServiceExistenceConfirmed:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 281
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindowService;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static checkExistence(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 259
    sget-boolean v2, Lcom/lge/app/floating/FloatingWindowService;->isServiceExistenceConfirmed:Z

    if-eqz v2, :cond_9

    .line 260
    sget-boolean v1, Lcom/lge/app/floating/FloatingWindowService;->isServiceExist:Z

    .line 279
    :goto_8
    return v1

    .line 262
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 264
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_d
    new-instance v2, Landroid/content/ComponentName;

    .line 265
    const-class v3, Lcom/lge/app/floating/FloatingWindowService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    .line 264
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 266
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lge/app/floating/FloatingWindowService;->isServiceExist:Z

    .line 267
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lge/app/floating/FloatingWindowService;->isServiceExistenceConfirmed:Z
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_21} :catch_22

    goto :goto_8

    .line 271
    :catch_22
    move-exception v2

    sget-object v2, Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;

    .line 272
    const-string v3, "FloatingWindowService is not added in the AndroidManifest.xml file."

    .line 271
    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v2, Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;

    .line 274
    const-string v3, "Add <service android:name=\"com.lge.app.floating.FloatingWindowService\"></service> under <application/> tag"

    .line 273
    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_31
    sput-boolean v4, Lcom/lge/app/floating/FloatingWindowService;->isServiceExist:Z

    .line 277
    sput-boolean v1, Lcom/lge/app/floating/FloatingWindowService;->isServiceExistenceConfirmed:Z

    .line 279
    sget-boolean v1, Lcom/lge/app/floating/FloatingWindowService;->isServiceExist:Z

    goto :goto_8
.end method

.method private disableOverlayIfNecessary(Z)V
    .registers 11
    .param p1, "starting"    # Z

    .prologue
    const/4 v8, 0x1

    .line 216
    invoke-static {p0}, Lcom/lge/app/floating/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 217
    .local v1, "disableOverlayIsNecessary":Z
    if-eqz v1, :cond_27

    .line 218
    sget-object v5, Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;

    const-string v6, "disable hardware overlay while running one or more QSlide app"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/lge/app/floating/FloatingWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 220
    .local v0, "am":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 221
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v3, 0x0

    .line 222
    .local v3, "nFloatingService":I
    if-nez v4, :cond_28

    .line 245
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "nFloatingService":I
    .end local v4    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_27
    :goto_27
    return-void

    .line 226
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v3    # "nFloatingService":I
    .restart local v4    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_28
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_75

    .line 233
    if-ne v3, v8, :cond_33

    if-nez p1, :cond_37

    .line 234
    :cond_33
    if-nez v3, :cond_27

    if-nez p1, :cond_27

    .line 235
    :cond_37
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "i":I
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 236
    .local v2, "i":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.lge.systemservice"

    const-string v7, "com.lge.systemservice.service.SystemServicesProxy"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 237
    const-string v5, "command"

    const-string v6, "DisableOverlays"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v6, "args"

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz p1, :cond_92

    const-string v5, "true"

    :goto_58
    aput-object v5, v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    sget-object v5, Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Disable Hardware Overlays = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0, v2}, Lcom/lge/app/floating/FloatingWindowService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_27

    .line 227
    .local v2, "i":I
    :cond_75
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/lge/app/floating/FloatingWindowService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 228
    add-int/lit8 v3, v3, 0x1

    .line 226
    :cond_8f
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 238
    .local v2, "i":Landroid/content/Intent;
    :cond_92
    const-string v5, "false"

    goto :goto_58
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 135
    sget-object v0, Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;

    const-string v1, "on ConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 138
    invoke-static {p0}, Lcom/lge/app/floating/FloatingWindowManager;->getDefault(Landroid/content/Context;)Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/app/floating/FloatingWindowManager;->configutationChangeforWindows(Landroid/content/res/Configuration;)V

    .line 139
    return-void
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 75
    sget-object v1, Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;

    const-string v2, "on create"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 77
    new-instance v1, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;

    invoke-direct {v1, p0}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;-><init>(Lcom/lge/app/floating/FloatingWindowService;)V

    iput-object v1, p0, Lcom/lge/app/floating/FloatingWindowService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.intent.action.STOP_FLOATING_WINDOW_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v1, "com.lge.intent.action.FLOATING_WINDOW_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "com.lge.camera.action.LGE_CAMERA_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "com.lge.intent.action.SOFT_INPUT_SHOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v1, "com.lge.intent.action.SOFT_INPUT_HIDDEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "com.lge.softkeypad.intent.SHOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "com.lge.softkeypad.intent.HIDE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "com.lge.action.CALLALERTING_SHOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v1, "com.lge.action.INCOMING_FULLSCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v1, "com.lge.incallfloating.ACTION_REMOVEINCALLFLOATING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "com.lge.intent.action.FLOATING_WINDOW_ENTER_LOWPROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "com.lge.android.intent.action.FLOATING_WINDOW_ENTER_LOWPROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v1, "com.lge.intent.action.FLOATING_WINDOW_EXIT_LOWPROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v1, "com.lge.android.intent.action.FLOATING_WINDOW_EXIT_LOWPROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "com.lge.intent.action.FLOATING_WINDOW_ALREADY_RUNNING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "com.lge.intent.action.FLOATING_WINDOW_CLOSE_REQUESTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "com.lge.android.intent.action.FLOATING_WINDOW_CLOSE_REQUESTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "com.lge.lockscreen.intent.action.START_KIDSHOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "com.lge.lockscreen.intent.action.END_KIDSHOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "com.lge.lockscreen.intent.action.LOCKSCREEN_CREATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "com.lge.lockscreen.intent.action.START_STANDARD_HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "com.lge.intent.action.FORCE_UNDOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "com.lge.intent.action.APP_SWITCH_ACTION_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lge/app/floating/FloatingWindowService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method public onDestroy()V
    .registers 7

    .prologue
    .line 110
    sget-object v2, Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;

    const-string v3, "on destroy"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/lge/app/floating/FloatingWindowService;->disableOverlayIfNecessary(Z)V

    .line 112
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 113
    invoke-static {p0}, Lcom/lge/app/floating/FloatingWindowManager;->getDefault(Landroid/content/Context;)Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v0

    .line 114
    .local v0, "fwm":Lcom/lge/app/floating/FloatingWindowManager;
    sget-object v2, Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;

    const-string v3, "FloatingWindowService destroyed."

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindows()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_39

    .line 122
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/lge/app/floating/FloatingWindowService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    invoke-static {p0}, Lcom/lge/app/floating/FloatingWindowManager;->getDefault(Landroid/content/Context;)Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/app/floating/FloatingWindowManager;->setServiceContext(Landroid/content/Context;)V

    .line 124
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lge/app/floating/FloatingWindowService;->stopForeground(Z)V

    .line 125
    return-void

    .line 115
    :cond_39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/app/floating/FloatingWindow;

    .line 116
    .local v1, "w":Lcom/lge/app/floating/FloatingWindow;
    sget-object v3, Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Close "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    if-eqz v1, :cond_21

    .line 118
    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindow;->closeInner()V

    goto :goto_21
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x2

    .line 148
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v8, v5}, Lcom/lge/app/floating/FloatingWindowService;->startForeground(ILandroid/app/Notification;)V

    .line 149
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 151
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_19

    .line 152
    sget-object v4, Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;

    const-string v5, "Cannot do onStartCommand - Fail to intent.getExtras == null"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/4 v4, -0x1

    .line 186
    :goto_18
    return v4

    .line 155
    :cond_19
    const-string v5, "ActivityName"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "activityName":Ljava/lang/String;
    sget-object v5, Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "start requested for activity="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-nez v0, :cond_40

    .line 159
    sget-object v5, Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;

    const-string v6, "service is started with null activity name. do nothing!"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindowService;->stopSelf()V

    goto :goto_18

    .line 166
    :cond_40
    invoke-static {p0}, Lcom/lge/app/floating/FloatingWindowManager;->getDefault(Landroid/content/Context;)Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v2

    .line 167
    .local v2, "manager":Lcom/lge/app/floating/FloatingWindowManager;
    invoke-virtual {v2, p0}, Lcom/lge/app/floating/FloatingWindowManager;->setServiceContext(Landroid/content/Context;)V

    .line 168
    invoke-virtual {v2, v0}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindowFor(Ljava/lang/String;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v3

    .line 169
    .local v3, "window":Lcom/lge/app/floating/FloatingWindow;
    if-eqz v3, :cond_60

    .line 171
    :try_start_4d
    invoke-virtual {v3}, Lcom/lge/app/floating/FloatingWindow;->attach()V
    :try_end_50
    .catch Ljava/lang/IllegalStateException; {:try_start_4d .. :try_end_50} :catch_54

    .line 184
    invoke-direct {p0, v8}, Lcom/lge/app/floating/FloatingWindowService;->disableOverlayIfNecessary(Z)V

    goto :goto_18

    .line 173
    :catch_54
    move-exception v5

    sget-object v5, Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;

    const-string v6, "cannot attach floating window to the window manager"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindowService;->stopSelf()V

    goto :goto_18

    .line 178
    :cond_60
    sget-object v5, Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "floating window for activity "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 179
    const-string v7, " cannot be found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 178
    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindowService;->stopSelf()V

    goto :goto_18
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .registers 9
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_53

    .line 193
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "packageNameInIntent":Ljava/lang/String;
    :goto_e
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindowService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "thisPackageName":Ljava/lang/String;
    sget-object v4, Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "on task removed. packageNameInIntent="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 196
    const-string v6, " thisPackageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 195
    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 198
    invoke-static {p0}, Lcom/lge/app/floating/FloatingWindowManager;->getDefault(Landroid/content/Context;)Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v0

    .line 199
    .local v0, "fwm":Lcom/lge/app/floating/FloatingWindowManager;
    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindows()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_56

    .line 203
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/lge/app/floating/FloatingWindowService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lcom/lge/app/floating/FloatingWindowService;->stopService(Landroid/content/Intent;)Z

    .line 205
    .end local v0    # "fwm":Lcom/lge/app/floating/FloatingWindowManager;
    :cond_52
    return-void

    .line 193
    .end local v1    # "packageNameInIntent":Ljava/lang/String;
    .end local v2    # "thisPackageName":Ljava/lang/String;
    :cond_53
    const-string v1, ""

    goto :goto_e

    .line 199
    .restart local v0    # "fwm":Lcom/lge/app/floating/FloatingWindowManager;
    .restart local v1    # "packageNameInIntent":Ljava/lang/String;
    .restart local v2    # "thisPackageName":Ljava/lang/String;
    :cond_56
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/app/floating/FloatingWindow;

    .line 200
    .local v3, "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v3}, Lcom/lge/app/floating/FloatingWindow;->closeInner()V

    goto :goto_42
.end method

.method public stopService(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "name"    # Landroid/content/Intent;

    .prologue
    .line 129
    sget-object v0, Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stop FloatingWindowService : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindowService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lge/app/floating/FloatingWindowService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/app/Service;->stopService(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
