.class public Lcom/lge/cic/eden/service/EdenService;
.super Landroid/app/Service;
.source "EdenService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/eden/service/EdenService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static isRequestStopSelf:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static receivedIntentCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final DEBUG_VERSION:Z

.field private final logger:Lcom/lge/cic/eden/utils/Logger;

.field private volatile serviceHandler:Lcom/lge/cic/eden/service/EdenService$ServiceHandler;

.field private volatile serviceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const-class v0, Lcom/lge/cic/eden/service/EdenService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/service/EdenService;->TAG:Ljava/lang/String;

    .line 38
    sput-object v1, Lcom/lge/cic/eden/service/EdenService;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    sput-object v1, Lcom/lge/cic/eden/service/EdenService;->isRequestStopSelf:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    sput-object v1, Lcom/lge/cic/eden/service/EdenService;->receivedIntentCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    sget-object v0, Lcom/lge/cic/eden/service/EdenService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/service/EdenService;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/cic/eden/service/EdenService;->DEBUG_VERSION:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/cic/eden/service/EdenService;->serviceLooper:Landroid/os/Looper;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/lge/cic/eden/service/EdenService;)Lcom/lge/cic/eden/utils/Logger;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/cic/eden/service/EdenService;->logger:Lcom/lge/cic/eden/utils/Logger;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lge/cic/eden/service/EdenService;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "onBind()"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 88
    iget-object v3, p0, Lcom/lge/cic/eden/service/EdenService;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v4, "onCreate()"

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 89
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 93
    :try_start_b
    invoke-virtual {p0}, Lcom/lge/cic/eden/service/EdenService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 94
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_3e

    .line 95
    invoke-virtual {p0}, Lcom/lge/cic/eden/service/EdenService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 96
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_3e

    .line 97
    iget-object v3, p0, Lcom/lge/cic/eden/service/EdenService;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Eden Service Engine v"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_3e} :catch_85
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3e} :catch_83

    .line 106
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/lge/cic/eden/service/EdenService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->create(Landroid/content/ContentResolver;)V

    .line 109
    invoke-virtual {p0}, Lcom/lge/cic/eden/service/EdenService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->create(Landroid/content/Context;Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V

    .line 111
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v3, Lcom/lge/cic/eden/service/EdenService;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v3, Lcom/lge/cic/eden/service/EdenService;->isRequestStopSelf:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v3, Lcom/lge/cic/eden/service/EdenService;->receivedIntentCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 115
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "EdenServiceIntentThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 116
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 117
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/cic/eden/service/EdenService;->serviceLooper:Landroid/os/Looper;

    .line 118
    iget-object v3, p0, Lcom/lge/cic/eden/service/EdenService;->serviceLooper:Landroid/os/Looper;

    if-eqz v3, :cond_82

    .line 119
    new-instance v3, Lcom/lge/cic/eden/service/EdenService$ServiceHandler;

    iget-object v4, p0, Lcom/lge/cic/eden/service/EdenService;->serviceLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, p0, v4}, Lcom/lge/cic/eden/service/EdenService$ServiceHandler;-><init>(Lcom/lge/cic/eden/service/EdenService;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/lge/cic/eden/service/EdenService;->serviceHandler:Lcom/lge/cic/eden/service/EdenService$ServiceHandler;

    .line 121
    :cond_82
    return-void

    .line 101
    .end local v2    # "thread":Landroid/os/HandlerThread;
    :catch_83
    move-exception v3

    goto :goto_3e

    .line 100
    :catch_85
    move-exception v3

    goto :goto_3e
.end method

.method public onDestroy()V
    .registers 7

    .prologue
    .line 125
    iget-object v2, p0, Lcom/lge/cic/eden/service/EdenService;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "onDestroy()"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 127
    .local v0, "startTime":J
    invoke-static {}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->getInstance()Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->stop()Z

    .line 128
    iget-object v2, p0, Lcom/lge/cic/eden/service/EdenService;->serviceLooper:Landroid/os/Looper;

    if-eqz v2, :cond_1b

    .line 129
    iget-object v2, p0, Lcom/lge/cic/eden/service/EdenService;->serviceLooper:Landroid/os/Looper;

    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    .line 131
    :cond_1b
    iget-object v2, p0, Lcom/lge/cic/eden/service/EdenService;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  destroy time = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 132
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 133
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 150
    iget-object v3, p0, Lcom/lge/cic/eden/service/EdenService;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "onStartCommand - "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_42

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", flags="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", startId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 151
    sget-object v2, Lcom/lge/cic/eden/service/EdenService;->isRequestStopSelf:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 152
    iget-object v2, p0, Lcom/lge/cic/eden/service/EdenService;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "This service has already destroyed..so this intent will be sent again after 5 sec"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 153
    invoke-static {p0, p1}, Lcom/lge/cic/eden/alarm/EdenRetryHelper;->retryReceivedIntentAfterStopSelf(Landroid/content/Context;Landroid/content/Intent;)V

    .line 166
    :goto_40
    const/4 v2, 0x1

    return v2

    .line 150
    :cond_42
    const-string v2, "null intent"

    goto :goto_f

    .line 155
    :cond_45
    iget-object v2, p0, Lcom/lge/cic/eden/service/EdenService;->serviceHandler:Lcom/lge/cic/eden/service/EdenService$ServiceHandler;

    if-eqz v2, :cond_71

    .line 156
    sget-object v2, Lcom/lge/cic/eden/service/EdenService;->receivedIntentCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 157
    .local v0, "intentCount":I
    iget-object v2, p0, Lcom/lge/cic/eden/service/EdenService;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onStartCommand - receivedIntentCount : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/lge/cic/eden/service/EdenService;->serviceHandler:Lcom/lge/cic/eden/service/EdenService$ServiceHandler;

    invoke-virtual {v2}, Lcom/lge/cic/eden/service/EdenService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 159
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 160
    iget-object v2, p0, Lcom/lge/cic/eden/service/EdenService;->serviceHandler:Lcom/lge/cic/eden/service/EdenService$ServiceHandler;

    invoke-virtual {v2, v1}, Lcom/lge/cic/eden/service/EdenService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_40

    .line 162
    .end local v0    # "intentCount":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_71
    iget-object v2, p0, Lcom/lge/cic/eden/service/EdenService;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "serviceHandler is null"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_40
.end method

.method public onTrimMemory(I)V
    .registers 5
    .param p1, "level"    # I

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 145
    sget-object v0, Lcom/lge/cic/eden/service/EdenService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTrimMemory() level: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method
