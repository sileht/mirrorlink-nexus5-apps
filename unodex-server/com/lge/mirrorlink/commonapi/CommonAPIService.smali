.class public Lcom/lge/mirrorlink/commonapi/CommonAPIService;
.super Landroid/app/Service;
.source "CommonAPIService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_cAPI"


# instance fields
.field private mCommonAPIManager:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIService;->mCommonAPIManager:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    .line 15
    return-void
.end method

.method private stopService()V
    .registers 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/lge/mirrorlink/commonapi/CommonAPIService;->stopSelf()V

    .line 83
    return-void
.end method


# virtual methods
.method public launchMirrorLinkServer()V
    .registers 3

    .prologue
    .line 73
    const-string/jumbo v0, "MirrorLink_cAPI"

    const-string/jumbo v1, "[START] launchMirrorLinkServer"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/lge/mirrorlink/commonapi/CommonAPIService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/certificate/CertificateManager;

    .line 79
    invoke-virtual {p0}, Lcom/lge/mirrorlink/commonapi/CommonAPIService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    .line 71
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    const-string/jumbo v0, "MirrorLink_cAPI"

    const-string/jumbo v1, "[CommonAPISerivce.onBind]"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIService;->mCommonAPIManager:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getCommonAPIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 28
    const-string/jumbo v0, "MirrorLink_cAPI"

    const-string/jumbo v1, "[CommonAPIService onCreate]"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/lge/mirrorlink/commonapi/CommonAPIService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIService;->mCommonAPIManager:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    .line 32
    invoke-virtual {p0}, Lcom/lge/mirrorlink/commonapi/CommonAPIService;->launchMirrorLinkServer()V

    .line 25
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 48
    const-string/jumbo v0, "MirrorLink_cAPI"

    const-string/jumbo v1, "[CommonAPIService.onDestroy]"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIService;->mCommonAPIManager:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    if-eqz v0, :cond_12

    .line 51
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIService;->mCommonAPIManager:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->killListeners()V

    .line 53
    :cond_12
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->freeInstance()V

    .line 54
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 46
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 38
    const-string/jumbo v0, "MirrorLink_cAPI"

    const-string/jumbo v1, "[CommonAPIService.onStartCommand]"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
