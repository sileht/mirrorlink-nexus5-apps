.class public Lcom/lge/mirrorlink/upnp/applicationserver/AppLaunchStateWatcher;
.super Ljava/lang/Object;
.source "AppLaunchStateWatcher.java"


# static fields
.field private static final EXTRA_WAIT_TIME:I = 0xc8

.field private static final POLLING_TIME:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "MirrorLink_AppLaunchStateWatcher"

.field private static final TIMEOUT:I = 0xbb8


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/AppLaunchStateWatcher;->mContext:Landroid/content/Context;

    .line 14
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/AppLaunchStateWatcher;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method

.method private sleep(I)V
    .registers 6
    .param p1, "mSec"    # I

    .prologue
    .line 37
    if-gtz p1, :cond_3

    .line 38
    return-void

    .line 41
    :cond_3
    int-to-long v2, p1

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_8

    .line 36
    :goto_7
    return-void

    .line 42
    :catch_8
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "MirrorLink_AppLaunchStateWatcher"

    const-string/jumbo v2, "InterruptedException Happens !"

    invoke-static {v1, v2, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method


# virtual methods
.method public waitForLaunch(Ljava/lang/String;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xc8

    .line 18
    new-instance v0, Lcom/lge/mirrorlink/upnp/applicationserver/ForegroundAppDecider;

    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/AppLaunchStateWatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/ForegroundAppDecider;-><init>(Landroid/content/Context;)V

    .line 19
    .local v0, "foregroundAppDecider":Lcom/lge/mirrorlink/upnp/applicationserver/ForegroundAppDecider;
    if-nez v0, :cond_c

    .line 20
    return-void

    .line 22
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 24
    .local v2, "startTime":J
    :cond_10
    invoke-direct {p0, v8}, Lcom/lge/mirrorlink/upnp/applicationserver/AppLaunchStateWatcher;->sleep(I)V

    .line 25
    invoke-virtual {v0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/ForegroundAppDecider;->isForegroundApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 26
    invoke-direct {p0, v8}, Lcom/lge/mirrorlink/upnp/applicationserver/AppLaunchStateWatcher;->sleep(I)V

    .line 17
    :goto_1c
    return-void

    .line 29
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0xbb8

    cmp-long v1, v4, v6

    if-lez v1, :cond_10

    .line 30
    const-string/jumbo v1, "MirrorLink_AppLaunchStateWatcher"

    const-string/jumbo v4, "Wait Timeout Happens !"

    invoke-static {v1, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method
